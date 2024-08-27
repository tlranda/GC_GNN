; ModuleID = 'syr2k_recreations//mmp_syr2k_S_185.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_185.c"
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
  %call839 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1691 = bitcast i8* %call1 to double*
  %polly.access.call1700 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2701 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1700, %call2
  %polly.access.call2720 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2720, %call1
  %2 = or i1 %0, %1
  %polly.access.call740 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call740, %call2
  %4 = icmp ule i8* %polly.access.call2720, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call740, %call1
  %8 = icmp ule i8* %polly.access.call1700, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header825, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv7.i, i64 %index1194
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit886.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start490, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1665, label %vector.ph1475

vector.ph1475:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1475
  %index1476 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1477, %vector.body1474 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %index1476
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
  br i1 %cmp.n1479, label %for.inc6.i, label %for.body3.i46.preheader1665

for.body3.i46.preheader1665:                      ; preds = %for.body3.i46.preheader, %middle.block1472
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1472 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1665, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1665 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting491
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start291, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1532 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1532, label %for.body3.i60.preheader1662, label %vector.ph1533

vector.ph1533:                                    ; preds = %for.body3.i60.preheader
  %n.vec1535 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1531

vector.body1531:                                  ; preds = %vector.body1531, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1537, %vector.body1531 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %index1536
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1540 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1540, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1537 = add i64 %index1536, 4
  %57 = icmp eq i64 %index.next1537, %n.vec1535
  br i1 %57, label %middle.block1529, label %vector.body1531, !llvm.loop !57

middle.block1529:                                 ; preds = %vector.body1531
  %cmp.n1539 = icmp eq i64 %indvars.iv21.i52, %n.vec1535
  br i1 %cmp.n1539, label %for.inc6.i63, label %for.body3.i60.preheader1662

for.body3.i60.preheader1662:                      ; preds = %for.body3.i60.preheader, %middle.block1529
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1535, %middle.block1529 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1662, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1662 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1529, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting292
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1596 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1596, label %for.body3.i99.preheader1659, label %vector.ph1597

vector.ph1597:                                    ; preds = %for.body3.i99.preheader
  %n.vec1599 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1595

vector.body1595:                                  ; preds = %vector.body1595, %vector.ph1597
  %index1600 = phi i64 [ 0, %vector.ph1597 ], [ %index.next1601, %vector.body1595 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %index1600
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1604 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1604, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1601 = add i64 %index1600, 4
  %68 = icmp eq i64 %index.next1601, %n.vec1599
  br i1 %68, label %middle.block1593, label %vector.body1595, !llvm.loop !59

middle.block1593:                                 ; preds = %vector.body1595
  %cmp.n1603 = icmp eq i64 %indvars.iv21.i91, %n.vec1599
  br i1 %cmp.n1603, label %for.inc6.i102, label %for.body3.i99.preheader1659

for.body3.i99.preheader1659:                      ; preds = %for.body3.i99.preheader, %middle.block1593
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1599, %middle.block1593 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1659, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1659 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1593, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call839, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1608 = phi i64 [ %indvar.next1609, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1608, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1610 = icmp ult i64 %88, 4
  br i1 %min.iters.check1610, label %polly.loop_header192.preheader, label %vector.ph1611

vector.ph1611:                                    ; preds = %polly.loop_header
  %n.vec1613 = and i64 %88, -4
  br label %vector.body1607

vector.body1607:                                  ; preds = %vector.body1607, %vector.ph1611
  %index1614 = phi i64 [ 0, %vector.ph1611 ], [ %index.next1615, %vector.body1607 ]
  %90 = shl nuw nsw i64 %index1614, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1618 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1618, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1615 = add i64 %index1614, 4
  %95 = icmp eq i64 %index.next1615, %n.vec1613
  br i1 %95, label %middle.block1605, label %vector.body1607, !llvm.loop !72

middle.block1605:                                 ; preds = %vector.body1607
  %cmp.n1617 = icmp eq i64 %88, %n.vec1613
  br i1 %cmp.n1617, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1605
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1613, %middle.block1605 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1605
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1609 = add i64 %indvar1608, 1
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
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %polly.loop_cond221 = phi i1 [ false, %polly.loop_exit224 ], [ true, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ 1, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = mul nuw nsw i64 %polly.indvar219, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar219, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  br i1 %polly.loop_cond221, label %polly.loop_header216, label %polly.exiting

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %102 = phi i1 [ false, %polly.loop_exit230 ], [ true, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ 1, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %103 = shl nuw nsw i64 %polly.indvar225, 6
  %104 = mul nuw nsw i64 %polly.indvar225, -64
  %105 = sub nuw nsw i64 80, %103
  br i1 %102, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.loop_exit259.us
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %polly.loop_exit259.us ], [ 0, %polly.loop_header222 ]
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit259.us ], [ %103, %polly.loop_header222 ]
  %smin1622 = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 63)
  %106 = add nuw nsw i64 %smin1622, 1
  %smin1029 = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 63)
  %107 = add nsw i64 %polly.indvar231.us, %104
  %108 = icmp ugt i64 %polly.indvar231.us, 63
  %polly.access.mul.call1251.us = mul nuw nsw i64 %polly.indvar231.us, 60
  br i1 %108, label %polly.loop_header234.us.us, label %polly.loop_header234.us916

polly.loop_header234.us916:                       ; preds = %polly.loop_header228.us, %polly.merge.us939
  %polly.indvar237.us917 = phi i64 [ %polly.indvar_next238.us940, %polly.merge.us939 ], [ 0, %polly.loop_header228.us ]
  %109 = add nuw nsw i64 %polly.indvar237.us917, %100
  %polly.access.mul.Packed_MemRef_call1.us918 = mul nuw nsw i64 %polly.indvar237.us917, 80
  br label %polly.loop_header240.us919

polly.loop_header240.us919:                       ; preds = %polly.loop_header240.us919, %polly.loop_header234.us916
  %polly.indvar243.us920 = phi i64 [ 0, %polly.loop_header234.us916 ], [ %polly.indvar_next244.us927, %polly.loop_header240.us919 ]
  %110 = add nuw nsw i64 %polly.indvar243.us920, %103
  %polly.access.mul.call1247.us921 = mul nuw nsw i64 %110, 60
  %polly.access.add.call1248.us922 = add nuw nsw i64 %polly.access.mul.call1247.us921, %109
  %polly.access.call1249.us923 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us922
  %polly.access.call1249.load.us924 = load double, double* %polly.access.call1249.us923, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us925 = add nuw nsw i64 %polly.indvar243.us920, %polly.access.mul.Packed_MemRef_call1.us918
  %polly.access.Packed_MemRef_call1.us926 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us925
  store double %polly.access.call1249.load.us924, double* %polly.access.Packed_MemRef_call1.us926, align 8
  %polly.indvar_next244.us927 = add nuw nsw i64 %polly.indvar243.us920, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar243.us920, %smin1029
  br i1 %exitcond1024.not, label %polly.merge.us939, label %polly.loop_header240.us919

polly.merge.us939:                                ; preds = %polly.loop_header240.us919
  %polly.indvar_next238.us940 = add nuw nsw i64 %polly.indvar237.us917, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next238.us940, %101
  br i1 %exitcond1025.not, label %polly.loop_exit236.us, label %polly.loop_header234.us916

polly.loop_exit236.us:                            ; preds = %polly.merge.us939, %polly.then.us.us
  %111 = mul nuw nsw i64 %polly.indvar231.us, 640
  %scevgep285.us = getelementptr i8, i8* %call, i64 %111
  br label %polly.loop_header257.us

polly.loop_header257.us:                          ; preds = %polly.loop_exit265.us, %polly.loop_exit236.us
  %polly.indvar260.us = phi i64 [ 0, %polly.loop_exit236.us ], [ %polly.indvar_next261.us, %polly.loop_exit265.us ]
  %polly.access.mul.Packed_MemRef_call1269.us = mul nuw nsw i64 %polly.indvar260.us, 80
  %112 = add nuw nsw i64 %polly.indvar260.us, %100
  %polly.access.mul.Packed_MemRef_call2273.us = mul nuw nsw i64 %112, 80
  %polly.access.add.Packed_MemRef_call2274.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273.us, %polly.indvar231.us
  %polly.access.Packed_MemRef_call2275.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274.us
  %_p_scalar_276.us = load double, double* %polly.access.Packed_MemRef_call2275.us, align 8
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269.us, %107
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %min.iters.check1623 = icmp ult i64 %smin1622, 3
  br i1 %min.iters.check1623, label %polly.loop_header263.us.preheader, label %vector.ph1624

vector.ph1624:                                    ; preds = %polly.loop_header257.us
  %n.vec1626 = and i64 %106, 124
  %broadcast.splatinsert1632 = insertelement <4 x double> poison, double %_p_scalar_276.us, i32 0
  %broadcast.splat1633 = shufflevector <4 x double> %broadcast.splatinsert1632, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1635 = insertelement <4 x double> poison, double %_p_scalar_284.us, i32 0
  %broadcast.splat1636 = shufflevector <4 x double> %broadcast.splatinsert1635, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1621

vector.body1621:                                  ; preds = %vector.body1621, %vector.ph1624
  %index1627 = phi i64 [ 0, %vector.ph1624 ], [ %index.next1628, %vector.body1621 ]
  %113 = add nuw nsw i64 %index1627, %103
  %114 = add nuw nsw i64 %index1627, %polly.access.mul.Packed_MemRef_call1269.us
  %115 = getelementptr double, double* %Packed_MemRef_call1, i64 %114
  %116 = bitcast double* %115 to <4 x double>*
  %wide.load1631 = load <4 x double>, <4 x double>* %116, align 8
  %117 = fmul fast <4 x double> %broadcast.splat1633, %wide.load1631
  %118 = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call2273.us
  %119 = getelementptr double, double* %Packed_MemRef_call2, i64 %118
  %120 = bitcast double* %119 to <4 x double>*
  %wide.load1634 = load <4 x double>, <4 x double>* %120, align 8
  %121 = fmul fast <4 x double> %broadcast.splat1636, %wide.load1634
  %122 = shl i64 %113, 3
  %123 = getelementptr i8, i8* %scevgep285.us, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1637 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !65, !noalias !67
  %125 = fadd fast <4 x double> %121, %117
  %126 = fmul fast <4 x double> %125, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %127 = fadd fast <4 x double> %126, %wide.load1637
  %128 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !65, !noalias !67
  %index.next1628 = add i64 %index1627, 4
  %129 = icmp eq i64 %index.next1628, %n.vec1626
  br i1 %129, label %middle.block1619, label %vector.body1621, !llvm.loop !77

middle.block1619:                                 ; preds = %vector.body1621
  %cmp.n1630 = icmp eq i64 %106, %n.vec1626
  br i1 %cmp.n1630, label %polly.loop_exit265.us, label %polly.loop_header263.us.preheader

polly.loop_header263.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1619
  %polly.indvar266.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1626, %middle.block1619 ]
  br label %polly.loop_header263.us

polly.loop_header263.us:                          ; preds = %polly.loop_header263.us.preheader, %polly.loop_header263.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_header263.us ], [ %polly.indvar266.us.ph, %polly.loop_header263.us.preheader ]
  %130 = add nuw nsw i64 %polly.indvar266.us, %103
  %polly.access.add.Packed_MemRef_call1270.us = add nuw nsw i64 %polly.indvar266.us, %polly.access.mul.Packed_MemRef_call1269.us
  %polly.access.Packed_MemRef_call1271.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270.us
  %_p_scalar_272.us = load double, double* %polly.access.Packed_MemRef_call1271.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_276.us, %_p_scalar_272.us
  %polly.access.add.Packed_MemRef_call2278.us = add nuw nsw i64 %130, %polly.access.mul.Packed_MemRef_call2273.us
  %polly.access.Packed_MemRef_call2279.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call2279.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %131 = shl i64 %130, 3
  %scevgep286.us = getelementptr i8, i8* %scevgep285.us, i64 %131
  %scevgep286287.us = bitcast i8* %scevgep286.us to double*
  %_p_scalar_288.us = load double, double* %scevgep286287.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_288.us
  store double %p_add42.i118.us, double* %scevgep286287.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1030.not = icmp eq i64 %polly.indvar266.us, %smin1029
  br i1 %exitcond1030.not, label %polly.loop_exit265.us, label %polly.loop_header263.us, !llvm.loop !78

polly.loop_exit265.us:                            ; preds = %polly.loop_header263.us, %middle.block1619
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next261.us, %101
  br i1 %exitcond1031.not, label %polly.loop_exit259.us, label %polly.loop_header257.us

polly.loop_exit259.us:                            ; preds = %polly.loop_exit265.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %indvars.iv.next1022 = add nuw nsw i64 %indvars.iv1021, 1
  %exitcond1032.not = icmp eq i64 %indvars.iv.next1022, %105
  br i1 %exitcond1032.not, label %polly.loop_exit230, label %polly.loop_header228.us

polly.loop_header234.us.us:                       ; preds = %polly.loop_header228.us, %polly.then.us.us
  %polly.indvar237.us.us = phi i64 [ %polly.indvar_next238.us.us, %polly.then.us.us ], [ 0, %polly.loop_header228.us ]
  %132 = add nuw nsw i64 %polly.indvar237.us.us, %100
  %polly.access.mul.Packed_MemRef_call1.us.us = mul nuw nsw i64 %polly.indvar237.us.us, 80
  br label %polly.loop_header240.us.us

polly.then.us.us:                                 ; preds = %polly.loop_header240.us.us
  %polly.access.add.call1252.us.us = add nuw nsw i64 %132, %polly.access.mul.call1251.us
  %polly.access.call1253.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1252.us.us
  %polly.access.call1253.load.us.us = load double, double* %polly.access.call1253.us.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1255.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1.us.us, %polly.indvar231.us
  %polly.access.Packed_MemRef_call1256.us.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us.us
  store double %polly.access.call1253.load.us.us, double* %polly.access.Packed_MemRef_call1256.us.us, align 8
  %polly.indvar_next238.us.us = add nuw nsw i64 %polly.indvar237.us.us, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next238.us.us, %101
  br i1 %exitcond1028.not, label %polly.loop_exit236.us, label %polly.loop_header234.us.us

