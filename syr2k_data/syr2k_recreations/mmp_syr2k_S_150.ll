; ModuleID = 'syr2k_recreations//mmp_syr2k_S_150.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_150.c"
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
  %call864 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2726 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header850, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1189 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1188 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1187 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1186 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1186, %scevgep1189
  %bound1 = icmp ult i8* %scevgep1188, %scevgep1187
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
  br i1 %exitcond18.not.i, label %vector.ph1193, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1193:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %vector.ph1193
  %index1194 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1193 ], [ %vec.ind.next1199, %vector.body1192 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1198, %broadcast.splat1201
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv7.i, i64 %index1194
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1195, 80
  br i1 %40, label %for.inc41.i, label %vector.body1192, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1192
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1193, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1635, label %vector.ph1475

vector.ph1475:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1475
  %index1476 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1477, %vector.body1474 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i, i64 %index1476
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1477 = add i64 %index1476, 4
  %46 = icmp eq i64 %index.next1477, %n.vec
  br i1 %46, label %middle.block1472, label %vector.body1474, !llvm.loop !18

middle.block1472:                                 ; preds = %vector.body1474
  %cmp.n1479 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1479, label %for.inc6.i, label %for.body3.i46.preheader1635

for.body3.i46.preheader1635:                      ; preds = %for.body3.i46.preheader, %middle.block1472
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1472 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1635, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1635 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1472, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1524 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1524, label %for.body3.i60.preheader1634, label %vector.ph1525

vector.ph1525:                                    ; preds = %for.body3.i60.preheader
  %n.vec1527 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1525
  %index1528 = phi i64 [ 0, %vector.ph1525 ], [ %index.next1529, %vector.body1523 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1528
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1532, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1529 = add i64 %index1528, 4
  %57 = icmp eq i64 %index.next1529, %n.vec1527
  br i1 %57, label %middle.block1521, label %vector.body1523, !llvm.loop !55

middle.block1521:                                 ; preds = %vector.body1523
  %cmp.n1531 = icmp eq i64 %indvars.iv21.i52, %n.vec1527
  br i1 %cmp.n1531, label %for.inc6.i63, label %for.body3.i60.preheader1634

for.body3.i60.preheader1634:                      ; preds = %for.body3.i60.preheader, %middle.block1521
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1527, %middle.block1521 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1634, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1634 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1521, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

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
  %min.iters.check1580 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1580, label %for.body3.i99.preheader1633, label %vector.ph1581

vector.ph1581:                                    ; preds = %for.body3.i99.preheader
  %n.vec1583 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1579

vector.body1579:                                  ; preds = %vector.body1579, %vector.ph1581
  %index1584 = phi i64 [ 0, %vector.ph1581 ], [ %index.next1585, %vector.body1579 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1584
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1588, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1585 = add i64 %index1584, 4
  %68 = icmp eq i64 %index.next1585, %n.vec1583
  br i1 %68, label %middle.block1577, label %vector.body1579, !llvm.loop !57

middle.block1577:                                 ; preds = %vector.body1579
  %cmp.n1587 = icmp eq i64 %indvars.iv21.i91, %n.vec1583
  br i1 %cmp.n1587, label %for.inc6.i102, label %for.body3.i99.preheader1633

for.body3.i99.preheader1633:                      ; preds = %for.body3.i99.preheader, %middle.block1577
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1583, %middle.block1577 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1633, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1633 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1577, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1592 = phi i64 [ %indvar.next1593, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1592, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1594 = icmp ult i64 %88, 4
  br i1 %min.iters.check1594, label %polly.loop_header192.preheader, label %vector.ph1595

vector.ph1595:                                    ; preds = %polly.loop_header
  %n.vec1597 = and i64 %88, -4
  br label %vector.body1591

vector.body1591:                                  ; preds = %vector.body1591, %vector.ph1595
  %index1598 = phi i64 [ 0, %vector.ph1595 ], [ %index.next1599, %vector.body1591 ]
  %90 = shl nuw nsw i64 %index1598, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1602 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1602, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1599 = add i64 %index1598, 4
  %95 = icmp eq i64 %index.next1599, %n.vec1597
  br i1 %95, label %middle.block1589, label %vector.body1591, !llvm.loop !70

middle.block1589:                                 ; preds = %vector.body1591
  %cmp.n1601 = icmp eq i64 %88, %n.vec1597
  br i1 %cmp.n1601, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1589
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1597, %middle.block1589 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1589
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1593 = add i64 %indvar1592, 1
  br i1 %exitcond1052.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1051.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !71

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1050.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1049.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, 20
  %98 = mul nuw nsw i64 %polly.indvar219, 12800
  %99 = or i64 %98, 8
  %100 = mul nuw nsw i64 %polly.indvar219, 20
  %101 = mul nuw nsw i64 %polly.indvar219, 20
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next220, 4
  br i1 %exitcond1048.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  %102 = mul nuw nsw i64 %polly.indvar225, 20
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit236
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next226, 3
  br i1 %exitcond1047.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header222
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %indvars.iv, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header222 ]
  %103 = mul nsw i64 %polly.indvar231, -20
  %104 = add i64 %97, %103
  %105 = mul nuw nsw i64 %polly.indvar231, 160
  %106 = add nuw i64 %98, %105
  %107 = add nuw i64 %99, %105
  %108 = mul nsw i64 %polly.indvar231, -20
  %109 = add i64 %100, %108
  %110 = mul nuw nsw i64 %polly.indvar231, 20
  %111 = sub nsw i64 %101, %110
  %112 = add nuw nsw i64 %110, 20
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -20
  %exitcond1046.not = icmp eq i64 %polly.indvar_next232, %indvars.iv1044
  br i1 %exitcond1046.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_exit265, %polly.loop_header228
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %polly.loop_exit265 ], [ %indvars.iv1034, %polly.loop_header228 ]
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit265 ], [ 0, %polly.loop_header228 ]
  %113 = add i64 %104, %polly.indvar237
  %smin1617 = call i64 @llvm.smin.i64(i64 %113, i64 19)
  %114 = add nsw i64 %smin1617, 1
  %115 = mul nuw nsw i64 %polly.indvar237, 640
  %116 = add i64 %106, %115
  %scevgep1604 = getelementptr i8, i8* %call, i64 %116
  %117 = add i64 %107, %115
  %scevgep1605 = getelementptr i8, i8* %call, i64 %117
  %118 = add i64 %109, %polly.indvar237
  %smin1606 = call i64 @llvm.smin.i64(i64 %118, i64 19)
  %119 = shl nsw i64 %smin1606, 3
  %scevgep1607 = getelementptr i8, i8* %scevgep1605, i64 %119
  %120 = add nsw i64 %119, 8
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 19)
  %121 = add nsw i64 %polly.indvar237, %111
  %polly.loop_guard1181 = icmp sgt i64 %121, -1
  %122 = add nuw nsw i64 %polly.indvar237, %101
  %.not = icmp ult i64 %122, %112
  %polly.access.mul.call1257 = mul nuw nsw i64 %122, 60
  %123 = add nuw nsw i64 %polly.access.mul.call1257, %102
  br i1 %polly.loop_guard1181, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %124 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 80
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header246.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_header246.us ], [ 0, %polly.loop_header240.us ]
  %125 = add nuw nsw i64 %polly.indvar249.us, %110
  %polly.access.mul.call1253.us = mul nuw nsw i64 %125, 60
  %polly.access.add.call1254.us = add nuw nsw i64 %124, %polly.access.mul.call1253.us
  %polly.access.call1255.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1254.us
  %polly.access.call1255.load.us = load double, double* %polly.access.call1255.us, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar249.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1255.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar249.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header246.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1258.us = add nuw nsw i64 %123, %polly.indvar243.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %121
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next244.us, 20
  br i1 %exitcond1039.not, label %polly.loop_header263.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header246.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit265, label %polly.loop_header240.preheader

polly.loop_header240.preheader:                   ; preds = %polly.loop_header234.split
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1716, i64 %123
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !66, !noalias !74
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %121
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = or i64 %123, 1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.1 = add nsw i64 %121, 80
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = or i64 %123, 2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.2 = add nsw i64 %121, 160
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = or i64 %123, 3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.3 = add nsw i64 %121, 240
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %123, 4
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.4 = add nsw i64 %121, 320
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %123, 5
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.5 = add nsw i64 %121, 400
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %123, 6
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.6 = add nsw i64 %121, 480
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %123, 7
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.7 = add nsw i64 %121, 560
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1258.8 = add nuw nsw i64 %123, 8
  %polly.access.call1259.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.8
  %polly.access.call1259.load.8 = load double, double* %polly.access.call1259.8, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.8 = add nsw i64 %121, 640
  %polly.access.Packed_MemRef_call1262.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.8
  store double %polly.access.call1259.load.8, double* %polly.access.Packed_MemRef_call1262.8, align 8
  %polly.access.add.call1258.9 = add nuw nsw i64 %123, 9
  %polly.access.call1259.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.9
  %polly.access.call1259.load.9 = load double, double* %polly.access.call1259.9, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.9 = add nsw i64 %121, 720
  %polly.access.Packed_MemRef_call1262.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.9
  store double %polly.access.call1259.load.9, double* %polly.access.Packed_MemRef_call1262.9, align 8
  %polly.access.add.call1258.10 = add nuw nsw i64 %123, 10
  %polly.access.call1259.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.10
  %polly.access.call1259.load.10 = load double, double* %polly.access.call1259.10, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.10 = add nsw i64 %121, 800
  %polly.access.Packed_MemRef_call1262.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.10
  store double %polly.access.call1259.load.10, double* %polly.access.Packed_MemRef_call1262.10, align 8
  %polly.access.add.call1258.11 = add nuw nsw i64 %123, 11
  %polly.access.call1259.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.11
  %polly.access.call1259.load.11 = load double, double* %polly.access.call1259.11, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.11 = add nsw i64 %121, 880
  %polly.access.Packed_MemRef_call1262.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.11
  store double %polly.access.call1259.load.11, double* %polly.access.Packed_MemRef_call1262.11, align 8
  %polly.access.add.call1258.12 = add nuw nsw i64 %123, 12
  %polly.access.call1259.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.12
  %polly.access.call1259.load.12 = load double, double* %polly.access.call1259.12, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.12 = add nsw i64 %121, 960
  %polly.access.Packed_MemRef_call1262.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.12
  store double %polly.access.call1259.load.12, double* %polly.access.Packed_MemRef_call1262.12, align 8
  %polly.access.add.call1258.13 = add nuw nsw i64 %123, 13
  %polly.access.call1259.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.13
  %polly.access.call1259.load.13 = load double, double* %polly.access.call1259.13, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.13 = add nsw i64 %121, 1040
  %polly.access.Packed_MemRef_call1262.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.13
  store double %polly.access.call1259.load.13, double* %polly.access.Packed_MemRef_call1262.13, align 8
  %polly.access.add.call1258.14 = add nuw nsw i64 %123, 14
  %polly.access.call1259.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.14
  %polly.access.call1259.load.14 = load double, double* %polly.access.call1259.14, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.14 = add nsw i64 %121, 1120
  %polly.access.Packed_MemRef_call1262.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.14
  store double %polly.access.call1259.load.14, double* %polly.access.Packed_MemRef_call1262.14, align 8
  %polly.access.add.call1258.15 = add nuw nsw i64 %123, 15
  %polly.access.call1259.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.15
  %polly.access.call1259.load.15 = load double, double* %polly.access.call1259.15, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.15 = add nsw i64 %121, 1200
  %polly.access.Packed_MemRef_call1262.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.15
  store double %polly.access.call1259.load.15, double* %polly.access.Packed_MemRef_call1262.15, align 8
  %polly.access.add.call1258.16 = add nuw nsw i64 %123, 16
  %polly.access.call1259.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.16
  %polly.access.call1259.load.16 = load double, double* %polly.access.call1259.16, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.16 = add nsw i64 %121, 1280
  %polly.access.Packed_MemRef_call1262.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.16
  store double %polly.access.call1259.load.16, double* %polly.access.Packed_MemRef_call1262.16, align 8
  %polly.access.add.call1258.17 = add nuw nsw i64 %123, 17
  %polly.access.call1259.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.17
  %polly.access.call1259.load.17 = load double, double* %polly.access.call1259.17, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.17 = add nsw i64 %121, 1360
  %polly.access.Packed_MemRef_call1262.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.17
  store double %polly.access.call1259.load.17, double* %polly.access.Packed_MemRef_call1262.17, align 8
  %polly.access.add.call1258.18 = add nuw nsw i64 %123, 18
  %polly.access.call1259.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.18
  %polly.access.call1259.load.18 = load double, double* %polly.access.call1259.18, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.18 = add nsw i64 %121, 1440
  %polly.access.Packed_MemRef_call1262.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.18
  store double %polly.access.call1259.load.18, double* %polly.access.Packed_MemRef_call1262.18, align 8
  %polly.access.add.call1258.19 = add nuw nsw i64 %123, 19
  %polly.access.call1259.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1258.19
  %polly.access.call1259.load.19 = load double, double* %polly.access.call1259.19, align 8, !alias.scope !66, !noalias !74
  %polly.access.add.Packed_MemRef_call1261.19 = add nsw i64 %121, 1520
  %polly.access.Packed_MemRef_call1262.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.19
  store double %polly.access.call1259.load.19, double* %polly.access.Packed_MemRef_call1262.19, align 8
  br label %polly.loop_exit265

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header234.split, %polly.loop_header240.preheader, %polly.loop_header263.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %indvars.iv.next1037 = add nsw i64 %indvars.iv1036, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1043.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.merge.us
  %126 = mul nuw nsw i64 %122, 640
  br i1 %polly.loop_guard1181, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %127 = mul nuw nsw i64 %polly.indvar266.us, 640
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar266.us, 80
  %128 = add nuw nsw i64 %polly.indvar266.us, %102
  %polly.access.mul.Packed_MemRef_call2281.us = mul nuw nsw i64 %128, 80
  %polly.access.add.Packed_MemRef_call2282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2281.us, %122
  %polly.access.Packed_MemRef_call2283.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call2283.us, align 8
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %121
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %min.iters.check1618 = icmp ult i64 %114, 4
  br i1 %min.iters.check1618, label %polly.loop_header270.us.preheader, label %vector.memcheck1603

