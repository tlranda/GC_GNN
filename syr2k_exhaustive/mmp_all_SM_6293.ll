; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6293.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6293.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call778 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1639 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2640 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1639, %call2
  %polly.access.call2659 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2659, %call1
  %2 = or i1 %0, %1
  %polly.access.call679 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call679, %call2
  %4 = icmp ule i8* %polly.access.call2659, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call679, %call1
  %8 = icmp ule i8* %polly.access.call1639, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header752, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep962 = getelementptr i8, i8* %call2, i64 %12
  %scevgep961 = getelementptr i8, i8* %call2, i64 %11
  %scevgep960 = getelementptr i8, i8* %call1, i64 %12
  %scevgep959 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep959, %scevgep962
  %bound1 = icmp ult i8* %scevgep961, %scevgep960
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph966, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph966:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert973 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat974 = shufflevector <4 x i64> %broadcast.splatinsert973, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph966
  %index967 = phi i64 [ 0, %vector.ph966 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next972, %vector.body965 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind971, %broadcast.splat974
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv7.i, i64 %index967
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next968, 1200
  br i1 %40, label %for.inc41.i, label %vector.body965, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body965
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph966, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1029 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1029, label %for.body3.i46.preheader1103, label %vector.ph1030

vector.ph1030:                                    ; preds = %for.body3.i46.preheader
  %n.vec1032 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1034, %vector.body1028 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %index1033
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1034 = add i64 %index1033, 4
  %46 = icmp eq i64 %index.next1034, %n.vec1032
  br i1 %46, label %middle.block1026, label %vector.body1028, !llvm.loop !18

middle.block1026:                                 ; preds = %vector.body1028
  %cmp.n1036 = icmp eq i64 %indvars.iv21.i, %n.vec1032
  br i1 %cmp.n1036, label %for.inc6.i, label %for.body3.i46.preheader1103

for.body3.i46.preheader1103:                      ; preds = %for.body3.i46.preheader, %middle.block1026
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1032, %middle.block1026 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1103, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1103 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1026, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting451
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1052 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1052, label %for.body3.i60.preheader1102, label %vector.ph1053

vector.ph1053:                                    ; preds = %for.body3.i60.preheader
  %n.vec1055 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1053
  %index1056 = phi i64 [ 0, %vector.ph1053 ], [ %index.next1057, %vector.body1051 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1056
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1060 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1060, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1057 = add i64 %index1056, 4
  %57 = icmp eq i64 %index.next1057, %n.vec1055
  br i1 %57, label %middle.block1049, label %vector.body1051, !llvm.loop !60

middle.block1049:                                 ; preds = %vector.body1051
  %cmp.n1059 = icmp eq i64 %indvars.iv21.i52, %n.vec1055
  br i1 %cmp.n1059, label %for.inc6.i63, label %for.body3.i60.preheader1102

for.body3.i60.preheader1102:                      ; preds = %for.body3.i60.preheader, %middle.block1049
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1055, %middle.block1049 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1102, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1102 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1049, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1078 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1078, label %for.body3.i99.preheader1101, label %vector.ph1079

vector.ph1079:                                    ; preds = %for.body3.i99.preheader
  %n.vec1081 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1079
  %index1082 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1083, %vector.body1077 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1082
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1086 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1086, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1083 = add i64 %index1082, 4
  %68 = icmp eq i64 %index.next1083, %n.vec1081
  br i1 %68, label %middle.block1075, label %vector.body1077, !llvm.loop !62

middle.block1075:                                 ; preds = %vector.body1077
  %cmp.n1085 = icmp eq i64 %indvars.iv21.i91, %n.vec1081
  br i1 %cmp.n1085, label %for.inc6.i102, label %for.body3.i99.preheader1101

for.body3.i99.preheader1101:                      ; preds = %for.body3.i99.preheader, %middle.block1075
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1081, %middle.block1075 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1101, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1101 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1075, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1090 = phi i64 [ %indvar.next1091, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1090, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1092 = icmp ult i64 %88, 4
  br i1 %min.iters.check1092, label %polly.loop_header191.preheader, label %vector.ph1093

vector.ph1093:                                    ; preds = %polly.loop_header
  %n.vec1095 = and i64 %88, -4
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1097, %vector.body1089 ]
  %90 = shl nuw nsw i64 %index1096, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1100 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1100, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1097 = add i64 %index1096, 4
  %95 = icmp eq i64 %index.next1097, %n.vec1095
  br i1 %95, label %middle.block1087, label %vector.body1089, !llvm.loop !74

middle.block1087:                                 ; preds = %vector.body1089
  %cmp.n1099 = icmp eq i64 %88, %n.vec1095
  br i1 %cmp.n1099, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1087
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1095, %middle.block1087 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1087
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1091 = add i64 %indvar1090, 1
  br i1 %exitcond869.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond868.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  %101 = shl i64 %polly.indvar202, 5
  %102 = shl i64 %98, 3
  %103 = shl i64 %99, 3
  %104 = shl i64 %100, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond867.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %105 = udiv i64 %polly.indvar208, 12
  %106 = mul nuw nsw i64 %105, 96
  %107 = sub nsw i64 %indvars.iv854, %106
  %108 = add i64 %indvars.iv858, %106
  %109 = shl nsw i64 %polly.indvar208, 3
  br label %polly.loop_header217

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 8
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -8
  %exitcond866.not = icmp eq i64 %polly.indvar_next209, 150
  br i1 %exitcond866.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header205
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %110 = add nuw nsw i64 %polly.indvar220, %109
  %polly.access.mul.call2224 = mul nuw nsw i64 %110, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %97, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar220
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit219.3
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit235 ], [ %108, %polly.loop_exit219.3 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit235 ], [ %107, %polly.loop_exit219.3 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %105, %polly.loop_exit219.3 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv856, i64 0)
  %111 = add i64 %smax, %indvars.iv860
  %112 = mul nuw nsw i64 %polly.indvar230, 96
  %113 = sub nsw i64 %109, %112
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %116 = mul nsw i64 %polly.indvar230, -96
  %117 = icmp slt i64 %116, -1104
  %118 = select i1 %117, i64 %116, i64 -1104
  %119 = add nsw i64 %118, 1199
  %polly.loop_guard.not = icmp sgt i64 %115, %119
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header239

polly.loop_exit235:                               ; preds = %polly.loop_exit248.3, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp ult i64 %polly.indvar230, 12
  %indvars.iv.next857 = add i64 %indvars.iv856, -96
  %indvars.iv.next861 = add i64 %indvars.iv860, 96
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header239:                             ; preds = %polly.loop_header227, %polly.loop_exit248
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit248 ], [ %111, %polly.loop_header227 ]
  %polly.indvar242 = phi i64 [ %polly.indvar_next243, %polly.loop_exit248 ], [ %115, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 7)
  %120 = add nuw i64 %polly.indvar242, %112
  %121 = add i64 %120, %304
  %polly.loop_guard249945 = icmp sgt i64 %121, -1
  br i1 %polly.loop_guard249945, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %121
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %122 = mul i64 %120, 8000
  %123 = add i64 %122, %101
  %scevgep264 = getelementptr i8, i8* %call1, i64 %123
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %124 = mul i64 %120, 9600
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp slt i64 %polly.indvar242, %119
  %indvars.iv.next863 = add i64 %indvars.iv862, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_header239.1

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %125 = add nuw nsw i64 %polly.indvar250, %109
  %126 = mul nuw nsw i64 %125, 8000
  %127 = add nuw nsw i64 %126, %101
  %scevgep253 = getelementptr i8, i8* %call1, i64 %127
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar250
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %124
  %scevgep267 = getelementptr i8, i8* %call, i64 %129
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond864.not = icmp eq i64 %polly.indvar250, %smin
  br i1 %exitcond864.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit382
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1064 = phi i64 [ %indvar.next1065, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %130 = add i64 %indvar1064, 1
  %131 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1066 = icmp ult i64 %130, 4
  br i1 %min.iters.check1066, label %polly.loop_header364.preheader, label %vector.ph1067

vector.ph1067:                                    ; preds = %polly.loop_header358
  %n.vec1069 = and i64 %130, -4
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %vector.ph1067
  %index1070 = phi i64 [ 0, %vector.ph1067 ], [ %index.next1071, %vector.body1063 ]
  %132 = shl nuw nsw i64 %index1070, 3
  %133 = getelementptr i8, i8* %scevgep370, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1074 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !79, !noalias !81
  %135 = fmul fast <4 x double> %wide.load1074, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !79, !noalias !81
  %index.next1071 = add i64 %index1070, 4
  %137 = icmp eq i64 %index.next1071, %n.vec1069
  br i1 %137, label %middle.block1061, label %vector.body1063, !llvm.loop !85

middle.block1061:                                 ; preds = %vector.body1063
  %cmp.n1073 = icmp eq i64 %130, %n.vec1069
  br i1 %cmp.n1073, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1061
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1069, %middle.block1061 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1061
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1065 = add i64 %indvar1064, 1
  br i1 %exitcond891.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %138
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond890.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %139 = shl nsw i64 %polly.indvar377, 2
  %140 = or i64 %139, 1
  %141 = or i64 %139, 2
  %142 = or i64 %139, 3
  %143 = shl i64 %polly.indvar377, 5
  %144 = shl i64 %140, 3
  %145 = shl i64 %141, 3
  %146 = shl i64 %142, 3
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_exit405
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next378, 250
  br i1 %exitcond889.not, label %polly.exiting273, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374
  %indvars.iv879 = phi i64 [ %indvars.iv.next880, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit405 ], [ 1200, %polly.loop_header374 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %147 = udiv i64 %polly.indvar383, 12
  %148 = mul nuw nsw i64 %147, 96
  %149 = sub nsw i64 %indvars.iv874, %148
  %150 = add i64 %indvars.iv879, %148
  %151 = shl nsw i64 %polly.indvar383, 3
  br label %polly.loop_header392

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -8
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 8
  %indvars.iv.next880 = add nsw i64 %indvars.iv879, -8
  %exitcond888.not = icmp eq i64 %polly.indvar_next384, 150
  br i1 %exitcond888.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header380
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %152 = add nuw nsw i64 %polly.indvar395, %151
  %polly.access.mul.call2399 = mul nuw nsw i64 %152, 1000
  %polly.access.add.call2400 = add nuw nsw i64 %139, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.indvar395
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next396, %indvars.iv870
  br i1 %exitcond872.not, label %polly.loop_header392.1, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit394.3
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit411 ], [ %150, %polly.loop_exit394.3 ]
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit411 ], [ %149, %polly.loop_exit394.3 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ %147, %polly.loop_exit394.3 ]
  %smax878 = call i64 @llvm.smax.i64(i64 %indvars.iv876, i64 0)
  %153 = add i64 %smax878, %indvars.iv881
  %154 = mul nuw nsw i64 %polly.indvar406, 96
  %155 = sub nsw i64 %151, %154
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %158 = mul nsw i64 %polly.indvar406, -96
  %159 = icmp slt i64 %158, -1104
  %160 = select i1 %159, i64 %158, i64 -1104
  %161 = add nsw i64 %160, 1199
  %polly.loop_guard419.not = icmp sgt i64 %157, %161
  br i1 %polly.loop_guard419.not, label %polly.loop_exit411, label %polly.loop_header416