polly.loop_header240.us.us:                       ; preds = %polly.loop_header240.us.us, %polly.loop_header234.us.us
  %polly.indvar243.us.us = phi i64 [ 0, %polly.loop_header234.us.us ], [ %polly.indvar_next244.us.us, %polly.loop_header240.us.us ]
  %133 = add nuw nsw i64 %polly.indvar243.us.us, %103
  %polly.access.mul.call1247.us.us = mul nuw nsw i64 %133, 60
  %polly.access.add.call1248.us.us = add nuw nsw i64 %polly.access.mul.call1247.us.us, %132
  %polly.access.call1249.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248.us.us
  %polly.access.call1249.load.us.us = load double, double* %polly.access.call1249.us.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.us = add nuw nsw i64 %polly.indvar243.us.us, %polly.access.mul.Packed_MemRef_call1.us.us
  %polly.access.Packed_MemRef_call1.us.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.us
  store double %polly.access.call1249.load.us.us, double* %polly.access.Packed_MemRef_call1.us.us, align 8
  %polly.indvar_next244.us.us = add nuw nsw i64 %polly.indvar243.us.us, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar243.us.us, %smin1029
  br i1 %exitcond1027.not, label %polly.then.us.us, label %polly.loop_header240.us.us

polly.loop_exit230:                               ; preds = %polly.loop_exit259, %polly.loop_exit259.us
  br i1 %102, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.loop_exit259
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ %103, %polly.loop_header222 ]
  %smin1641 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %134 = add nuw nsw i64 %smin1641, 1
  %smin1017 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %135 = add nsw i64 %polly.indvar231, %104
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.merge
  %136 = mul nuw nsw i64 %polly.indvar231, 640
  %scevgep285 = getelementptr i8, i8* %call, i64 %136
  br label %polly.loop_header257

polly.loop_exit259:                               ; preds = %polly.loop_exit265
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1020.not = icmp eq i64 %indvars.iv.next, %105
  br i1 %exitcond1020.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.merge, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.merge ]
  %137 = add nuw nsw i64 %polly.indvar237, %100
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 80
  br label %polly.loop_header240

polly.merge:                                      ; preds = %polly.loop_header240
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next238, %101
  br i1 %exitcond1016.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %138 = add nuw nsw i64 %polly.indvar243, %103
  %polly.access.mul.call1247 = mul nuw nsw i64 %138, 60
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %137
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar243, %smin1017
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header240

polly.loop_header257:                             ; preds = %polly.loop_exit265, %polly.loop_exit236
  %polly.indvar260 = phi i64 [ 0, %polly.loop_exit236 ], [ %polly.indvar_next261, %polly.loop_exit265 ]
  %polly.access.mul.Packed_MemRef_call1269 = mul nuw nsw i64 %polly.indvar260, 80
  %139 = add nuw nsw i64 %polly.indvar260, %100
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %139, 80
  %polly.access.add.Packed_MemRef_call2274 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273, %polly.indvar231
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2274
  %_p_scalar_276 = load double, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1269, %135
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %min.iters.check1642 = icmp ult i64 %smin1641, 3
  br i1 %min.iters.check1642, label %polly.loop_header263.preheader, label %vector.ph1643

vector.ph1643:                                    ; preds = %polly.loop_header257
  %n.vec1645 = and i64 %134, 124
  %broadcast.splatinsert1651 = insertelement <4 x double> poison, double %_p_scalar_276, i32 0
  %broadcast.splat1652 = shufflevector <4 x double> %broadcast.splatinsert1651, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1654 = insertelement <4 x double> poison, double %_p_scalar_284, i32 0
  %broadcast.splat1655 = shufflevector <4 x double> %broadcast.splatinsert1654, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1640

vector.body1640:                                  ; preds = %vector.body1640, %vector.ph1643
  %index1646 = phi i64 [ 0, %vector.ph1643 ], [ %index.next1647, %vector.body1640 ]
  %140 = add nuw nsw i64 %index1646, %103
  %141 = add nuw nsw i64 %index1646, %polly.access.mul.Packed_MemRef_call1269
  %142 = getelementptr double, double* %Packed_MemRef_call1, i64 %141
  %143 = bitcast double* %142 to <4 x double>*
  %wide.load1650 = load <4 x double>, <4 x double>* %143, align 8
  %144 = fmul fast <4 x double> %broadcast.splat1652, %wide.load1650
  %145 = add nuw nsw i64 %140, %polly.access.mul.Packed_MemRef_call2273
  %146 = getelementptr double, double* %Packed_MemRef_call2, i64 %145
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1653 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1655, %wide.load1653
  %149 = shl i64 %140, 3
  %150 = getelementptr i8, i8* %scevgep285, i64 %149
  %151 = bitcast i8* %150 to <4 x double>*
  %wide.load1656 = load <4 x double>, <4 x double>* %151, align 8, !alias.scope !65, !noalias !67
  %152 = fadd fast <4 x double> %148, %144
  %153 = fmul fast <4 x double> %152, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %154 = fadd fast <4 x double> %153, %wide.load1656
  %155 = bitcast i8* %150 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !65, !noalias !67
  %index.next1647 = add i64 %index1646, 4
  %156 = icmp eq i64 %index.next1647, %n.vec1645
  br i1 %156, label %middle.block1638, label %vector.body1640, !llvm.loop !79

middle.block1638:                                 ; preds = %vector.body1640
  %cmp.n1649 = icmp eq i64 %134, %n.vec1645
  br i1 %cmp.n1649, label %polly.loop_exit265, label %polly.loop_header263.preheader

polly.loop_header263.preheader:                   ; preds = %polly.loop_header257, %middle.block1638
  %polly.indvar266.ph = phi i64 [ 0, %polly.loop_header257 ], [ %n.vec1645, %middle.block1638 ]
  br label %polly.loop_header263

polly.loop_exit265:                               ; preds = %polly.loop_header263, %middle.block1638
  %polly.indvar_next261 = add nuw nsw i64 %polly.indvar260, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next261, %101
  br i1 %exitcond1019.not, label %polly.loop_exit259, label %polly.loop_header257

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_header263
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_header263 ], [ %polly.indvar266.ph, %polly.loop_header263.preheader ]
  %157 = add nuw nsw i64 %polly.indvar266, %103
  %polly.access.add.Packed_MemRef_call1270 = add nuw nsw i64 %polly.indvar266, %polly.access.mul.Packed_MemRef_call1269
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1270
  %_p_scalar_272 = load double, double* %polly.access.Packed_MemRef_call1271, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_276, %_p_scalar_272
  %polly.access.add.Packed_MemRef_call2278 = add nuw nsw i64 %157, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2279 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2278
  %_p_scalar_280 = load double, double* %polly.access.Packed_MemRef_call2279, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_284, %_p_scalar_280
  %158 = shl i64 %157, 3
  %scevgep286 = getelementptr i8, i8* %scevgep285, i64 %158
  %scevgep286287 = bitcast i8* %scevgep286 to double*
  %_p_scalar_288 = load double, double* %scevgep286287, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_288
  store double %p_add42.i118, double* %scevgep286287, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar266, %smin1017
  br i1 %exitcond1018.not, label %polly.loop_exit265, label %polly.loop_header263, !llvm.loop !80

polly.start291:                                   ; preds = %kernel_syr2k.exit
  %malloccall293 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall295 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header379

polly.exiting292:                                 ; preds = %polly.loop_exit419
  tail call void @free(i8* nonnull %malloccall293)
  tail call void @free(i8* nonnull %malloccall295)
  br label %kernel_syr2k.exit90

polly.loop_header379:                             ; preds = %polly.loop_exit387, %polly.start291
  %indvar1544 = phi i64 [ %indvar.next1545, %polly.loop_exit387 ], [ 0, %polly.start291 ]
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_exit387 ], [ 1, %polly.start291 ]
  %159 = add i64 %indvar1544, 1
  %160 = mul nuw nsw i64 %polly.indvar382, 640
  %scevgep391 = getelementptr i8, i8* %call, i64 %160
  %min.iters.check1546 = icmp ult i64 %159, 4
  br i1 %min.iters.check1546, label %polly.loop_header385.preheader, label %vector.ph1547

vector.ph1547:                                    ; preds = %polly.loop_header379
  %n.vec1549 = and i64 %159, -4
  br label %vector.body1543

vector.body1543:                                  ; preds = %vector.body1543, %vector.ph1547
  %index1550 = phi i64 [ 0, %vector.ph1547 ], [ %index.next1551, %vector.body1543 ]
  %161 = shl nuw nsw i64 %index1550, 3
  %162 = getelementptr i8, i8* %scevgep391, i64 %161
  %163 = bitcast i8* %162 to <4 x double>*
  %wide.load1554 = load <4 x double>, <4 x double>* %163, align 8, !alias.scope !81, !noalias !83
  %164 = fmul fast <4 x double> %wide.load1554, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %165 = bitcast i8* %162 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !81, !noalias !83
  %index.next1551 = add i64 %index1550, 4
  %166 = icmp eq i64 %index.next1551, %n.vec1549
  br i1 %166, label %middle.block1541, label %vector.body1543, !llvm.loop !88

middle.block1541:                                 ; preds = %vector.body1543
  %cmp.n1553 = icmp eq i64 %159, %n.vec1549
  br i1 %cmp.n1553, label %polly.loop_exit387, label %polly.loop_header385.preheader

polly.loop_header385.preheader:                   ; preds = %polly.loop_header379, %middle.block1541
  %polly.indvar388.ph = phi i64 [ 0, %polly.loop_header379 ], [ %n.vec1549, %middle.block1541 ]
  br label %polly.loop_header385

polly.loop_exit387:                               ; preds = %polly.loop_header385, %middle.block1541
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next383, 80
  %indvar.next1545 = add i64 %indvar1544, 1
  br i1 %exitcond1061.not, label %polly.loop_header395.preheader, label %polly.loop_header379

polly.loop_header395.preheader:                   ; preds = %polly.loop_exit387
  %Packed_MemRef_call1294 = bitcast i8* %malloccall293 to double*
  %Packed_MemRef_call2296 = bitcast i8* %malloccall295 to double*
  br label %polly.loop_header395

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_header385
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_header385 ], [ %polly.indvar388.ph, %polly.loop_header385.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar388, 3
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %167
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !81, !noalias !83
  %p_mul.i57 = fmul fast double %_p_scalar_394, 1.200000e+00
  store double %p_mul.i57, double* %scevgep392393, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next389, %polly.indvar382
  br i1 %exitcond1060.not, label %polly.loop_exit387, label %polly.loop_header385, !llvm.loop !89

polly.loop_header395:                             ; preds = %polly.loop_header395.preheader, %polly.loop_exit403
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit403 ], [ 0, %polly.loop_header395.preheader ]
  %polly.access.mul.Packed_MemRef_call2296 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_header401
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond1059.not, label %polly.loop_header411, label %polly.loop_header395

polly.loop_header401:                             ; preds = %polly.loop_header401, %polly.loop_header395
  %polly.indvar404 = phi i64 [ 0, %polly.loop_header395 ], [ %polly.indvar_next405, %polly.loop_header401 ]
  %polly.access.mul.call2408 = mul nuw nsw i64 %polly.indvar404, 60
  %polly.access.add.call2409 = add nuw nsw i64 %polly.access.mul.call2408, %polly.indvar398
  %polly.access.call2410 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2409
  %polly.access.call2410.load = load double, double* %polly.access.call2410, align 8, !alias.scope !85, !noalias !90
  %polly.access.add.Packed_MemRef_call2296 = add nuw nsw i64 %polly.indvar404, %polly.access.mul.Packed_MemRef_call2296
  %polly.access.Packed_MemRef_call2296 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296
  store double %polly.access.call2410.load, double* %polly.access.Packed_MemRef_call2296, align 8
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next405, 80
  br i1 %exitcond1058.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header411:                             ; preds = %polly.loop_exit403, %polly.loop_exit419
  %polly.loop_cond416 = phi i1 [ false, %polly.loop_exit419 ], [ true, %polly.loop_exit403 ]
  %polly.indvar414 = phi i64 [ 1, %polly.loop_exit419 ], [ 0, %polly.loop_exit403 ]
  %168 = mul nuw nsw i64 %polly.indvar414, -50
  %169 = icmp slt i64 %168, -10
  %170 = select i1 %169, i64 %168, i64 -10
  %171 = mul nuw nsw i64 %polly.indvar414, 50
  %172 = add nsw i64 %170, 60
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit425
  br i1 %polly.loop_cond416, label %polly.loop_header411, label %polly.exiting292

polly.loop_header417:                             ; preds = %polly.loop_exit425, %polly.loop_header411
  %173 = phi i1 [ false, %polly.loop_exit425 ], [ true, %polly.loop_header411 ]
  %polly.indvar420 = phi i64 [ 1, %polly.loop_exit425 ], [ 0, %polly.loop_header411 ]
  %174 = shl nuw nsw i64 %polly.indvar420, 6
  %175 = mul nuw nsw i64 %polly.indvar420, -64
  %176 = sub nuw nsw i64 80, %174
  br i1 %173, label %polly.loop_header423.us, label %polly.loop_header423

polly.loop_header423.us:                          ; preds = %polly.loop_header417, %polly.loop_exit458.us
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %polly.loop_exit458.us ], [ 0, %polly.loop_header417 ]
  %polly.indvar426.us = phi i64 [ %polly.indvar_next427.us, %polly.loop_exit458.us ], [ %174, %polly.loop_header417 ]
  %smin1558 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 63)
  %177 = add nuw nsw i64 %smin1558, 1
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1046, i64 63)
  %178 = add nsw i64 %polly.indvar426.us, %175
  %179 = icmp ugt i64 %polly.indvar426.us, 63
  %polly.access.mul.call1450.us = mul nuw nsw i64 %polly.indvar426.us, 60
  br i1 %179, label %polly.loop_header429.us.us, label %polly.loop_header429.us947