vector.memcheck1603:                              ; preds = %polly.loop_header263.us
  %129 = add i64 %120, %127
  %scevgep1609 = getelementptr i8, i8* %malloccall, i64 %129
  %scevgep1608 = getelementptr i8, i8* %malloccall, i64 %127
  %bound01610 = icmp ult i8* %scevgep1604, %scevgep1609
  %bound11611 = icmp ult i8* %scevgep1608, %scevgep1607
  %found.conflict1612 = and i1 %bound01610, %bound11611
  br i1 %found.conflict1612, label %polly.loop_header270.us.preheader, label %vector.ph1619

vector.ph1619:                                    ; preds = %vector.memcheck1603
  %n.vec1621 = and i64 %114, -4
  %broadcast.splatinsert1627 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1628 = shufflevector <4 x double> %broadcast.splatinsert1627, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1630 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1631 = shufflevector <4 x double> %broadcast.splatinsert1630, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1616

vector.body1616:                                  ; preds = %vector.body1616, %vector.ph1619
  %index1622 = phi i64 [ 0, %vector.ph1619 ], [ %index.next1623, %vector.body1616 ]
  %130 = add nuw nsw i64 %index1622, %110
  %131 = add nuw nsw i64 %index1622, %polly.access.mul.Packed_MemRef_call1277.us
  %132 = getelementptr double, double* %Packed_MemRef_call1, i64 %131
  %133 = bitcast double* %132 to <4 x double>*
  %wide.load1626 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !75
  %134 = fmul fast <4 x double> %broadcast.splat1628, %wide.load1626
  %135 = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call2281.us
  %136 = getelementptr double, double* %Packed_MemRef_call2, i64 %135
  %137 = bitcast double* %136 to <4 x double>*
  %wide.load1629 = load <4 x double>, <4 x double>* %137, align 8
  %138 = fmul fast <4 x double> %broadcast.splat1631, %wide.load1629
  %139 = shl i64 %130, 3
  %140 = add nuw nsw i64 %139, %126
  %141 = getelementptr i8, i8* %call, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1632 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !78, !noalias !80
  %143 = fadd fast <4 x double> %138, %134
  %144 = fmul fast <4 x double> %143, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %145 = fadd fast <4 x double> %144, %wide.load1632
  %146 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !78, !noalias !80
  %index.next1623 = add i64 %index1622, 4
  %147 = icmp eq i64 %index.next1623, %n.vec1621
  br i1 %147, label %middle.block1614, label %vector.body1616, !llvm.loop !81

middle.block1614:                                 ; preds = %vector.body1616
  %cmp.n1625 = icmp eq i64 %114, %n.vec1621
  br i1 %cmp.n1625, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us.preheader

polly.loop_header270.us.preheader:                ; preds = %vector.memcheck1603, %polly.loop_header263.us, %middle.block1614
  %polly.indvar274.us.ph = phi i64 [ 0, %vector.memcheck1603 ], [ 0, %polly.loop_header263.us ], [ %n.vec1621, %middle.block1614 ]
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.us.preheader, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ %polly.indvar274.us.ph, %polly.loop_header270.us.preheader ]
  %148 = add nuw nsw i64 %polly.indvar274.us, %110
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call2281.us
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %149 = shl i64 %148, 3
  %150 = add nuw nsw i64 %149, %126
  %scevgep293.us = getelementptr i8, i8* %call, i64 %150
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar274.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit272.loopexit.us, label %polly.loop_header270.us, !llvm.loop !82

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_header270.us, %middle.block1614
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next267.us, 20
  br i1 %exitcond1042.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall302 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header386

polly.exiting299:                                 ; preds = %polly.loop_exit426
  tail call void @free(i8* %malloccall300)
  tail call void @free(i8* %malloccall302)
  br label %kernel_syr2k.exit90

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.start298
  %indvar1536 = phi i64 [ %indvar.next1537, %polly.loop_exit394 ], [ 0, %polly.start298 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 1, %polly.start298 ]
  %151 = add i64 %indvar1536, 1
  %152 = mul nuw nsw i64 %polly.indvar389, 640
  %scevgep398 = getelementptr i8, i8* %call, i64 %152
  %min.iters.check1538 = icmp ult i64 %151, 4
  br i1 %min.iters.check1538, label %polly.loop_header392.preheader, label %vector.ph1539

vector.ph1539:                                    ; preds = %polly.loop_header386
  %n.vec1541 = and i64 %151, -4
  br label %vector.body1535

vector.body1535:                                  ; preds = %vector.body1535, %vector.ph1539
  %index1542 = phi i64 [ 0, %vector.ph1539 ], [ %index.next1543, %vector.body1535 ]
  %153 = shl nuw nsw i64 %index1542, 3
  %154 = getelementptr i8, i8* %scevgep398, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !83, !noalias !85
  %156 = fmul fast <4 x double> %wide.load1546, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %157 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !83, !noalias !85
  %index.next1543 = add i64 %index1542, 4
  %158 = icmp eq i64 %index.next1543, %n.vec1541
  br i1 %158, label %middle.block1533, label %vector.body1535, !llvm.loop !90

middle.block1533:                                 ; preds = %vector.body1535
  %cmp.n1545 = icmp eq i64 %151, %n.vec1541
  br i1 %cmp.n1545, label %polly.loop_exit394, label %polly.loop_header392.preheader

polly.loop_header392.preheader:                   ; preds = %polly.loop_header386, %middle.block1533
  %polly.indvar395.ph = phi i64 [ 0, %polly.loop_header386 ], [ %n.vec1541, %middle.block1533 ]
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392, %middle.block1533
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next390, 80
  %indvar.next1537 = add i64 %indvar1536, 1
  br i1 %exitcond1075.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  %Packed_MemRef_call2303 = bitcast i8* %malloccall302 to double*
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_header392
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_header392 ], [ %polly.indvar395.ph, %polly.loop_header392.preheader ]
  %159 = shl nuw nsw i64 %polly.indvar395, 3
  %scevgep399 = getelementptr i8, i8* %scevgep398, i64 %159
  %scevgep399400 = bitcast i8* %scevgep399 to double*
  %_p_scalar_401 = load double, double* %scevgep399400, align 8, !alias.scope !83, !noalias !85
  %p_mul.i57 = fmul fast double %_p_scalar_401, 1.200000e+00
  store double %p_mul.i57, double* %scevgep399400, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next396, %polly.indvar389
  br i1 %exitcond1074.not, label %polly.loop_exit394, label %polly.loop_header392, !llvm.loop !91

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit410 ], [ 0, %polly.loop_header402.preheader ]
  %polly.access.mul.Packed_MemRef_call2303 = mul nuw nsw i64 %polly.indvar405, 80
  br label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_header408
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar_next406, 60
  br i1 %exitcond1073.not, label %polly.loop_header418, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header408, %polly.loop_header402
  %polly.indvar411 = phi i64 [ 0, %polly.loop_header402 ], [ %polly.indvar_next412, %polly.loop_header408 ]
  %polly.access.mul.call2415 = mul nuw nsw i64 %polly.indvar411, 60
  %polly.access.add.call2416 = add nuw nsw i64 %polly.access.mul.call2415, %polly.indvar405
  %polly.access.call2417 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2416
  %polly.access.call2417.load = load double, double* %polly.access.call2417, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call2303 = add nuw nsw i64 %polly.indvar411, %polly.access.mul.Packed_MemRef_call2303
  %polly.access.Packed_MemRef_call2303 = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303
  store double %polly.access.call2417.load, double* %polly.access.Packed_MemRef_call2303, align 8
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1072.not = icmp eq i64 %polly.indvar_next412, 80
  br i1 %exitcond1072.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header418:                             ; preds = %polly.loop_exit410, %polly.loop_exit426
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit426 ], [ 1, %polly.loop_exit410 ]
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_exit410 ]
  %160 = mul nuw nsw i64 %polly.indvar421, 20
  %161 = mul nuw nsw i64 %polly.indvar421, 12800
  %162 = or i64 %161, 8
  %163 = mul nuw nsw i64 %polly.indvar421, 20
  %164 = mul nuw nsw i64 %polly.indvar421, 20
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 20
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next422, 4
  br i1 %exitcond1071.not, label %polly.exiting299, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %165 = mul nuw nsw i64 %polly.indvar427, 20
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_exit438
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next428, 3
  br i1 %exitcond1070.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_exit438, %polly.loop_header424
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057, %polly.loop_exit438 ], [ %indvars.iv1054, %polly.loop_header424 ]
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_exit438 ], [ 0, %polly.loop_header424 ]
  %166 = mul nsw i64 %polly.indvar433, -20
  %167 = add i64 %160, %166
  %168 = mul nuw nsw i64 %polly.indvar433, 160
  %169 = add nuw i64 %161, %168
  %170 = add nuw i64 %162, %168
  %171 = mul nsw i64 %polly.indvar433, -20
  %172 = add i64 %163, %171
  %173 = mul nuw nsw i64 %polly.indvar433, 20
  %174 = sub nsw i64 %164, %173
  %175 = add nuw nsw i64 %173, 20
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit473
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -20
  %exitcond1069.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1067
  br i1 %exitcond1069.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header436:                             ; preds = %polly.loop_exit473, %polly.loop_header430
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit473 ], [ %indvars.iv1056, %polly.loop_header430 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit473 ], [ 0, %polly.loop_header430 ]
  %176 = add i64 %167, %polly.indvar439
  %smin1561 = call i64 @llvm.smin.i64(i64 %176, i64 19)
  %177 = add nsw i64 %smin1561, 1
  %178 = mul nuw nsw i64 %polly.indvar439, 640
  %179 = add i64 %169, %178
  %scevgep1548 = getelementptr i8, i8* %call, i64 %179
  %180 = add i64 %170, %178
  %scevgep1549 = getelementptr i8, i8* %call, i64 %180
  %181 = add i64 %172, %polly.indvar439
  %smin1550 = call i64 @llvm.smin.i64(i64 %181, i64 19)
  %182 = shl nsw i64 %smin1550, 3
  %scevgep1551 = getelementptr i8, i8* %scevgep1549, i64 %182
  %183 = add nsw i64 %182, 8
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 19)
  %184 = add nsw i64 %polly.indvar439, %174
  %polly.loop_guard4521182 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar439, %164
  %.not918 = icmp ult i64 %185, %175
  %polly.access.mul.call1465 = mul nuw nsw i64 %185, 60
  %186 = add nuw nsw i64 %polly.access.mul.call1465, %165
  br i1 %polly.loop_guard4521182, label %polly.loop_header442.us, label %polly.loop_header436.split

polly.loop_header442.us:                          ; preds = %polly.loop_header436, %polly.merge461.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.merge461.us ], [ 0, %polly.loop_header436 ]
  %187 = add nuw nsw i64 %polly.indvar445.us, %165
  %polly.access.mul.Packed_MemRef_call1301.us = mul nuw nsw i64 %polly.indvar445.us, 80
  br label %polly.loop_header449.us

polly.loop_header449.us:                          ; preds = %polly.loop_header442.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header442.us ]
  %188 = add nuw nsw i64 %polly.indvar453.us, %173
  %polly.access.mul.call1457.us = mul nuw nsw i64 %188, 60
  %polly.access.add.call1458.us = add nuw nsw i64 %187, %polly.access.mul.call1457.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301.us
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar453.us, %smin1063
  br i1 %exitcond1061.not, label %polly.cond460.loopexit.us, label %polly.loop_header449.us