polly.loop_exit411:                               ; preds = %polly.loop_exit426.3, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408 = icmp ult i64 %polly.indvar406, 12
  %indvars.iv.next877 = add i64 %indvars.iv876, -96
  %indvars.iv.next882 = add i64 %indvars.iv881, 96
  br i1 %polly.loop_cond408, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header416:                             ; preds = %polly.loop_header403, %polly.loop_exit426
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit426 ], [ %153, %polly.loop_header403 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit426 ], [ %157, %polly.loop_header403 ]
  %smin885 = call i64 @llvm.smin.i64(i64 %indvars.iv883, i64 7)
  %162 = add nuw i64 %polly.indvar420, %154
  %163 = add i64 %162, %338
  %polly.loop_guard427949 = icmp sgt i64 %163, -1
  br i1 %polly.loop_guard427949, label %polly.loop_header424.preheader, label %polly.loop_exit426

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %polly.access.Packed_MemRef_call2275436 = getelementptr double, double* %Packed_MemRef_call2275, i64 %163
  %_p_scalar_437 = load double, double* %polly.access.Packed_MemRef_call2275436, align 8
  %164 = mul i64 %162, 8000
  %165 = add i64 %164, %143
  %scevgep442 = getelementptr i8, i8* %call1, i64 %165
  %scevgep442443 = bitcast i8* %scevgep442 to double*
  %_p_scalar_444 = load double, double* %scevgep442443, align 8, !alias.scope !82, !noalias !88
  %166 = mul i64 %162, 9600
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424, %polly.loop_header416
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp slt i64 %polly.indvar420, %161
  %indvars.iv.next884 = add i64 %indvars.iv883, 1
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_header416.1

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_header424
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_header424 ], [ 0, %polly.loop_header424.preheader ]
  %167 = add nuw nsw i64 %polly.indvar428, %151
  %168 = mul nuw nsw i64 %167, 8000
  %169 = add nuw nsw i64 %168, %143
  %scevgep431 = getelementptr i8, i8* %call1, i64 %169
  %scevgep431432 = bitcast i8* %scevgep431 to double*
  %_p_scalar_433 = load double, double* %scevgep431432, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_437, %_p_scalar_433
  %polly.access.Packed_MemRef_call2275440 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.indvar428
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2275440, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_444, %_p_scalar_441
  %170 = shl i64 %167, 3
  %171 = add i64 %170, %166
  %scevgep445 = getelementptr i8, i8* %call, i64 %171
  %scevgep445446 = bitcast i8* %scevgep445 to double*
  %_p_scalar_447 = load double, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_447
  store double %p_add42.i79, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond886.not = icmp eq i64 %polly.indvar428, %smin885
  br i1 %exitcond886.not, label %polly.loop_exit426, label %polly.loop_header424

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit560
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar539, 9600
  %scevgep548 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1040 = icmp ult i64 %172, 4
  br i1 %min.iters.check1040, label %polly.loop_header542.preheader, label %vector.ph1041

vector.ph1041:                                    ; preds = %polly.loop_header536
  %n.vec1043 = and i64 %172, -4
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %vector.ph1041
  %index1044 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1045, %vector.body1039 ]
  %174 = shl nuw nsw i64 %index1044, 3
  %175 = getelementptr i8, i8* %scevgep548, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1048 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !89, !noalias !91
  %177 = fmul fast <4 x double> %wide.load1048, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !89, !noalias !91
  %index.next1045 = add i64 %index1044, 4
  %179 = icmp eq i64 %index.next1045, %n.vec1043
  br i1 %179, label %middle.block1037, label %vector.body1039, !llvm.loop !95

middle.block1037:                                 ; preds = %vector.body1039
  %cmp.n1047 = icmp eq i64 %172, %n.vec1043
  br i1 %cmp.n1047, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1037
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1043, %middle.block1037 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1037
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next540, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond913.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %180
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond912.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !96

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_exit560 ], [ 0, %polly.loop_header552.preheader ]
  %181 = shl nsw i64 %polly.indvar555, 2
  %182 = or i64 %181, 1
  %183 = or i64 %181, 2
  %184 = or i64 %181, 3
  %185 = shl i64 %polly.indvar555, 5
  %186 = shl i64 %182, 3
  %187 = shl i64 %183, 3
  %188 = shl i64 %184, 3
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_exit583
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next556, 250
  br i1 %exitcond911.not, label %polly.exiting451, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit583 ], [ 1200, %polly.loop_header552 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %189 = udiv i64 %polly.indvar561, 12
  %190 = mul nuw nsw i64 %189, 96
  %191 = sub nsw i64 %indvars.iv896, %190
  %192 = add i64 %indvars.iv901, %190
  %193 = shl nsw i64 %polly.indvar561, 3
  br label %polly.loop_header570

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -8
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 8
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -8
  %exitcond910.not = icmp eq i64 %polly.indvar_next562, 150
  br i1 %exitcond910.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header558
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %194 = add nuw nsw i64 %polly.indvar573, %193
  %polly.access.mul.call2577 = mul nuw nsw i64 %194, 1000
  %polly.access.add.call2578 = add nuw nsw i64 %181, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !93, !noalias !97
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.indvar573
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next574, %indvars.iv892
  br i1 %exitcond894.not, label %polly.loop_header570.1, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit572.3
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit589 ], [ %192, %polly.loop_exit572.3 ]
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit589 ], [ %191, %polly.loop_exit572.3 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ %189, %polly.loop_exit572.3 ]
  %smax900 = call i64 @llvm.smax.i64(i64 %indvars.iv898, i64 0)
  %195 = add i64 %smax900, %indvars.iv903
  %196 = mul nuw nsw i64 %polly.indvar584, 96
  %197 = sub nsw i64 %193, %196
  %198 = icmp sgt i64 %197, 0
  %199 = select i1 %198, i64 %197, i64 0
  %200 = mul nsw i64 %polly.indvar584, -96
  %201 = icmp slt i64 %200, -1104
  %202 = select i1 %201, i64 %200, i64 -1104
  %203 = add nsw i64 %202, 1199
  %polly.loop_guard597.not = icmp sgt i64 %199, %203
  br i1 %polly.loop_guard597.not, label %polly.loop_exit589, label %polly.loop_header594