polly.loop_header429.us947:                       ; preds = %polly.loop_header423.us, %polly.merge446.us970
  %polly.indvar432.us948 = phi i64 [ %polly.indvar_next433.us971, %polly.merge446.us970 ], [ 0, %polly.loop_header423.us ]
  %180 = add nuw nsw i64 %polly.indvar432.us948, %171
  %polly.access.mul.Packed_MemRef_call1294.us949 = mul nuw nsw i64 %polly.indvar432.us948, 80
  br label %polly.loop_header435.us950

polly.loop_header435.us950:                       ; preds = %polly.loop_header435.us950, %polly.loop_header429.us947
  %polly.indvar438.us951 = phi i64 [ 0, %polly.loop_header429.us947 ], [ %polly.indvar_next439.us958, %polly.loop_header435.us950 ]
  %181 = add nuw nsw i64 %polly.indvar438.us951, %174
  %polly.access.mul.call1442.us952 = mul nuw nsw i64 %181, 60
  %polly.access.add.call1443.us953 = add nuw nsw i64 %polly.access.mul.call1442.us952, %180
  %polly.access.call1444.us954 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us953
  %polly.access.call1444.load.us955 = load double, double* %polly.access.call1444.us954, align 8, !alias.scope !84, !noalias !91
  %polly.access.add.Packed_MemRef_call1294.us956 = add nuw nsw i64 %polly.indvar438.us951, %polly.access.mul.Packed_MemRef_call1294.us949
  %polly.access.Packed_MemRef_call1294.us957 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us956
  store double %polly.access.call1444.load.us955, double* %polly.access.Packed_MemRef_call1294.us957, align 8
  %polly.indvar_next439.us958 = add nuw nsw i64 %polly.indvar438.us951, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar438.us951, %smin1054
  br i1 %exitcond1049.not, label %polly.merge446.us970, label %polly.loop_header435.us950

polly.merge446.us970:                             ; preds = %polly.loop_header435.us950
  %polly.indvar_next433.us971 = add nuw nsw i64 %polly.indvar432.us948, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next433.us971, %172
  br i1 %exitcond1050.not, label %polly.loop_exit431.us, label %polly.loop_header429.us947

polly.loop_exit431.us:                            ; preds = %polly.merge446.us970, %polly.then447.us.us
  %182 = mul nuw nsw i64 %polly.indvar426.us, 640
  %scevgep484.us = getelementptr i8, i8* %call, i64 %182
  br label %polly.loop_header456.us

polly.loop_header456.us:                          ; preds = %polly.loop_exit464.us, %polly.loop_exit431.us
  %polly.indvar459.us = phi i64 [ 0, %polly.loop_exit431.us ], [ %polly.indvar_next460.us, %polly.loop_exit464.us ]
  %polly.access.mul.Packed_MemRef_call1294468.us = mul nuw nsw i64 %polly.indvar459.us, 80
  %183 = add nuw nsw i64 %polly.indvar459.us, %171
  %polly.access.mul.Packed_MemRef_call2296472.us = mul nuw nsw i64 %183, 80
  %polly.access.add.Packed_MemRef_call2296473.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472.us, %polly.indvar426.us
  %polly.access.Packed_MemRef_call2296474.us = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473.us
  %_p_scalar_475.us = load double, double* %polly.access.Packed_MemRef_call2296474.us, align 8
  %polly.access.add.Packed_MemRef_call1294481.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468.us, %178
  %polly.access.Packed_MemRef_call1294482.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481.us
  %_p_scalar_483.us = load double, double* %polly.access.Packed_MemRef_call1294482.us, align 8
  %min.iters.check1559 = icmp ult i64 %smin1558, 3
  br i1 %min.iters.check1559, label %polly.loop_header462.us.preheader, label %vector.ph1560

vector.ph1560:                                    ; preds = %polly.loop_header456.us
  %n.vec1562 = and i64 %177, 124
  %broadcast.splatinsert1568 = insertelement <4 x double> poison, double %_p_scalar_475.us, i32 0
  %broadcast.splat1569 = shufflevector <4 x double> %broadcast.splatinsert1568, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1571 = insertelement <4 x double> poison, double %_p_scalar_483.us, i32 0
  %broadcast.splat1572 = shufflevector <4 x double> %broadcast.splatinsert1571, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1557

vector.body1557:                                  ; preds = %vector.body1557, %vector.ph1560
  %index1563 = phi i64 [ 0, %vector.ph1560 ], [ %index.next1564, %vector.body1557 ]
  %184 = add nuw nsw i64 %index1563, %174
  %185 = add nuw nsw i64 %index1563, %polly.access.mul.Packed_MemRef_call1294468.us
  %186 = getelementptr double, double* %Packed_MemRef_call1294, i64 %185
  %187 = bitcast double* %186 to <4 x double>*
  %wide.load1567 = load <4 x double>, <4 x double>* %187, align 8
  %188 = fmul fast <4 x double> %broadcast.splat1569, %wide.load1567
  %189 = add nuw nsw i64 %184, %polly.access.mul.Packed_MemRef_call2296472.us
  %190 = getelementptr double, double* %Packed_MemRef_call2296, i64 %189
  %191 = bitcast double* %190 to <4 x double>*
  %wide.load1570 = load <4 x double>, <4 x double>* %191, align 8
  %192 = fmul fast <4 x double> %broadcast.splat1572, %wide.load1570
  %193 = shl i64 %184, 3
  %194 = getelementptr i8, i8* %scevgep484.us, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  %wide.load1573 = load <4 x double>, <4 x double>* %195, align 8, !alias.scope !81, !noalias !83
  %196 = fadd fast <4 x double> %192, %188
  %197 = fmul fast <4 x double> %196, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %198 = fadd fast <4 x double> %197, %wide.load1573
  %199 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %198, <4 x double>* %199, align 8, !alias.scope !81, !noalias !83
  %index.next1564 = add i64 %index1563, 4
  %200 = icmp eq i64 %index.next1564, %n.vec1562
  br i1 %200, label %middle.block1555, label %vector.body1557, !llvm.loop !92

middle.block1555:                                 ; preds = %vector.body1557
  %cmp.n1566 = icmp eq i64 %177, %n.vec1562
  br i1 %cmp.n1566, label %polly.loop_exit464.us, label %polly.loop_header462.us.preheader

polly.loop_header462.us.preheader:                ; preds = %polly.loop_header456.us, %middle.block1555
  %polly.indvar465.us.ph = phi i64 [ 0, %polly.loop_header456.us ], [ %n.vec1562, %middle.block1555 ]
  br label %polly.loop_header462.us

polly.loop_header462.us:                          ; preds = %polly.loop_header462.us.preheader, %polly.loop_header462.us
  %polly.indvar465.us = phi i64 [ %polly.indvar_next466.us, %polly.loop_header462.us ], [ %polly.indvar465.us.ph, %polly.loop_header462.us.preheader ]
  %201 = add nuw nsw i64 %polly.indvar465.us, %174
  %polly.access.add.Packed_MemRef_call1294469.us = add nuw nsw i64 %polly.indvar465.us, %polly.access.mul.Packed_MemRef_call1294468.us
  %polly.access.Packed_MemRef_call1294470.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469.us
  %_p_scalar_471.us = load double, double* %polly.access.Packed_MemRef_call1294470.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_475.us, %_p_scalar_471.us
  %polly.access.add.Packed_MemRef_call2296477.us = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call2296472.us
  %polly.access.Packed_MemRef_call2296478.us = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477.us
  %_p_scalar_479.us = load double, double* %polly.access.Packed_MemRef_call2296478.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_483.us, %_p_scalar_479.us
  %202 = shl i64 %201, 3
  %scevgep485.us = getelementptr i8, i8* %scevgep484.us, i64 %202
  %scevgep485486.us = bitcast i8* %scevgep485.us to double*
  %_p_scalar_487.us = load double, double* %scevgep485486.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_487.us
  store double %p_add42.i79.us, double* %scevgep485486.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next466.us = add nuw nsw i64 %polly.indvar465.us, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar465.us, %smin1054
  br i1 %exitcond1055.not, label %polly.loop_exit464.us, label %polly.loop_header462.us, !llvm.loop !93

polly.loop_exit464.us:                            ; preds = %polly.loop_header462.us, %middle.block1555
  %polly.indvar_next460.us = add nuw nsw i64 %polly.indvar459.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar_next460.us, %172
  br i1 %exitcond1056.not, label %polly.loop_exit458.us, label %polly.loop_header456.us

polly.loop_exit458.us:                            ; preds = %polly.loop_exit464.us
  %polly.indvar_next427.us = add nuw nsw i64 %polly.indvar426.us, 1
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 1
  %exitcond1057.not = icmp eq i64 %indvars.iv.next1047, %176
  br i1 %exitcond1057.not, label %polly.loop_exit425, label %polly.loop_header423.us

polly.loop_header429.us.us:                       ; preds = %polly.loop_header423.us, %polly.then447.us.us
  %polly.indvar432.us.us = phi i64 [ %polly.indvar_next433.us.us, %polly.then447.us.us ], [ 0, %polly.loop_header423.us ]
  %203 = add nuw nsw i64 %polly.indvar432.us.us, %171
  %polly.access.mul.Packed_MemRef_call1294.us.us = mul nuw nsw i64 %polly.indvar432.us.us, 80
  br label %polly.loop_header435.us.us

polly.then447.us.us:                              ; preds = %polly.loop_header435.us.us
  %polly.access.add.call1451.us.us = add nuw nsw i64 %203, %polly.access.mul.call1450.us
  %polly.access.call1452.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1451.us.us
  %polly.access.call1452.load.us.us = load double, double* %polly.access.call1452.us.us, align 8, !alias.scope !84, !noalias !91
  %polly.access.add.Packed_MemRef_call1294454.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294.us.us, %polly.indvar426.us
  %polly.access.Packed_MemRef_call1294455.us.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294454.us.us
  store double %polly.access.call1452.load.us.us, double* %polly.access.Packed_MemRef_call1294455.us.us, align 8
  %polly.indvar_next433.us.us = add nuw nsw i64 %polly.indvar432.us.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next433.us.us, %172
  br i1 %exitcond1053.not, label %polly.loop_exit431.us, label %polly.loop_header429.us.us

polly.loop_header435.us.us:                       ; preds = %polly.loop_header435.us.us, %polly.loop_header429.us.us
  %polly.indvar438.us.us = phi i64 [ 0, %polly.loop_header429.us.us ], [ %polly.indvar_next439.us.us, %polly.loop_header435.us.us ]
  %204 = add nuw nsw i64 %polly.indvar438.us.us, %174
  %polly.access.mul.call1442.us.us = mul nuw nsw i64 %204, 60
  %polly.access.add.call1443.us.us = add nuw nsw i64 %polly.access.mul.call1442.us.us, %203
  %polly.access.call1444.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443.us.us
  %polly.access.call1444.load.us.us = load double, double* %polly.access.call1444.us.us, align 8, !alias.scope !84, !noalias !91
  %polly.access.add.Packed_MemRef_call1294.us.us = add nuw nsw i64 %polly.indvar438.us.us, %polly.access.mul.Packed_MemRef_call1294.us.us
  %polly.access.Packed_MemRef_call1294.us.us = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294.us.us
  store double %polly.access.call1444.load.us.us, double* %polly.access.Packed_MemRef_call1294.us.us, align 8
  %polly.indvar_next439.us.us = add nuw nsw i64 %polly.indvar438.us.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar438.us.us, %smin1054
  br i1 %exitcond1052.not, label %polly.then447.us.us, label %polly.loop_header435.us.us

polly.loop_exit425:                               ; preds = %polly.loop_exit458, %polly.loop_exit458.us
  br i1 %173, label %polly.loop_header417, label %polly.loop_exit419

polly.loop_header423:                             ; preds = %polly.loop_header417, %polly.loop_exit458
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit458 ], [ 0, %polly.loop_header417 ]
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.loop_exit458 ], [ %174, %polly.loop_header417 ]
  %smin1577 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 63)
  %205 = add nuw nsw i64 %smin1577, 1
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1037, i64 63)
  %206 = add nsw i64 %polly.indvar426, %175
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.merge446
  %207 = mul nuw nsw i64 %polly.indvar426, 640
  %scevgep484 = getelementptr i8, i8* %call, i64 %207
  br label %polly.loop_header456

polly.loop_exit458:                               ; preds = %polly.loop_exit464
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1
  %exitcond1045.not = icmp eq i64 %indvars.iv.next1038, %176
  br i1 %exitcond1045.not, label %polly.loop_exit425, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.merge446, %polly.loop_header423
  %polly.indvar432 = phi i64 [ 0, %polly.loop_header423 ], [ %polly.indvar_next433, %polly.merge446 ]
  %208 = add nuw nsw i64 %polly.indvar432, %171
  %polly.access.mul.Packed_MemRef_call1294 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.merge446:                                   ; preds = %polly.loop_header435
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next433, %172
  br i1 %exitcond1041.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %209 = add nuw nsw i64 %polly.indvar438, %174
  %polly.access.mul.call1442 = mul nuw nsw i64 %209, 60
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %208
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !84, !noalias !91
  %polly.access.add.Packed_MemRef_call1294 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1294
  %polly.access.Packed_MemRef_call1294 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1294, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar438, %smin1042
  br i1 %exitcond1040.not, label %polly.merge446, label %polly.loop_header435