polly.then462.us:                                 ; preds = %polly.cond460.loopexit.us
  %polly.access.add.call1466.us = add nuw nsw i64 %186, %polly.indvar445.us
  %polly.access.call1467.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.us
  %polly.access.call1467.load.us = load double, double* %polly.access.call1467.us, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301.us, %184
  %polly.access.Packed_MemRef_call1301470.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.us
  store double %polly.access.call1467.load.us, double* %polly.access.Packed_MemRef_call1301470.us, align 8
  br label %polly.merge461.us

polly.merge461.us:                                ; preds = %polly.then462.us, %polly.cond460.loopexit.us
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next446.us, 20
  br i1 %exitcond1062.not, label %polly.loop_header471.preheader, label %polly.loop_header442.us

polly.cond460.loopexit.us:                        ; preds = %polly.loop_header449.us
  br i1 %.not918, label %polly.merge461.us, label %polly.then462.us

polly.loop_header436.split:                       ; preds = %polly.loop_header436
  br i1 %.not918, label %polly.loop_exit473, label %polly.loop_header442.preheader

polly.loop_header442.preheader:                   ; preds = %polly.loop_header436.split
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1716, i64 %186
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1301470 = getelementptr double, double* %Packed_MemRef_call1301, i64 %184
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1301470, align 8
  %polly.access.add.call1466.1 = or i64 %186, 1
  %polly.access.call1467.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.1
  %polly.access.call1467.load.1 = load double, double* %polly.access.call1467.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.1 = add nsw i64 %184, 80
  %polly.access.Packed_MemRef_call1301470.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.1
  store double %polly.access.call1467.load.1, double* %polly.access.Packed_MemRef_call1301470.1, align 8
  %polly.access.add.call1466.2 = or i64 %186, 2
  %polly.access.call1467.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.2
  %polly.access.call1467.load.2 = load double, double* %polly.access.call1467.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.2 = add nsw i64 %184, 160
  %polly.access.Packed_MemRef_call1301470.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.2
  store double %polly.access.call1467.load.2, double* %polly.access.Packed_MemRef_call1301470.2, align 8
  %polly.access.add.call1466.3 = or i64 %186, 3
  %polly.access.call1467.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.3
  %polly.access.call1467.load.3 = load double, double* %polly.access.call1467.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.3 = add nsw i64 %184, 240
  %polly.access.Packed_MemRef_call1301470.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.3
  store double %polly.access.call1467.load.3, double* %polly.access.Packed_MemRef_call1301470.3, align 8
  %polly.access.add.call1466.4 = add nuw nsw i64 %186, 4
  %polly.access.call1467.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.4
  %polly.access.call1467.load.4 = load double, double* %polly.access.call1467.4, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.4 = add nsw i64 %184, 320
  %polly.access.Packed_MemRef_call1301470.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.4
  store double %polly.access.call1467.load.4, double* %polly.access.Packed_MemRef_call1301470.4, align 8
  %polly.access.add.call1466.5 = add nuw nsw i64 %186, 5
  %polly.access.call1467.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.5
  %polly.access.call1467.load.5 = load double, double* %polly.access.call1467.5, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.5 = add nsw i64 %184, 400
  %polly.access.Packed_MemRef_call1301470.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.5
  store double %polly.access.call1467.load.5, double* %polly.access.Packed_MemRef_call1301470.5, align 8
  %polly.access.add.call1466.6 = add nuw nsw i64 %186, 6
  %polly.access.call1467.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.6
  %polly.access.call1467.load.6 = load double, double* %polly.access.call1467.6, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.6 = add nsw i64 %184, 480
  %polly.access.Packed_MemRef_call1301470.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.6
  store double %polly.access.call1467.load.6, double* %polly.access.Packed_MemRef_call1301470.6, align 8
  %polly.access.add.call1466.7 = add nuw nsw i64 %186, 7
  %polly.access.call1467.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.7
  %polly.access.call1467.load.7 = load double, double* %polly.access.call1467.7, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.7 = add nsw i64 %184, 560
  %polly.access.Packed_MemRef_call1301470.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.7
  store double %polly.access.call1467.load.7, double* %polly.access.Packed_MemRef_call1301470.7, align 8
  %polly.access.add.call1466.8 = add nuw nsw i64 %186, 8
  %polly.access.call1467.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.8
  %polly.access.call1467.load.8 = load double, double* %polly.access.call1467.8, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.8 = add nsw i64 %184, 640
  %polly.access.Packed_MemRef_call1301470.8 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.8
  store double %polly.access.call1467.load.8, double* %polly.access.Packed_MemRef_call1301470.8, align 8
  %polly.access.add.call1466.9 = add nuw nsw i64 %186, 9
  %polly.access.call1467.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.9
  %polly.access.call1467.load.9 = load double, double* %polly.access.call1467.9, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.9 = add nsw i64 %184, 720
  %polly.access.Packed_MemRef_call1301470.9 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.9
  store double %polly.access.call1467.load.9, double* %polly.access.Packed_MemRef_call1301470.9, align 8
  %polly.access.add.call1466.10 = add nuw nsw i64 %186, 10
  %polly.access.call1467.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.10
  %polly.access.call1467.load.10 = load double, double* %polly.access.call1467.10, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.10 = add nsw i64 %184, 800
  %polly.access.Packed_MemRef_call1301470.10 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.10
  store double %polly.access.call1467.load.10, double* %polly.access.Packed_MemRef_call1301470.10, align 8
  %polly.access.add.call1466.11 = add nuw nsw i64 %186, 11
  %polly.access.call1467.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.11
  %polly.access.call1467.load.11 = load double, double* %polly.access.call1467.11, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.11 = add nsw i64 %184, 880
  %polly.access.Packed_MemRef_call1301470.11 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.11
  store double %polly.access.call1467.load.11, double* %polly.access.Packed_MemRef_call1301470.11, align 8
  %polly.access.add.call1466.12 = add nuw nsw i64 %186, 12
  %polly.access.call1467.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.12
  %polly.access.call1467.load.12 = load double, double* %polly.access.call1467.12, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.12 = add nsw i64 %184, 960
  %polly.access.Packed_MemRef_call1301470.12 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.12
  store double %polly.access.call1467.load.12, double* %polly.access.Packed_MemRef_call1301470.12, align 8
  %polly.access.add.call1466.13 = add nuw nsw i64 %186, 13
  %polly.access.call1467.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.13
  %polly.access.call1467.load.13 = load double, double* %polly.access.call1467.13, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.13 = add nsw i64 %184, 1040
  %polly.access.Packed_MemRef_call1301470.13 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.13
  store double %polly.access.call1467.load.13, double* %polly.access.Packed_MemRef_call1301470.13, align 8
  %polly.access.add.call1466.14 = add nuw nsw i64 %186, 14
  %polly.access.call1467.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.14
  %polly.access.call1467.load.14 = load double, double* %polly.access.call1467.14, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.14 = add nsw i64 %184, 1120
  %polly.access.Packed_MemRef_call1301470.14 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.14
  store double %polly.access.call1467.load.14, double* %polly.access.Packed_MemRef_call1301470.14, align 8
  %polly.access.add.call1466.15 = add nuw nsw i64 %186, 15
  %polly.access.call1467.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.15
  %polly.access.call1467.load.15 = load double, double* %polly.access.call1467.15, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.15 = add nsw i64 %184, 1200
  %polly.access.Packed_MemRef_call1301470.15 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.15
  store double %polly.access.call1467.load.15, double* %polly.access.Packed_MemRef_call1301470.15, align 8
  %polly.access.add.call1466.16 = add nuw nsw i64 %186, 16
  %polly.access.call1467.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.16
  %polly.access.call1467.load.16 = load double, double* %polly.access.call1467.16, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.16 = add nsw i64 %184, 1280
  %polly.access.Packed_MemRef_call1301470.16 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.16
  store double %polly.access.call1467.load.16, double* %polly.access.Packed_MemRef_call1301470.16, align 8
  %polly.access.add.call1466.17 = add nuw nsw i64 %186, 17
  %polly.access.call1467.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.17
  %polly.access.call1467.load.17 = load double, double* %polly.access.call1467.17, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.17 = add nsw i64 %184, 1360
  %polly.access.Packed_MemRef_call1301470.17 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.17
  store double %polly.access.call1467.load.17, double* %polly.access.Packed_MemRef_call1301470.17, align 8
  %polly.access.add.call1466.18 = add nuw nsw i64 %186, 18
  %polly.access.call1467.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.18
  %polly.access.call1467.load.18 = load double, double* %polly.access.call1467.18, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.18 = add nsw i64 %184, 1440
  %polly.access.Packed_MemRef_call1301470.18 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.18
  store double %polly.access.call1467.load.18, double* %polly.access.Packed_MemRef_call1301470.18, align 8
  %polly.access.add.call1466.19 = add nuw nsw i64 %186, 19
  %polly.access.call1467.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1466.19
  %polly.access.call1467.load.19 = load double, double* %polly.access.call1467.19, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1301469.19 = add nsw i64 %184, 1520
  %polly.access.Packed_MemRef_call1301470.19 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301469.19
  store double %polly.access.call1467.load.19, double* %polly.access.Packed_MemRef_call1301470.19, align 8
  br label %polly.loop_exit473

polly.loop_exit473:                               ; preds = %polly.loop_exit480.loopexit.us, %polly.loop_header436.split, %polly.loop_header442.preheader, %polly.loop_header471.preheader
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next440, 20
  br i1 %exitcond1066.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header471.preheader:                   ; preds = %polly.merge461.us
  %189 = mul nuw nsw i64 %185, 640
  br i1 %polly.loop_guard4521182, label %polly.loop_header471.us, label %polly.loop_exit473

polly.loop_header471.us:                          ; preds = %polly.loop_header471.preheader, %polly.loop_exit480.loopexit.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.loopexit.us ], [ 0, %polly.loop_header471.preheader ]
  %190 = mul nuw nsw i64 %polly.indvar474.us, 640
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar474.us, 80
  %191 = add nuw nsw i64 %polly.indvar474.us, %165
  %polly.access.mul.Packed_MemRef_call2303489.us = mul nuw nsw i64 %191, 80
  %polly.access.add.Packed_MemRef_call2303490.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2303489.us, %185
  %polly.access.Packed_MemRef_call2303491.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call2303491.us, align 8
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %184
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %min.iters.check1562 = icmp ult i64 %177, 4
  br i1 %min.iters.check1562, label %polly.loop_header478.us.preheader, label %vector.memcheck1547

vector.memcheck1547:                              ; preds = %polly.loop_header471.us
  %192 = add i64 %183, %190
  %scevgep1553 = getelementptr i8, i8* %malloccall300, i64 %192
  %scevgep1552 = getelementptr i8, i8* %malloccall300, i64 %190
  %bound01554 = icmp ult i8* %scevgep1548, %scevgep1553
  %bound11555 = icmp ult i8* %scevgep1552, %scevgep1551
  %found.conflict1556 = and i1 %bound01554, %bound11555
  br i1 %found.conflict1556, label %polly.loop_header478.us.preheader, label %vector.ph1563

vector.ph1563:                                    ; preds = %vector.memcheck1547
  %n.vec1565 = and i64 %177, -4
  %broadcast.splatinsert1571 = insertelement <4 x double> poison, double %_p_scalar_492.us, i32 0
  %broadcast.splat1572 = shufflevector <4 x double> %broadcast.splatinsert1571, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1574 = insertelement <4 x double> poison, double %_p_scalar_500.us, i32 0
  %broadcast.splat1575 = shufflevector <4 x double> %broadcast.splatinsert1574, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1560

vector.body1560:                                  ; preds = %vector.body1560, %vector.ph1563
  %index1566 = phi i64 [ 0, %vector.ph1563 ], [ %index.next1567, %vector.body1560 ]
  %193 = add nuw nsw i64 %index1566, %173
  %194 = add nuw nsw i64 %index1566, %polly.access.mul.Packed_MemRef_call1301485.us
  %195 = getelementptr double, double* %Packed_MemRef_call1301, i64 %194
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1570 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !94
  %197 = fmul fast <4 x double> %broadcast.splat1572, %wide.load1570
  %198 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2303489.us
  %199 = getelementptr double, double* %Packed_MemRef_call2303, i64 %198
  %200 = bitcast double* %199 to <4 x double>*
  %wide.load1573 = load <4 x double>, <4 x double>* %200, align 8
  %201 = fmul fast <4 x double> %broadcast.splat1575, %wide.load1573
  %202 = shl i64 %193, 3
  %203 = add nuw nsw i64 %202, %189
  %204 = getelementptr i8, i8* %call, i64 %203
  %205 = bitcast i8* %204 to <4 x double>*
  %wide.load1576 = load <4 x double>, <4 x double>* %205, align 8, !alias.scope !97, !noalias !99
  %206 = fadd fast <4 x double> %201, %197
  %207 = fmul fast <4 x double> %206, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %208 = fadd fast <4 x double> %207, %wide.load1576
  %209 = bitcast i8* %204 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !97, !noalias !99
  %index.next1567 = add i64 %index1566, 4
  %210 = icmp eq i64 %index.next1567, %n.vec1565
  br i1 %210, label %middle.block1558, label %vector.body1560, !llvm.loop !100