polly.loop_exit589:                               ; preds = %polly.loop_exit604.3, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586 = icmp ult i64 %polly.indvar584, 12
  %indvars.iv.next899 = add i64 %indvars.iv898, -96
  %indvars.iv.next904 = add i64 %indvars.iv903, 96
  br i1 %polly.loop_cond586, label %polly.loop_header581, label %polly.loop_exit583

polly.loop_header594:                             ; preds = %polly.loop_header581, %polly.loop_exit604
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit604 ], [ %195, %polly.loop_header581 ]
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_exit604 ], [ %199, %polly.loop_header581 ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 7)
  %204 = add nuw i64 %polly.indvar598, %196
  %205 = add i64 %204, %372
  %polly.loop_guard605953 = icmp sgt i64 %205, -1
  br i1 %polly.loop_guard605953, label %polly.loop_header602.preheader, label %polly.loop_exit604

polly.loop_header602.preheader:                   ; preds = %polly.loop_header594
  %polly.access.Packed_MemRef_call2453614 = getelementptr double, double* %Packed_MemRef_call2453, i64 %205
  %_p_scalar_615 = load double, double* %polly.access.Packed_MemRef_call2453614, align 8
  %206 = mul i64 %204, 8000
  %207 = add i64 %206, %185
  %scevgep620 = getelementptr i8, i8* %call1, i64 %207
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !92, !noalias !98
  %208 = mul i64 %204, 9600
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp slt i64 %polly.indvar598, %203
  %indvars.iv.next906 = add i64 %indvars.iv905, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_header594.1

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_header602 ], [ 0, %polly.loop_header602.preheader ]
  %209 = add nuw nsw i64 %polly.indvar606, %193
  %210 = mul nuw nsw i64 %209, 8000
  %211 = add nuw nsw i64 %210, %185
  %scevgep609 = getelementptr i8, i8* %call1, i64 %211
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_615, %_p_scalar_611
  %polly.access.Packed_MemRef_call2453618 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.indvar606
  %_p_scalar_619 = load double, double* %polly.access.Packed_MemRef_call2453618, align 8
  %p_mul37.i = fmul fast double %_p_scalar_622, %_p_scalar_619
  %212 = shl i64 %209, 3
  %213 = add i64 %212, %208
  %scevgep623 = getelementptr i8, i8* %call, i64 %213
  %scevgep623624 = bitcast i8* %scevgep623 to double*
  %_p_scalar_625 = load double, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_625
  store double %p_add42.i, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond908.not = icmp eq i64 %polly.indvar606, %smin907
  br i1 %exitcond908.not, label %polly.loop_exit604, label %polly.loop_header602

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %polly.loop_exit760 ], [ 0, %entry ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %smin940 = call i64 @llvm.smin.i64(i64 %indvars.iv938, i64 -1168)
  %214 = shl nsw i64 %polly.indvar755, 5
  %215 = add nsw i64 %smin940, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next939 = add nsw i64 %indvars.iv938, -32
  %exitcond943.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond943.not, label %polly.loop_header779, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %216 = mul nsw i64 %polly.indvar761, -32
  %smin978 = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin978, 1200
  %smin936 = call i64 @llvm.smin.i64(i64 %indvars.iv934, i64 -1168)
  %218 = shl nsw i64 %polly.indvar761, 5
  %219 = add nsw i64 %smin936, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -32
  %exitcond942.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond942.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %polly.indvar767 = phi i64 [ 0, %polly.loop_header758 ], [ %polly.indvar_next768, %polly.loop_exit772 ]
  %220 = add nuw nsw i64 %polly.indvar767, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header770, label %vector.ph979

vector.ph979:                                     ; preds = %polly.loop_header764
  %broadcast.splatinsert986 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat987 = shufflevector <4 x i64> %broadcast.splatinsert986, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph979
  %index980 = phi i64 [ 0, %vector.ph979 ], [ %index.next981, %vector.body977 ]
  %vec.ind984 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph979 ], [ %vec.ind.next985, %vector.body977 ]
  %223 = add nuw nsw <4 x i64> %vec.ind984, %broadcast.splat987
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat989, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %index.next981 = add i64 %index980, 4
  %vec.ind.next985 = add <4 x i64> %vec.ind984, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next981, %217
  br i1 %235, label %polly.loop_exit772, label %vector.body977, !llvm.loop !104

polly.loop_exit772:                               ; preds = %vector.body977, %polly.loop_header770
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond941.not = icmp eq i64 %polly.indvar767, %215
  br i1 %exitcond941.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_header764, %polly.loop_header770
  %polly.indvar773 = phi i64 [ %polly.indvar_next774, %polly.loop_header770 ], [ 0, %polly.loop_header764 ]
  %236 = add nuw nsw i64 %polly.indvar773, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep776 = getelementptr i8, i8* %call, i64 %242
  %scevgep776777 = bitcast i8* %scevgep776 to double*
  store double %p_div33.i, double* %scevgep776777, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond937.not = icmp eq i64 %polly.indvar773, %219
  br i1 %exitcond937.not, label %polly.loop_exit772, label %polly.loop_header770, !llvm.loop !105

polly.loop_header779:                             ; preds = %polly.loop_exit760, %polly.loop_exit787
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %smin930 = call i64 @llvm.smin.i64(i64 %indvars.iv928, i64 -1168)
  %243 = shl nsw i64 %polly.indvar782, 5
  %244 = add nsw i64 %smin930, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next929 = add nsw i64 %indvars.iv928, -32
  %exitcond933.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond933.not, label %polly.loop_header805, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv924 = phi i64 [ %indvars.iv.next925, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %245 = mul nsw i64 %polly.indvar788, -32
  %smin993 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin993, 1000
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv924, i64 -968)
  %247 = shl nsw i64 %polly.indvar788, 5
  %248 = add nsw i64 %smin926, 999
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next925 = add nsw i64 %indvars.iv924, -32
  %exitcond932.not = icmp eq i64 %polly.indvar_next789, 32
  br i1 %exitcond932.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %249 = add nuw nsw i64 %polly.indvar794, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check994 = icmp eq i64 %246, 0
  br i1 %min.iters.check994, label %polly.loop_header797, label %vector.ph995

vector.ph995:                                     ; preds = %polly.loop_header791
  %broadcast.splatinsert1004 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1005 = shufflevector <4 x i64> %broadcast.splatinsert1004, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next999, %vector.body992 ]
  %vec.ind1002 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph995 ], [ %vec.ind.next1003, %vector.body992 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1002, %broadcast.splat1005
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1007, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !103, !noalias !106
  %index.next999 = add i64 %index998, 4
  %vec.ind.next1003 = add <4 x i64> %vec.ind1002, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next999, %246
  br i1 %264, label %polly.loop_exit799, label %vector.body992, !llvm.loop !107

polly.loop_exit799:                               ; preds = %vector.body992, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond931.not = icmp eq i64 %polly.indvar794, %244
  br i1 %exitcond931.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %265 = add nuw nsw i64 %polly.indvar800, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep803 = getelementptr i8, i8* %call2, i64 %271
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div12.i, double* %scevgep803804, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond927.not = icmp eq i64 %polly.indvar800, %248
  br i1 %exitcond927.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !108

polly.loop_header805:                             ; preds = %polly.loop_exit787, %polly.loop_exit813
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv918, i64 -1168)
  %272 = shl nsw i64 %polly.indvar808, 5
  %273 = add nsw i64 %smin920, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -32
  %exitcond923.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond923.not, label %init_array.exit, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %274 = mul nsw i64 %polly.indvar814, -32
  %smin1011 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1011, 1000
  %smin916 = call i64 @llvm.smin.i64(i64 %indvars.iv914, i64 -968)
  %276 = shl nsw i64 %polly.indvar814, 5
  %277 = add nsw i64 %smin916, 999
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -32
  %exitcond922.not = icmp eq i64 %polly.indvar_next815, 32
  br i1 %exitcond922.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %278 = add nuw nsw i64 %polly.indvar820, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1012 = icmp eq i64 %275, 0
  br i1 %min.iters.check1012, label %polly.loop_header823, label %vector.ph1013