polly.loop_header456:                             ; preds = %polly.loop_exit464, %polly.loop_exit431
  %polly.indvar459 = phi i64 [ 0, %polly.loop_exit431 ], [ %polly.indvar_next460, %polly.loop_exit464 ]
  %polly.access.mul.Packed_MemRef_call1294468 = mul nuw nsw i64 %polly.indvar459, 80
  %210 = add nuw nsw i64 %polly.indvar459, %171
  %polly.access.mul.Packed_MemRef_call2296472 = mul nuw nsw i64 %210, 80
  %polly.access.add.Packed_MemRef_call2296473 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2296472, %polly.indvar426
  %polly.access.Packed_MemRef_call2296474 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296473
  %_p_scalar_475 = load double, double* %polly.access.Packed_MemRef_call2296474, align 8
  %polly.access.add.Packed_MemRef_call1294481 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1294468, %206
  %polly.access.Packed_MemRef_call1294482 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294481
  %_p_scalar_483 = load double, double* %polly.access.Packed_MemRef_call1294482, align 8
  %min.iters.check1578 = icmp ult i64 %smin1577, 3
  br i1 %min.iters.check1578, label %polly.loop_header462.preheader, label %vector.ph1579

vector.ph1579:                                    ; preds = %polly.loop_header456
  %n.vec1581 = and i64 %205, 124
  %broadcast.splatinsert1587 = insertelement <4 x double> poison, double %_p_scalar_475, i32 0
  %broadcast.splat1588 = shufflevector <4 x double> %broadcast.splatinsert1587, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1590 = insertelement <4 x double> poison, double %_p_scalar_483, i32 0
  %broadcast.splat1591 = shufflevector <4 x double> %broadcast.splatinsert1590, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1576

vector.body1576:                                  ; preds = %vector.body1576, %vector.ph1579
  %index1582 = phi i64 [ 0, %vector.ph1579 ], [ %index.next1583, %vector.body1576 ]
  %211 = add nuw nsw i64 %index1582, %174
  %212 = add nuw nsw i64 %index1582, %polly.access.mul.Packed_MemRef_call1294468
  %213 = getelementptr double, double* %Packed_MemRef_call1294, i64 %212
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %214, align 8
  %215 = fmul fast <4 x double> %broadcast.splat1588, %wide.load1586
  %216 = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2296472
  %217 = getelementptr double, double* %Packed_MemRef_call2296, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1589 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1591, %wide.load1589
  %220 = shl i64 %211, 3
  %221 = getelementptr i8, i8* %scevgep484, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %222, align 8, !alias.scope !81, !noalias !83
  %223 = fadd fast <4 x double> %219, %215
  %224 = fmul fast <4 x double> %223, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %225 = fadd fast <4 x double> %224, %wide.load1592
  %226 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %225, <4 x double>* %226, align 8, !alias.scope !81, !noalias !83
  %index.next1583 = add i64 %index1582, 4
  %227 = icmp eq i64 %index.next1583, %n.vec1581
  br i1 %227, label %middle.block1574, label %vector.body1576, !llvm.loop !94

middle.block1574:                                 ; preds = %vector.body1576
  %cmp.n1585 = icmp eq i64 %205, %n.vec1581
  br i1 %cmp.n1585, label %polly.loop_exit464, label %polly.loop_header462.preheader

polly.loop_header462.preheader:                   ; preds = %polly.loop_header456, %middle.block1574
  %polly.indvar465.ph = phi i64 [ 0, %polly.loop_header456 ], [ %n.vec1581, %middle.block1574 ]
  br label %polly.loop_header462

polly.loop_exit464:                               ; preds = %polly.loop_header462, %middle.block1574
  %polly.indvar_next460 = add nuw nsw i64 %polly.indvar459, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next460, %172
  br i1 %exitcond1044.not, label %polly.loop_exit458, label %polly.loop_header456

polly.loop_header462:                             ; preds = %polly.loop_header462.preheader, %polly.loop_header462
  %polly.indvar465 = phi i64 [ %polly.indvar_next466, %polly.loop_header462 ], [ %polly.indvar465.ph, %polly.loop_header462.preheader ]
  %228 = add nuw nsw i64 %polly.indvar465, %174
  %polly.access.add.Packed_MemRef_call1294469 = add nuw nsw i64 %polly.indvar465, %polly.access.mul.Packed_MemRef_call1294468
  %polly.access.Packed_MemRef_call1294470 = getelementptr double, double* %Packed_MemRef_call1294, i64 %polly.access.add.Packed_MemRef_call1294469
  %_p_scalar_471 = load double, double* %polly.access.Packed_MemRef_call1294470, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_475, %_p_scalar_471
  %polly.access.add.Packed_MemRef_call2296477 = add nuw nsw i64 %228, %polly.access.mul.Packed_MemRef_call2296472
  %polly.access.Packed_MemRef_call2296478 = getelementptr double, double* %Packed_MemRef_call2296, i64 %polly.access.add.Packed_MemRef_call2296477
  %_p_scalar_479 = load double, double* %polly.access.Packed_MemRef_call2296478, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_483, %_p_scalar_479
  %229 = shl i64 %228, 3
  %scevgep485 = getelementptr i8, i8* %scevgep484, i64 %229
  %scevgep485486 = bitcast i8* %scevgep485 to double*
  %_p_scalar_487 = load double, double* %scevgep485486, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_487
  store double %p_add42.i79, double* %scevgep485486, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next466 = add nuw nsw i64 %polly.indvar465, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar465, %smin1042
  br i1 %exitcond1043.not, label %polly.loop_exit464, label %polly.loop_header462, !llvm.loop !95

polly.start490:                                   ; preds = %init_array.exit
  %malloccall492 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall494 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header578

polly.exiting491:                                 ; preds = %polly.loop_exit618
  tail call void @free(i8* nonnull %malloccall492)
  tail call void @free(i8* nonnull %malloccall494)
  br label %kernel_syr2k.exit

polly.loop_header578:                             ; preds = %polly.loop_exit586, %polly.start490
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit586 ], [ 0, %polly.start490 ]
  %polly.indvar581 = phi i64 [ %polly.indvar_next582, %polly.loop_exit586 ], [ 1, %polly.start490 ]
  %230 = add i64 %indvar, 1
  %231 = mul nuw nsw i64 %polly.indvar581, 640
  %scevgep590 = getelementptr i8, i8* %call, i64 %231
  %min.iters.check1483 = icmp ult i64 %230, 4
  br i1 %min.iters.check1483, label %polly.loop_header584.preheader, label %vector.ph1484

vector.ph1484:                                    ; preds = %polly.loop_header578
  %n.vec1486 = and i64 %230, -4
  br label %vector.body1482

vector.body1482:                                  ; preds = %vector.body1482, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1488, %vector.body1482 ]
  %232 = shl nuw nsw i64 %index1487, 3
  %233 = getelementptr i8, i8* %scevgep590, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !96, !noalias !98
  %235 = fmul fast <4 x double> %wide.load1491, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %236 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !96, !noalias !98
  %index.next1488 = add i64 %index1487, 4
  %237 = icmp eq i64 %index.next1488, %n.vec1486
  br i1 %237, label %middle.block1480, label %vector.body1482, !llvm.loop !103

middle.block1480:                                 ; preds = %vector.body1482
  %cmp.n1490 = icmp eq i64 %230, %n.vec1486
  br i1 %cmp.n1490, label %polly.loop_exit586, label %polly.loop_header584.preheader

polly.loop_header584.preheader:                   ; preds = %polly.loop_header578, %middle.block1480
  %polly.indvar587.ph = phi i64 [ 0, %polly.loop_header578 ], [ %n.vec1486, %middle.block1480 ]
  br label %polly.loop_header584

polly.loop_exit586:                               ; preds = %polly.loop_header584, %middle.block1480
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next582, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1086.not, label %polly.loop_header594.preheader, label %polly.loop_header578

polly.loop_header594.preheader:                   ; preds = %polly.loop_exit586
  %Packed_MemRef_call1493 = bitcast i8* %malloccall492 to double*
  %Packed_MemRef_call2495 = bitcast i8* %malloccall494 to double*
  br label %polly.loop_header594

polly.loop_header584:                             ; preds = %polly.loop_header584.preheader, %polly.loop_header584
  %polly.indvar587 = phi i64 [ %polly.indvar_next588, %polly.loop_header584 ], [ %polly.indvar587.ph, %polly.loop_header584.preheader ]
  %238 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep591 = getelementptr i8, i8* %scevgep590, i64 %238
  %scevgep591592 = bitcast i8* %scevgep591 to double*
  %_p_scalar_593 = load double, double* %scevgep591592, align 8, !alias.scope !96, !noalias !98
  %p_mul.i = fmul fast double %_p_scalar_593, 1.200000e+00
  store double %p_mul.i, double* %scevgep591592, align 8, !alias.scope !96, !noalias !98
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next588, %polly.indvar581
  br i1 %exitcond1085.not, label %polly.loop_exit586, label %polly.loop_header584, !llvm.loop !104

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit602
  %polly.indvar597 = phi i64 [ %polly.indvar_next598, %polly.loop_exit602 ], [ 0, %polly.loop_header594.preheader ]
  %polly.access.mul.Packed_MemRef_call2495 = mul nuw nsw i64 %polly.indvar597, 80
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next598, 60
  br i1 %exitcond1084.not, label %polly.loop_header610, label %polly.loop_header594

polly.loop_header600:                             ; preds = %polly.loop_header600, %polly.loop_header594
  %polly.indvar603 = phi i64 [ 0, %polly.loop_header594 ], [ %polly.indvar_next604, %polly.loop_header600 ]
  %polly.access.mul.call2607 = mul nuw nsw i64 %polly.indvar603, 60
  %polly.access.add.call2608 = add nuw nsw i64 %polly.access.mul.call2607, %polly.indvar597
  %polly.access.call2609 = getelementptr double, double* %polly.access.cast.call2701, i64 %polly.access.add.call2608
  %polly.access.call2609.load = load double, double* %polly.access.call2609, align 8, !alias.scope !100, !noalias !105
  %polly.access.add.Packed_MemRef_call2495 = add nuw nsw i64 %polly.indvar603, %polly.access.mul.Packed_MemRef_call2495
  %polly.access.Packed_MemRef_call2495 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495
  store double %polly.access.call2609.load, double* %polly.access.Packed_MemRef_call2495, align 8
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next604, 80
  br i1 %exitcond1083.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header610:                             ; preds = %polly.loop_exit602, %polly.loop_exit618
  %polly.loop_cond615 = phi i1 [ false, %polly.loop_exit618 ], [ true, %polly.loop_exit602 ]
  %polly.indvar613 = phi i64 [ 1, %polly.loop_exit618 ], [ 0, %polly.loop_exit602 ]
  %239 = mul nuw nsw i64 %polly.indvar613, -50
  %240 = icmp slt i64 %239, -10
  %241 = select i1 %240, i64 %239, i64 -10
  %242 = mul nuw nsw i64 %polly.indvar613, 50
  %243 = add nsw i64 %241, 60
  br label %polly.loop_header616

polly.loop_exit618:                               ; preds = %polly.loop_exit624
  br i1 %polly.loop_cond615, label %polly.loop_header610, label %polly.exiting491

polly.loop_header616:                             ; preds = %polly.loop_exit624, %polly.loop_header610
  %244 = phi i1 [ false, %polly.loop_exit624 ], [ true, %polly.loop_header610 ]
  %polly.indvar619 = phi i64 [ 1, %polly.loop_exit624 ], [ 0, %polly.loop_header610 ]
  %245 = shl nuw nsw i64 %polly.indvar619, 6
  %246 = mul nuw nsw i64 %polly.indvar619, -64
  %247 = sub nuw nsw i64 80, %245
  br i1 %244, label %polly.loop_header622.us, label %polly.loop_header622

polly.loop_header622.us:                          ; preds = %polly.loop_header616, %polly.loop_exit657.us
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit657.us ], [ 0, %polly.loop_header616 ]
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit657.us ], [ %245, %polly.loop_header616 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 63)
  %248 = add nuw nsw i64 %smin, 1
  %smin1079 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 63)
  %249 = add nsw i64 %polly.indvar625.us, %246
  %250 = icmp ugt i64 %polly.indvar625.us, 63
  %polly.access.mul.call1649.us = mul nuw nsw i64 %polly.indvar625.us, 60
  br i1 %250, label %polly.loop_header628.us.us, label %polly.loop_header628.us978

polly.loop_header628.us978:                       ; preds = %polly.loop_header622.us, %polly.merge645.us1001
  %polly.indvar631.us979 = phi i64 [ %polly.indvar_next632.us1002, %polly.merge645.us1001 ], [ 0, %polly.loop_header622.us ]
  %251 = add nuw nsw i64 %polly.indvar631.us979, %242
  %polly.access.mul.Packed_MemRef_call1493.us980 = mul nuw nsw i64 %polly.indvar631.us979, 80
  br label %polly.loop_header634.us981

polly.loop_header634.us981:                       ; preds = %polly.loop_header634.us981, %polly.loop_header628.us978
  %polly.indvar637.us982 = phi i64 [ 0, %polly.loop_header628.us978 ], [ %polly.indvar_next638.us989, %polly.loop_header634.us981 ]
  %252 = add nuw nsw i64 %polly.indvar637.us982, %245
  %polly.access.mul.call1641.us983 = mul nuw nsw i64 %252, 60
  %polly.access.add.call1642.us984 = add nuw nsw i64 %polly.access.mul.call1641.us983, %251
  %polly.access.call1643.us985 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us984
  %polly.access.call1643.load.us986 = load double, double* %polly.access.call1643.us985, align 8, !alias.scope !99, !noalias !106
  %polly.access.add.Packed_MemRef_call1493.us987 = add nuw nsw i64 %polly.indvar637.us982, %polly.access.mul.Packed_MemRef_call1493.us980
  %polly.access.Packed_MemRef_call1493.us988 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us987
  store double %polly.access.call1643.load.us986, double* %polly.access.Packed_MemRef_call1493.us988, align 8
  %polly.indvar_next638.us989 = add nuw nsw i64 %polly.indvar637.us982, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar637.us982, %smin1079
  br i1 %exitcond1074.not, label %polly.merge645.us1001, label %polly.loop_header634.us981