middle.block1558:                                 ; preds = %vector.body1560
  %cmp.n1569 = icmp eq i64 %177, %n.vec1565
  br i1 %cmp.n1569, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us.preheader

polly.loop_header478.us.preheader:                ; preds = %vector.memcheck1547, %polly.loop_header471.us, %middle.block1558
  %polly.indvar482.us.ph = phi i64 [ 0, %vector.memcheck1547 ], [ 0, %polly.loop_header471.us ], [ %n.vec1565, %middle.block1558 ]
  br label %polly.loop_header478.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.us.preheader, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ %polly.indvar482.us.ph, %polly.loop_header478.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar482.us, %173
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %polly.access.add.Packed_MemRef_call2303494.us = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2303489.us
  %polly.access.Packed_MemRef_call2303495.us = getelementptr double, double* %Packed_MemRef_call2303, i64 %polly.access.add.Packed_MemRef_call2303494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2303495.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %189
  %scevgep501.us = getelementptr i8, i8* %call, i64 %213
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar482.us, %smin1063
  br i1 %exitcond1064.not, label %polly.loop_exit480.loopexit.us, label %polly.loop_header478.us, !llvm.loop !101

polly.loop_exit480.loopexit.us:                   ; preds = %polly.loop_header478.us, %middle.block1558
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next475.us, 20
  br i1 %exitcond1065.not, label %polly.loop_exit473, label %polly.loop_header471.us

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall510 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header594

polly.exiting507:                                 ; preds = %polly.loop_exit634
  tail call void @free(i8* %malloccall508)
  tail call void @free(i8* %malloccall510)
  br label %kernel_syr2k.exit

polly.loop_header594:                             ; preds = %polly.loop_exit602, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit602 ], [ 0, %polly.start506 ]
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 1, %polly.start506 ]
  %214 = add i64 %indvar, 1
  %215 = mul nuw nsw i64 %polly.indvar597, 640
  %scevgep606 = getelementptr i8, i8* %call, i64 %215
  %min.iters.check1483 = icmp ult i64 %214, 4
  br i1 %min.iters.check1483, label %polly.loop_header600.preheader, label %vector.ph1484

vector.ph1484:                                    ; preds = %polly.loop_header594
  %n.vec1486 = and i64 %214, -4
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1488, %vector.body1482 ]
  %216 = shl nuw nsw i64 %index1487, 3
  %217 = getelementptr i8, i8* %scevgep606, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %218, align 8, !alias.scope !102, !noalias !104
  %219 = fmul fast <4 x double> %wide.load1491, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %219, <4 x double>* %220, align 8, !alias.scope !102, !noalias !104
  %index.next1488 = add i64 %index1487, 4
  %221 = icmp eq i64 %index.next1488, %n.vec1486
  br i1 %221, label %middle.block1480, label %vector.body1482, !llvm.loop !109

middle.block1480:                                 ; preds = %vector.body1482
  %cmp.n1490 = icmp eq i64 %214, %n.vec1486
  br i1 %cmp.n1490, label %polly.loop_exit602, label %polly.loop_header600.preheader

polly.loop_header600.preheader:                   ; preds = %polly.loop_header594, %middle.block1480
  %polly.indvar603.ph = phi i64 [ 0, %polly.loop_header594 ], [ %n.vec1486, %middle.block1480 ]
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %middle.block1480
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next598, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1098.not, label %polly.loop_header610.preheader, label %polly.loop_header594

polly.loop_header610.preheader:                   ; preds = %polly.loop_exit602
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  %Packed_MemRef_call2511 = bitcast i8* %malloccall510 to double*
  br label %polly.loop_header610

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_header600 ], [ %polly.indvar603.ph, %polly.loop_header600.preheader ]
  %222 = shl nuw nsw i64 %polly.indvar603, 3
  %scevgep607 = getelementptr i8, i8* %scevgep606, i64 %222
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !102, !noalias !104
  %p_mul.i = fmul fast double %_p_scalar_609, 1.200000e+00
  store double %p_mul.i, double* %scevgep607608, align 8, !alias.scope !102, !noalias !104
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next604, %polly.indvar597
  br i1 %exitcond1097.not, label %polly.loop_exit602, label %polly.loop_header600, !llvm.loop !110

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_exit618
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_exit618 ], [ 0, %polly.loop_header610.preheader ]
  %polly.access.mul.Packed_MemRef_call2511 = mul nuw nsw i64 %polly.indvar613, 80
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_header616
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next614, 60
  br i1 %exitcond1096.not, label %polly.loop_header626, label %polly.loop_header610

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %polly.access.mul.call2623 = mul nuw nsw i64 %polly.indvar619, 60
  %polly.access.add.call2624 = add nuw nsw i64 %polly.access.mul.call2623, %polly.indvar613
  %polly.access.call2625 = getelementptr double, double* %polly.access.cast.call2726, i64 %polly.access.add.call2624
  %polly.access.call2625.load = load double, double* %polly.access.call2625, align 8, !alias.scope !106, !noalias !111
  %polly.access.add.Packed_MemRef_call2511 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call2511
  %polly.access.Packed_MemRef_call2511 = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511
  store double %polly.access.call2625.load, double* %polly.access.Packed_MemRef_call2511, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next620, 80
  br i1 %exitcond1095.not, label %polly.loop_exit618, label %polly.loop_header616

polly.loop_header626:                             ; preds = %polly.loop_exit618, %polly.loop_exit634
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit634 ], [ 1, %polly.loop_exit618 ]
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_exit618 ]
  %223 = mul nuw nsw i64 %polly.indvar629, 20
  %224 = mul nuw nsw i64 %polly.indvar629, 12800
  %225 = or i64 %224, 8
  %226 = mul nuw nsw i64 %polly.indvar629, 20
  %227 = mul nuw nsw i64 %polly.indvar629, 20
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_exit640
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 20
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next630, 4
  br i1 %exitcond1094.not, label %polly.exiting507, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_exit640, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_exit640 ]
  %228 = mul nuw nsw i64 %polly.indvar635, 20
  br label %polly.loop_header638

polly.loop_exit640:                               ; preds = %polly.loop_exit646
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next636, 3
  br i1 %exitcond1093.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header638:                             ; preds = %polly.loop_exit646, %polly.loop_header632
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit646 ], [ %indvars.iv1077, %polly.loop_header632 ]
  %polly.indvar641 = phi i64 [ %polly.indvar_next642, %polly.loop_exit646 ], [ 0, %polly.loop_header632 ]
  %229 = mul nsw i64 %polly.indvar641, -20
  %230 = add i64 %223, %229
  %231 = mul nuw nsw i64 %polly.indvar641, 160
  %232 = add nuw i64 %224, %231
  %233 = add nuw i64 %225, %231
  %234 = mul nsw i64 %polly.indvar641, -20
  %235 = add i64 %226, %234
  %236 = mul nuw nsw i64 %polly.indvar641, 20
  %237 = sub nsw i64 %227, %236
  %238 = add nuw nsw i64 %236, 20
  br label %polly.loop_header644

polly.loop_exit646:                               ; preds = %polly.loop_exit681
  %polly.indvar_next642 = add nuw nsw i64 %polly.indvar641, 1
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, -20
  %exitcond1092.not = icmp eq i64 %polly.indvar_next642, %indvars.iv1090
  br i1 %exitcond1092.not, label %polly.loop_exit640, label %polly.loop_header638

polly.loop_header644:                             ; preds = %polly.loop_exit681, %polly.loop_header638
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082, %polly.loop_exit681 ], [ %indvars.iv1079, %polly.loop_header638 ]
  %polly.indvar647 = phi i64 [ %polly.indvar_next648, %polly.loop_exit681 ], [ 0, %polly.loop_header638 ]
  %239 = add i64 %230, %polly.indvar647
  %smin1505 = call i64 @llvm.smin.i64(i64 %239, i64 19)
  %240 = add nsw i64 %smin1505, 1
  %241 = mul nuw nsw i64 %polly.indvar647, 640
  %242 = add i64 %232, %241
  %scevgep1493 = getelementptr i8, i8* %call, i64 %242
  %243 = add i64 %233, %241
  %scevgep1494 = getelementptr i8, i8* %call, i64 %243
  %244 = add i64 %235, %polly.indvar647
  %smin = call i64 @llvm.smin.i64(i64 %244, i64 19)
  %245 = shl nsw i64 %smin, 3
  %scevgep1495 = getelementptr i8, i8* %scevgep1494, i64 %245
  %246 = add nsw i64 %245, 8
  %smin1086 = call i64 @llvm.smin.i64(i64 %indvars.iv1081, i64 19)
  %247 = add nsw i64 %polly.indvar647, %237
  %polly.loop_guard6601183 = icmp sgt i64 %247, -1
  %248 = add nuw nsw i64 %polly.indvar647, %227
  %.not919 = icmp ult i64 %248, %238
  %polly.access.mul.call1673 = mul nuw nsw i64 %248, 60
  %249 = add nuw nsw i64 %polly.access.mul.call1673, %228
  br i1 %polly.loop_guard6601183, label %polly.loop_header650.us, label %polly.loop_header644.split

polly.loop_header650.us:                          ; preds = %polly.loop_header644, %polly.merge669.us
  %polly.indvar653.us = phi i64 [ %polly.indvar_next654.us, %polly.merge669.us ], [ 0, %polly.loop_header644 ]
  %250 = add nuw nsw i64 %polly.indvar653.us, %228
  %polly.access.mul.Packed_MemRef_call1509.us = mul nuw nsw i64 %polly.indvar653.us, 80
  br label %polly.loop_header657.us

polly.loop_header657.us:                          ; preds = %polly.loop_header650.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header650.us ]
  %251 = add nuw nsw i64 %polly.indvar661.us, %236
  %polly.access.mul.call1665.us = mul nuw nsw i64 %251, 60
  %polly.access.add.call1666.us = add nuw nsw i64 %250, %polly.access.mul.call1665.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509.us
  %polly.access.Packed_MemRef_call1509.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar661.us, %smin1086
  br i1 %exitcond1084.not, label %polly.cond668.loopexit.us, label %polly.loop_header657.us

polly.then670.us:                                 ; preds = %polly.cond668.loopexit.us
  %polly.access.add.call1674.us = add nuw nsw i64 %249, %polly.indvar653.us
  %polly.access.call1675.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.us
  %polly.access.call1675.load.us = load double, double* %polly.access.call1675.us, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509.us, %247
  %polly.access.Packed_MemRef_call1509678.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.us
  store double %polly.access.call1675.load.us, double* %polly.access.Packed_MemRef_call1509678.us, align 8
  br label %polly.merge669.us

polly.merge669.us:                                ; preds = %polly.then670.us, %polly.cond668.loopexit.us
  %polly.indvar_next654.us = add nuw nsw i64 %polly.indvar653.us, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next654.us, 20
  br i1 %exitcond1085.not, label %polly.loop_header679.preheader, label %polly.loop_header650.us

polly.cond668.loopexit.us:                        ; preds = %polly.loop_header657.us
  br i1 %.not919, label %polly.merge669.us, label %polly.then670.us

polly.loop_header644.split:                       ; preds = %polly.loop_header644
  br i1 %.not919, label %polly.loop_exit681, label %polly.loop_header650.preheader