vector.ph1013:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1022 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1023 = shufflevector <4 x i64> %broadcast.splatinsert1022, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1013
  %index1016 = phi i64 [ 0, %vector.ph1013 ], [ %index.next1017, %vector.body1010 ]
  %vec.ind1020 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1013 ], [ %vec.ind.next1021, %vector.body1010 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1020, %broadcast.splat1023
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1025, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !102, !noalias !109
  %index.next1017 = add i64 %index1016, 4
  %vec.ind.next1021 = add <4 x i64> %vec.ind1020, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1017, %275
  br i1 %293, label %polly.loop_exit825, label %vector.body1010, !llvm.loop !110

polly.loop_exit825:                               ; preds = %vector.body1010, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond921.not = icmp eq i64 %polly.indvar820, %273
  br i1 %exitcond921.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %294 = add nuw nsw i64 %polly.indvar826, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep830 = getelementptr i8, i8* %call1, i64 %300
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div.i, double* %scevgep830831, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond917.not = icmp eq i64 %polly.indvar826, %277
  br i1 %exitcond917.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !111

polly.loop_header217.1:                           ; preds = %polly.loop_header217, %polly.loop_header217.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_header217.1 ], [ 0, %polly.loop_header217 ]
  %301 = add nuw nsw i64 %polly.indvar220.1, %109
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %301, 1000
  %polly.access.add.call2225.1 = add nuw nsw i64 %98, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_header217.1, %polly.loop_header217.2
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_header217.2 ], [ 0, %polly.loop_header217.1 ]
  %302 = add nuw nsw i64 %polly.indvar220.2, %109
  %polly.access.mul.call2224.2 = mul nuw nsw i64 %302, 1000
  %polly.access.add.call2225.2 = add nuw nsw i64 %99, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_header217.2, %polly.loop_header217.3
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_header217.3 ], [ 0, %polly.loop_header217.2 ]
  %303 = add nuw nsw i64 %polly.indvar220.3, %109
  %polly.access.mul.call2224.3 = mul nuw nsw i64 %303, 1000
  %polly.access.add.call2225.3 = add nuw nsw i64 %100, %polly.access.mul.call2224.3
  %polly.access.call2226.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.3
  %polly.access.call2226.load.3 = load double, double* %polly.access.call2226.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar220.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2226.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %304 = mul nsw i64 %polly.indvar208, -8
  br label %polly.loop_header227

polly.loop_header239.1:                           ; preds = %polly.loop_exit248, %polly.loop_exit248.1
  %indvars.iv862.1 = phi i64 [ %indvars.iv.next863.1, %polly.loop_exit248.1 ], [ %111, %polly.loop_exit248 ]
  %polly.indvar242.1 = phi i64 [ %polly.indvar_next243.1, %polly.loop_exit248.1 ], [ %115, %polly.loop_exit248 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv862.1, i64 7)
  %305 = add nuw i64 %polly.indvar242.1, %112
  %306 = add i64 %305, %304
  %polly.loop_guard249.1946 = icmp sgt i64 %306, -1
  br i1 %polly.loop_guard249.1946, label %polly.loop_header246.preheader.1, label %polly.loop_exit248.1

polly.loop_header246.preheader.1:                 ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2257.1 = add nuw nsw i64 %306, 1200
  %polly.access.Packed_MemRef_call2258.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call2258.1, align 8
  %307 = mul i64 %305, 8000
  %308 = add i64 %307, %102
  %scevgep264.1 = getelementptr i8, i8* %call1, i64 %308
  %scevgep264265.1 = bitcast i8* %scevgep264.1 to double*
  %_p_scalar_266.1 = load double, double* %scevgep264265.1, align 8, !alias.scope !71, !noalias !78
  %309 = mul i64 %305, 9600
  br label %polly.loop_header246.1

polly.loop_header246.1:                           ; preds = %polly.loop_header246.1, %polly.loop_header246.preheader.1
  %polly.indvar250.1 = phi i64 [ %polly.indvar_next251.1, %polly.loop_header246.1 ], [ 0, %polly.loop_header246.preheader.1 ]
  %310 = add nuw nsw i64 %polly.indvar250.1, %109
  %311 = mul nuw nsw i64 %310, 8000
  %312 = add nuw nsw i64 %311, %102
  %scevgep253.1 = getelementptr i8, i8* %call1, i64 %312
  %scevgep253254.1 = bitcast i8* %scevgep253.1 to double*
  %_p_scalar_255.1 = load double, double* %scevgep253254.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %polly.access.add.Packed_MemRef_call2261.1 = add nuw nsw i64 %polly.indvar250.1, 1200
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_266.1, %_p_scalar_263.1
  %313 = shl i64 %310, 3
  %314 = add i64 %313, %309
  %scevgep267.1 = getelementptr i8, i8* %call, i64 %314
  %scevgep267268.1 = bitcast i8* %scevgep267.1 to double*
  %_p_scalar_269.1 = load double, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_269.1
  store double %p_add42.i118.1, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.1 = add nuw nsw i64 %polly.indvar250.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar250.1, %smin.1
  br i1 %exitcond864.1.not, label %polly.loop_exit248.1, label %polly.loop_header246.1

polly.loop_exit248.1:                             ; preds = %polly.loop_header246.1, %polly.loop_header239.1
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %polly.loop_cond244.not.not.1 = icmp slt i64 %polly.indvar242.1, %119
  %indvars.iv.next863.1 = add i64 %indvars.iv862.1, 1
  br i1 %polly.loop_cond244.not.not.1, label %polly.loop_header239.1, label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_exit248.1, %polly.loop_exit248.2
  %indvars.iv862.2 = phi i64 [ %indvars.iv.next863.2, %polly.loop_exit248.2 ], [ %111, %polly.loop_exit248.1 ]
  %polly.indvar242.2 = phi i64 [ %polly.indvar_next243.2, %polly.loop_exit248.2 ], [ %115, %polly.loop_exit248.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv862.2, i64 7)
  %315 = add nuw i64 %polly.indvar242.2, %112
  %316 = add i64 %315, %304
  %polly.loop_guard249.2947 = icmp sgt i64 %316, -1
  br i1 %polly.loop_guard249.2947, label %polly.loop_header246.preheader.2, label %polly.loop_exit248.2

polly.loop_header246.preheader.2:                 ; preds = %polly.loop_header239.2
  %polly.access.add.Packed_MemRef_call2257.2 = add nuw nsw i64 %316, 2400
  %polly.access.Packed_MemRef_call2258.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.2
  %_p_scalar_259.2 = load double, double* %polly.access.Packed_MemRef_call2258.2, align 8
  %317 = mul i64 %315, 8000
  %318 = add i64 %317, %103
  %scevgep264.2 = getelementptr i8, i8* %call1, i64 %318
  %scevgep264265.2 = bitcast i8* %scevgep264.2 to double*
  %_p_scalar_266.2 = load double, double* %scevgep264265.2, align 8, !alias.scope !71, !noalias !78
  %319 = mul i64 %315, 9600
  br label %polly.loop_header246.2

polly.loop_header246.2:                           ; preds = %polly.loop_header246.2, %polly.loop_header246.preheader.2
  %polly.indvar250.2 = phi i64 [ %polly.indvar_next251.2, %polly.loop_header246.2 ], [ 0, %polly.loop_header246.preheader.2 ]
  %320 = add nuw nsw i64 %polly.indvar250.2, %109
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %103
  %scevgep253.2 = getelementptr i8, i8* %call1, i64 %322
  %scevgep253254.2 = bitcast i8* %scevgep253.2 to double*
  %_p_scalar_255.2 = load double, double* %scevgep253254.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_259.2, %_p_scalar_255.2
  %polly.access.add.Packed_MemRef_call2261.2 = add nuw nsw i64 %polly.indvar250.2, 2400
  %polly.access.Packed_MemRef_call2262.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.2
  %_p_scalar_263.2 = load double, double* %polly.access.Packed_MemRef_call2262.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_266.2, %_p_scalar_263.2
  %323 = shl i64 %320, 3
  %324 = add i64 %323, %319
  %scevgep267.2 = getelementptr i8, i8* %call, i64 %324
  %scevgep267268.2 = bitcast i8* %scevgep267.2 to double*
  %_p_scalar_269.2 = load double, double* %scevgep267268.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_269.2
  store double %p_add42.i118.2, double* %scevgep267268.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.2 = add nuw nsw i64 %polly.indvar250.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar250.2, %smin.2
  br i1 %exitcond864.2.not, label %polly.loop_exit248.2, label %polly.loop_header246.2