polly.merge645.us1001:                            ; preds = %polly.loop_header634.us981
  %polly.indvar_next632.us1002 = add nuw nsw i64 %polly.indvar631.us979, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next632.us1002, %243
  br i1 %exitcond1075.not, label %polly.loop_exit630.us, label %polly.loop_header628.us978

polly.loop_exit630.us:                            ; preds = %polly.merge645.us1001, %polly.then646.us.us
  %253 = mul nuw nsw i64 %polly.indvar625.us, 640
  %scevgep683.us = getelementptr i8, i8* %call, i64 %253
  br label %polly.loop_header655.us

polly.loop_header655.us:                          ; preds = %polly.loop_exit663.us, %polly.loop_exit630.us
  %polly.indvar658.us = phi i64 [ 0, %polly.loop_exit630.us ], [ %polly.indvar_next659.us, %polly.loop_exit663.us ]
  %polly.access.mul.Packed_MemRef_call1493667.us = mul nuw nsw i64 %polly.indvar658.us, 80
  %254 = add nuw nsw i64 %polly.indvar658.us, %242
  %polly.access.mul.Packed_MemRef_call2495671.us = mul nuw nsw i64 %254, 80
  %polly.access.add.Packed_MemRef_call2495672.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671.us, %polly.indvar625.us
  %polly.access.Packed_MemRef_call2495673.us = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672.us
  %_p_scalar_674.us = load double, double* %polly.access.Packed_MemRef_call2495673.us, align 8
  %polly.access.add.Packed_MemRef_call1493680.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667.us, %249
  %polly.access.Packed_MemRef_call1493681.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680.us
  %_p_scalar_682.us = load double, double* %polly.access.Packed_MemRef_call1493681.us, align 8
  %min.iters.check1495 = icmp ult i64 %smin, 3
  br i1 %min.iters.check1495, label %polly.loop_header661.us.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %polly.loop_header655.us
  %n.vec1498 = and i64 %248, 124
  %broadcast.splatinsert1504 = insertelement <4 x double> poison, double %_p_scalar_674.us, i32 0
  %broadcast.splat1505 = shufflevector <4 x double> %broadcast.splatinsert1504, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1507 = insertelement <4 x double> poison, double %_p_scalar_682.us, i32 0
  %broadcast.splat1508 = shufflevector <4 x double> %broadcast.splatinsert1507, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1494

vector.body1494:                                  ; preds = %vector.body1494, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1494 ]
  %255 = add nuw nsw i64 %index1499, %245
  %256 = add nuw nsw i64 %index1499, %polly.access.mul.Packed_MemRef_call1493667.us
  %257 = getelementptr double, double* %Packed_MemRef_call1493, i64 %256
  %258 = bitcast double* %257 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %258, align 8
  %259 = fmul fast <4 x double> %broadcast.splat1505, %wide.load1503
  %260 = add nuw nsw i64 %255, %polly.access.mul.Packed_MemRef_call2495671.us
  %261 = getelementptr double, double* %Packed_MemRef_call2495, i64 %260
  %262 = bitcast double* %261 to <4 x double>*
  %wide.load1506 = load <4 x double>, <4 x double>* %262, align 8
  %263 = fmul fast <4 x double> %broadcast.splat1508, %wide.load1506
  %264 = shl i64 %255, 3
  %265 = getelementptr i8, i8* %scevgep683.us, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  %wide.load1509 = load <4 x double>, <4 x double>* %266, align 8, !alias.scope !96, !noalias !98
  %267 = fadd fast <4 x double> %263, %259
  %268 = fmul fast <4 x double> %267, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %269 = fadd fast <4 x double> %268, %wide.load1509
  %270 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %269, <4 x double>* %270, align 8, !alias.scope !96, !noalias !98
  %index.next1500 = add i64 %index1499, 4
  %271 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %271, label %middle.block1492, label %vector.body1494, !llvm.loop !107

middle.block1492:                                 ; preds = %vector.body1494
  %cmp.n1502 = icmp eq i64 %248, %n.vec1498
  br i1 %cmp.n1502, label %polly.loop_exit663.us, label %polly.loop_header661.us.preheader

polly.loop_header661.us.preheader:                ; preds = %polly.loop_header655.us, %middle.block1492
  %polly.indvar664.us.ph = phi i64 [ 0, %polly.loop_header655.us ], [ %n.vec1498, %middle.block1492 ]
  br label %polly.loop_header661.us

polly.loop_header661.us:                          ; preds = %polly.loop_header661.us.preheader, %polly.loop_header661.us
  %polly.indvar664.us = phi i64 [ %polly.indvar_next665.us, %polly.loop_header661.us ], [ %polly.indvar664.us.ph, %polly.loop_header661.us.preheader ]
  %272 = add nuw nsw i64 %polly.indvar664.us, %245
  %polly.access.add.Packed_MemRef_call1493668.us = add nuw nsw i64 %polly.indvar664.us, %polly.access.mul.Packed_MemRef_call1493667.us
  %polly.access.Packed_MemRef_call1493669.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668.us
  %_p_scalar_670.us = load double, double* %polly.access.Packed_MemRef_call1493669.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_674.us, %_p_scalar_670.us
  %polly.access.add.Packed_MemRef_call2495676.us = add nuw nsw i64 %272, %polly.access.mul.Packed_MemRef_call2495671.us
  %polly.access.Packed_MemRef_call2495677.us = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676.us
  %_p_scalar_678.us = load double, double* %polly.access.Packed_MemRef_call2495677.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_682.us, %_p_scalar_678.us
  %273 = shl i64 %272, 3
  %scevgep684.us = getelementptr i8, i8* %scevgep683.us, i64 %273
  %scevgep684685.us = bitcast i8* %scevgep684.us to double*
  %_p_scalar_686.us = load double, double* %scevgep684685.us, align 8, !alias.scope !96, !noalias !98
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_686.us
  store double %p_add42.i.us, double* %scevgep684685.us, align 8, !alias.scope !96, !noalias !98
  %polly.indvar_next665.us = add nuw nsw i64 %polly.indvar664.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar664.us, %smin1079
  br i1 %exitcond1080.not, label %polly.loop_exit663.us, label %polly.loop_header661.us, !llvm.loop !108

polly.loop_exit663.us:                            ; preds = %polly.loop_header661.us, %middle.block1492
  %polly.indvar_next659.us = add nuw nsw i64 %polly.indvar658.us, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next659.us, %243
  br i1 %exitcond1081.not, label %polly.loop_exit657.us, label %polly.loop_header655.us

polly.loop_exit657.us:                            ; preds = %polly.loop_exit663.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %indvars.iv.next1072 = add nuw nsw i64 %indvars.iv1071, 1
  %exitcond1082.not = icmp eq i64 %indvars.iv.next1072, %247
  br i1 %exitcond1082.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header628.us.us:                       ; preds = %polly.loop_header622.us, %polly.then646.us.us
  %polly.indvar631.us.us = phi i64 [ %polly.indvar_next632.us.us, %polly.then646.us.us ], [ 0, %polly.loop_header622.us ]
  %274 = add nuw nsw i64 %polly.indvar631.us.us, %242
  %polly.access.mul.Packed_MemRef_call1493.us.us = mul nuw nsw i64 %polly.indvar631.us.us, 80
  br label %polly.loop_header634.us.us

polly.then646.us.us:                              ; preds = %polly.loop_header634.us.us
  %polly.access.add.call1650.us.us = add nuw nsw i64 %274, %polly.access.mul.call1649.us
  %polly.access.call1651.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1650.us.us
  %polly.access.call1651.load.us.us = load double, double* %polly.access.call1651.us.us, align 8, !alias.scope !99, !noalias !106
  %polly.access.add.Packed_MemRef_call1493653.us.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493.us.us, %polly.indvar625.us
  %polly.access.Packed_MemRef_call1493654.us.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493653.us.us
  store double %polly.access.call1651.load.us.us, double* %polly.access.Packed_MemRef_call1493654.us.us, align 8
  %polly.indvar_next632.us.us = add nuw nsw i64 %polly.indvar631.us.us, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar_next632.us.us, %243
  br i1 %exitcond1078.not, label %polly.loop_exit630.us, label %polly.loop_header628.us.us

polly.loop_header634.us.us:                       ; preds = %polly.loop_header634.us.us, %polly.loop_header628.us.us
  %polly.indvar637.us.us = phi i64 [ 0, %polly.loop_header628.us.us ], [ %polly.indvar_next638.us.us, %polly.loop_header634.us.us ]
  %275 = add nuw nsw i64 %polly.indvar637.us.us, %245
  %polly.access.mul.call1641.us.us = mul nuw nsw i64 %275, 60
  %polly.access.add.call1642.us.us = add nuw nsw i64 %polly.access.mul.call1641.us.us, %274
  %polly.access.call1643.us.us = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642.us.us
  %polly.access.call1643.load.us.us = load double, double* %polly.access.call1643.us.us, align 8, !alias.scope !99, !noalias !106
  %polly.access.add.Packed_MemRef_call1493.us.us = add nuw nsw i64 %polly.indvar637.us.us, %polly.access.mul.Packed_MemRef_call1493.us.us
  %polly.access.Packed_MemRef_call1493.us.us = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493.us.us
  store double %polly.access.call1643.load.us.us, double* %polly.access.Packed_MemRef_call1493.us.us, align 8
  %polly.indvar_next638.us.us = add nuw nsw i64 %polly.indvar637.us.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar637.us.us, %smin1079
  br i1 %exitcond1077.not, label %polly.then646.us.us, label %polly.loop_header634.us.us

polly.loop_exit624:                               ; preds = %polly.loop_exit657, %polly.loop_exit657.us
  br i1 %244, label %polly.loop_header616, label %polly.loop_exit618

polly.loop_header622:                             ; preds = %polly.loop_header616, %polly.loop_exit657
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit657 ], [ 0, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit657 ], [ %245, %polly.loop_header616 ]
  %smin1513 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 63)
  %276 = add nuw nsw i64 %smin1513, 1
  %smin1067 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 63)
  %277 = add nsw i64 %polly.indvar625, %246
  br label %polly.loop_header628

polly.loop_exit630:                               ; preds = %polly.merge645
  %278 = mul nuw nsw i64 %polly.indvar625, 640
  %scevgep683 = getelementptr i8, i8* %call, i64 %278
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_exit663
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1
  %exitcond1070.not = icmp eq i64 %indvars.iv.next1063, %247
  br i1 %exitcond1070.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header628:                             ; preds = %polly.merge645, %polly.loop_header622
  %polly.indvar631 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next632, %polly.merge645 ]
  %279 = add nuw nsw i64 %polly.indvar631, %242
  %polly.access.mul.Packed_MemRef_call1493 = mul nuw nsw i64 %polly.indvar631, 80
  br label %polly.loop_header634

polly.merge645:                                   ; preds = %polly.loop_header634
  %polly.indvar_next632 = add nuw nsw i64 %polly.indvar631, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next632, %243
  br i1 %exitcond1066.not, label %polly.loop_exit630, label %polly.loop_header628

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header628
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header628 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %280 = add nuw nsw i64 %polly.indvar637, %245
  %polly.access.mul.call1641 = mul nuw nsw i64 %280, 60
  %polly.access.add.call1642 = add nuw nsw i64 %polly.access.mul.call1641, %279
  %polly.access.call1643 = getelementptr double, double* %polly.access.cast.call1691, i64 %polly.access.add.call1642
  %polly.access.call1643.load = load double, double* %polly.access.call1643, align 8, !alias.scope !99, !noalias !106
  %polly.access.add.Packed_MemRef_call1493 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1493
  %polly.access.Packed_MemRef_call1493 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493
  store double %polly.access.call1643.load, double* %polly.access.Packed_MemRef_call1493, align 8
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar637, %smin1067
  br i1 %exitcond1065.not, label %polly.merge645, label %polly.loop_header634

polly.loop_header655:                             ; preds = %polly.loop_exit663, %polly.loop_exit630
  %polly.indvar658 = phi i64 [ 0, %polly.loop_exit630 ], [ %polly.indvar_next659, %polly.loop_exit663 ]
  %polly.access.mul.Packed_MemRef_call1493667 = mul nuw nsw i64 %polly.indvar658, 80
  %281 = add nuw nsw i64 %polly.indvar658, %242
  %polly.access.mul.Packed_MemRef_call2495671 = mul nuw nsw i64 %281, 80
  %polly.access.add.Packed_MemRef_call2495672 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2495671, %polly.indvar625
  %polly.access.Packed_MemRef_call2495673 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495672
  %_p_scalar_674 = load double, double* %polly.access.Packed_MemRef_call2495673, align 8
  %polly.access.add.Packed_MemRef_call1493680 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1493667, %277
  %polly.access.Packed_MemRef_call1493681 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493680
  %_p_scalar_682 = load double, double* %polly.access.Packed_MemRef_call1493681, align 8
  %min.iters.check1514 = icmp ult i64 %smin1513, 3
  br i1 %min.iters.check1514, label %polly.loop_header661.preheader, label %vector.ph1515