polly.loop_header650.preheader:                   ; preds = %polly.loop_header644.split
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1716, i64 %249
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !105, !noalias !112
  %polly.access.Packed_MemRef_call1509678 = getelementptr double, double* %Packed_MemRef_call1509, i64 %247
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1509678, align 8
  %polly.access.add.call1674.1 = or i64 %249, 1
  %polly.access.call1675.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.1
  %polly.access.call1675.load.1 = load double, double* %polly.access.call1675.1, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.1 = add nsw i64 %247, 80
  %polly.access.Packed_MemRef_call1509678.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.1
  store double %polly.access.call1675.load.1, double* %polly.access.Packed_MemRef_call1509678.1, align 8
  %polly.access.add.call1674.2 = or i64 %249, 2
  %polly.access.call1675.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.2
  %polly.access.call1675.load.2 = load double, double* %polly.access.call1675.2, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.2 = add nsw i64 %247, 160
  %polly.access.Packed_MemRef_call1509678.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.2
  store double %polly.access.call1675.load.2, double* %polly.access.Packed_MemRef_call1509678.2, align 8
  %polly.access.add.call1674.3 = or i64 %249, 3
  %polly.access.call1675.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.3
  %polly.access.call1675.load.3 = load double, double* %polly.access.call1675.3, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.3 = add nsw i64 %247, 240
  %polly.access.Packed_MemRef_call1509678.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.3
  store double %polly.access.call1675.load.3, double* %polly.access.Packed_MemRef_call1509678.3, align 8
  %polly.access.add.call1674.4 = add nuw nsw i64 %249, 4
  %polly.access.call1675.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.4
  %polly.access.call1675.load.4 = load double, double* %polly.access.call1675.4, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.4 = add nsw i64 %247, 320
  %polly.access.Packed_MemRef_call1509678.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.4
  store double %polly.access.call1675.load.4, double* %polly.access.Packed_MemRef_call1509678.4, align 8
  %polly.access.add.call1674.5 = add nuw nsw i64 %249, 5
  %polly.access.call1675.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.5
  %polly.access.call1675.load.5 = load double, double* %polly.access.call1675.5, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.5 = add nsw i64 %247, 400
  %polly.access.Packed_MemRef_call1509678.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.5
  store double %polly.access.call1675.load.5, double* %polly.access.Packed_MemRef_call1509678.5, align 8
  %polly.access.add.call1674.6 = add nuw nsw i64 %249, 6
  %polly.access.call1675.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.6
  %polly.access.call1675.load.6 = load double, double* %polly.access.call1675.6, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.6 = add nsw i64 %247, 480
  %polly.access.Packed_MemRef_call1509678.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.6
  store double %polly.access.call1675.load.6, double* %polly.access.Packed_MemRef_call1509678.6, align 8
  %polly.access.add.call1674.7 = add nuw nsw i64 %249, 7
  %polly.access.call1675.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.7
  %polly.access.call1675.load.7 = load double, double* %polly.access.call1675.7, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.7 = add nsw i64 %247, 560
  %polly.access.Packed_MemRef_call1509678.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.7
  store double %polly.access.call1675.load.7, double* %polly.access.Packed_MemRef_call1509678.7, align 8
  %polly.access.add.call1674.8 = add nuw nsw i64 %249, 8
  %polly.access.call1675.8 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.8
  %polly.access.call1675.load.8 = load double, double* %polly.access.call1675.8, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.8 = add nsw i64 %247, 640
  %polly.access.Packed_MemRef_call1509678.8 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.8
  store double %polly.access.call1675.load.8, double* %polly.access.Packed_MemRef_call1509678.8, align 8
  %polly.access.add.call1674.9 = add nuw nsw i64 %249, 9
  %polly.access.call1675.9 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.9
  %polly.access.call1675.load.9 = load double, double* %polly.access.call1675.9, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.9 = add nsw i64 %247, 720
  %polly.access.Packed_MemRef_call1509678.9 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.9
  store double %polly.access.call1675.load.9, double* %polly.access.Packed_MemRef_call1509678.9, align 8
  %polly.access.add.call1674.10 = add nuw nsw i64 %249, 10
  %polly.access.call1675.10 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.10
  %polly.access.call1675.load.10 = load double, double* %polly.access.call1675.10, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.10 = add nsw i64 %247, 800
  %polly.access.Packed_MemRef_call1509678.10 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.10
  store double %polly.access.call1675.load.10, double* %polly.access.Packed_MemRef_call1509678.10, align 8
  %polly.access.add.call1674.11 = add nuw nsw i64 %249, 11
  %polly.access.call1675.11 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.11
  %polly.access.call1675.load.11 = load double, double* %polly.access.call1675.11, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.11 = add nsw i64 %247, 880
  %polly.access.Packed_MemRef_call1509678.11 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.11
  store double %polly.access.call1675.load.11, double* %polly.access.Packed_MemRef_call1509678.11, align 8
  %polly.access.add.call1674.12 = add nuw nsw i64 %249, 12
  %polly.access.call1675.12 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.12
  %polly.access.call1675.load.12 = load double, double* %polly.access.call1675.12, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.12 = add nsw i64 %247, 960
  %polly.access.Packed_MemRef_call1509678.12 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.12
  store double %polly.access.call1675.load.12, double* %polly.access.Packed_MemRef_call1509678.12, align 8
  %polly.access.add.call1674.13 = add nuw nsw i64 %249, 13
  %polly.access.call1675.13 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.13
  %polly.access.call1675.load.13 = load double, double* %polly.access.call1675.13, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.13 = add nsw i64 %247, 1040
  %polly.access.Packed_MemRef_call1509678.13 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.13
  store double %polly.access.call1675.load.13, double* %polly.access.Packed_MemRef_call1509678.13, align 8
  %polly.access.add.call1674.14 = add nuw nsw i64 %249, 14
  %polly.access.call1675.14 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.14
  %polly.access.call1675.load.14 = load double, double* %polly.access.call1675.14, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.14 = add nsw i64 %247, 1120
  %polly.access.Packed_MemRef_call1509678.14 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.14
  store double %polly.access.call1675.load.14, double* %polly.access.Packed_MemRef_call1509678.14, align 8
  %polly.access.add.call1674.15 = add nuw nsw i64 %249, 15
  %polly.access.call1675.15 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.15
  %polly.access.call1675.load.15 = load double, double* %polly.access.call1675.15, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.15 = add nsw i64 %247, 1200
  %polly.access.Packed_MemRef_call1509678.15 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.15
  store double %polly.access.call1675.load.15, double* %polly.access.Packed_MemRef_call1509678.15, align 8
  %polly.access.add.call1674.16 = add nuw nsw i64 %249, 16
  %polly.access.call1675.16 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.16
  %polly.access.call1675.load.16 = load double, double* %polly.access.call1675.16, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.16 = add nsw i64 %247, 1280
  %polly.access.Packed_MemRef_call1509678.16 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.16
  store double %polly.access.call1675.load.16, double* %polly.access.Packed_MemRef_call1509678.16, align 8
  %polly.access.add.call1674.17 = add nuw nsw i64 %249, 17
  %polly.access.call1675.17 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.17
  %polly.access.call1675.load.17 = load double, double* %polly.access.call1675.17, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.17 = add nsw i64 %247, 1360
  %polly.access.Packed_MemRef_call1509678.17 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.17
  store double %polly.access.call1675.load.17, double* %polly.access.Packed_MemRef_call1509678.17, align 8
  %polly.access.add.call1674.18 = add nuw nsw i64 %249, 18
  %polly.access.call1675.18 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.18
  %polly.access.call1675.load.18 = load double, double* %polly.access.call1675.18, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.18 = add nsw i64 %247, 1440
  %polly.access.Packed_MemRef_call1509678.18 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.18
  store double %polly.access.call1675.load.18, double* %polly.access.Packed_MemRef_call1509678.18, align 8
  %polly.access.add.call1674.19 = add nuw nsw i64 %249, 19
  %polly.access.call1675.19 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1674.19
  %polly.access.call1675.load.19 = load double, double* %polly.access.call1675.19, align 8, !alias.scope !105, !noalias !112
  %polly.access.add.Packed_MemRef_call1509677.19 = add nsw i64 %247, 1520
  %polly.access.Packed_MemRef_call1509678.19 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509677.19
  store double %polly.access.call1675.load.19, double* %polly.access.Packed_MemRef_call1509678.19, align 8
  br label %polly.loop_exit681

polly.loop_exit681:                               ; preds = %polly.loop_exit688.loopexit.us, %polly.loop_header644.split, %polly.loop_header650.preheader, %polly.loop_header679.preheader
  %polly.indvar_next648 = add nuw nsw i64 %polly.indvar647, 1
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next648, 20
  br i1 %exitcond1089.not, label %polly.loop_exit646, label %polly.loop_header644

polly.loop_header679.preheader:                   ; preds = %polly.merge669.us
  %252 = mul nuw nsw i64 %248, 640
  br i1 %polly.loop_guard6601183, label %polly.loop_header679.us, label %polly.loop_exit681

polly.loop_header679.us:                          ; preds = %polly.loop_header679.preheader, %polly.loop_exit688.loopexit.us
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.loopexit.us ], [ 0, %polly.loop_header679.preheader ]
  %253 = mul nuw nsw i64 %polly.indvar682.us, 640
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar682.us, 80
  %254 = add nuw nsw i64 %polly.indvar682.us, %228
  %polly.access.mul.Packed_MemRef_call2511697.us = mul nuw nsw i64 %254, 80
  %polly.access.add.Packed_MemRef_call2511698.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2511697.us, %248
  %polly.access.Packed_MemRef_call2511699.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511698.us
  %_p_scalar_700.us = load double, double* %polly.access.Packed_MemRef_call2511699.us, align 8
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %247
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %min.iters.check1506 = icmp ult i64 %240, 4
  br i1 %min.iters.check1506, label %polly.loop_header686.us.preheader, label %vector.memcheck1492

vector.memcheck1492:                              ; preds = %polly.loop_header679.us
  %255 = add i64 %246, %253
  %scevgep1497 = getelementptr i8, i8* %malloccall508, i64 %255
  %scevgep1496 = getelementptr i8, i8* %malloccall508, i64 %253
  %bound01498 = icmp ult i8* %scevgep1493, %scevgep1497
  %bound11499 = icmp ult i8* %scevgep1496, %scevgep1495
  %found.conflict1500 = and i1 %bound01498, %bound11499
  br i1 %found.conflict1500, label %polly.loop_header686.us.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %vector.memcheck1492
  %n.vec1509 = and i64 %240, -4
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_700.us, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1518 = insertelement <4 x double> poison, double %_p_scalar_708.us, i32 0
  %broadcast.splat1519 = shufflevector <4 x double> %broadcast.splatinsert1518, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1504 ]
  %256 = add nuw nsw i64 %index1510, %236
  %257 = add nuw nsw i64 %index1510, %polly.access.mul.Packed_MemRef_call1509693.us
  %258 = getelementptr double, double* %Packed_MemRef_call1509, i64 %257
  %259 = bitcast double* %258 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !113
  %260 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %261 = add nuw nsw i64 %256, %polly.access.mul.Packed_MemRef_call2511697.us
  %262 = getelementptr double, double* %Packed_MemRef_call2511, i64 %261
  %263 = bitcast double* %262 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %263, align 8
  %264 = fmul fast <4 x double> %broadcast.splat1519, %wide.load1517
  %265 = shl i64 %256, 3
  %266 = add nuw nsw i64 %265, %252
  %267 = getelementptr i8, i8* %call, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %268, align 8, !alias.scope !116, !noalias !118
  %269 = fadd fast <4 x double> %264, %260
  %270 = fmul fast <4 x double> %269, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %271 = fadd fast <4 x double> %270, %wide.load1520
  %272 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %271, <4 x double>* %272, align 8, !alias.scope !116, !noalias !118
  %index.next1511 = add i64 %index1510, 4
  %273 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %273, label %middle.block1502, label %vector.body1504, !llvm.loop !119

middle.block1502:                                 ; preds = %vector.body1504
  %cmp.n1513 = icmp eq i64 %240, %n.vec1509
  br i1 %cmp.n1513, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us.preheader

polly.loop_header686.us.preheader:                ; preds = %vector.memcheck1492, %polly.loop_header679.us, %middle.block1502
  %polly.indvar690.us.ph = phi i64 [ 0, %vector.memcheck1492 ], [ 0, %polly.loop_header679.us ], [ %n.vec1509, %middle.block1502 ]
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ %polly.indvar690.us.ph, %polly.loop_header686.us.preheader ]
  %274 = add nuw nsw i64 %polly.indvar690.us, %236
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %polly.access.add.Packed_MemRef_call2511702.us = add nuw nsw i64 %274, %polly.access.mul.Packed_MemRef_call2511697.us
  %polly.access.Packed_MemRef_call2511703.us = getelementptr double, double* %Packed_MemRef_call2511, i64 %polly.access.add.Packed_MemRef_call2511702.us
  %_p_scalar_704.us = load double, double* %polly.access.Packed_MemRef_call2511703.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %252
  %scevgep709.us = getelementptr i8, i8* %call, i64 %276
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !102, !noalias !104
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !102, !noalias !104
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar690.us, %smin1086
  br i1 %exitcond1087.not, label %polly.loop_exit688.loopexit.us, label %polly.loop_header686.us, !llvm.loop !120

polly.loop_exit688.loopexit.us:                   ; preds = %polly.loop_header686.us, %middle.block1502
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next683.us, 20
  br i1 %exitcond1088.not, label %polly.loop_exit681, label %polly.loop_header679.us

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %277 = mul nuw nsw i64 %polly.indvar853, 640
  %278 = trunc i64 %polly.indvar853 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header850
  %index1206 = phi i64 [ 0, %polly.loop_header850 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1212 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850 ], [ %vec.ind.next1213, %vector.body1204 ]
  %279 = mul <4 x i32> %vec.ind1212, %broadcast.splat1215
  %280 = add <4 x i32> %279, <i32 3, i32 3, i32 3, i32 3>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %284 = shl i64 %index1206, 3
  %285 = add nuw nsw i64 %284, %277
  %286 = getelementptr i8, i8* %call, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !121, !noalias !123
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1213 = add <4 x i32> %vec.ind1212, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1207, 32
  br i1 %288, label %polly.loop_exit858, label %vector.body1204, !llvm.loop !126