polly.loop_exit248.2:                             ; preds = %polly.loop_header246.2, %polly.loop_header239.2
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %polly.loop_cond244.not.not.2 = icmp slt i64 %polly.indvar242.2, %119
  %indvars.iv.next863.2 = add i64 %indvars.iv862.2, 1
  br i1 %polly.loop_cond244.not.not.2, label %polly.loop_header239.2, label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_exit248.2, %polly.loop_exit248.3
  %indvars.iv862.3 = phi i64 [ %indvars.iv.next863.3, %polly.loop_exit248.3 ], [ %111, %polly.loop_exit248.2 ]
  %polly.indvar242.3 = phi i64 [ %polly.indvar_next243.3, %polly.loop_exit248.3 ], [ %115, %polly.loop_exit248.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv862.3, i64 7)
  %325 = add nuw i64 %polly.indvar242.3, %112
  %326 = add i64 %325, %304
  %polly.loop_guard249.3948 = icmp sgt i64 %326, -1
  br i1 %polly.loop_guard249.3948, label %polly.loop_header246.preheader.3, label %polly.loop_exit248.3

polly.loop_header246.preheader.3:                 ; preds = %polly.loop_header239.3
  %polly.access.add.Packed_MemRef_call2257.3 = add nuw nsw i64 %326, 3600
  %polly.access.Packed_MemRef_call2258.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.3
  %_p_scalar_259.3 = load double, double* %polly.access.Packed_MemRef_call2258.3, align 8
  %327 = mul i64 %325, 8000
  %328 = add i64 %327, %104
  %scevgep264.3 = getelementptr i8, i8* %call1, i64 %328
  %scevgep264265.3 = bitcast i8* %scevgep264.3 to double*
  %_p_scalar_266.3 = load double, double* %scevgep264265.3, align 8, !alias.scope !71, !noalias !78
  %329 = mul i64 %325, 9600
  br label %polly.loop_header246.3

polly.loop_header246.3:                           ; preds = %polly.loop_header246.3, %polly.loop_header246.preheader.3
  %polly.indvar250.3 = phi i64 [ %polly.indvar_next251.3, %polly.loop_header246.3 ], [ 0, %polly.loop_header246.preheader.3 ]
  %330 = add nuw nsw i64 %polly.indvar250.3, %109
  %331 = mul nuw nsw i64 %330, 8000
  %332 = add nuw nsw i64 %331, %104
  %scevgep253.3 = getelementptr i8, i8* %call1, i64 %332
  %scevgep253254.3 = bitcast i8* %scevgep253.3 to double*
  %_p_scalar_255.3 = load double, double* %scevgep253254.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_259.3, %_p_scalar_255.3
  %polly.access.add.Packed_MemRef_call2261.3 = add nuw nsw i64 %polly.indvar250.3, 3600
  %polly.access.Packed_MemRef_call2262.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.3
  %_p_scalar_263.3 = load double, double* %polly.access.Packed_MemRef_call2262.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_266.3, %_p_scalar_263.3
  %333 = shl i64 %330, 3
  %334 = add i64 %333, %329
  %scevgep267.3 = getelementptr i8, i8* %call, i64 %334
  %scevgep267268.3 = bitcast i8* %scevgep267.3 to double*
  %_p_scalar_269.3 = load double, double* %scevgep267268.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_269.3
  store double %p_add42.i118.3, double* %scevgep267268.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.3 = add nuw nsw i64 %polly.indvar250.3, 1
  %exitcond864.3.not = icmp eq i64 %polly.indvar250.3, %smin.3
  br i1 %exitcond864.3.not, label %polly.loop_exit248.3, label %polly.loop_header246.3

polly.loop_exit248.3:                             ; preds = %polly.loop_header246.3, %polly.loop_header239.3
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %polly.loop_cond244.not.not.3 = icmp slt i64 %polly.indvar242.3, %119
  %indvars.iv.next863.3 = add i64 %indvars.iv862.3, 1
  br i1 %polly.loop_cond244.not.not.3, label %polly.loop_header239.3, label %polly.loop_exit235

polly.loop_header392.1:                           ; preds = %polly.loop_header392, %polly.loop_header392.1
  %polly.indvar395.1 = phi i64 [ %polly.indvar_next396.1, %polly.loop_header392.1 ], [ 0, %polly.loop_header392 ]
  %335 = add nuw nsw i64 %polly.indvar395.1, %151
  %polly.access.mul.call2399.1 = mul nuw nsw i64 %335, 1000
  %polly.access.add.call2400.1 = add nuw nsw i64 %140, %polly.access.mul.call2399.1
  %polly.access.call2401.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.1
  %polly.access.call2401.load.1 = load double, double* %polly.access.call2401.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.1 = add nuw nsw i64 %polly.indvar395.1, 1200
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.1
  store double %polly.access.call2401.load.1, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %exitcond872.1.not = icmp eq i64 %polly.indvar_next396.1, %indvars.iv870
  br i1 %exitcond872.1.not, label %polly.loop_header392.2, label %polly.loop_header392.1

polly.loop_header392.2:                           ; preds = %polly.loop_header392.1, %polly.loop_header392.2
  %polly.indvar395.2 = phi i64 [ %polly.indvar_next396.2, %polly.loop_header392.2 ], [ 0, %polly.loop_header392.1 ]
  %336 = add nuw nsw i64 %polly.indvar395.2, %151
  %polly.access.mul.call2399.2 = mul nuw nsw i64 %336, 1000
  %polly.access.add.call2400.2 = add nuw nsw i64 %141, %polly.access.mul.call2399.2
  %polly.access.call2401.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.2
  %polly.access.call2401.load.2 = load double, double* %polly.access.call2401.2, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.2 = add nuw nsw i64 %polly.indvar395.2, 2400
  %polly.access.Packed_MemRef_call2275.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.2
  store double %polly.access.call2401.load.2, double* %polly.access.Packed_MemRef_call2275.2, align 8
  %polly.indvar_next396.2 = add nuw nsw i64 %polly.indvar395.2, 1
  %exitcond872.2.not = icmp eq i64 %polly.indvar_next396.2, %indvars.iv870
  br i1 %exitcond872.2.not, label %polly.loop_header392.3, label %polly.loop_header392.2

polly.loop_header392.3:                           ; preds = %polly.loop_header392.2, %polly.loop_header392.3
  %polly.indvar395.3 = phi i64 [ %polly.indvar_next396.3, %polly.loop_header392.3 ], [ 0, %polly.loop_header392.2 ]
  %337 = add nuw nsw i64 %polly.indvar395.3, %151
  %polly.access.mul.call2399.3 = mul nuw nsw i64 %337, 1000
  %polly.access.add.call2400.3 = add nuw nsw i64 %142, %polly.access.mul.call2399.3
  %polly.access.call2401.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.3
  %polly.access.call2401.load.3 = load double, double* %polly.access.call2401.3, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.3 = add nuw nsw i64 %polly.indvar395.3, 3600
  %polly.access.Packed_MemRef_call2275.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.3
  store double %polly.access.call2401.load.3, double* %polly.access.Packed_MemRef_call2275.3, align 8
  %polly.indvar_next396.3 = add nuw nsw i64 %polly.indvar395.3, 1
  %exitcond872.3.not = icmp eq i64 %polly.indvar_next396.3, %indvars.iv870
  br i1 %exitcond872.3.not, label %polly.loop_exit394.3, label %polly.loop_header392.3

polly.loop_exit394.3:                             ; preds = %polly.loop_header392.3
  %338 = mul nsw i64 %polly.indvar383, -8
  br label %polly.loop_header403

polly.loop_header416.1:                           ; preds = %polly.loop_exit426, %polly.loop_exit426.1
  %indvars.iv883.1 = phi i64 [ %indvars.iv.next884.1, %polly.loop_exit426.1 ], [ %153, %polly.loop_exit426 ]
  %polly.indvar420.1 = phi i64 [ %polly.indvar_next421.1, %polly.loop_exit426.1 ], [ %157, %polly.loop_exit426 ]
  %smin885.1 = call i64 @llvm.smin.i64(i64 %indvars.iv883.1, i64 7)
  %339 = add nuw i64 %polly.indvar420.1, %154
  %340 = add i64 %339, %338
  %polly.loop_guard427.1950 = icmp sgt i64 %340, -1
  br i1 %polly.loop_guard427.1950, label %polly.loop_header424.preheader.1, label %polly.loop_exit426.1