vector.ph1515:                                    ; preds = %polly.loop_header655
  %n.vec1517 = and i64 %276, 124
  %broadcast.splatinsert1523 = insertelement <4 x double> poison, double %_p_scalar_674, i32 0
  %broadcast.splat1524 = shufflevector <4 x double> %broadcast.splatinsert1523, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1526 = insertelement <4 x double> poison, double %_p_scalar_682, i32 0
  %broadcast.splat1527 = shufflevector <4 x double> %broadcast.splatinsert1526, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1519, %vector.body1512 ]
  %282 = add nuw nsw i64 %index1518, %245
  %283 = add nuw nsw i64 %index1518, %polly.access.mul.Packed_MemRef_call1493667
  %284 = getelementptr double, double* %Packed_MemRef_call1493, i64 %283
  %285 = bitcast double* %284 to <4 x double>*
  %wide.load1522 = load <4 x double>, <4 x double>* %285, align 8
  %286 = fmul fast <4 x double> %broadcast.splat1524, %wide.load1522
  %287 = add nuw nsw i64 %282, %polly.access.mul.Packed_MemRef_call2495671
  %288 = getelementptr double, double* %Packed_MemRef_call2495, i64 %287
  %289 = bitcast double* %288 to <4 x double>*
  %wide.load1525 = load <4 x double>, <4 x double>* %289, align 8
  %290 = fmul fast <4 x double> %broadcast.splat1527, %wide.load1525
  %291 = shl i64 %282, 3
  %292 = getelementptr i8, i8* %scevgep683, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  %wide.load1528 = load <4 x double>, <4 x double>* %293, align 8, !alias.scope !96, !noalias !98
  %294 = fadd fast <4 x double> %290, %286
  %295 = fmul fast <4 x double> %294, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %296 = fadd fast <4 x double> %295, %wide.load1528
  %297 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %296, <4 x double>* %297, align 8, !alias.scope !96, !noalias !98
  %index.next1519 = add i64 %index1518, 4
  %298 = icmp eq i64 %index.next1519, %n.vec1517
  br i1 %298, label %middle.block1510, label %vector.body1512, !llvm.loop !109

middle.block1510:                                 ; preds = %vector.body1512
  %cmp.n1521 = icmp eq i64 %276, %n.vec1517
  br i1 %cmp.n1521, label %polly.loop_exit663, label %polly.loop_header661.preheader

polly.loop_header661.preheader:                   ; preds = %polly.loop_header655, %middle.block1510
  %polly.indvar664.ph = phi i64 [ 0, %polly.loop_header655 ], [ %n.vec1517, %middle.block1510 ]
  br label %polly.loop_header661

polly.loop_exit663:                               ; preds = %polly.loop_header661, %middle.block1510
  %polly.indvar_next659 = add nuw nsw i64 %polly.indvar658, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next659, %243
  br i1 %exitcond1069.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header661:                             ; preds = %polly.loop_header661.preheader, %polly.loop_header661
  %polly.indvar664 = phi i64 [ %polly.indvar_next665, %polly.loop_header661 ], [ %polly.indvar664.ph, %polly.loop_header661.preheader ]
  %299 = add nuw nsw i64 %polly.indvar664, %245
  %polly.access.add.Packed_MemRef_call1493668 = add nuw nsw i64 %polly.indvar664, %polly.access.mul.Packed_MemRef_call1493667
  %polly.access.Packed_MemRef_call1493669 = getelementptr double, double* %Packed_MemRef_call1493, i64 %polly.access.add.Packed_MemRef_call1493668
  %_p_scalar_670 = load double, double* %polly.access.Packed_MemRef_call1493669, align 8
  %p_mul27.i = fmul fast double %_p_scalar_674, %_p_scalar_670
  %polly.access.add.Packed_MemRef_call2495676 = add nuw nsw i64 %299, %polly.access.mul.Packed_MemRef_call2495671
  %polly.access.Packed_MemRef_call2495677 = getelementptr double, double* %Packed_MemRef_call2495, i64 %polly.access.add.Packed_MemRef_call2495676
  %_p_scalar_678 = load double, double* %polly.access.Packed_MemRef_call2495677, align 8
  %p_mul37.i = fmul fast double %_p_scalar_682, %_p_scalar_678
  %300 = shl i64 %299, 3
  %scevgep684 = getelementptr i8, i8* %scevgep683, i64 %300
  %scevgep684685 = bitcast i8* %scevgep684 to double*
  %_p_scalar_686 = load double, double* %scevgep684685, align 8, !alias.scope !96, !noalias !98
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_686
  store double %p_add42.i, double* %scevgep684685, align 8, !alias.scope !96, !noalias !98
  %polly.indvar_next665 = add nuw nsw i64 %polly.indvar664, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar664, %smin1067
  br i1 %exitcond1068.not, label %polly.loop_exit663, label %polly.loop_header661, !llvm.loop !110

polly.loop_header825:                             ; preds = %entry, %polly.loop_exit833
  %polly.indvar828 = phi i64 [ %polly.indvar_next829, %polly.loop_exit833 ], [ 0, %entry ]
  %301 = mul nuw nsw i64 %polly.indvar828, 640
  %302 = trunc i64 %polly.indvar828 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header825
  %index1206 = phi i64 [ 0, %polly.loop_header825 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1212 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825 ], [ %vec.ind.next1213, %vector.body1204 ]
  %303 = mul <4 x i32> %vec.ind1212, %broadcast.splat1215
  %304 = add <4 x i32> %303, <i32 3, i32 3, i32 3, i32 3>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = shl i64 %index1206, 3
  %309 = add nuw nsw i64 %308, %301
  %310 = getelementptr i8, i8* %call, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !111, !noalias !113
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1213 = add <4 x i32> %vec.ind1212, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1207, 32
  br i1 %312, label %polly.loop_exit833, label %vector.body1204, !llvm.loop !116

polly.loop_exit833:                               ; preds = %vector.body1204
  %polly.indvar_next829 = add nuw nsw i64 %polly.indvar828, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next829, 32
  br i1 %exitcond1106.not, label %polly.loop_header825.1, label %polly.loop_header825

polly.loop_header852:                             ; preds = %polly.loop_exit833.2.2, %polly.loop_exit860
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %polly.loop_exit833.2.2 ]
  %313 = mul nuw nsw i64 %polly.indvar855, 480
  %314 = trunc i64 %polly.indvar855 to i32
  %broadcast.splatinsert1328 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1329 = shufflevector <4 x i32> %broadcast.splatinsert1328, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header852
  %index1320 = phi i64 [ 0, %polly.loop_header852 ], [ %index.next1321, %vector.body1318 ]
  %vec.ind1326 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852 ], [ %vec.ind.next1327, %vector.body1318 ]
  %315 = mul <4 x i32> %vec.ind1326, %broadcast.splat1329
  %316 = add <4 x i32> %315, <i32 2, i32 2, i32 2, i32 2>
  %317 = urem <4 x i32> %316, <i32 60, i32 60, i32 60, i32 60>
  %318 = sitofp <4 x i32> %317 to <4 x double>
  %319 = fmul fast <4 x double> %318, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %320 = shl i64 %index1320, 3
  %321 = add i64 %320, %313
  %322 = getelementptr i8, i8* %call2, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %319, <4 x double>* %323, align 8, !alias.scope !115, !noalias !117
  %index.next1321 = add i64 %index1320, 4
  %vec.ind.next1327 = add <4 x i32> %vec.ind1326, <i32 4, i32 4, i32 4, i32 4>
  %324 = icmp eq i64 %index.next1321, 32
  br i1 %324, label %polly.loop_exit860, label %vector.body1318, !llvm.loop !118

polly.loop_exit860:                               ; preds = %vector.body1318
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next856, 32
  br i1 %exitcond1097.not, label %polly.loop_header852.1, label %polly.loop_header852

polly.loop_header878:                             ; preds = %polly.loop_exit860.1.2, %polly.loop_exit886
  %polly.indvar881 = phi i64 [ %polly.indvar_next882, %polly.loop_exit886 ], [ 0, %polly.loop_exit860.1.2 ]
  %325 = mul nuw nsw i64 %polly.indvar881, 480
  %326 = trunc i64 %polly.indvar881 to i32
  %broadcast.splatinsert1406 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1407 = shufflevector <4 x i32> %broadcast.splatinsert1406, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %polly.loop_header878
  %index1398 = phi i64 [ 0, %polly.loop_header878 ], [ %index.next1399, %vector.body1396 ]
  %vec.ind1404 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878 ], [ %vec.ind.next1405, %vector.body1396 ]
  %327 = mul <4 x i32> %vec.ind1404, %broadcast.splat1407
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = shl i64 %index1398, 3
  %333 = add i64 %332, %325
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %331, <4 x double>* %335, align 8, !alias.scope !114, !noalias !119
  %index.next1399 = add i64 %index1398, 4
  %vec.ind.next1405 = add <4 x i32> %vec.ind1404, <i32 4, i32 4, i32 4, i32 4>
  %336 = icmp eq i64 %index.next1399, 32
  br i1 %336, label %polly.loop_exit886, label %vector.body1396, !llvm.loop !120

polly.loop_exit886:                               ; preds = %vector.body1396
  %polly.indvar_next882 = add nuw nsw i64 %polly.indvar881, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next882, 32
  br i1 %exitcond1091.not, label %polly.loop_header878.1, label %polly.loop_header878

polly.loop_header878.1:                           ; preds = %polly.loop_exit886, %polly.loop_exit886.1
  %polly.indvar881.1 = phi i64 [ %polly.indvar_next882.1, %polly.loop_exit886.1 ], [ 0, %polly.loop_exit886 ]
  %337 = mul nuw nsw i64 %polly.indvar881.1, 480
  %338 = trunc i64 %polly.indvar881.1 to i32
  %broadcast.splatinsert1418 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1419 = shufflevector <4 x i32> %broadcast.splatinsert1418, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %polly.loop_header878.1
  %index1412 = phi i64 [ 0, %polly.loop_header878.1 ], [ %index.next1413, %vector.body1410 ]
  %vec.ind1416 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1 ], [ %vec.ind.next1417, %vector.body1410 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1416, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1419, %340
  %342 = add <4 x i32> %341, <i32 1, i32 1, i32 1, i32 1>
  %343 = urem <4 x i32> %342, <i32 80, i32 80, i32 80, i32 80>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call1, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !114, !noalias !119
  %index.next1413 = add i64 %index1412, 4
  %vec.ind.next1417 = add <4 x i64> %vec.ind1416, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1413, 28
  br i1 %351, label %polly.loop_exit886.1, label %vector.body1410, !llvm.loop !121

polly.loop_exit886.1:                             ; preds = %vector.body1410
  %polly.indvar_next882.1 = add nuw nsw i64 %polly.indvar881.1, 1
  %exitcond1091.1.not = icmp eq i64 %polly.indvar_next882.1, 32
  br i1 %exitcond1091.1.not, label %polly.loop_header878.11117, label %polly.loop_header878.1

polly.loop_header878.11117:                       ; preds = %polly.loop_exit886.1, %polly.loop_exit886.11128
  %polly.indvar881.11116 = phi i64 [ %polly.indvar_next882.11126, %polly.loop_exit886.11128 ], [ 0, %polly.loop_exit886.1 ]
  %352 = add nuw nsw i64 %polly.indvar881.11116, 32
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1432 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1433 = shufflevector <4 x i32> %broadcast.splatinsert1432, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %polly.loop_header878.11117
  %index1424 = phi i64 [ 0, %polly.loop_header878.11117 ], [ %index.next1425, %vector.body1422 ]
  %vec.ind1430 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.11117 ], [ %vec.ind.next1431, %vector.body1422 ]
  %355 = mul <4 x i32> %vec.ind1430, %broadcast.splat1433
  %356 = add <4 x i32> %355, <i32 1, i32 1, i32 1, i32 1>
  %357 = urem <4 x i32> %356, <i32 80, i32 80, i32 80, i32 80>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %360 = shl i64 %index1424, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call1, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !114, !noalias !119
  %index.next1425 = add i64 %index1424, 4
  %vec.ind.next1431 = add <4 x i32> %vec.ind1430, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1425, 32
  br i1 %364, label %polly.loop_exit886.11128, label %vector.body1422, !llvm.loop !122

polly.loop_exit886.11128:                         ; preds = %vector.body1422
  %polly.indvar_next882.11126 = add nuw nsw i64 %polly.indvar881.11116, 1
  %exitcond1091.11127.not = icmp eq i64 %polly.indvar_next882.11126, 32
  br i1 %exitcond1091.11127.not, label %polly.loop_header878.1.1, label %polly.loop_header878.11117

polly.loop_header878.1.1:                         ; preds = %polly.loop_exit886.11128, %polly.loop_exit886.1.1
  %polly.indvar881.1.1 = phi i64 [ %polly.indvar_next882.1.1, %polly.loop_exit886.1.1 ], [ 0, %polly.loop_exit886.11128 ]
  %365 = add nuw nsw i64 %polly.indvar881.1.1, 32
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1444 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1445 = shufflevector <4 x i32> %broadcast.splatinsert1444, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1436

vector.body1436:                                  ; preds = %vector.body1436, %polly.loop_header878.1.1
  %index1438 = phi i64 [ 0, %polly.loop_header878.1.1 ], [ %index.next1439, %vector.body1436 ]
  %vec.ind1442 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.1 ], [ %vec.ind.next1443, %vector.body1436 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1442, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1445, %369
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call1, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !114, !noalias !119
  %index.next1439 = add i64 %index1438, 4
  %vec.ind.next1443 = add <4 x i64> %vec.ind1442, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1439, 28
  br i1 %380, label %polly.loop_exit886.1.1, label %vector.body1436, !llvm.loop !123

polly.loop_exit886.1.1:                           ; preds = %vector.body1436
  %polly.indvar_next882.1.1 = add nuw nsw i64 %polly.indvar881.1.1, 1
  %exitcond1091.1.1.not = icmp eq i64 %polly.indvar_next882.1.1, 32
  br i1 %exitcond1091.1.1.not, label %polly.loop_header878.2, label %polly.loop_header878.1.1

polly.loop_header878.2:                           ; preds = %polly.loop_exit886.1.1, %polly.loop_exit886.2
  %polly.indvar881.2 = phi i64 [ %polly.indvar_next882.2, %polly.loop_exit886.2 ], [ 0, %polly.loop_exit886.1.1 ]
  %381 = add nuw nsw i64 %polly.indvar881.2, 64
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1458 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1459 = shufflevector <4 x i32> %broadcast.splatinsert1458, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %polly.loop_header878.2
  %index1450 = phi i64 [ 0, %polly.loop_header878.2 ], [ %index.next1451, %vector.body1448 ]
  %vec.ind1456 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header878.2 ], [ %vec.ind.next1457, %vector.body1448 ]
  %384 = mul <4 x i32> %vec.ind1456, %broadcast.splat1459
  %385 = add <4 x i32> %384, <i32 1, i32 1, i32 1, i32 1>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %389 = shl i64 %index1450, 3
  %390 = add i64 %389, %382
  %391 = getelementptr i8, i8* %call1, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %388, <4 x double>* %392, align 8, !alias.scope !114, !noalias !119
  %index.next1451 = add i64 %index1450, 4
  %vec.ind.next1457 = add <4 x i32> %vec.ind1456, <i32 4, i32 4, i32 4, i32 4>
  %393 = icmp eq i64 %index.next1451, 32
  br i1 %393, label %polly.loop_exit886.2, label %vector.body1448, !llvm.loop !124