polly.loop_exit858:                               ; preds = %vector.body1204
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond1118.not, label %polly.loop_header850.1, label %polly.loop_header850

polly.loop_header877:                             ; preds = %polly.loop_exit858.2.2, %polly.loop_exit885
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858.2.2 ]
  %289 = mul nuw nsw i64 %polly.indvar880, 480
  %290 = trunc i64 %polly.indvar880 to i32
  %broadcast.splatinsert1328 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1329 = shufflevector <4 x i32> %broadcast.splatinsert1328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header877
  %index1320 = phi i64 [ 0, %polly.loop_header877 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header877 ], [ %vec.ind.next1327, %vector.body1318 ]
  %291 = mul <4 x i32> %vec.ind1326, %broadcast.splat1329
  %292 = add <4 x i32> %291, <i32 2, i32 2, i32 2, i32 2>
  %293 = urem <4 x i32> %292, <i32 60, i32 60, i32 60, i32 60>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %296 = shl i64 %index1320, 3
  %297 = add i64 %296, %289
  %298 = getelementptr i8, i8* %call2, i64 %297
  %299 = bitcast i8* %298 to <4 x double>*
  store <4 x double> %295, <4 x double>* %299, align 8, !alias.scope !125, !noalias !127
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1327 = add <4 x i32> %vec.ind1326, <i32 4, i32 4, i32 4, i32 4>
  %300 = icmp eq i64 %index.next1321, 32
  br i1 %300, label %polly.loop_exit885, label %vector.body1318, !llvm.loop !128

polly.loop_exit885:                               ; preds = %vector.body1318
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next881, 32
  br i1 %exitcond1109.not, label %polly.loop_header877.1, label %polly.loop_header877

polly.loop_header903:                             ; preds = %polly.loop_exit885.1.2, %polly.loop_exit911
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885.1.2 ]
  %301 = mul nuw nsw i64 %polly.indvar906, 480
  %302 = trunc i64 %polly.indvar906 to i32
  %broadcast.splatinsert1406 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1407 = shufflevector <4 x i32> %broadcast.splatinsert1406, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %polly.loop_header903
  %index1398 = phi i64 [ 0, %polly.loop_header903 ], [ %index.next1399, %vector.body1396 ]
  %vec.ind1404 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header903 ], [ %vec.ind.next1405, %vector.body1396 ]
  %303 = mul <4 x i32> %vec.ind1404, %broadcast.splat1407
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = shl i64 %index1398, 3
  %309 = add i64 %308, %301
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !124, !noalias !129
  %index.next1399 = add i64 %index1398, 4
  %vec.ind.next1405 = add <4 x i32> %vec.ind1404, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1399, 32
  br i1 %312, label %polly.loop_exit911, label %vector.body1396, !llvm.loop !130

polly.loop_exit911:                               ; preds = %vector.body1396
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next907, 32
  br i1 %exitcond1103.not, label %polly.loop_header903.1, label %polly.loop_header903

polly.loop_header903.1:                           ; preds = %polly.loop_exit911, %polly.loop_exit911.1
  %polly.indvar906.1 = phi i64 [ %polly.indvar_next907.1, %polly.loop_exit911.1 ], [ 0, %polly.loop_exit911 ]
  %313 = mul nuw nsw i64 %polly.indvar906.1, 480
  %314 = trunc i64 %polly.indvar906.1 to i32
  %broadcast.splatinsert1418 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1419 = shufflevector <4 x i32> %broadcast.splatinsert1418, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %polly.loop_header903.1
  %index1412 = phi i64 [ 0, %polly.loop_header903.1 ], [ %index.next1413, %vector.body1410 ]
  %vec.ind1416 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header903.1 ], [ %vec.ind.next1417, %vector.body1410 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1416, <i64 32, i64 32, i64 32, i64 32>
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1419, %316
  %318 = add <4 x i32> %317, <i32 1, i32 1, i32 1, i32 1>
  %319 = urem <4 x i32> %318, <i32 80, i32 80, i32 80, i32 80>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %313
  %325 = getelementptr i8, i8* %call1, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !124, !noalias !129
  %index.next1413 = add i64 %index1412, 4
  %vec.ind.next1417 = add <4 x i64> %vec.ind1416, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1413, 28
  br i1 %327, label %polly.loop_exit911.1, label %vector.body1410, !llvm.loop !131

polly.loop_exit911.1:                             ; preds = %vector.body1410
  %polly.indvar_next907.1 = add nuw nsw i64 %polly.indvar906.1, 1
  %exitcond1103.1.not = icmp eq i64 %polly.indvar_next907.1, 32
  br i1 %exitcond1103.1.not, label %polly.loop_header903.11126, label %polly.loop_header903.1

polly.loop_header903.11126:                       ; preds = %polly.loop_exit911.1, %polly.loop_exit911.11137
  %polly.indvar906.11125 = phi i64 [ %polly.indvar_next907.11135, %polly.loop_exit911.11137 ], [ 0, %polly.loop_exit911.1 ]
  %328 = add nuw nsw i64 %polly.indvar906.11125, 32
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1432 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1433 = shufflevector <4 x i32> %broadcast.splatinsert1432, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %polly.loop_header903.11126
  %index1424 = phi i64 [ 0, %polly.loop_header903.11126 ], [ %index.next1425, %vector.body1422 ]
  %vec.ind1430 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header903.11126 ], [ %vec.ind.next1431, %vector.body1422 ]
  %331 = mul <4 x i32> %vec.ind1430, %broadcast.splat1433
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %336 = shl i64 %index1424, 3
  %337 = add i64 %336, %329
  %338 = getelementptr i8, i8* %call1, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %335, <4 x double>* %339, align 8, !alias.scope !124, !noalias !129
  %index.next1425 = add i64 %index1424, 4
  %vec.ind.next1431 = add <4 x i32> %vec.ind1430, <i32 4, i32 4, i32 4, i32 4>
  %340 = icmp eq i64 %index.next1425, 32
  br i1 %340, label %polly.loop_exit911.11137, label %vector.body1422, !llvm.loop !132

polly.loop_exit911.11137:                         ; preds = %vector.body1422
  %polly.indvar_next907.11135 = add nuw nsw i64 %polly.indvar906.11125, 1
  %exitcond1103.11136.not = icmp eq i64 %polly.indvar_next907.11135, 32
  br i1 %exitcond1103.11136.not, label %polly.loop_header903.1.1, label %polly.loop_header903.11126

polly.loop_header903.1.1:                         ; preds = %polly.loop_exit911.11137, %polly.loop_exit911.1.1
  %polly.indvar906.1.1 = phi i64 [ %polly.indvar_next907.1.1, %polly.loop_exit911.1.1 ], [ 0, %polly.loop_exit911.11137 ]
  %341 = add nuw nsw i64 %polly.indvar906.1.1, 32
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1444 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1445 = shufflevector <4 x i32> %broadcast.splatinsert1444, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1436

vector.body1436:                                  ; preds = %vector.body1436, %polly.loop_header903.1.1
  %index1438 = phi i64 [ 0, %polly.loop_header903.1.1 ], [ %index.next1439, %vector.body1436 ]
  %vec.ind1442 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header903.1.1 ], [ %vec.ind.next1443, %vector.body1436 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1442, <i64 32, i64 32, i64 32, i64 32>
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1445, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 80, i32 80, i32 80, i32 80>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add i64 %352, %342
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !124, !noalias !129
  %index.next1439 = add i64 %index1438, 4
  %vec.ind.next1443 = add <4 x i64> %vec.ind1442, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1439, 28
  br i1 %356, label %polly.loop_exit911.1.1, label %vector.body1436, !llvm.loop !133

polly.loop_exit911.1.1:                           ; preds = %vector.body1436
  %polly.indvar_next907.1.1 = add nuw nsw i64 %polly.indvar906.1.1, 1
  %exitcond1103.1.1.not = icmp eq i64 %polly.indvar_next907.1.1, 32
  br i1 %exitcond1103.1.1.not, label %polly.loop_header903.2, label %polly.loop_header903.1.1

polly.loop_header903.2:                           ; preds = %polly.loop_exit911.1.1, %polly.loop_exit911.2
  %polly.indvar906.2 = phi i64 [ %polly.indvar_next907.2, %polly.loop_exit911.2 ], [ 0, %polly.loop_exit911.1.1 ]
  %357 = add nuw nsw i64 %polly.indvar906.2, 64
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1458 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1459 = shufflevector <4 x i32> %broadcast.splatinsert1458, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %polly.loop_header903.2
  %index1450 = phi i64 [ 0, %polly.loop_header903.2 ], [ %index.next1451, %vector.body1448 ]
  %vec.ind1456 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header903.2 ], [ %vec.ind.next1457, %vector.body1448 ]
  %360 = mul <4 x i32> %vec.ind1456, %broadcast.splat1459
  %361 = add <4 x i32> %360, <i32 1, i32 1, i32 1, i32 1>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %365 = shl i64 %index1450, 3
  %366 = add i64 %365, %358
  %367 = getelementptr i8, i8* %call1, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %364, <4 x double>* %368, align 8, !alias.scope !124, !noalias !129
  %index.next1451 = add i64 %index1450, 4
  %vec.ind.next1457 = add <4 x i32> %vec.ind1456, <i32 4, i32 4, i32 4, i32 4>
  %369 = icmp eq i64 %index.next1451, 32
  br i1 %369, label %polly.loop_exit911.2, label %vector.body1448, !llvm.loop !134

polly.loop_exit911.2:                             ; preds = %vector.body1448
  %polly.indvar_next907.2 = add nuw nsw i64 %polly.indvar906.2, 1
  %exitcond1103.2.not = icmp eq i64 %polly.indvar_next907.2, 16
  br i1 %exitcond1103.2.not, label %polly.loop_header903.1.2, label %polly.loop_header903.2

polly.loop_header903.1.2:                         ; preds = %polly.loop_exit911.2, %polly.loop_exit911.1.2
  %polly.indvar906.1.2 = phi i64 [ %polly.indvar_next907.1.2, %polly.loop_exit911.1.2 ], [ 0, %polly.loop_exit911.2 ]
  %370 = add nuw nsw i64 %polly.indvar906.1.2, 64
  %371 = mul nuw nsw i64 %370, 480
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1470 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1471 = shufflevector <4 x i32> %broadcast.splatinsert1470, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %polly.loop_header903.1.2
  %index1464 = phi i64 [ 0, %polly.loop_header903.1.2 ], [ %index.next1465, %vector.body1462 ]
  %vec.ind1468 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header903.1.2 ], [ %vec.ind.next1469, %vector.body1462 ]
  %373 = add nuw nsw <4 x i64> %vec.ind1468, <i64 32, i64 32, i64 32, i64 32>
  %374 = trunc <4 x i64> %373 to <4 x i32>
  %375 = mul <4 x i32> %broadcast.splat1471, %374
  %376 = add <4 x i32> %375, <i32 1, i32 1, i32 1, i32 1>
  %377 = urem <4 x i32> %376, <i32 80, i32 80, i32 80, i32 80>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %380 = extractelement <4 x i64> %373, i32 0
  %381 = shl i64 %380, 3
  %382 = add i64 %381, %371
  %383 = getelementptr i8, i8* %call1, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %379, <4 x double>* %384, align 8, !alias.scope !124, !noalias !129
  %index.next1465 = add i64 %index1464, 4
  %vec.ind.next1469 = add <4 x i64> %vec.ind1468, <i64 4, i64 4, i64 4, i64 4>
  %385 = icmp eq i64 %index.next1465, 28
  br i1 %385, label %polly.loop_exit911.1.2, label %vector.body1462, !llvm.loop !135

polly.loop_exit911.1.2:                           ; preds = %vector.body1462
  %polly.indvar_next907.1.2 = add nuw nsw i64 %polly.indvar906.1.2, 1
  %exitcond1103.1.2.not = icmp eq i64 %polly.indvar_next907.1.2, 16
  br i1 %exitcond1103.1.2.not, label %init_array.exit, label %polly.loop_header903.1.2