polly.loop_header424.preheader.1:                 ; preds = %polly.loop_header416.1
  %polly.access.add.Packed_MemRef_call2275435.1 = add nuw nsw i64 %340, 1200
  %polly.access.Packed_MemRef_call2275436.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.1
  %_p_scalar_437.1 = load double, double* %polly.access.Packed_MemRef_call2275436.1, align 8
  %341 = mul i64 %339, 8000
  %342 = add i64 %341, %144
  %scevgep442.1 = getelementptr i8, i8* %call1, i64 %342
  %scevgep442443.1 = bitcast i8* %scevgep442.1 to double*
  %_p_scalar_444.1 = load double, double* %scevgep442443.1, align 8, !alias.scope !82, !noalias !88
  %343 = mul i64 %339, 9600
  br label %polly.loop_header424.1

polly.loop_header424.1:                           ; preds = %polly.loop_header424.1, %polly.loop_header424.preheader.1
  %polly.indvar428.1 = phi i64 [ %polly.indvar_next429.1, %polly.loop_header424.1 ], [ 0, %polly.loop_header424.preheader.1 ]
  %344 = add nuw nsw i64 %polly.indvar428.1, %151
  %345 = mul nuw nsw i64 %344, 8000
  %346 = add nuw nsw i64 %345, %144
  %scevgep431.1 = getelementptr i8, i8* %call1, i64 %346
  %scevgep431432.1 = bitcast i8* %scevgep431.1 to double*
  %_p_scalar_433.1 = load double, double* %scevgep431432.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_433.1
  %polly.access.add.Packed_MemRef_call2275439.1 = add nuw nsw i64 %polly.indvar428.1, 1200
  %polly.access.Packed_MemRef_call2275440.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.1
  %_p_scalar_441.1 = load double, double* %polly.access.Packed_MemRef_call2275440.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_444.1, %_p_scalar_441.1
  %347 = shl i64 %344, 3
  %348 = add i64 %347, %343
  %scevgep445.1 = getelementptr i8, i8* %call, i64 %348
  %scevgep445446.1 = bitcast i8* %scevgep445.1 to double*
  %_p_scalar_447.1 = load double, double* %scevgep445446.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_447.1
  store double %p_add42.i79.1, double* %scevgep445446.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.1 = add nuw nsw i64 %polly.indvar428.1, 1
  %exitcond886.1.not = icmp eq i64 %polly.indvar428.1, %smin885.1
  br i1 %exitcond886.1.not, label %polly.loop_exit426.1, label %polly.loop_header424.1

polly.loop_exit426.1:                             ; preds = %polly.loop_header424.1, %polly.loop_header416.1
  %polly.indvar_next421.1 = add nuw nsw i64 %polly.indvar420.1, 1
  %polly.loop_cond422.not.not.1 = icmp slt i64 %polly.indvar420.1, %161
  %indvars.iv.next884.1 = add i64 %indvars.iv883.1, 1
  br i1 %polly.loop_cond422.not.not.1, label %polly.loop_header416.1, label %polly.loop_header416.2

polly.loop_header416.2:                           ; preds = %polly.loop_exit426.1, %polly.loop_exit426.2
  %indvars.iv883.2 = phi i64 [ %indvars.iv.next884.2, %polly.loop_exit426.2 ], [ %153, %polly.loop_exit426.1 ]
  %polly.indvar420.2 = phi i64 [ %polly.indvar_next421.2, %polly.loop_exit426.2 ], [ %157, %polly.loop_exit426.1 ]
  %smin885.2 = call i64 @llvm.smin.i64(i64 %indvars.iv883.2, i64 7)
  %349 = add nuw i64 %polly.indvar420.2, %154
  %350 = add i64 %349, %338
  %polly.loop_guard427.2951 = icmp sgt i64 %350, -1
  br i1 %polly.loop_guard427.2951, label %polly.loop_header424.preheader.2, label %polly.loop_exit426.2

polly.loop_header424.preheader.2:                 ; preds = %polly.loop_header416.2
  %polly.access.add.Packed_MemRef_call2275435.2 = add nuw nsw i64 %350, 2400
  %polly.access.Packed_MemRef_call2275436.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.2
  %_p_scalar_437.2 = load double, double* %polly.access.Packed_MemRef_call2275436.2, align 8
  %351 = mul i64 %349, 8000
  %352 = add i64 %351, %145
  %scevgep442.2 = getelementptr i8, i8* %call1, i64 %352
  %scevgep442443.2 = bitcast i8* %scevgep442.2 to double*
  %_p_scalar_444.2 = load double, double* %scevgep442443.2, align 8, !alias.scope !82, !noalias !88
  %353 = mul i64 %349, 9600
  br label %polly.loop_header424.2

polly.loop_header424.2:                           ; preds = %polly.loop_header424.2, %polly.loop_header424.preheader.2
  %polly.indvar428.2 = phi i64 [ %polly.indvar_next429.2, %polly.loop_header424.2 ], [ 0, %polly.loop_header424.preheader.2 ]
  %354 = add nuw nsw i64 %polly.indvar428.2, %151
  %355 = mul nuw nsw i64 %354, 8000
  %356 = add nuw nsw i64 %355, %145
  %scevgep431.2 = getelementptr i8, i8* %call1, i64 %356
  %scevgep431432.2 = bitcast i8* %scevgep431.2 to double*
  %_p_scalar_433.2 = load double, double* %scevgep431432.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_437.2, %_p_scalar_433.2
  %polly.access.add.Packed_MemRef_call2275439.2 = add nuw nsw i64 %polly.indvar428.2, 2400
  %polly.access.Packed_MemRef_call2275440.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.2
  %_p_scalar_441.2 = load double, double* %polly.access.Packed_MemRef_call2275440.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_444.2, %_p_scalar_441.2
  %357 = shl i64 %354, 3
  %358 = add i64 %357, %353
  %scevgep445.2 = getelementptr i8, i8* %call, i64 %358
  %scevgep445446.2 = bitcast i8* %scevgep445.2 to double*
  %_p_scalar_447.2 = load double, double* %scevgep445446.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_447.2
  store double %p_add42.i79.2, double* %scevgep445446.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.2 = add nuw nsw i64 %polly.indvar428.2, 1
  %exitcond886.2.not = icmp eq i64 %polly.indvar428.2, %smin885.2
  br i1 %exitcond886.2.not, label %polly.loop_exit426.2, label %polly.loop_header424.2

polly.loop_exit426.2:                             ; preds = %polly.loop_header424.2, %polly.loop_header416.2
  %polly.indvar_next421.2 = add nuw nsw i64 %polly.indvar420.2, 1
  %polly.loop_cond422.not.not.2 = icmp slt i64 %polly.indvar420.2, %161
  %indvars.iv.next884.2 = add i64 %indvars.iv883.2, 1
  br i1 %polly.loop_cond422.not.not.2, label %polly.loop_header416.2, label %polly.loop_header416.3

polly.loop_header416.3:                           ; preds = %polly.loop_exit426.2, %polly.loop_exit426.3
  %indvars.iv883.3 = phi i64 [ %indvars.iv.next884.3, %polly.loop_exit426.3 ], [ %153, %polly.loop_exit426.2 ]
  %polly.indvar420.3 = phi i64 [ %polly.indvar_next421.3, %polly.loop_exit426.3 ], [ %157, %polly.loop_exit426.2 ]
  %smin885.3 = call i64 @llvm.smin.i64(i64 %indvars.iv883.3, i64 7)
  %359 = add nuw i64 %polly.indvar420.3, %154
  %360 = add i64 %359, %338
  %polly.loop_guard427.3952 = icmp sgt i64 %360, -1
  br i1 %polly.loop_guard427.3952, label %polly.loop_header424.preheader.3, label %polly.loop_exit426.3

polly.loop_header424.preheader.3:                 ; preds = %polly.loop_header416.3
  %polly.access.add.Packed_MemRef_call2275435.3 = add nuw nsw i64 %360, 3600
  %polly.access.Packed_MemRef_call2275436.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.3
  %_p_scalar_437.3 = load double, double* %polly.access.Packed_MemRef_call2275436.3, align 8
  %361 = mul i64 %359, 8000
  %362 = add i64 %361, %146
  %scevgep442.3 = getelementptr i8, i8* %call1, i64 %362
  %scevgep442443.3 = bitcast i8* %scevgep442.3 to double*
  %_p_scalar_444.3 = load double, double* %scevgep442443.3, align 8, !alias.scope !82, !noalias !88
  %363 = mul i64 %359, 9600
  br label %polly.loop_header424.3