polly.loop_exit886.2:                             ; preds = %vector.body1448
  %polly.indvar_next882.2 = add nuw nsw i64 %polly.indvar881.2, 1
  %exitcond1091.2.not = icmp eq i64 %polly.indvar_next882.2, 16
  br i1 %exitcond1091.2.not, label %polly.loop_header878.1.2, label %polly.loop_header878.2

polly.loop_header878.1.2:                         ; preds = %polly.loop_exit886.2, %polly.loop_exit886.1.2
  %polly.indvar881.1.2 = phi i64 [ %polly.indvar_next882.1.2, %polly.loop_exit886.1.2 ], [ 0, %polly.loop_exit886.2 ]
  %394 = add nuw nsw i64 %polly.indvar881.1.2, 64
  %395 = mul nuw nsw i64 %394, 480
  %396 = trunc i64 %394 to i32
  %broadcast.splatinsert1470 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1471 = shufflevector <4 x i32> %broadcast.splatinsert1470, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %polly.loop_header878.1.2
  %index1464 = phi i64 [ 0, %polly.loop_header878.1.2 ], [ %index.next1465, %vector.body1462 ]
  %vec.ind1468 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header878.1.2 ], [ %vec.ind.next1469, %vector.body1462 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1468, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1471, %398
  %400 = add <4 x i32> %399, <i32 1, i32 1, i32 1, i32 1>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add i64 %405, %395
  %407 = getelementptr i8, i8* %call1, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !114, !noalias !119
  %index.next1465 = add i64 %index1464, 4
  %vec.ind.next1469 = add <4 x i64> %vec.ind1468, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1465, 28
  br i1 %409, label %polly.loop_exit886.1.2, label %vector.body1462, !llvm.loop !125

polly.loop_exit886.1.2:                           ; preds = %vector.body1462
  %polly.indvar_next882.1.2 = add nuw nsw i64 %polly.indvar881.1.2, 1
  %exitcond1091.1.2.not = icmp eq i64 %polly.indvar_next882.1.2, 16
  br i1 %exitcond1091.1.2.not, label %init_array.exit, label %polly.loop_header878.1.2

polly.loop_header852.1:                           ; preds = %polly.loop_exit860, %polly.loop_exit860.1
  %polly.indvar855.1 = phi i64 [ %polly.indvar_next856.1, %polly.loop_exit860.1 ], [ 0, %polly.loop_exit860 ]
  %410 = mul nuw nsw i64 %polly.indvar855.1, 480
  %411 = trunc i64 %polly.indvar855.1 to i32
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %polly.loop_header852.1
  %index1334 = phi i64 [ 0, %polly.loop_header852.1 ], [ %index.next1335, %vector.body1332 ]
  %vec.ind1338 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1 ], [ %vec.ind.next1339, %vector.body1332 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1338, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1341, %413
  %415 = add <4 x i32> %414, <i32 2, i32 2, i32 2, i32 2>
  %416 = urem <4 x i32> %415, <i32 60, i32 60, i32 60, i32 60>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add i64 %420, %410
  %422 = getelementptr i8, i8* %call2, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !115, !noalias !117
  %index.next1335 = add i64 %index1334, 4
  %vec.ind.next1339 = add <4 x i64> %vec.ind1338, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1335, 28
  br i1 %424, label %polly.loop_exit860.1, label %vector.body1332, !llvm.loop !126

polly.loop_exit860.1:                             ; preds = %vector.body1332
  %polly.indvar_next856.1 = add nuw nsw i64 %polly.indvar855.1, 1
  %exitcond1097.1.not = icmp eq i64 %polly.indvar_next856.1, 32
  br i1 %exitcond1097.1.not, label %polly.loop_header852.11131, label %polly.loop_header852.1

polly.loop_header852.11131:                       ; preds = %polly.loop_exit860.1, %polly.loop_exit860.11142
  %polly.indvar855.11130 = phi i64 [ %polly.indvar_next856.11140, %polly.loop_exit860.11142 ], [ 0, %polly.loop_exit860.1 ]
  %425 = add nuw nsw i64 %polly.indvar855.11130, 32
  %426 = mul nuw nsw i64 %425, 480
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1354 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1355 = shufflevector <4 x i32> %broadcast.splatinsert1354, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %polly.loop_header852.11131
  %index1346 = phi i64 [ 0, %polly.loop_header852.11131 ], [ %index.next1347, %vector.body1344 ]
  %vec.ind1352 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.11131 ], [ %vec.ind.next1353, %vector.body1344 ]
  %428 = mul <4 x i32> %vec.ind1352, %broadcast.splat1355
  %429 = add <4 x i32> %428, <i32 2, i32 2, i32 2, i32 2>
  %430 = urem <4 x i32> %429, <i32 60, i32 60, i32 60, i32 60>
  %431 = sitofp <4 x i32> %430 to <4 x double>
  %432 = fmul fast <4 x double> %431, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %433 = shl i64 %index1346, 3
  %434 = add i64 %433, %426
  %435 = getelementptr i8, i8* %call2, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %432, <4 x double>* %436, align 8, !alias.scope !115, !noalias !117
  %index.next1347 = add i64 %index1346, 4
  %vec.ind.next1353 = add <4 x i32> %vec.ind1352, <i32 4, i32 4, i32 4, i32 4>
  %437 = icmp eq i64 %index.next1347, 32
  br i1 %437, label %polly.loop_exit860.11142, label %vector.body1344, !llvm.loop !127

polly.loop_exit860.11142:                         ; preds = %vector.body1344
  %polly.indvar_next856.11140 = add nuw nsw i64 %polly.indvar855.11130, 1
  %exitcond1097.11141.not = icmp eq i64 %polly.indvar_next856.11140, 32
  br i1 %exitcond1097.11141.not, label %polly.loop_header852.1.1, label %polly.loop_header852.11131

polly.loop_header852.1.1:                         ; preds = %polly.loop_exit860.11142, %polly.loop_exit860.1.1
  %polly.indvar855.1.1 = phi i64 [ %polly.indvar_next856.1.1, %polly.loop_exit860.1.1 ], [ 0, %polly.loop_exit860.11142 ]
  %438 = add nuw nsw i64 %polly.indvar855.1.1, 32
  %439 = mul nuw nsw i64 %438, 480
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1358

vector.body1358:                                  ; preds = %vector.body1358, %polly.loop_header852.1.1
  %index1360 = phi i64 [ 0, %polly.loop_header852.1.1 ], [ %index.next1361, %vector.body1358 ]
  %vec.ind1364 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.1 ], [ %vec.ind.next1365, %vector.body1358 ]
  %441 = add nuw nsw <4 x i64> %vec.ind1364, <i64 32, i64 32, i64 32, i64 32>
  %442 = trunc <4 x i64> %441 to <4 x i32>
  %443 = mul <4 x i32> %broadcast.splat1367, %442
  %444 = add <4 x i32> %443, <i32 2, i32 2, i32 2, i32 2>
  %445 = urem <4 x i32> %444, <i32 60, i32 60, i32 60, i32 60>
  %446 = sitofp <4 x i32> %445 to <4 x double>
  %447 = fmul fast <4 x double> %446, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %448 = extractelement <4 x i64> %441, i32 0
  %449 = shl i64 %448, 3
  %450 = add i64 %449, %439
  %451 = getelementptr i8, i8* %call2, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %447, <4 x double>* %452, align 8, !alias.scope !115, !noalias !117
  %index.next1361 = add i64 %index1360, 4
  %vec.ind.next1365 = add <4 x i64> %vec.ind1364, <i64 4, i64 4, i64 4, i64 4>
  %453 = icmp eq i64 %index.next1361, 28
  br i1 %453, label %polly.loop_exit860.1.1, label %vector.body1358, !llvm.loop !128

polly.loop_exit860.1.1:                           ; preds = %vector.body1358
  %polly.indvar_next856.1.1 = add nuw nsw i64 %polly.indvar855.1.1, 1
  %exitcond1097.1.1.not = icmp eq i64 %polly.indvar_next856.1.1, 32
  br i1 %exitcond1097.1.1.not, label %polly.loop_header852.2, label %polly.loop_header852.1.1

polly.loop_header852.2:                           ; preds = %polly.loop_exit860.1.1, %polly.loop_exit860.2
  %polly.indvar855.2 = phi i64 [ %polly.indvar_next856.2, %polly.loop_exit860.2 ], [ 0, %polly.loop_exit860.1.1 ]
  %454 = add nuw nsw i64 %polly.indvar855.2, 64
  %455 = mul nuw nsw i64 %454, 480
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1380 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1381 = shufflevector <4 x i32> %broadcast.splatinsert1380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %polly.loop_header852.2
  %index1372 = phi i64 [ 0, %polly.loop_header852.2 ], [ %index.next1373, %vector.body1370 ]
  %vec.ind1378 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header852.2 ], [ %vec.ind.next1379, %vector.body1370 ]
  %457 = mul <4 x i32> %vec.ind1378, %broadcast.splat1381
  %458 = add <4 x i32> %457, <i32 2, i32 2, i32 2, i32 2>
  %459 = urem <4 x i32> %458, <i32 60, i32 60, i32 60, i32 60>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = shl i64 %index1372, 3
  %463 = add i64 %462, %455
  %464 = getelementptr i8, i8* %call2, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %461, <4 x double>* %465, align 8, !alias.scope !115, !noalias !117
  %index.next1373 = add i64 %index1372, 4
  %vec.ind.next1379 = add <4 x i32> %vec.ind1378, <i32 4, i32 4, i32 4, i32 4>
  %466 = icmp eq i64 %index.next1373, 32
  br i1 %466, label %polly.loop_exit860.2, label %vector.body1370, !llvm.loop !129

polly.loop_exit860.2:                             ; preds = %vector.body1370
  %polly.indvar_next856.2 = add nuw nsw i64 %polly.indvar855.2, 1
  %exitcond1097.2.not = icmp eq i64 %polly.indvar_next856.2, 16
  br i1 %exitcond1097.2.not, label %polly.loop_header852.1.2, label %polly.loop_header852.2