polly.loop_header877.1:                           ; preds = %polly.loop_exit885, %polly.loop_exit885.1
  %polly.indvar880.1 = phi i64 [ %polly.indvar_next881.1, %polly.loop_exit885.1 ], [ 0, %polly.loop_exit885 ]
  %386 = mul nuw nsw i64 %polly.indvar880.1, 480
  %387 = trunc i64 %polly.indvar880.1 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %polly.loop_header877.1
  %index1334 = phi i64 [ 0, %polly.loop_header877.1 ], [ %index.next1335, %vector.body1332 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header877.1 ], [ %vec.ind.next1339, %vector.body1332 ]
  %388 = add nuw nsw <4 x i64> %vec.ind1338, <i64 32, i64 32, i64 32, i64 32>
  %389 = trunc <4 x i64> %388 to <4 x i32>
  %390 = mul <4 x i32> %broadcast.splat1341, %389
  %391 = add <4 x i32> %390, <i32 2, i32 2, i32 2, i32 2>
  %392 = urem <4 x i32> %391, <i32 60, i32 60, i32 60, i32 60>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %395 = extractelement <4 x i64> %388, i32 0
  %396 = shl i64 %395, 3
  %397 = add i64 %396, %386
  %398 = getelementptr i8, i8* %call2, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %394, <4 x double>* %399, align 8, !alias.scope !125, !noalias !127
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %400 = icmp eq i64 %index.next1335, 28
  br i1 %400, label %polly.loop_exit885.1, label %vector.body1332, !llvm.loop !136

polly.loop_exit885.1:                             ; preds = %vector.body1332
  %polly.indvar_next881.1 = add nuw nsw i64 %polly.indvar880.1, 1
  %exitcond1109.1.not = icmp eq i64 %polly.indvar_next881.1, 32
  br i1 %exitcond1109.1.not, label %polly.loop_header877.11140, label %polly.loop_header877.1

polly.loop_header877.11140:                       ; preds = %polly.loop_exit885.1, %polly.loop_exit885.11151
  %polly.indvar880.11139 = phi i64 [ %polly.indvar_next881.11149, %polly.loop_exit885.11151 ], [ 0, %polly.loop_exit885.1 ]
  %401 = add nuw nsw i64 %polly.indvar880.11139, 32
  %402 = mul nuw nsw i64 %401, 480
  %403 = trunc i64 %401 to i32
  %broadcast.splatinsert1354 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1355 = shufflevector <4 x i32> %broadcast.splatinsert1354, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header877.11140
  %index1346 = phi i64 [ 0, %polly.loop_header877.11140 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1352 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header877.11140 ], [ %vec.ind.next1353, %vector.body1344 ]
  %404 = mul <4 x i32> %vec.ind1352, %broadcast.splat1355
  %405 = add <4 x i32> %404, <i32 2, i32 2, i32 2, i32 2>
  %406 = urem <4 x i32> %405, <i32 60, i32 60, i32 60, i32 60>
  %407 = sitofp <4 x i32> %406 to <4 x double>
  %408 = fmul fast <4 x double> %407, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %409 = shl i64 %index1346, 3
  %410 = add i64 %409, %402
  %411 = getelementptr i8, i8* %call2, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %408, <4 x double>* %412, align 8, !alias.scope !125, !noalias !127
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1353 = add <4 x i32> %vec.ind1352, <i32 4, i32 4, i32 4, i32 4>
  %413 = icmp eq i64 %index.next1347, 32
  br i1 %413, label %polly.loop_exit885.11151, label %vector.body1344, !llvm.loop !137

polly.loop_exit885.11151:                         ; preds = %vector.body1344
  %polly.indvar_next881.11149 = add nuw nsw i64 %polly.indvar880.11139, 1
  %exitcond1109.11150.not = icmp eq i64 %polly.indvar_next881.11149, 32
  br i1 %exitcond1109.11150.not, label %polly.loop_header877.1.1, label %polly.loop_header877.11140

polly.loop_header877.1.1:                         ; preds = %polly.loop_exit885.11151, %polly.loop_exit885.1.1
  %polly.indvar880.1.1 = phi i64 [ %polly.indvar_next881.1.1, %polly.loop_exit885.1.1 ], [ 0, %polly.loop_exit885.11151 ]
  %414 = add nuw nsw i64 %polly.indvar880.1.1, 32
  %415 = mul nuw nsw i64 %414, 480
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %polly.loop_header877.1.1
  %index1360 = phi i64 [ 0, %polly.loop_header877.1.1 ], [ %index.next1361, %vector.body1358 ]
  %vec.ind1364 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header877.1.1 ], [ %vec.ind.next1365, %vector.body1358 ]
  %417 = add nuw nsw <4 x i64> %vec.ind1364, <i64 32, i64 32, i64 32, i64 32>
  %418 = trunc <4 x i64> %417 to <4 x i32>
  %419 = mul <4 x i32> %broadcast.splat1367, %418
  %420 = add <4 x i32> %419, <i32 2, i32 2, i32 2, i32 2>
  %421 = urem <4 x i32> %420, <i32 60, i32 60, i32 60, i32 60>
  %422 = sitofp <4 x i32> %421 to <4 x double>
  %423 = fmul fast <4 x double> %422, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %424 = extractelement <4 x i64> %417, i32 0
  %425 = shl i64 %424, 3
  %426 = add i64 %425, %415
  %427 = getelementptr i8, i8* %call2, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %423, <4 x double>* %428, align 8, !alias.scope !125, !noalias !127
  %index.next1361 = add i64 %index1360, 4
  %vec.ind.next1365 = add <4 x i64> %vec.ind1364, <i64 4, i64 4, i64 4, i64 4>
  %429 = icmp eq i64 %index.next1361, 28
  br i1 %429, label %polly.loop_exit885.1.1, label %vector.body1358, !llvm.loop !138

polly.loop_exit885.1.1:                           ; preds = %vector.body1358
  %polly.indvar_next881.1.1 = add nuw nsw i64 %polly.indvar880.1.1, 1
  %exitcond1109.1.1.not = icmp eq i64 %polly.indvar_next881.1.1, 32
  br i1 %exitcond1109.1.1.not, label %polly.loop_header877.2, label %polly.loop_header877.1.1

polly.loop_header877.2:                           ; preds = %polly.loop_exit885.1.1, %polly.loop_exit885.2
  %polly.indvar880.2 = phi i64 [ %polly.indvar_next881.2, %polly.loop_exit885.2 ], [ 0, %polly.loop_exit885.1.1 ]
  %430 = add nuw nsw i64 %polly.indvar880.2, 64
  %431 = mul nuw nsw i64 %430, 480
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1380 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1381 = shufflevector <4 x i32> %broadcast.splatinsert1380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header877.2
  %index1372 = phi i64 [ 0, %polly.loop_header877.2 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1378 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header877.2 ], [ %vec.ind.next1379, %vector.body1370 ]
  %433 = mul <4 x i32> %vec.ind1378, %broadcast.splat1381
  %434 = add <4 x i32> %433, <i32 2, i32 2, i32 2, i32 2>
  %435 = urem <4 x i32> %434, <i32 60, i32 60, i32 60, i32 60>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = shl i64 %index1372, 3
  %439 = add i64 %438, %431
  %440 = getelementptr i8, i8* %call2, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %437, <4 x double>* %441, align 8, !alias.scope !125, !noalias !127
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1379 = add <4 x i32> %vec.ind1378, <i32 4, i32 4, i32 4, i32 4>
  %442 = icmp eq i64 %index.next1373, 32
  br i1 %442, label %polly.loop_exit885.2, label %vector.body1370, !llvm.loop !139

polly.loop_exit885.2:                             ; preds = %vector.body1370
  %polly.indvar_next881.2 = add nuw nsw i64 %polly.indvar880.2, 1
  %exitcond1109.2.not = icmp eq i64 %polly.indvar_next881.2, 16
  br i1 %exitcond1109.2.not, label %polly.loop_header877.1.2, label %polly.loop_header877.2