polly.loop_header424.3:                           ; preds = %polly.loop_header424.3, %polly.loop_header424.preheader.3
  %polly.indvar428.3 = phi i64 [ %polly.indvar_next429.3, %polly.loop_header424.3 ], [ 0, %polly.loop_header424.preheader.3 ]
  %364 = add nuw nsw i64 %polly.indvar428.3, %151
  %365 = mul nuw nsw i64 %364, 8000
  %366 = add nuw nsw i64 %365, %146
  %scevgep431.3 = getelementptr i8, i8* %call1, i64 %366
  %scevgep431432.3 = bitcast i8* %scevgep431.3 to double*
  %_p_scalar_433.3 = load double, double* %scevgep431432.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_437.3, %_p_scalar_433.3
  %polly.access.add.Packed_MemRef_call2275439.3 = add nuw nsw i64 %polly.indvar428.3, 3600
  %polly.access.Packed_MemRef_call2275440.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.3
  %_p_scalar_441.3 = load double, double* %polly.access.Packed_MemRef_call2275440.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_444.3, %_p_scalar_441.3
  %367 = shl i64 %364, 3
  %368 = add i64 %367, %363
  %scevgep445.3 = getelementptr i8, i8* %call, i64 %368
  %scevgep445446.3 = bitcast i8* %scevgep445.3 to double*
  %_p_scalar_447.3 = load double, double* %scevgep445446.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_447.3
  store double %p_add42.i79.3, double* %scevgep445446.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.3 = add nuw nsw i64 %polly.indvar428.3, 1
  %exitcond886.3.not = icmp eq i64 %polly.indvar428.3, %smin885.3
  br i1 %exitcond886.3.not, label %polly.loop_exit426.3, label %polly.loop_header424.3

polly.loop_exit426.3:                             ; preds = %polly.loop_header424.3, %polly.loop_header416.3
  %polly.indvar_next421.3 = add nuw nsw i64 %polly.indvar420.3, 1
  %polly.loop_cond422.not.not.3 = icmp slt i64 %polly.indvar420.3, %161
  %indvars.iv.next884.3 = add i64 %indvars.iv883.3, 1
  br i1 %polly.loop_cond422.not.not.3, label %polly.loop_header416.3, label %polly.loop_exit411

polly.loop_header570.1:                           ; preds = %polly.loop_header570, %polly.loop_header570.1
  %polly.indvar573.1 = phi i64 [ %polly.indvar_next574.1, %polly.loop_header570.1 ], [ 0, %polly.loop_header570 ]
  %369 = add nuw nsw i64 %polly.indvar573.1, %193
  %polly.access.mul.call2577.1 = mul nuw nsw i64 %369, 1000
  %polly.access.add.call2578.1 = add nuw nsw i64 %182, %polly.access.mul.call2577.1
  %polly.access.call2579.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.1
  %polly.access.call2579.load.1 = load double, double* %polly.access.call2579.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453.1 = add nuw nsw i64 %polly.indvar573.1, 1200
  %polly.access.Packed_MemRef_call2453.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.1
  store double %polly.access.call2579.load.1, double* %polly.access.Packed_MemRef_call2453.1, align 8
  %polly.indvar_next574.1 = add nuw nsw i64 %polly.indvar573.1, 1
  %exitcond894.1.not = icmp eq i64 %polly.indvar_next574.1, %indvars.iv892
  br i1 %exitcond894.1.not, label %polly.loop_header570.2, label %polly.loop_header570.1

polly.loop_header570.2:                           ; preds = %polly.loop_header570.1, %polly.loop_header570.2
  %polly.indvar573.2 = phi i64 [ %polly.indvar_next574.2, %polly.loop_header570.2 ], [ 0, %polly.loop_header570.1 ]
  %370 = add nuw nsw i64 %polly.indvar573.2, %193
  %polly.access.mul.call2577.2 = mul nuw nsw i64 %370, 1000
  %polly.access.add.call2578.2 = add nuw nsw i64 %183, %polly.access.mul.call2577.2
  %polly.access.call2579.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.2
  %polly.access.call2579.load.2 = load double, double* %polly.access.call2579.2, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453.2 = add nuw nsw i64 %polly.indvar573.2, 2400
  %polly.access.Packed_MemRef_call2453.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.2
  store double %polly.access.call2579.load.2, double* %polly.access.Packed_MemRef_call2453.2, align 8
  %polly.indvar_next574.2 = add nuw nsw i64 %polly.indvar573.2, 1
  %exitcond894.2.not = icmp eq i64 %polly.indvar_next574.2, %indvars.iv892
  br i1 %exitcond894.2.not, label %polly.loop_header570.3, label %polly.loop_header570.2

polly.loop_header570.3:                           ; preds = %polly.loop_header570.2, %polly.loop_header570.3
  %polly.indvar573.3 = phi i64 [ %polly.indvar_next574.3, %polly.loop_header570.3 ], [ 0, %polly.loop_header570.2 ]
  %371 = add nuw nsw i64 %polly.indvar573.3, %193
  %polly.access.mul.call2577.3 = mul nuw nsw i64 %371, 1000
  %polly.access.add.call2578.3 = add nuw nsw i64 %184, %polly.access.mul.call2577.3
  %polly.access.call2579.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.3
  %polly.access.call2579.load.3 = load double, double* %polly.access.call2579.3, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453.3 = add nuw nsw i64 %polly.indvar573.3, 3600
  %polly.access.Packed_MemRef_call2453.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.3
  store double %polly.access.call2579.load.3, double* %polly.access.Packed_MemRef_call2453.3, align 8
  %polly.indvar_next574.3 = add nuw nsw i64 %polly.indvar573.3, 1
  %exitcond894.3.not = icmp eq i64 %polly.indvar_next574.3, %indvars.iv892
  br i1 %exitcond894.3.not, label %polly.loop_exit572.3, label %polly.loop_header570.3

polly.loop_exit572.3:                             ; preds = %polly.loop_header570.3
  %372 = mul nsw i64 %polly.indvar561, -8
  br label %polly.loop_header581

polly.loop_header594.1:                           ; preds = %polly.loop_exit604, %polly.loop_exit604.1
  %indvars.iv905.1 = phi i64 [ %indvars.iv.next906.1, %polly.loop_exit604.1 ], [ %195, %polly.loop_exit604 ]
  %polly.indvar598.1 = phi i64 [ %polly.indvar_next599.1, %polly.loop_exit604.1 ], [ %199, %polly.loop_exit604 ]
  %smin907.1 = call i64 @llvm.smin.i64(i64 %indvars.iv905.1, i64 7)
  %373 = add nuw i64 %polly.indvar598.1, %196
  %374 = add i64 %373, %372
  %polly.loop_guard605.1954 = icmp sgt i64 %374, -1
  br i1 %polly.loop_guard605.1954, label %polly.loop_header602.preheader.1, label %polly.loop_exit604.1

polly.loop_header602.preheader.1:                 ; preds = %polly.loop_header594.1
  %polly.access.add.Packed_MemRef_call2453613.1 = add nuw nsw i64 %374, 1200
  %polly.access.Packed_MemRef_call2453614.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.1
  %_p_scalar_615.1 = load double, double* %polly.access.Packed_MemRef_call2453614.1, align 8
  %375 = mul i64 %373, 8000
  %376 = add i64 %375, %186
  %scevgep620.1 = getelementptr i8, i8* %call1, i64 %376
  %scevgep620621.1 = bitcast i8* %scevgep620.1 to double*
  %_p_scalar_622.1 = load double, double* %scevgep620621.1, align 8, !alias.scope !92, !noalias !98
  %377 = mul i64 %373, 9600
  br label %polly.loop_header602.1

polly.loop_header602.1:                           ; preds = %polly.loop_header602.1, %polly.loop_header602.preheader.1
  %polly.indvar606.1 = phi i64 [ %polly.indvar_next607.1, %polly.loop_header602.1 ], [ 0, %polly.loop_header602.preheader.1 ]
  %378 = add nuw nsw i64 %polly.indvar606.1, %193
  %379 = mul nuw nsw i64 %378, 8000
  %380 = add nuw nsw i64 %379, %186
  %scevgep609.1 = getelementptr i8, i8* %call1, i64 %380
  %scevgep609610.1 = bitcast i8* %scevgep609.1 to double*
  %_p_scalar_611.1 = load double, double* %scevgep609610.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_615.1, %_p_scalar_611.1
  %polly.access.add.Packed_MemRef_call2453617.1 = add nuw nsw i64 %polly.indvar606.1, 1200
  %polly.access.Packed_MemRef_call2453618.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.1
  %_p_scalar_619.1 = load double, double* %polly.access.Packed_MemRef_call2453618.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_622.1, %_p_scalar_619.1
  %381 = shl i64 %378, 3
  %382 = add i64 %381, %377
  %scevgep623.1 = getelementptr i8, i8* %call, i64 %382
  %scevgep623624.1 = bitcast i8* %scevgep623.1 to double*
  %_p_scalar_625.1 = load double, double* %scevgep623624.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_625.1
  store double %p_add42.i.1, double* %scevgep623624.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.1 = add nuw nsw i64 %polly.indvar606.1, 1
  %exitcond908.1.not = icmp eq i64 %polly.indvar606.1, %smin907.1
  br i1 %exitcond908.1.not, label %polly.loop_exit604.1, label %polly.loop_header602.1