polly.loop_header852.1.2:                         ; preds = %polly.loop_exit860.2, %polly.loop_exit860.1.2
  %polly.indvar855.1.2 = phi i64 [ %polly.indvar_next856.1.2, %polly.loop_exit860.1.2 ], [ 0, %polly.loop_exit860.2 ]
  %467 = add nuw nsw i64 %polly.indvar855.1.2, 64
  %468 = mul nuw nsw i64 %467, 480
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1392 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1393 = shufflevector <4 x i32> %broadcast.splatinsert1392, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %polly.loop_header852.1.2
  %index1386 = phi i64 [ 0, %polly.loop_header852.1.2 ], [ %index.next1387, %vector.body1384 ]
  %vec.ind1390 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header852.1.2 ], [ %vec.ind.next1391, %vector.body1384 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1390, <i64 32, i64 32, i64 32, i64 32>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1393, %471
  %473 = add <4 x i32> %472, <i32 2, i32 2, i32 2, i32 2>
  %474 = urem <4 x i32> %473, <i32 60, i32 60, i32 60, i32 60>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add i64 %478, %468
  %480 = getelementptr i8, i8* %call2, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !115, !noalias !117
  %index.next1387 = add i64 %index1386, 4
  %vec.ind.next1391 = add <4 x i64> %vec.ind1390, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1387, 28
  br i1 %482, label %polly.loop_exit860.1.2, label %vector.body1384, !llvm.loop !130

polly.loop_exit860.1.2:                           ; preds = %vector.body1384
  %polly.indvar_next856.1.2 = add nuw nsw i64 %polly.indvar855.1.2, 1
  %exitcond1097.1.2.not = icmp eq i64 %polly.indvar_next856.1.2, 16
  br i1 %exitcond1097.1.2.not, label %polly.loop_header878, label %polly.loop_header852.1.2

polly.loop_header825.1:                           ; preds = %polly.loop_exit833, %polly.loop_exit833.1
  %polly.indvar828.1 = phi i64 [ %polly.indvar_next829.1, %polly.loop_exit833.1 ], [ 0, %polly.loop_exit833 ]
  %483 = mul nuw nsw i64 %polly.indvar828.1, 640
  %484 = trunc i64 %polly.indvar828.1 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %polly.loop_header825.1
  %index1220 = phi i64 [ 0, %polly.loop_header825.1 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1 ], [ %vec.ind.next1225, %vector.body1218 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1224, <i64 32, i64 32, i64 32, i64 32>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1227, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !111, !noalias !113
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1221, 32
  br i1 %497, label %polly.loop_exit833.1, label %vector.body1218, !llvm.loop !131

polly.loop_exit833.1:                             ; preds = %vector.body1218
  %polly.indvar_next829.1 = add nuw nsw i64 %polly.indvar828.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar_next829.1, 32
  br i1 %exitcond1106.1.not, label %polly.loop_header825.2, label %polly.loop_header825.1

polly.loop_header825.2:                           ; preds = %polly.loop_exit833.1, %polly.loop_exit833.2
  %polly.indvar828.2 = phi i64 [ %polly.indvar_next829.2, %polly.loop_exit833.2 ], [ 0, %polly.loop_exit833.1 ]
  %498 = mul nuw nsw i64 %polly.indvar828.2, 640
  %499 = trunc i64 %polly.indvar828.2 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %polly.loop_header825.2
  %index1232 = phi i64 [ 0, %polly.loop_header825.2 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2 ], [ %vec.ind.next1237, %vector.body1230 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1236, <i64 64, i64 64, i64 64, i64 64>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1239, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !111, !noalias !113
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1233, 16
  br i1 %512, label %polly.loop_exit833.2, label %vector.body1230, !llvm.loop !132

polly.loop_exit833.2:                             ; preds = %vector.body1230
  %polly.indvar_next829.2 = add nuw nsw i64 %polly.indvar828.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar_next829.2, 32
  br i1 %exitcond1106.2.not, label %polly.loop_header825.11145, label %polly.loop_header825.2

polly.loop_header825.11145:                       ; preds = %polly.loop_exit833.2, %polly.loop_exit833.11156
  %polly.indvar828.11144 = phi i64 [ %polly.indvar_next829.11154, %polly.loop_exit833.11156 ], [ 0, %polly.loop_exit833.2 ]
  %513 = add nuw nsw i64 %polly.indvar828.11144, 32
  %514 = mul nuw nsw i64 %513, 640
  %515 = trunc i64 %513 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %515, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header825.11145
  %index1244 = phi i64 [ 0, %polly.loop_header825.11145 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1250 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.11145 ], [ %vec.ind.next1251, %vector.body1242 ]
  %516 = mul <4 x i32> %vec.ind1250, %broadcast.splat1253
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = shl i64 %index1244, 3
  %522 = add nuw nsw i64 %521, %514
  %523 = getelementptr i8, i8* %call, i64 %522
  %524 = bitcast i8* %523 to <4 x double>*
  store <4 x double> %520, <4 x double>* %524, align 8, !alias.scope !111, !noalias !113
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1251 = add <4 x i32> %vec.ind1250, <i32 4, i32 4, i32 4, i32 4>
  %525 = icmp eq i64 %index.next1245, 32
  br i1 %525, label %polly.loop_exit833.11156, label %vector.body1242, !llvm.loop !133

polly.loop_exit833.11156:                         ; preds = %vector.body1242
  %polly.indvar_next829.11154 = add nuw nsw i64 %polly.indvar828.11144, 1
  %exitcond1106.11155.not = icmp eq i64 %polly.indvar_next829.11154, 32
  br i1 %exitcond1106.11155.not, label %polly.loop_header825.1.1, label %polly.loop_header825.11145

polly.loop_header825.1.1:                         ; preds = %polly.loop_exit833.11156, %polly.loop_exit833.1.1
  %polly.indvar828.1.1 = phi i64 [ %polly.indvar_next829.1.1, %polly.loop_exit833.1.1 ], [ 0, %polly.loop_exit833.11156 ]
  %526 = add nuw nsw i64 %polly.indvar828.1.1, 32
  %527 = mul nuw nsw i64 %526, 640
  %528 = trunc i64 %526 to i32
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %528, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header825.1.1
  %index1258 = phi i64 [ 0, %polly.loop_header825.1.1 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.1 ], [ %vec.ind.next1263, %vector.body1256 ]
  %529 = add nuw nsw <4 x i64> %vec.ind1262, <i64 32, i64 32, i64 32, i64 32>
  %530 = trunc <4 x i64> %529 to <4 x i32>
  %531 = mul <4 x i32> %broadcast.splat1265, %530
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = extractelement <4 x i64> %529, i32 0
  %537 = shl i64 %536, 3
  %538 = add nuw nsw i64 %537, %527
  %539 = getelementptr i8, i8* %call, i64 %538
  %540 = bitcast i8* %539 to <4 x double>*
  store <4 x double> %535, <4 x double>* %540, align 8, !alias.scope !111, !noalias !113
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %541 = icmp eq i64 %index.next1259, 32
  br i1 %541, label %polly.loop_exit833.1.1, label %vector.body1256, !llvm.loop !134

polly.loop_exit833.1.1:                           ; preds = %vector.body1256
  %polly.indvar_next829.1.1 = add nuw nsw i64 %polly.indvar828.1.1, 1
  %exitcond1106.1.1.not = icmp eq i64 %polly.indvar_next829.1.1, 32
  br i1 %exitcond1106.1.1.not, label %polly.loop_header825.2.1, label %polly.loop_header825.1.1

polly.loop_header825.2.1:                         ; preds = %polly.loop_exit833.1.1, %polly.loop_exit833.2.1
  %polly.indvar828.2.1 = phi i64 [ %polly.indvar_next829.2.1, %polly.loop_exit833.2.1 ], [ 0, %polly.loop_exit833.1.1 ]
  %542 = add nuw nsw i64 %polly.indvar828.2.1, 32
  %543 = mul nuw nsw i64 %542, 640
  %544 = trunc i64 %542 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %544, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %polly.loop_header825.2.1
  %index1270 = phi i64 [ 0, %polly.loop_header825.2.1 ], [ %index.next1271, %vector.body1268 ]
  %vec.ind1274 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.1 ], [ %vec.ind.next1275, %vector.body1268 ]
  %545 = add nuw nsw <4 x i64> %vec.ind1274, <i64 64, i64 64, i64 64, i64 64>
  %546 = trunc <4 x i64> %545 to <4 x i32>
  %547 = mul <4 x i32> %broadcast.splat1277, %546
  %548 = add <4 x i32> %547, <i32 3, i32 3, i32 3, i32 3>
  %549 = urem <4 x i32> %548, <i32 80, i32 80, i32 80, i32 80>
  %550 = sitofp <4 x i32> %549 to <4 x double>
  %551 = fmul fast <4 x double> %550, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %552 = extractelement <4 x i64> %545, i32 0
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %543
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %551, <4 x double>* %556, align 8, !alias.scope !111, !noalias !113
  %index.next1271 = add i64 %index1270, 4
  %vec.ind.next1275 = add <4 x i64> %vec.ind1274, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %index.next1271, 16
  br i1 %557, label %polly.loop_exit833.2.1, label %vector.body1268, !llvm.loop !135

polly.loop_exit833.2.1:                           ; preds = %vector.body1268
  %polly.indvar_next829.2.1 = add nuw nsw i64 %polly.indvar828.2.1, 1
  %exitcond1106.2.1.not = icmp eq i64 %polly.indvar_next829.2.1, 32
  br i1 %exitcond1106.2.1.not, label %polly.loop_header825.21159, label %polly.loop_header825.2.1

polly.loop_header825.21159:                       ; preds = %polly.loop_exit833.2.1, %polly.loop_exit833.21170
  %polly.indvar828.21158 = phi i64 [ %polly.indvar_next829.21168, %polly.loop_exit833.21170 ], [ 0, %polly.loop_exit833.2.1 ]
  %558 = add nuw nsw i64 %polly.indvar828.21158, 64
  %559 = mul nuw nsw i64 %558, 640
  %560 = trunc i64 %558 to i32
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %560, i32 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header825.21159
  %index1282 = phi i64 [ 0, %polly.loop_header825.21159 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1288 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header825.21159 ], [ %vec.ind.next1289, %vector.body1280 ]
  %561 = mul <4 x i32> %vec.ind1288, %broadcast.splat1291
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = shl i64 %index1282, 3
  %567 = add nuw nsw i64 %566, %559
  %568 = getelementptr i8, i8* %call, i64 %567
  %569 = bitcast i8* %568 to <4 x double>*
  store <4 x double> %565, <4 x double>* %569, align 8, !alias.scope !111, !noalias !113
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1289 = add <4 x i32> %vec.ind1288, <i32 4, i32 4, i32 4, i32 4>
  %570 = icmp eq i64 %index.next1283, 32
  br i1 %570, label %polly.loop_exit833.21170, label %vector.body1280, !llvm.loop !136

polly.loop_exit833.21170:                         ; preds = %vector.body1280
  %polly.indvar_next829.21168 = add nuw nsw i64 %polly.indvar828.21158, 1
  %exitcond1106.21169.not = icmp eq i64 %polly.indvar_next829.21168, 16
  br i1 %exitcond1106.21169.not, label %polly.loop_header825.1.2, label %polly.loop_header825.21159

polly.loop_header825.1.2:                         ; preds = %polly.loop_exit833.21170, %polly.loop_exit833.1.2
  %polly.indvar828.1.2 = phi i64 [ %polly.indvar_next829.1.2, %polly.loop_exit833.1.2 ], [ 0, %polly.loop_exit833.21170 ]
  %571 = add nuw nsw i64 %polly.indvar828.1.2, 64
  %572 = mul nuw nsw i64 %571, 640
  %573 = trunc i64 %571 to i32
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %573, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %polly.loop_header825.1.2
  %index1296 = phi i64 [ 0, %polly.loop_header825.1.2 ], [ %index.next1297, %vector.body1294 ]
  %vec.ind1300 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.1.2 ], [ %vec.ind.next1301, %vector.body1294 ]
  %574 = add nuw nsw <4 x i64> %vec.ind1300, <i64 32, i64 32, i64 32, i64 32>
  %575 = trunc <4 x i64> %574 to <4 x i32>
  %576 = mul <4 x i32> %broadcast.splat1303, %575
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = extractelement <4 x i64> %574, i32 0
  %582 = shl i64 %581, 3
  %583 = add nuw nsw i64 %582, %572
  %584 = getelementptr i8, i8* %call, i64 %583
  %585 = bitcast i8* %584 to <4 x double>*
  store <4 x double> %580, <4 x double>* %585, align 8, !alias.scope !111, !noalias !113
  %index.next1297 = add i64 %index1296, 4
  %vec.ind.next1301 = add <4 x i64> %vec.ind1300, <i64 4, i64 4, i64 4, i64 4>
  %586 = icmp eq i64 %index.next1297, 32
  br i1 %586, label %polly.loop_exit833.1.2, label %vector.body1294, !llvm.loop !137

polly.loop_exit833.1.2:                           ; preds = %vector.body1294
  %polly.indvar_next829.1.2 = add nuw nsw i64 %polly.indvar828.1.2, 1
  %exitcond1106.1.2.not = icmp eq i64 %polly.indvar_next829.1.2, 16
  br i1 %exitcond1106.1.2.not, label %polly.loop_header825.2.2, label %polly.loop_header825.1.2

polly.loop_header825.2.2:                         ; preds = %polly.loop_exit833.1.2, %polly.loop_exit833.2.2
  %polly.indvar828.2.2 = phi i64 [ %polly.indvar_next829.2.2, %polly.loop_exit833.2.2 ], [ 0, %polly.loop_exit833.1.2 ]
  %587 = add nuw nsw i64 %polly.indvar828.2.2, 64
  %588 = mul nuw nsw i64 %587, 640
  %589 = trunc i64 %587 to i32
  %broadcast.splatinsert1314 = insertelement <4 x i32> poison, i32 %589, i32 0
  %broadcast.splat1315 = shufflevector <4 x i32> %broadcast.splatinsert1314, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %polly.loop_header825.2.2
  %index1308 = phi i64 [ 0, %polly.loop_header825.2.2 ], [ %index.next1309, %vector.body1306 ]
  %vec.ind1312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header825.2.2 ], [ %vec.ind.next1313, %vector.body1306 ]
  %590 = add nuw nsw <4 x i64> %vec.ind1312, <i64 64, i64 64, i64 64, i64 64>
  %591 = trunc <4 x i64> %590 to <4 x i32>
  %592 = mul <4 x i32> %broadcast.splat1315, %591
  %593 = add <4 x i32> %592, <i32 3, i32 3, i32 3, i32 3>
  %594 = urem <4 x i32> %593, <i32 80, i32 80, i32 80, i32 80>
  %595 = sitofp <4 x i32> %594 to <4 x double>
  %596 = fmul fast <4 x double> %595, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %597 = extractelement <4 x i64> %590, i32 0
  %598 = shl i64 %597, 3
  %599 = add nuw nsw i64 %598, %588
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %596, <4 x double>* %601, align 8, !alias.scope !111, !noalias !113
  %index.next1309 = add i64 %index1308, 4
  %vec.ind.next1313 = add <4 x i64> %vec.ind1312, <i64 4, i64 4, i64 4, i64 4>
  %602 = icmp eq i64 %index.next1309, 16
  br i1 %602, label %polly.loop_exit833.2.2, label %vector.body1306, !llvm.loop !138

polly.loop_exit833.2.2:                           ; preds = %vector.body1306
  %polly.indvar_next829.2.2 = add nuw nsw i64 %polly.indvar828.2.2, 1
  %exitcond1106.2.2.not = icmp eq i64 %polly.indvar_next829.2.2, 16
  br i1 %exitcond1106.2.2.not, label %polly.loop_header852, label %polly.loop_header825.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
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
!49 = !{!"llvm.loop.tile.size", i32 100}
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
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !74, !13}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85, !86, !87}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !82, !"polly.alias.scope.Packed_MemRef_call1"}
!87 = distinct !{!87, !82, !"polly.alias.scope.Packed_MemRef_call2"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !74, !13}
!90 = !{!81, !84, !86, !87}
!91 = !{!81, !85, !86, !87}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !74, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !74, !13}
!96 = distinct !{!96, !97, !"polly.alias.scope.MemRef_call"}
!97 = distinct !{!97, !"polly.alias.scope.domain"}
!98 = !{!99, !100, !101, !102}
!99 = distinct !{!99, !97, !"polly.alias.scope.MemRef_call1"}
!100 = distinct !{!100, !97, !"polly.alias.scope.MemRef_call2"}
!101 = distinct !{!101, !97, !"polly.alias.scope.Packed_MemRef_call1"}
!102 = distinct !{!102, !97, !"polly.alias.scope.Packed_MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !74, !13}
!105 = !{!96, !99, !101, !102}
!106 = !{!96, !100, !101, !102}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !74, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !74, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = !{!114, !111}
!118 = distinct !{!118, !13}
!119 = !{!115, !111}
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
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