polly.loop_header877.1.2:                         ; preds = %polly.loop_exit885.2, %polly.loop_exit885.1.2
  %polly.indvar880.1.2 = phi i64 [ %polly.indvar_next881.1.2, %polly.loop_exit885.1.2 ], [ 0, %polly.loop_exit885.2 ]
  %443 = add nuw nsw i64 %polly.indvar880.1.2, 64
  %444 = mul nuw nsw i64 %443, 480
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %polly.loop_header877.1.2
  %index1386 = phi i64 [ 0, %polly.loop_header877.1.2 ], [ %index.next1387, %vector.body1384 ]
  %vec.ind1390 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header877.1.2 ], [ %vec.ind.next1391, %vector.body1384 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1390, <i64 32, i64 32, i64 32, i64 32>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1393, %447
  %449 = add <4 x i32> %448, <i32 2, i32 2, i32 2, i32 2>
  %450 = urem <4 x i32> %449, <i32 60, i32 60, i32 60, i32 60>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add i64 %454, %444
  %456 = getelementptr i8, i8* %call2, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !125, !noalias !127
  %index.next1387 = add i64 %index1386, 4
  %vec.ind.next1391 = add <4 x i64> %vec.ind1390, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1387, 28
  br i1 %458, label %polly.loop_exit885.1.2, label %vector.body1384, !llvm.loop !140

polly.loop_exit885.1.2:                           ; preds = %vector.body1384
  %polly.indvar_next881.1.2 = add nuw nsw i64 %polly.indvar880.1.2, 1
  %exitcond1109.1.2.not = icmp eq i64 %polly.indvar_next881.1.2, 16
  br i1 %exitcond1109.1.2.not, label %polly.loop_header903, label %polly.loop_header877.1.2

polly.loop_header850.1:                           ; preds = %polly.loop_exit858, %polly.loop_exit858.1
  %polly.indvar853.1 = phi i64 [ %polly.indvar_next854.1, %polly.loop_exit858.1 ], [ 0, %polly.loop_exit858 ]
  %459 = mul nuw nsw i64 %polly.indvar853.1, 640
  %460 = trunc i64 %polly.indvar853.1 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %polly.loop_header850.1
  %index1220 = phi i64 [ 0, %polly.loop_header850.1 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1 ], [ %vec.ind.next1225, %vector.body1218 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1224, <i64 32, i64 32, i64 32, i64 32>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1227, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !121, !noalias !123
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1221, 32
  br i1 %473, label %polly.loop_exit858.1, label %vector.body1218, !llvm.loop !141

polly.loop_exit858.1:                             ; preds = %vector.body1218
  %polly.indvar_next854.1 = add nuw nsw i64 %polly.indvar853.1, 1
  %exitcond1118.1.not = icmp eq i64 %polly.indvar_next854.1, 32
  br i1 %exitcond1118.1.not, label %polly.loop_header850.2, label %polly.loop_header850.1

polly.loop_header850.2:                           ; preds = %polly.loop_exit858.1, %polly.loop_exit858.2
  %polly.indvar853.2 = phi i64 [ %polly.indvar_next854.2, %polly.loop_exit858.2 ], [ 0, %polly.loop_exit858.1 ]
  %474 = mul nuw nsw i64 %polly.indvar853.2, 640
  %475 = trunc i64 %polly.indvar853.2 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %polly.loop_header850.2
  %index1232 = phi i64 [ 0, %polly.loop_header850.2 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.2 ], [ %vec.ind.next1237, %vector.body1230 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1236, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1239, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !121, !noalias !123
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1233, 16
  br i1 %488, label %polly.loop_exit858.2, label %vector.body1230, !llvm.loop !142

polly.loop_exit858.2:                             ; preds = %vector.body1230
  %polly.indvar_next854.2 = add nuw nsw i64 %polly.indvar853.2, 1
  %exitcond1118.2.not = icmp eq i64 %polly.indvar_next854.2, 32
  br i1 %exitcond1118.2.not, label %polly.loop_header850.11154, label %polly.loop_header850.2

polly.loop_header850.11154:                       ; preds = %polly.loop_exit858.2, %polly.loop_exit858.11165
  %polly.indvar853.11153 = phi i64 [ %polly.indvar_next854.11163, %polly.loop_exit858.11165 ], [ 0, %polly.loop_exit858.2 ]
  %489 = add nuw nsw i64 %polly.indvar853.11153, 32
  %490 = mul nuw nsw i64 %489, 640
  %491 = trunc i64 %489 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %491, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header850.11154
  %index1244 = phi i64 [ 0, %polly.loop_header850.11154 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1250 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.11154 ], [ %vec.ind.next1251, %vector.body1242 ]
  %492 = mul <4 x i32> %vec.ind1250, %broadcast.splat1253
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = shl i64 %index1244, 3
  %498 = add nuw nsw i64 %497, %490
  %499 = getelementptr i8, i8* %call, i64 %498
  %500 = bitcast i8* %499 to <4 x double>*
  store <4 x double> %496, <4 x double>* %500, align 8, !alias.scope !121, !noalias !123
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1251 = add <4 x i32> %vec.ind1250, <i32 4, i32 4, i32 4, i32 4>
  %501 = icmp eq i64 %index.next1245, 32
  br i1 %501, label %polly.loop_exit858.11165, label %vector.body1242, !llvm.loop !143

polly.loop_exit858.11165:                         ; preds = %vector.body1242
  %polly.indvar_next854.11163 = add nuw nsw i64 %polly.indvar853.11153, 1
  %exitcond1118.11164.not = icmp eq i64 %polly.indvar_next854.11163, 32
  br i1 %exitcond1118.11164.not, label %polly.loop_header850.1.1, label %polly.loop_header850.11154

polly.loop_header850.1.1:                         ; preds = %polly.loop_exit858.11165, %polly.loop_exit858.1.1
  %polly.indvar853.1.1 = phi i64 [ %polly.indvar_next854.1.1, %polly.loop_exit858.1.1 ], [ 0, %polly.loop_exit858.11165 ]
  %502 = add nuw nsw i64 %polly.indvar853.1.1, 32
  %503 = mul nuw nsw i64 %502, 640
  %504 = trunc i64 %502 to i32
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %504, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header850.1.1
  %index1258 = phi i64 [ 0, %polly.loop_header850.1.1 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.1 ], [ %vec.ind.next1263, %vector.body1256 ]
  %505 = add nuw nsw <4 x i64> %vec.ind1262, <i64 32, i64 32, i64 32, i64 32>
  %506 = trunc <4 x i64> %505 to <4 x i32>
  %507 = mul <4 x i32> %broadcast.splat1265, %506
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = extractelement <4 x i64> %505, i32 0
  %513 = shl i64 %512, 3
  %514 = add nuw nsw i64 %513, %503
  %515 = getelementptr i8, i8* %call, i64 %514
  %516 = bitcast i8* %515 to <4 x double>*
  store <4 x double> %511, <4 x double>* %516, align 8, !alias.scope !121, !noalias !123
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %517 = icmp eq i64 %index.next1259, 32
  br i1 %517, label %polly.loop_exit858.1.1, label %vector.body1256, !llvm.loop !144

polly.loop_exit858.1.1:                           ; preds = %vector.body1256
  %polly.indvar_next854.1.1 = add nuw nsw i64 %polly.indvar853.1.1, 1
  %exitcond1118.1.1.not = icmp eq i64 %polly.indvar_next854.1.1, 32
  br i1 %exitcond1118.1.1.not, label %polly.loop_header850.2.1, label %polly.loop_header850.1.1

polly.loop_header850.2.1:                         ; preds = %polly.loop_exit858.1.1, %polly.loop_exit858.2.1
  %polly.indvar853.2.1 = phi i64 [ %polly.indvar_next854.2.1, %polly.loop_exit858.2.1 ], [ 0, %polly.loop_exit858.1.1 ]
  %518 = add nuw nsw i64 %polly.indvar853.2.1, 32
  %519 = mul nuw nsw i64 %518, 640
  %520 = trunc i64 %518 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %520, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %polly.loop_header850.2.1
  %index1270 = phi i64 [ 0, %polly.loop_header850.2.1 ], [ %index.next1271, %vector.body1268 ]
  %vec.ind1274 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.2.1 ], [ %vec.ind.next1275, %vector.body1268 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1274, <i64 64, i64 64, i64 64, i64 64>
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1277, %522
  %524 = add <4 x i32> %523, <i32 3, i32 3, i32 3, i32 3>
  %525 = urem <4 x i32> %524, <i32 80, i32 80, i32 80, i32 80>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %519
  %531 = getelementptr i8, i8* %call, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !121, !noalias !123
  %index.next1271 = add i64 %index1270, 4
  %vec.ind.next1275 = add <4 x i64> %vec.ind1274, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1271, 16
  br i1 %533, label %polly.loop_exit858.2.1, label %vector.body1268, !llvm.loop !145

polly.loop_exit858.2.1:                           ; preds = %vector.body1268
  %polly.indvar_next854.2.1 = add nuw nsw i64 %polly.indvar853.2.1, 1
  %exitcond1118.2.1.not = icmp eq i64 %polly.indvar_next854.2.1, 32
  br i1 %exitcond1118.2.1.not, label %polly.loop_header850.21168, label %polly.loop_header850.2.1

polly.loop_header850.21168:                       ; preds = %polly.loop_exit858.2.1, %polly.loop_exit858.21179
  %polly.indvar853.21167 = phi i64 [ %polly.indvar_next854.21177, %polly.loop_exit858.21179 ], [ 0, %polly.loop_exit858.2.1 ]
  %534 = add nuw nsw i64 %polly.indvar853.21167, 64
  %535 = mul nuw nsw i64 %534, 640
  %536 = trunc i64 %534 to i32
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %536, i32 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header850.21168
  %index1282 = phi i64 [ 0, %polly.loop_header850.21168 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1288 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.21168 ], [ %vec.ind.next1289, %vector.body1280 ]
  %537 = mul <4 x i32> %vec.ind1288, %broadcast.splat1291
  %538 = add <4 x i32> %537, <i32 3, i32 3, i32 3, i32 3>
  %539 = urem <4 x i32> %538, <i32 80, i32 80, i32 80, i32 80>
  %540 = sitofp <4 x i32> %539 to <4 x double>
  %541 = fmul fast <4 x double> %540, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %542 = shl i64 %index1282, 3
  %543 = add nuw nsw i64 %542, %535
  %544 = getelementptr i8, i8* %call, i64 %543
  %545 = bitcast i8* %544 to <4 x double>*
  store <4 x double> %541, <4 x double>* %545, align 8, !alias.scope !121, !noalias !123
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1289 = add <4 x i32> %vec.ind1288, <i32 4, i32 4, i32 4, i32 4>
  %546 = icmp eq i64 %index.next1283, 32
  br i1 %546, label %polly.loop_exit858.21179, label %vector.body1280, !llvm.loop !146

polly.loop_exit858.21179:                         ; preds = %vector.body1280
  %polly.indvar_next854.21177 = add nuw nsw i64 %polly.indvar853.21167, 1
  %exitcond1118.21178.not = icmp eq i64 %polly.indvar_next854.21177, 16
  br i1 %exitcond1118.21178.not, label %polly.loop_header850.1.2, label %polly.loop_header850.21168

polly.loop_header850.1.2:                         ; preds = %polly.loop_exit858.21179, %polly.loop_exit858.1.2
  %polly.indvar853.1.2 = phi i64 [ %polly.indvar_next854.1.2, %polly.loop_exit858.1.2 ], [ 0, %polly.loop_exit858.21179 ]
  %547 = add nuw nsw i64 %polly.indvar853.1.2, 64
  %548 = mul nuw nsw i64 %547, 640
  %549 = trunc i64 %547 to i32
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %549, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %polly.loop_header850.1.2
  %index1296 = phi i64 [ 0, %polly.loop_header850.1.2 ], [ %index.next1297, %vector.body1294 ]
  %vec.ind1300 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.2 ], [ %vec.ind.next1301, %vector.body1294 ]
  %550 = add nuw nsw <4 x i64> %vec.ind1300, <i64 32, i64 32, i64 32, i64 32>
  %551 = trunc <4 x i64> %550 to <4 x i32>
  %552 = mul <4 x i32> %broadcast.splat1303, %551
  %553 = add <4 x i32> %552, <i32 3, i32 3, i32 3, i32 3>
  %554 = urem <4 x i32> %553, <i32 80, i32 80, i32 80, i32 80>
  %555 = sitofp <4 x i32> %554 to <4 x double>
  %556 = fmul fast <4 x double> %555, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %557 = extractelement <4 x i64> %550, i32 0
  %558 = shl i64 %557, 3
  %559 = add nuw nsw i64 %558, %548
  %560 = getelementptr i8, i8* %call, i64 %559
  %561 = bitcast i8* %560 to <4 x double>*
  store <4 x double> %556, <4 x double>* %561, align 8, !alias.scope !121, !noalias !123
  %index.next1297 = add i64 %index1296, 4
  %vec.ind.next1301 = add <4 x i64> %vec.ind1300, <i64 4, i64 4, i64 4, i64 4>
  %562 = icmp eq i64 %index.next1297, 32
  br i1 %562, label %polly.loop_exit858.1.2, label %vector.body1294, !llvm.loop !147

polly.loop_exit858.1.2:                           ; preds = %vector.body1294
  %polly.indvar_next854.1.2 = add nuw nsw i64 %polly.indvar853.1.2, 1
  %exitcond1118.1.2.not = icmp eq i64 %polly.indvar_next854.1.2, 16
  br i1 %exitcond1118.1.2.not, label %polly.loop_header850.2.2, label %polly.loop_header850.1.2

polly.loop_header850.2.2:                         ; preds = %polly.loop_exit858.1.2, %polly.loop_exit858.2.2
  %polly.indvar853.2.2 = phi i64 [ %polly.indvar_next854.2.2, %polly.loop_exit858.2.2 ], [ 0, %polly.loop_exit858.1.2 ]
  %563 = add nuw nsw i64 %polly.indvar853.2.2, 64
  %564 = mul nuw nsw i64 %563, 640
  %565 = trunc i64 %563 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %565, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %polly.loop_header850.2.2
  %index1308 = phi i64 [ 0, %polly.loop_header850.2.2 ], [ %index.next1309, %vector.body1306 ]
  %vec.ind1312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.2.2 ], [ %vec.ind.next1313, %vector.body1306 ]
  %566 = add nuw nsw <4 x i64> %vec.ind1312, <i64 64, i64 64, i64 64, i64 64>
  %567 = trunc <4 x i64> %566 to <4 x i32>
  %568 = mul <4 x i32> %broadcast.splat1315, %567
  %569 = add <4 x i32> %568, <i32 3, i32 3, i32 3, i32 3>
  %570 = urem <4 x i32> %569, <i32 80, i32 80, i32 80, i32 80>
  %571 = sitofp <4 x i32> %570 to <4 x double>
  %572 = fmul fast <4 x double> %571, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %573 = extractelement <4 x i64> %566, i32 0
  %574 = shl i64 %573, 3
  %575 = add nuw nsw i64 %574, %564
  %576 = getelementptr i8, i8* %call, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %572, <4 x double>* %577, align 8, !alias.scope !121, !noalias !123
  %index.next1309 = add i64 %index1308, 4
  %vec.ind.next1313 = add <4 x i64> %vec.ind1312, <i64 4, i64 4, i64 4, i64 4>
  %578 = icmp eq i64 %index.next1309, 16
  br i1 %578, label %polly.loop_exit858.2.2, label %vector.body1306, !llvm.loop !148

polly.loop_exit858.2.2:                           ; preds = %vector.body1306
  %polly.indvar_next854.2.2 = add nuw nsw i64 %polly.indvar853.2.2, 1
  %exitcond1118.2.2.not = icmp eq i64 %polly.indvar_next854.2.2, 16
  br i1 %exitcond1118.2.2.not, label %polly.loop_header877, label %polly.loop_header850.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 20}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !24, !45, !46, !47, !26, !48, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !24, !50, !41, !51, !43}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.data.pack.array", !22}
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
!65 = !{!66, !67, !68, !69}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !72, !13}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!63, !66, !68, !69}
!74 = !{!63, !67, !68, !69}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!63, !64, !"polly.alias.scope.MemRef_call", !79}
!79 = distinct !{!79, !77}
!80 = !{!66, !67, !68, !69, !76}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !72, !13}
!92 = !{!83, !86, !88, !89}
!93 = !{!83, !87, !88, !89}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!83, !84, !"polly.alias.scope.MemRef_call", !98}
!98 = distinct !{!98, !96}
!99 = !{!86, !87, !88, !89, !95}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !103, !"polly.alias.scope.MemRef_call"}
!103 = distinct !{!103, !"polly.alias.scope.domain"}
!104 = !{!105, !106, !107, !108}
!105 = distinct !{!105, !103, !"polly.alias.scope.MemRef_call1"}
!106 = distinct !{!106, !103, !"polly.alias.scope.MemRef_call2"}
!107 = distinct !{!107, !103, !"polly.alias.scope.Packed_MemRef_call1"}
!108 = distinct !{!108, !103, !"polly.alias.scope.Packed_MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !72, !13}
!111 = !{!102, !105, !107, !108}
!112 = !{!102, !106, !107, !108}
!113 = !{!114}
!114 = distinct !{!114, !115}
!115 = distinct !{!115, !"LVerDomain"}
!116 = !{!102, !103, !"polly.alias.scope.MemRef_call", !117}
!117 = distinct !{!117, !115}
!118 = !{!105, !106, !107, !108, !114}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !122, !"polly.alias.scope.MemRef_call"}
!122 = distinct !{!122, !"polly.alias.scope.domain"}
!123 = !{!124, !125}
!124 = distinct !{!124, !122, !"polly.alias.scope.MemRef_call1"}
!125 = distinct !{!125, !122, !"polly.alias.scope.MemRef_call2"}
!126 = distinct !{!126, !13}
!127 = !{!124, !121}
!128 = distinct !{!128, !13}
!129 = !{!125, !121}
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
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