polly.loop_exit604.1:                             ; preds = %polly.loop_header602.1, %polly.loop_header594.1
  %polly.indvar_next599.1 = add nuw nsw i64 %polly.indvar598.1, 1
  %polly.loop_cond600.not.not.1 = icmp slt i64 %polly.indvar598.1, %203
  %indvars.iv.next906.1 = add i64 %indvars.iv905.1, 1
  br i1 %polly.loop_cond600.not.not.1, label %polly.loop_header594.1, label %polly.loop_header594.2

polly.loop_header594.2:                           ; preds = %polly.loop_exit604.1, %polly.loop_exit604.2
  %indvars.iv905.2 = phi i64 [ %indvars.iv.next906.2, %polly.loop_exit604.2 ], [ %195, %polly.loop_exit604.1 ]
  %polly.indvar598.2 = phi i64 [ %polly.indvar_next599.2, %polly.loop_exit604.2 ], [ %199, %polly.loop_exit604.1 ]
  %smin907.2 = call i64 @llvm.smin.i64(i64 %indvars.iv905.2, i64 7)
  %383 = add nuw i64 %polly.indvar598.2, %196
  %384 = add i64 %383, %372
  %polly.loop_guard605.2955 = icmp sgt i64 %384, -1
  br i1 %polly.loop_guard605.2955, label %polly.loop_header602.preheader.2, label %polly.loop_exit604.2

polly.loop_header602.preheader.2:                 ; preds = %polly.loop_header594.2
  %polly.access.add.Packed_MemRef_call2453613.2 = add nuw nsw i64 %384, 2400
  %polly.access.Packed_MemRef_call2453614.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.2
  %_p_scalar_615.2 = load double, double* %polly.access.Packed_MemRef_call2453614.2, align 8
  %385 = mul i64 %383, 8000
  %386 = add i64 %385, %187
  %scevgep620.2 = getelementptr i8, i8* %call1, i64 %386
  %scevgep620621.2 = bitcast i8* %scevgep620.2 to double*
  %_p_scalar_622.2 = load double, double* %scevgep620621.2, align 8, !alias.scope !92, !noalias !98
  %387 = mul i64 %383, 9600
  br label %polly.loop_header602.2

polly.loop_header602.2:                           ; preds = %polly.loop_header602.2, %polly.loop_header602.preheader.2
  %polly.indvar606.2 = phi i64 [ %polly.indvar_next607.2, %polly.loop_header602.2 ], [ 0, %polly.loop_header602.preheader.2 ]
  %388 = add nuw nsw i64 %polly.indvar606.2, %193
  %389 = mul nuw nsw i64 %388, 8000
  %390 = add nuw nsw i64 %389, %187
  %scevgep609.2 = getelementptr i8, i8* %call1, i64 %390
  %scevgep609610.2 = bitcast i8* %scevgep609.2 to double*
  %_p_scalar_611.2 = load double, double* %scevgep609610.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_615.2, %_p_scalar_611.2
  %polly.access.add.Packed_MemRef_call2453617.2 = add nuw nsw i64 %polly.indvar606.2, 2400
  %polly.access.Packed_MemRef_call2453618.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.2
  %_p_scalar_619.2 = load double, double* %polly.access.Packed_MemRef_call2453618.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_622.2, %_p_scalar_619.2
  %391 = shl i64 %388, 3
  %392 = add i64 %391, %387
  %scevgep623.2 = getelementptr i8, i8* %call, i64 %392
  %scevgep623624.2 = bitcast i8* %scevgep623.2 to double*
  %_p_scalar_625.2 = load double, double* %scevgep623624.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_625.2
  store double %p_add42.i.2, double* %scevgep623624.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.2 = add nuw nsw i64 %polly.indvar606.2, 1
  %exitcond908.2.not = icmp eq i64 %polly.indvar606.2, %smin907.2
  br i1 %exitcond908.2.not, label %polly.loop_exit604.2, label %polly.loop_header602.2

polly.loop_exit604.2:                             ; preds = %polly.loop_header602.2, %polly.loop_header594.2
  %polly.indvar_next599.2 = add nuw nsw i64 %polly.indvar598.2, 1
  %polly.loop_cond600.not.not.2 = icmp slt i64 %polly.indvar598.2, %203
  %indvars.iv.next906.2 = add i64 %indvars.iv905.2, 1
  br i1 %polly.loop_cond600.not.not.2, label %polly.loop_header594.2, label %polly.loop_header594.3

polly.loop_header594.3:                           ; preds = %polly.loop_exit604.2, %polly.loop_exit604.3
  %indvars.iv905.3 = phi i64 [ %indvars.iv.next906.3, %polly.loop_exit604.3 ], [ %195, %polly.loop_exit604.2 ]
  %polly.indvar598.3 = phi i64 [ %polly.indvar_next599.3, %polly.loop_exit604.3 ], [ %199, %polly.loop_exit604.2 ]
  %smin907.3 = call i64 @llvm.smin.i64(i64 %indvars.iv905.3, i64 7)
  %393 = add nuw i64 %polly.indvar598.3, %196
  %394 = add i64 %393, %372
  %polly.loop_guard605.3956 = icmp sgt i64 %394, -1
  br i1 %polly.loop_guard605.3956, label %polly.loop_header602.preheader.3, label %polly.loop_exit604.3

polly.loop_header602.preheader.3:                 ; preds = %polly.loop_header594.3
  %polly.access.add.Packed_MemRef_call2453613.3 = add nuw nsw i64 %394, 3600
  %polly.access.Packed_MemRef_call2453614.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.3
  %_p_scalar_615.3 = load double, double* %polly.access.Packed_MemRef_call2453614.3, align 8
  %395 = mul i64 %393, 8000
  %396 = add i64 %395, %188
  %scevgep620.3 = getelementptr i8, i8* %call1, i64 %396
  %scevgep620621.3 = bitcast i8* %scevgep620.3 to double*
  %_p_scalar_622.3 = load double, double* %scevgep620621.3, align 8, !alias.scope !92, !noalias !98
  %397 = mul i64 %393, 9600
  br label %polly.loop_header602.3

polly.loop_header602.3:                           ; preds = %polly.loop_header602.3, %polly.loop_header602.preheader.3
  %polly.indvar606.3 = phi i64 [ %polly.indvar_next607.3, %polly.loop_header602.3 ], [ 0, %polly.loop_header602.preheader.3 ]
  %398 = add nuw nsw i64 %polly.indvar606.3, %193
  %399 = mul nuw nsw i64 %398, 8000
  %400 = add nuw nsw i64 %399, %188
  %scevgep609.3 = getelementptr i8, i8* %call1, i64 %400
  %scevgep609610.3 = bitcast i8* %scevgep609.3 to double*
  %_p_scalar_611.3 = load double, double* %scevgep609610.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_615.3, %_p_scalar_611.3
  %polly.access.add.Packed_MemRef_call2453617.3 = add nuw nsw i64 %polly.indvar606.3, 3600
  %polly.access.Packed_MemRef_call2453618.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.3
  %_p_scalar_619.3 = load double, double* %polly.access.Packed_MemRef_call2453618.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_622.3, %_p_scalar_619.3
  %401 = shl i64 %398, 3
  %402 = add i64 %401, %397
  %scevgep623.3 = getelementptr i8, i8* %call, i64 %402
  %scevgep623624.3 = bitcast i8* %scevgep623.3 to double*
  %_p_scalar_625.3 = load double, double* %scevgep623624.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_625.3
  store double %p_add42.i.3, double* %scevgep623624.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.3 = add nuw nsw i64 %polly.indvar606.3, 1
  %exitcond908.3.not = icmp eq i64 %polly.indvar606.3, %smin907.3
  br i1 %exitcond908.3.not, label %polly.loop_exit604.3, label %polly.loop_header602.3

polly.loop_exit604.3:                             ; preds = %polly.loop_header602.3, %polly.loop_header594.3
  %polly.indvar_next599.3 = add nuw nsw i64 %polly.indvar598.3, 1
  %polly.loop_cond600.not.not.3 = icmp slt i64 %polly.indvar598.3, %203
  %indvars.iv.next906.3 = add i64 %indvars.iv905.3, 1
  br i1 %polly.loop_cond600.not.not.3, label %polly.loop_header594.3, label %polly.loop_exit589
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 96}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
