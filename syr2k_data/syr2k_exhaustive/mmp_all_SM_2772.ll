; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2772.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2772.c"
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
  %call797 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1649 = bitcast i8* %call1 to double*
  %polly.access.call1658 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1658, %call2
  %polly.access.call2678 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2678, %call1
  %2 = or i1 %0, %1
  %polly.access.call698 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call698, %call2
  %4 = icmp ule i8* %polly.access.call2678, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call698, %call1
  %8 = icmp ule i8* %polly.access.call1658, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header771, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep961 = getelementptr i8, i8* %call2, i64 %12
  %scevgep960 = getelementptr i8, i8* %call2, i64 %11
  %scevgep959 = getelementptr i8, i8* %call1, i64 %12
  %scevgep958 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep958, %scevgep961
  %bound1 = icmp ult i8* %scevgep960, %scevgep959
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
  br i1 %exitcond18.not.i, label %vector.ph965, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph965:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert972 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat973 = shufflevector <4 x i64> %broadcast.splatinsert972, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph965
  %index966 = phi i64 [ 0, %vector.ph965 ], [ %index.next967, %vector.body964 ]
  %vec.ind970 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph965 ], [ %vec.ind.next971, %vector.body964 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind970, %broadcast.splat973
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv7.i, i64 %index966
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next967 = add i64 %index966, 4
  %vec.ind.next971 = add <4 x i64> %vec.ind970, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next967, 1200
  br i1 %40, label %for.inc41.i, label %vector.body964, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body964
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph965, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit832
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start463, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1028 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1028, label %for.body3.i46.preheader1105, label %vector.ph1029

vector.ph1029:                                    ; preds = %for.body3.i46.preheader
  %n.vec1031 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1033, %vector.body1027 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i, i64 %index1032
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1033 = add i64 %index1032, 4
  %46 = icmp eq i64 %index.next1033, %n.vec1031
  br i1 %46, label %middle.block1025, label %vector.body1027, !llvm.loop !18

middle.block1025:                                 ; preds = %vector.body1027
  %cmp.n1035 = icmp eq i64 %indvars.iv21.i, %n.vec1031
  br i1 %cmp.n1035, label %for.inc6.i, label %for.body3.i46.preheader1105

for.body3.i46.preheader1105:                      ; preds = %for.body3.i46.preheader, %middle.block1025
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1031, %middle.block1025 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1105, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1105 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1025, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting464
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1051 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1051, label %for.body3.i60.preheader1103, label %vector.ph1052

vector.ph1052:                                    ; preds = %for.body3.i60.preheader
  %n.vec1054 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1052
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1056, %vector.body1050 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i52, i64 %index1055
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1059 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1059, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1056 = add i64 %index1055, 4
  %57 = icmp eq i64 %index.next1056, %n.vec1054
  br i1 %57, label %middle.block1048, label %vector.body1050, !llvm.loop !59

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1058 = icmp eq i64 %indvars.iv21.i52, %n.vec1054
  br i1 %cmp.n1058, label %for.inc6.i63, label %for.body3.i60.preheader1103

for.body3.i60.preheader1103:                      ; preds = %for.body3.i60.preheader, %middle.block1048
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1054, %middle.block1048 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1103, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1103 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1048, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1077 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1077, label %for.body3.i99.preheader1101, label %vector.ph1078

vector.ph1078:                                    ; preds = %for.body3.i99.preheader
  %n.vec1080 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1078
  %index1081 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1082, %vector.body1076 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i91, i64 %index1081
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1085 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1085, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1082 = add i64 %index1081, 4
  %68 = icmp eq i64 %index.next1082, %n.vec1080
  br i1 %68, label %middle.block1074, label %vector.body1076, !llvm.loop !61

middle.block1074:                                 ; preds = %vector.body1076
  %cmp.n1084 = icmp eq i64 %indvars.iv21.i91, %n.vec1080
  br i1 %cmp.n1084, label %for.inc6.i102, label %for.body3.i99.preheader1101

for.body3.i99.preheader1101:                      ; preds = %for.body3.i99.preheader, %middle.block1074
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1080, %middle.block1074 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1101, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1101 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1074, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call797, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1089 = phi i64 [ %indvar.next1090, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1089, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1091 = icmp ult i64 %88, 4
  br i1 %min.iters.check1091, label %polly.loop_header191.preheader, label %vector.ph1092

vector.ph1092:                                    ; preds = %polly.loop_header
  %n.vec1094 = and i64 %88, -4
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %vector.ph1092
  %index1095 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1096, %vector.body1088 ]
  %90 = shl nuw nsw i64 %index1095, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1099 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1099, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1096 = add i64 %index1095, 4
  %95 = icmp eq i64 %index.next1096, %n.vec1094
  br i1 %95, label %middle.block1086, label %vector.body1088, !llvm.loop !73

middle.block1086:                                 ; preds = %vector.body1088
  %cmp.n1098 = icmp eq i64 %88, %n.vec1094
  br i1 %cmp.n1098, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1086
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1094, %middle.block1086 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1086
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1090 = add i64 %indvar1089, 1
  br i1 %exitcond883.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond882.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, -4
  %polly.access.mul.call1224 = mul nsw i64 %polly.indvar202, 4000
  %99 = or i64 %97, 1
  %polly.access.mul.call1224.1 = mul nuw nsw i64 %99, 1000
  %100 = or i64 %97, 2
  %polly.access.mul.call1224.2 = mul nuw nsw i64 %100, 1000
  %101 = or i64 %97, 3
  %polly.access.mul.call1224.3 = mul nuw nsw i64 %101, 1000
  %polly.access.mul.call1224.us = mul nsw i64 %polly.indvar202, 4000
  %102 = or i64 %97, 1
  %polly.access.mul.call1224.us.1 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %97, 2
  %polly.access.mul.call1224.us.2 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %97, 3
  %polly.access.mul.call1224.us.3 = mul nuw nsw i64 %104, 1000
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit242
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond881.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit242, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit242 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit242 ], [ %polly.indvar202, %polly.loop_header199 ]
  %105 = shl nsw i64 %polly.indvar208, 2
  %106 = add nsw i64 %105, %98
  %107 = icmp ugt i64 %106, 4
  %108 = select i1 %107, i64 %106, i64 4
  %109 = or i64 %106, 3
  %polly.loop_guard.not = icmp ugt i64 %108, %109
  br i1 %polly.loop_guard.not, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_header211.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_header211.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1225.us.1 = add nuw nsw i64 %polly.access.mul.call1224.us.1, %polly.indvar214.us
  %polly.access.call1226.us.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.us.1
  %polly.access.call1226.load.us.1 = load double, double* %polly.access.call1226.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1226.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1225.us.2 = add nuw nsw i64 %polly.access.mul.call1224.us.2, %polly.indvar214.us
  %polly.access.call1226.us.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.us.2
  %polly.access.call1226.load.us.2 = load double, double* %polly.access.call1226.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1226.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1225.us.3 = add nuw nsw i64 %polly.access.mul.call1224.us.3, %polly.indvar214.us
  %polly.access.call1226.us.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.us.3
  %polly.access.call1226.load.us.3 = load double, double* %polly.access.call1226.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1226.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond874.not, label %polly.loop_header240.preheader, label %polly.loop_header211.us

polly.loop_exit242:                               ; preds = %polly.loop_exit254.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond880.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond880.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.loop_exit229
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit229 ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 1200
  %polly.access.add.call1225 = add nuw nsw i64 %polly.access.mul.call1224, %polly.indvar214
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1225.1 = add nuw nsw i64 %polly.access.mul.call1224.1, %polly.indvar214
  %polly.access.call1226.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.1
  %polly.access.call1226.load.1 = load double, double* %polly.access.call1226.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1226.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1225.2 = add nuw nsw i64 %polly.access.mul.call1224.2, %polly.indvar214
  %polly.access.call1226.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.2
  %polly.access.call1226.load.2 = load double, double* %polly.access.call1226.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1226.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1225.3 = add nuw nsw i64 %polly.access.mul.call1224.3, %polly.indvar214
  %polly.access.call1226.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1225.3
  %polly.access.call1226.load.3 = load double, double* %polly.access.call1226.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1226.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_header227
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond872.not, label %polly.loop_header240.preheader, label %polly.loop_header211

polly.loop_header240.preheader:                   ; preds = %polly.loop_exit229, %polly.loop_header211.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %110 = mul nsw i64 %polly.indvar208, 32000
  %111 = mul nsw i64 %polly.indvar208, 38400
  %indvars.iv.next876 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next876, i64 3)
  %112 = or i64 %106, 1
  %113 = or i64 %105, 1
  %114 = mul nuw nsw i64 %113, 8000
  %115 = mul nuw nsw i64 %113, 9600
  %indvars.iv.next876.1 = add nuw nsw i64 %indvars.iv.next876, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next876.1, i64 3)
  %116 = or i64 %106, 2
  %117 = or i64 %105, 2
  %118 = mul nuw nsw i64 %117, 8000
  %119 = mul nuw nsw i64 %117, 9600
  %120 = or i64 %106, 3
  %121 = or i64 %105, 3
  %122 = mul nuw nsw i64 %121, 8000
  %123 = mul nuw nsw i64 %121, 9600
  br label %polly.loop_header240

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ %108, %polly.loop_header211 ]
  %124 = add nuw nsw i64 %polly.indvar230, %97
  %polly.access.mul.call1234 = mul nuw nsw i64 %124, 1000
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp ult i64 %polly.indvar230, %109
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_exit254.3
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_exit254.3 ], [ 0, %polly.loop_header240.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar243, 3
  %scevgep262 = getelementptr i8, i8* %call2, i64 %125
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar243, 1200
  %scevgep263 = getelementptr i8, i8* %scevgep262, i64 %110
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1271 = add nuw nsw i64 %106, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1272 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call1272, align 8
  br label %polly.loop_header252

polly.loop_exit254:                               ; preds = %polly.loop_header252
  %scevgep263.1 = getelementptr i8, i8* %scevgep262, i64 %114
  %scevgep263264.1 = bitcast i8* %scevgep263.1 to double*
  %_p_scalar_265.1 = load double, double* %scevgep263264.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1271.1 = add nuw nsw i64 %112, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1272.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call1272.1, align 8
  br label %polly.loop_header252.1

polly.loop_header252:                             ; preds = %polly.loop_header252, %polly.loop_header240
  %polly.indvar255 = phi i64 [ 0, %polly.loop_header240 ], [ %polly.indvar_next256, %polly.loop_header252 ]
  %126 = add nuw nsw i64 %polly.indvar255, %97
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call1260, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_265, %_p_scalar_261
  %127 = mul nuw nsw i64 %126, 8000
  %scevgep267 = getelementptr i8, i8* %scevgep262, i64 %127
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_273, %_p_scalar_269
  %128 = shl i64 %126, 3
  %129 = add nuw nsw i64 %128, %111
  %scevgep274 = getelementptr i8, i8* %call, i64 %129
  %scevgep274275 = bitcast i8* %scevgep274 to double*
  %_p_scalar_276 = load double, double* %scevgep274275, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_276
  store double %p_add42.i118, double* %scevgep274275, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %exitcond877.not = icmp eq i64 %polly.indvar255, %smin
  br i1 %exitcond877.not, label %polly.loop_exit254, label %polly.loop_header252

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* nonnull %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1063 = phi i64 [ %indvar.next1064, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %130 = add i64 %indvar1063, 1
  %131 = mul nuw nsw i64 %polly.indvar368, 9600
  %scevgep377 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1065 = icmp ult i64 %130, 4
  br i1 %min.iters.check1065, label %polly.loop_header371.preheader, label %vector.ph1066

vector.ph1066:                                    ; preds = %polly.loop_header365
  %n.vec1068 = and i64 %130, -4
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1070, %vector.body1062 ]
  %132 = shl nuw nsw i64 %index1069, 3
  %133 = getelementptr i8, i8* %scevgep377, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1073 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !78, !noalias !80
  %135 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !78, !noalias !80
  %index.next1070 = add i64 %index1069, 4
  %137 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %137, label %middle.block1060, label %vector.body1062, !llvm.loop !84

middle.block1060:                                 ; preds = %vector.body1062
  %cmp.n1072 = icmp eq i64 %130, %n.vec1068
  br i1 %cmp.n1072, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1060
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1068, %middle.block1060 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1060
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next369, 1200
  %indvar.next1064 = add i64 %indvar1063, 1
  br i1 %exitcond899.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %138
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond898.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !85

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_exit389 ], [ 0, %polly.loop_header381.preheader ]
  %139 = shl nsw i64 %polly.indvar384, 2
  %140 = mul nsw i64 %polly.indvar384, -4
  %polly.access.mul.call1406 = mul nsw i64 %polly.indvar384, 4000
  %141 = or i64 %139, 1
  %polly.access.mul.call1406.1 = mul nuw nsw i64 %141, 1000
  %142 = or i64 %139, 2
  %polly.access.mul.call1406.2 = mul nuw nsw i64 %142, 1000
  %143 = or i64 %139, 3
  %polly.access.mul.call1406.3 = mul nuw nsw i64 %143, 1000
  %polly.access.mul.call1406.us = mul nsw i64 %polly.indvar384, 4000
  %144 = or i64 %139, 1
  %polly.access.mul.call1406.us.1 = mul nuw nsw i64 %144, 1000
  %145 = or i64 %139, 2
  %polly.access.mul.call1406.us.2 = mul nuw nsw i64 %145, 1000
  %146 = or i64 %139, 3
  %polly.access.mul.call1406.us.3 = mul nuw nsw i64 %146, 1000
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit426
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next385, 300
  br i1 %exitcond897.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit426, %polly.loop_header381
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit426 ], [ 0, %polly.loop_header381 ]
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit426 ], [ %polly.indvar384, %polly.loop_header381 ]
  %147 = shl nsw i64 %polly.indvar390, 2
  %148 = add nsw i64 %147, %140
  %149 = icmp ugt i64 %148, 4
  %150 = select i1 %149, i64 %148, i64 4
  %151 = or i64 %148, 3
  %polly.loop_guard413.not = icmp ugt i64 %150, %151
  br i1 %polly.loop_guard413.not, label %polly.loop_header393.us, label %polly.loop_header393

polly.loop_header393.us:                          ; preds = %polly.loop_header387, %polly.loop_header393.us
  %polly.indvar396.us = phi i64 [ %polly.indvar_next397.us, %polly.loop_header393.us ], [ 0, %polly.loop_header387 ]
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar396.us, 1200
  %polly.access.add.call1407.us = add nuw nsw i64 %polly.access.mul.call1406.us, %polly.indvar396.us
  %polly.access.call1408.us = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.us
  %polly.access.call1408.load.us = load double, double* %polly.access.call1408.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.mul.Packed_MemRef_call1282.us
  store double %polly.access.call1408.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.access.add.call1407.us.1 = add nuw nsw i64 %polly.access.mul.call1406.us.1, %polly.indvar396.us
  %polly.access.call1408.us.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.us.1
  %polly.access.call1408.load.us.1 = load double, double* %polly.access.call1408.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1282.us, 1
  %polly.access.Packed_MemRef_call1282.us.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  store double %polly.access.call1408.load.us.1, double* %polly.access.Packed_MemRef_call1282.us.1, align 8
  %polly.access.add.call1407.us.2 = add nuw nsw i64 %polly.access.mul.call1406.us.2, %polly.indvar396.us
  %polly.access.call1408.us.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.us.2
  %polly.access.call1408.load.us.2 = load double, double* %polly.access.call1408.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1282.us, 2
  %polly.access.Packed_MemRef_call1282.us.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  store double %polly.access.call1408.load.us.2, double* %polly.access.Packed_MemRef_call1282.us.2, align 8
  %polly.access.add.call1407.us.3 = add nuw nsw i64 %polly.access.mul.call1406.us.3, %polly.indvar396.us
  %polly.access.call1408.us.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.us.3
  %polly.access.call1408.load.us.3 = load double, double* %polly.access.call1408.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1282.us, 3
  %polly.access.Packed_MemRef_call1282.us.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  store double %polly.access.call1408.load.us.3, double* %polly.access.Packed_MemRef_call1282.us.3, align 8
  %polly.indvar_next397.us = add nuw nsw i64 %polly.indvar396.us, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next397.us, 1000
  br i1 %exitcond887.not, label %polly.loop_header424.preheader, label %polly.loop_header393.us

polly.loop_exit426:                               ; preds = %polly.loop_exit438.3
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 4
  %exitcond896.not = icmp eq i64 %polly.indvar_next391, 300
  br i1 %exitcond896.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_header387, %polly.loop_exit412
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit412 ], [ 0, %polly.loop_header387 ]
  %polly.access.mul.Packed_MemRef_call1282 = mul nuw nsw i64 %polly.indvar396, 1200
  %polly.access.add.call1407 = add nuw nsw i64 %polly.access.mul.call1406, %polly.indvar396
  %polly.access.call1408 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407
  %polly.access.call1408.load = load double, double* %polly.access.call1408, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1282 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.mul.Packed_MemRef_call1282
  store double %polly.access.call1408.load, double* %polly.access.Packed_MemRef_call1282, align 8
  %polly.access.add.call1407.1 = add nuw nsw i64 %polly.access.mul.call1406.1, %polly.indvar396
  %polly.access.call1408.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.1
  %polly.access.call1408.load.1 = load double, double* %polly.access.call1408.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.1 = or i64 %polly.access.mul.Packed_MemRef_call1282, 1
  %polly.access.Packed_MemRef_call1282.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.1
  store double %polly.access.call1408.load.1, double* %polly.access.Packed_MemRef_call1282.1, align 8
  %polly.access.add.call1407.2 = add nuw nsw i64 %polly.access.mul.call1406.2, %polly.indvar396
  %polly.access.call1408.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.2
  %polly.access.call1408.load.2 = load double, double* %polly.access.call1408.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.2 = or i64 %polly.access.mul.Packed_MemRef_call1282, 2
  %polly.access.Packed_MemRef_call1282.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.2
  store double %polly.access.call1408.load.2, double* %polly.access.Packed_MemRef_call1282.2, align 8
  %polly.access.add.call1407.3 = add nuw nsw i64 %polly.access.mul.call1406.3, %polly.indvar396
  %polly.access.call1408.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1407.3
  %polly.access.call1408.load.3 = load double, double* %polly.access.call1408.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282.3 = or i64 %polly.access.mul.Packed_MemRef_call1282, 3
  %polly.access.Packed_MemRef_call1282.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.3
  store double %polly.access.call1408.load.3, double* %polly.access.Packed_MemRef_call1282.3, align 8
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next397, 1000
  br i1 %exitcond885.not, label %polly.loop_header424.preheader, label %polly.loop_header393

polly.loop_header424.preheader:                   ; preds = %polly.loop_exit412, %polly.loop_header393.us
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 3)
  %152 = mul nsw i64 %polly.indvar390, 32000
  %153 = mul nsw i64 %polly.indvar390, 38400
  %indvars.iv.next891 = or i64 %indvars.iv888, 1
  %smin892.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next891, i64 3)
  %154 = or i64 %148, 1
  %155 = or i64 %147, 1
  %156 = mul nuw nsw i64 %155, 8000
  %157 = mul nuw nsw i64 %155, 9600
  %indvars.iv.next891.1 = add nuw nsw i64 %indvars.iv.next891, 1
  %smin892.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next891.1, i64 3)
  %158 = or i64 %148, 2
  %159 = or i64 %147, 2
  %160 = mul nuw nsw i64 %159, 8000
  %161 = mul nuw nsw i64 %159, 9600
  %162 = or i64 %148, 3
  %163 = or i64 %147, 3
  %164 = mul nuw nsw i64 %163, 8000
  %165 = mul nuw nsw i64 %163, 9600
  br label %polly.loop_header424

polly.loop_header410:                             ; preds = %polly.loop_header393, %polly.loop_header410
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_header410 ], [ %150, %polly.loop_header393 ]
  %166 = add nuw nsw i64 %polly.indvar414, %139
  %polly.access.mul.call1418 = mul nuw nsw i64 %166, 1000
  %polly.access.add.call1419 = add nuw nsw i64 %polly.access.mul.call1418, %polly.indvar396
  %polly.access.call1420 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1419
  %polly.access.call1420.load = load double, double* %polly.access.call1420, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1282422 = add nuw nsw i64 %polly.indvar414, %polly.access.mul.Packed_MemRef_call1282
  %polly.access.Packed_MemRef_call1282423 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282422
  store double %polly.access.call1420.load, double* %polly.access.Packed_MemRef_call1282423, align 8
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %polly.loop_cond416.not.not = icmp ult i64 %polly.indvar414, %151
  br i1 %polly.loop_cond416.not.not, label %polly.loop_header410, label %polly.loop_exit412

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_exit438.3
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit438.3 ], [ 0, %polly.loop_header424.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar427, 3
  %scevgep446 = getelementptr i8, i8* %call2, i64 %167
  %polly.access.mul.Packed_MemRef_call1282442 = mul nuw nsw i64 %polly.indvar427, 1200
  %scevgep447 = getelementptr i8, i8* %scevgep446, i64 %152
  %scevgep447448 = bitcast i8* %scevgep447 to double*
  %_p_scalar_449 = load double, double* %scevgep447448, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1282455 = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282456 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282455
  %_p_scalar_457 = load double, double* %polly.access.Packed_MemRef_call1282456, align 8
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_header436
  %scevgep447.1 = getelementptr i8, i8* %scevgep446, i64 %156
  %scevgep447448.1 = bitcast i8* %scevgep447.1 to double*
  %_p_scalar_449.1 = load double, double* %scevgep447448.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1282455.1 = add nuw nsw i64 %154, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282456.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282455.1
  %_p_scalar_457.1 = load double, double* %polly.access.Packed_MemRef_call1282456.1, align 8
  br label %polly.loop_header436.1

polly.loop_header436:                             ; preds = %polly.loop_header436, %polly.loop_header424
  %polly.indvar439 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next440, %polly.loop_header436 ]
  %168 = add nuw nsw i64 %polly.indvar439, %139
  %polly.access.add.Packed_MemRef_call1282443 = add nuw nsw i64 %polly.indvar439, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282444 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282443
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call1282444, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_449, %_p_scalar_445
  %169 = mul nuw nsw i64 %168, 8000
  %scevgep451 = getelementptr i8, i8* %scevgep446, i64 %169
  %scevgep451452 = bitcast i8* %scevgep451 to double*
  %_p_scalar_453 = load double, double* %scevgep451452, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_457, %_p_scalar_453
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %153
  %scevgep458 = getelementptr i8, i8* %call, i64 %171
  %scevgep458459 = bitcast i8* %scevgep458 to double*
  %_p_scalar_460 = load double, double* %scevgep458459, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_460
  store double %p_add42.i79, double* %scevgep458459, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %exitcond893.not = icmp eq i64 %polly.indvar439, %smin892
  br i1 %exitcond893.not, label %polly.loop_exit438, label %polly.loop_header436

polly.start463:                                   ; preds = %init_array.exit
  %malloccall465 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header549

polly.exiting464:                                 ; preds = %polly.loop_exit573
  tail call void @free(i8* nonnull %malloccall465)
  br label %kernel_syr2k.exit

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.start463
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit557 ], [ 0, %polly.start463 ]
  %polly.indvar552 = phi i64 [ %polly.indvar_next553, %polly.loop_exit557 ], [ 1, %polly.start463 ]
  %172 = add i64 %indvar, 1
  %173 = mul nuw nsw i64 %polly.indvar552, 9600
  %scevgep561 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1039 = icmp ult i64 %172, 4
  br i1 %min.iters.check1039, label %polly.loop_header555.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %polly.loop_header549
  %n.vec1042 = and i64 %172, -4
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1038 ]
  %174 = shl nuw nsw i64 %index1043, 3
  %175 = getelementptr i8, i8* %scevgep561, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !88, !noalias !90
  %177 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !88, !noalias !90
  %index.next1044 = add i64 %index1043, 4
  %179 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %179, label %middle.block1036, label %vector.body1038, !llvm.loop !94

middle.block1036:                                 ; preds = %vector.body1038
  %cmp.n1046 = icmp eq i64 %172, %n.vec1042
  br i1 %cmp.n1046, label %polly.loop_exit557, label %polly.loop_header555.preheader

polly.loop_header555.preheader:                   ; preds = %polly.loop_header549, %middle.block1036
  %polly.indvar558.ph = phi i64 [ 0, %polly.loop_header549 ], [ %n.vec1042, %middle.block1036 ]
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555, %middle.block1036
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next553, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond915.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %Packed_MemRef_call1466 = bitcast i8* %malloccall465 to double*
  br label %polly.loop_header565

polly.loop_header555:                             ; preds = %polly.loop_header555.preheader, %polly.loop_header555
  %polly.indvar558 = phi i64 [ %polly.indvar_next559, %polly.loop_header555 ], [ %polly.indvar558.ph, %polly.loop_header555.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar558, 3
  %scevgep562 = getelementptr i8, i8* %scevgep561, i64 %180
  %scevgep562563 = bitcast i8* %scevgep562 to double*
  %_p_scalar_564 = load double, double* %scevgep562563, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_564, 1.200000e+00
  store double %p_mul.i, double* %scevgep562563, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next559, %polly.indvar552
  br i1 %exitcond914.not, label %polly.loop_exit557, label %polly.loop_header555, !llvm.loop !95

polly.loop_header565:                             ; preds = %polly.loop_header565.preheader, %polly.loop_exit573
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit573 ], [ 0, %polly.loop_header565.preheader ]
  %181 = shl nsw i64 %polly.indvar568, 2
  %182 = mul nsw i64 %polly.indvar568, -4
  %polly.access.mul.call1590 = mul nsw i64 %polly.indvar568, 4000
  %183 = or i64 %181, 1
  %polly.access.mul.call1590.1 = mul nuw nsw i64 %183, 1000
  %184 = or i64 %181, 2
  %polly.access.mul.call1590.2 = mul nuw nsw i64 %184, 1000
  %185 = or i64 %181, 3
  %polly.access.mul.call1590.3 = mul nuw nsw i64 %185, 1000
  %polly.access.mul.call1590.us = mul nsw i64 %polly.indvar568, 4000
  %186 = or i64 %181, 1
  %polly.access.mul.call1590.us.1 = mul nuw nsw i64 %186, 1000
  %187 = or i64 %181, 2
  %polly.access.mul.call1590.us.2 = mul nuw nsw i64 %187, 1000
  %188 = or i64 %181, 3
  %polly.access.mul.call1590.us.3 = mul nuw nsw i64 %188, 1000
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit610
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next569, 300
  br i1 %exitcond913.not, label %polly.exiting464, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_exit610, %polly.loop_header565
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit610 ], [ 0, %polly.loop_header565 ]
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit610 ], [ %polly.indvar568, %polly.loop_header565 ]
  %189 = shl nsw i64 %polly.indvar574, 2
  %190 = add nsw i64 %189, %182
  %191 = icmp ugt i64 %190, 4
  %192 = select i1 %191, i64 %190, i64 4
  %193 = or i64 %190, 3
  %polly.loop_guard597.not = icmp ugt i64 %192, %193
  br i1 %polly.loop_guard597.not, label %polly.loop_header577.us, label %polly.loop_header577

polly.loop_header577.us:                          ; preds = %polly.loop_header571, %polly.loop_header577.us
  %polly.indvar580.us = phi i64 [ %polly.indvar_next581.us, %polly.loop_header577.us ], [ 0, %polly.loop_header571 ]
  %polly.access.mul.Packed_MemRef_call1466.us = mul nuw nsw i64 %polly.indvar580.us, 1200
  %polly.access.add.call1591.us = add nuw nsw i64 %polly.access.mul.call1590.us, %polly.indvar580.us
  %polly.access.call1592.us = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.us
  %polly.access.call1592.load.us = load double, double* %polly.access.call1592.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1466.us = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.mul.Packed_MemRef_call1466.us
  store double %polly.access.call1592.load.us, double* %polly.access.Packed_MemRef_call1466.us, align 8
  %polly.access.add.call1591.us.1 = add nuw nsw i64 %polly.access.mul.call1590.us.1, %polly.indvar580.us
  %polly.access.call1592.us.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.us.1
  %polly.access.call1592.load.us.1 = load double, double* %polly.access.call1592.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1466.us, 1
  %polly.access.Packed_MemRef_call1466.us.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us.1
  store double %polly.access.call1592.load.us.1, double* %polly.access.Packed_MemRef_call1466.us.1, align 8
  %polly.access.add.call1591.us.2 = add nuw nsw i64 %polly.access.mul.call1590.us.2, %polly.indvar580.us
  %polly.access.call1592.us.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.us.2
  %polly.access.call1592.load.us.2 = load double, double* %polly.access.call1592.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1466.us, 2
  %polly.access.Packed_MemRef_call1466.us.2 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us.2
  store double %polly.access.call1592.load.us.2, double* %polly.access.Packed_MemRef_call1466.us.2, align 8
  %polly.access.add.call1591.us.3 = add nuw nsw i64 %polly.access.mul.call1590.us.3, %polly.indvar580.us
  %polly.access.call1592.us.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.us.3
  %polly.access.call1592.load.us.3 = load double, double* %polly.access.call1592.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1466.us, 3
  %polly.access.Packed_MemRef_call1466.us.3 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.us.3
  store double %polly.access.call1592.load.us.3, double* %polly.access.Packed_MemRef_call1466.us.3, align 8
  %polly.indvar_next581.us = add nuw nsw i64 %polly.indvar580.us, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next581.us, 1000
  br i1 %exitcond903.not, label %polly.loop_header608.preheader, label %polly.loop_header577.us

polly.loop_exit610:                               ; preds = %polly.loop_exit622.3
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 4
  %exitcond912.not = icmp eq i64 %polly.indvar_next575, 300
  br i1 %exitcond912.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header577:                             ; preds = %polly.loop_header571, %polly.loop_exit596
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit596 ], [ 0, %polly.loop_header571 ]
  %polly.access.mul.Packed_MemRef_call1466 = mul nuw nsw i64 %polly.indvar580, 1200
  %polly.access.add.call1591 = add nuw nsw i64 %polly.access.mul.call1590, %polly.indvar580
  %polly.access.call1592 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591
  %polly.access.call1592.load = load double, double* %polly.access.call1592, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1466 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.mul.Packed_MemRef_call1466
  store double %polly.access.call1592.load, double* %polly.access.Packed_MemRef_call1466, align 8
  %polly.access.add.call1591.1 = add nuw nsw i64 %polly.access.mul.call1590.1, %polly.indvar580
  %polly.access.call1592.1 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.1
  %polly.access.call1592.load.1 = load double, double* %polly.access.call1592.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.1 = or i64 %polly.access.mul.Packed_MemRef_call1466, 1
  %polly.access.Packed_MemRef_call1466.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.1
  store double %polly.access.call1592.load.1, double* %polly.access.Packed_MemRef_call1466.1, align 8
  %polly.access.add.call1591.2 = add nuw nsw i64 %polly.access.mul.call1590.2, %polly.indvar580
  %polly.access.call1592.2 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.2
  %polly.access.call1592.load.2 = load double, double* %polly.access.call1592.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.2 = or i64 %polly.access.mul.Packed_MemRef_call1466, 2
  %polly.access.Packed_MemRef_call1466.2 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.2
  store double %polly.access.call1592.load.2, double* %polly.access.Packed_MemRef_call1466.2, align 8
  %polly.access.add.call1591.3 = add nuw nsw i64 %polly.access.mul.call1590.3, %polly.indvar580
  %polly.access.call1592.3 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1591.3
  %polly.access.call1592.load.3 = load double, double* %polly.access.call1592.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466.3 = or i64 %polly.access.mul.Packed_MemRef_call1466, 3
  %polly.access.Packed_MemRef_call1466.3 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466.3
  store double %polly.access.call1592.load.3, double* %polly.access.Packed_MemRef_call1466.3, align 8
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next581, 1000
  br i1 %exitcond901.not, label %polly.loop_header608.preheader, label %polly.loop_header577

polly.loop_header608.preheader:                   ; preds = %polly.loop_exit596, %polly.loop_header577.us
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv904, i64 3)
  %194 = mul nsw i64 %polly.indvar574, 32000
  %195 = mul nsw i64 %polly.indvar574, 38400
  %indvars.iv.next907 = or i64 %indvars.iv904, 1
  %smin908.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next907, i64 3)
  %196 = or i64 %190, 1
  %197 = or i64 %189, 1
  %198 = mul nuw nsw i64 %197, 8000
  %199 = mul nuw nsw i64 %197, 9600
  %indvars.iv.next907.1 = add nuw nsw i64 %indvars.iv.next907, 1
  %smin908.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next907.1, i64 3)
  %200 = or i64 %190, 2
  %201 = or i64 %189, 2
  %202 = mul nuw nsw i64 %201, 8000
  %203 = mul nuw nsw i64 %201, 9600
  %204 = or i64 %190, 3
  %205 = or i64 %189, 3
  %206 = mul nuw nsw i64 %205, 8000
  %207 = mul nuw nsw i64 %205, 9600
  br label %polly.loop_header608

polly.loop_header594:                             ; preds = %polly.loop_header577, %polly.loop_header594
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_header594 ], [ %192, %polly.loop_header577 ]
  %208 = add nuw nsw i64 %polly.indvar598, %181
  %polly.access.mul.call1602 = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1603 = add nuw nsw i64 %polly.access.mul.call1602, %polly.indvar580
  %polly.access.call1604 = getelementptr double, double* %polly.access.cast.call1649, i64 %polly.access.add.call1603
  %polly.access.call1604.load = load double, double* %polly.access.call1604, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1466606 = add nuw nsw i64 %polly.indvar598, %polly.access.mul.Packed_MemRef_call1466
  %polly.access.Packed_MemRef_call1466607 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466606
  store double %polly.access.call1604.load, double* %polly.access.Packed_MemRef_call1466607, align 8
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp ult i64 %polly.indvar598, %193
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_exit622.3
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_exit622.3 ], [ 0, %polly.loop_header608.preheader ]
  %209 = shl nuw nsw i64 %polly.indvar611, 3
  %scevgep630 = getelementptr i8, i8* %call2, i64 %209
  %polly.access.mul.Packed_MemRef_call1466626 = mul nuw nsw i64 %polly.indvar611, 1200
  %scevgep631 = getelementptr i8, i8* %scevgep630, i64 %194
  %scevgep631632 = bitcast i8* %scevgep631 to double*
  %_p_scalar_633 = load double, double* %scevgep631632, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1466639 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466640 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466639
  %_p_scalar_641 = load double, double* %polly.access.Packed_MemRef_call1466640, align 8
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %scevgep631.1 = getelementptr i8, i8* %scevgep630, i64 %198
  %scevgep631632.1 = bitcast i8* %scevgep631.1 to double*
  %_p_scalar_633.1 = load double, double* %scevgep631632.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1466639.1 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466640.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466639.1
  %_p_scalar_641.1 = load double, double* %polly.access.Packed_MemRef_call1466640.1, align 8
  br label %polly.loop_header620.1

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header608
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header608 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %210 = add nuw nsw i64 %polly.indvar623, %181
  %polly.access.add.Packed_MemRef_call1466627 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466628 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466627
  %_p_scalar_629 = load double, double* %polly.access.Packed_MemRef_call1466628, align 8
  %p_mul27.i = fmul fast double %_p_scalar_633, %_p_scalar_629
  %211 = mul nuw nsw i64 %210, 8000
  %scevgep635 = getelementptr i8, i8* %scevgep630, i64 %211
  %scevgep635636 = bitcast i8* %scevgep635 to double*
  %_p_scalar_637 = load double, double* %scevgep635636, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_641, %_p_scalar_637
  %212 = shl i64 %210, 3
  %213 = add nuw nsw i64 %212, %195
  %scevgep642 = getelementptr i8, i8* %call, i64 %213
  %scevgep642643 = bitcast i8* %scevgep642 to double*
  %_p_scalar_644 = load double, double* %scevgep642643, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_644
  store double %p_add42.i, double* %scevgep642643, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond909.not = icmp eq i64 %polly.indvar623, %smin908
  br i1 %exitcond909.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header771:                             ; preds = %entry, %polly.loop_exit779
  %indvars.iv940 = phi i64 [ %indvars.iv.next941, %polly.loop_exit779 ], [ 0, %entry ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %entry ]
  %smin942 = call i64 @llvm.smin.i64(i64 %indvars.iv940, i64 -1168)
  %214 = shl nsw i64 %polly.indvar774, 5
  %215 = add nsw i64 %smin942, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next941 = add nsw i64 %indvars.iv940, -32
  %exitcond945.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond945.not, label %polly.loop_header798, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv936 = phi i64 [ %indvars.iv.next937, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %216 = mul nsw i64 %polly.indvar780, -32
  %smin977 = call i64 @llvm.smin.i64(i64 %216, i64 -1168)
  %217 = add nsw i64 %smin977, 1200
  %smin938 = call i64 @llvm.smin.i64(i64 %indvars.iv936, i64 -1168)
  %218 = shl nsw i64 %polly.indvar780, 5
  %219 = add nsw i64 %smin938, 1199
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next937 = add nsw i64 %indvars.iv936, -32
  %exitcond944.not = icmp eq i64 %polly.indvar_next781, 38
  br i1 %exitcond944.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %220 = add nuw nsw i64 %polly.indvar786, %214
  %221 = trunc i64 %220 to i32
  %222 = mul nuw nsw i64 %220, 9600
  %min.iters.check = icmp eq i64 %217, 0
  br i1 %min.iters.check, label %polly.loop_header789, label %vector.ph978

vector.ph978:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert985 = insertelement <4 x i64> poison, i64 %218, i32 0
  %broadcast.splat986 = shufflevector <4 x i64> %broadcast.splatinsert985, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph978
  %index979 = phi i64 [ 0, %vector.ph978 ], [ %index.next980, %vector.body976 ]
  %vec.ind983 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph978 ], [ %vec.ind.next984, %vector.body976 ]
  %223 = add nuw nsw <4 x i64> %vec.ind983, %broadcast.splat986
  %224 = trunc <4 x i64> %223 to <4 x i32>
  %225 = mul <4 x i32> %broadcast.splat988, %224
  %226 = add <4 x i32> %225, <i32 3, i32 3, i32 3, i32 3>
  %227 = urem <4 x i32> %226, <i32 1200, i32 1200, i32 1200, i32 1200>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %230 = extractelement <4 x i64> %223, i32 0
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %222
  %233 = getelementptr i8, i8* %call, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %229, <4 x double>* %234, align 8, !alias.scope !98, !noalias !100
  %index.next980 = add i64 %index979, 4
  %vec.ind.next984 = add <4 x i64> %vec.ind983, <i64 4, i64 4, i64 4, i64 4>
  %235 = icmp eq i64 %index.next980, %217
  br i1 %235, label %polly.loop_exit791, label %vector.body976, !llvm.loop !103

polly.loop_exit791:                               ; preds = %vector.body976, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond943.not = icmp eq i64 %polly.indvar786, %215
  br i1 %exitcond943.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %236 = add nuw nsw i64 %polly.indvar792, %218
  %237 = trunc i64 %236 to i32
  %238 = mul i32 %237, %221
  %239 = add i32 %238, 3
  %240 = urem i32 %239, 1200
  %p_conv31.i = sitofp i32 %240 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %241 = shl i64 %236, 3
  %242 = add nuw nsw i64 %241, %222
  %scevgep795 = getelementptr i8, i8* %call, i64 %242
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div33.i, double* %scevgep795796, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond939.not = icmp eq i64 %polly.indvar792, %219
  br i1 %exitcond939.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !104

polly.loop_header798:                             ; preds = %polly.loop_exit779, %polly.loop_exit806
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit806 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar801 = phi i64 [ %polly.indvar_next802, %polly.loop_exit806 ], [ 0, %polly.loop_exit779 ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %243 = shl nsw i64 %polly.indvar801, 5
  %244 = add nsw i64 %smin932, 1199
  br label %polly.loop_header804

polly.loop_exit806:                               ; preds = %polly.loop_exit812
  %polly.indvar_next802 = add nuw nsw i64 %polly.indvar801, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond935.not = icmp eq i64 %polly.indvar_next802, 38
  br i1 %exitcond935.not, label %polly.loop_header824, label %polly.loop_header798

polly.loop_header804:                             ; preds = %polly.loop_exit812, %polly.loop_header798
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit812 ], [ 0, %polly.loop_header798 ]
  %polly.indvar807 = phi i64 [ %polly.indvar_next808, %polly.loop_exit812 ], [ 0, %polly.loop_header798 ]
  %245 = mul nsw i64 %polly.indvar807, -32
  %smin992 = call i64 @llvm.smin.i64(i64 %245, i64 -968)
  %246 = add nsw i64 %smin992, 1000
  %smin928 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 -968)
  %247 = shl nsw i64 %polly.indvar807, 5
  %248 = add nsw i64 %smin928, 999
  br label %polly.loop_header810

polly.loop_exit812:                               ; preds = %polly.loop_exit818
  %polly.indvar_next808 = add nuw nsw i64 %polly.indvar807, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next808, 32
  br i1 %exitcond934.not, label %polly.loop_exit806, label %polly.loop_header804

polly.loop_header810:                             ; preds = %polly.loop_exit818, %polly.loop_header804
  %polly.indvar813 = phi i64 [ 0, %polly.loop_header804 ], [ %polly.indvar_next814, %polly.loop_exit818 ]
  %249 = add nuw nsw i64 %polly.indvar813, %243
  %250 = trunc i64 %249 to i32
  %251 = mul nuw nsw i64 %249, 8000
  %min.iters.check993 = icmp eq i64 %246, 0
  br i1 %min.iters.check993, label %polly.loop_header816, label %vector.ph994

vector.ph994:                                     ; preds = %polly.loop_header810
  %broadcast.splatinsert1003 = insertelement <4 x i64> poison, i64 %247, i32 0
  %broadcast.splat1004 = shufflevector <4 x i64> %broadcast.splatinsert1003, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1005 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1006 = shufflevector <4 x i32> %broadcast.splatinsert1005, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body991 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph994 ], [ %vec.ind.next1002, %vector.body991 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1001, %broadcast.splat1004
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1006, %253
  %255 = add <4 x i32> %254, <i32 2, i32 2, i32 2, i32 2>
  %256 = urem <4 x i32> %255, <i32 1000, i32 1000, i32 1000, i32 1000>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add nuw nsw i64 %260, %251
  %262 = getelementptr i8, i8* %call2, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !102, !noalias !105
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next998, %246
  br i1 %264, label %polly.loop_exit818, label %vector.body991, !llvm.loop !106

polly.loop_exit818:                               ; preds = %vector.body991, %polly.loop_header816
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %exitcond933.not = icmp eq i64 %polly.indvar813, %244
  br i1 %exitcond933.not, label %polly.loop_exit812, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_header810, %polly.loop_header816
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_header816 ], [ 0, %polly.loop_header810 ]
  %265 = add nuw nsw i64 %polly.indvar819, %247
  %266 = trunc i64 %265 to i32
  %267 = mul i32 %266, %250
  %268 = add i32 %267, 2
  %269 = urem i32 %268, 1000
  %p_conv10.i = sitofp i32 %269 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %270 = shl i64 %265, 3
  %271 = add nuw nsw i64 %270, %251
  %scevgep822 = getelementptr i8, i8* %call2, i64 %271
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div12.i, double* %scevgep822823, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %exitcond929.not = icmp eq i64 %polly.indvar819, %248
  br i1 %exitcond929.not, label %polly.loop_exit818, label %polly.loop_header816, !llvm.loop !107

polly.loop_header824:                             ; preds = %polly.loop_exit806, %polly.loop_exit832
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit832 ], [ 0, %polly.loop_exit806 ]
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_exit806 ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -1168)
  %272 = shl nsw i64 %polly.indvar827, 5
  %273 = add nsw i64 %smin922, 1199
  br label %polly.loop_header830

polly.loop_exit832:                               ; preds = %polly.loop_exit838
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next828, 38
  br i1 %exitcond925.not, label %init_array.exit, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_exit838, %polly.loop_header824
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_header824 ]
  %274 = mul nsw i64 %polly.indvar833, -32
  %smin1010 = call i64 @llvm.smin.i64(i64 %274, i64 -968)
  %275 = add nsw i64 %smin1010, 1000
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -968)
  %276 = shl nsw i64 %polly.indvar833, 5
  %277 = add nsw i64 %smin918, 999
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next834, 32
  br i1 %exitcond924.not, label %polly.loop_exit832, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %polly.indvar839 = phi i64 [ 0, %polly.loop_header830 ], [ %polly.indvar_next840, %polly.loop_exit844 ]
  %278 = add nuw nsw i64 %polly.indvar839, %272
  %279 = trunc i64 %278 to i32
  %280 = mul nuw nsw i64 %278, 8000
  %min.iters.check1011 = icmp eq i64 %275, 0
  br i1 %min.iters.check1011, label %polly.loop_header842, label %vector.ph1012

vector.ph1012:                                    ; preds = %polly.loop_header836
  %broadcast.splatinsert1021 = insertelement <4 x i64> poison, i64 %276, i32 0
  %broadcast.splat1022 = shufflevector <4 x i64> %broadcast.splatinsert1021, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1009 ]
  %vec.ind1019 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1012 ], [ %vec.ind.next1020, %vector.body1009 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1019, %broadcast.splat1022
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1024, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 1200, i32 1200, i32 1200, i32 1200>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add nuw nsw i64 %289, %280
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !101, !noalias !108
  %index.next1016 = add i64 %index1015, 4
  %vec.ind.next1020 = add <4 x i64> %vec.ind1019, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1016, %275
  br i1 %293, label %polly.loop_exit844, label %vector.body1009, !llvm.loop !109

polly.loop_exit844:                               ; preds = %vector.body1009, %polly.loop_header842
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %exitcond923.not = icmp eq i64 %polly.indvar839, %273
  br i1 %exitcond923.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_header836, %polly.loop_header842
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_header842 ], [ 0, %polly.loop_header836 ]
  %294 = add nuw nsw i64 %polly.indvar845, %276
  %295 = trunc i64 %294 to i32
  %296 = mul i32 %295, %279
  %297 = add i32 %296, 1
  %298 = urem i32 %297, 1200
  %p_conv.i = sitofp i32 %298 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %299 = shl i64 %294, 3
  %300 = add nuw nsw i64 %299, %280
  %scevgep849 = getelementptr i8, i8* %call1, i64 %300
  %scevgep849850 = bitcast i8* %scevgep849 to double*
  store double %p_div.i, double* %scevgep849850, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond919.not = icmp eq i64 %polly.indvar845, %277
  br i1 %exitcond919.not, label %polly.loop_exit844, label %polly.loop_header842, !llvm.loop !110

polly.loop_header252.1:                           ; preds = %polly.loop_header252.1, %polly.loop_exit254
  %polly.indvar255.1 = phi i64 [ 0, %polly.loop_exit254 ], [ %polly.indvar_next256.1, %polly.loop_header252.1 ]
  %301 = add nuw nsw i64 %polly.indvar255.1, %97
  %polly.access.add.Packed_MemRef_call1259.1 = add nuw nsw i64 %polly.indvar255.1, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call1260.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_265.1, %_p_scalar_261.1
  %302 = mul nuw nsw i64 %301, 8000
  %scevgep267.1 = getelementptr i8, i8* %scevgep262, i64 %302
  %scevgep267268.1 = bitcast i8* %scevgep267.1 to double*
  %_p_scalar_269.1 = load double, double* %scevgep267268.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_273.1, %_p_scalar_269.1
  %303 = shl i64 %301, 3
  %304 = add nuw nsw i64 %303, %115
  %scevgep274.1 = getelementptr i8, i8* %call, i64 %304
  %scevgep274275.1 = bitcast i8* %scevgep274.1 to double*
  %_p_scalar_276.1 = load double, double* %scevgep274275.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_276.1
  store double %p_add42.i118.1, double* %scevgep274275.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar255.1, %smin.1
  br i1 %exitcond877.1.not, label %polly.loop_exit254.1, label %polly.loop_header252.1

polly.loop_exit254.1:                             ; preds = %polly.loop_header252.1
  %scevgep263.2 = getelementptr i8, i8* %scevgep262, i64 %118
  %scevgep263264.2 = bitcast i8* %scevgep263.2 to double*
  %_p_scalar_265.2 = load double, double* %scevgep263264.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1271.2 = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1272.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.2
  %_p_scalar_273.2 = load double, double* %polly.access.Packed_MemRef_call1272.2, align 8
  br label %polly.loop_header252.2

polly.loop_header252.2:                           ; preds = %polly.loop_header252.2, %polly.loop_exit254.1
  %polly.indvar255.2 = phi i64 [ 0, %polly.loop_exit254.1 ], [ %polly.indvar_next256.2, %polly.loop_header252.2 ]
  %305 = add nuw nsw i64 %polly.indvar255.2, %97
  %polly.access.add.Packed_MemRef_call1259.2 = add nuw nsw i64 %polly.indvar255.2, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call1260.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_265.2, %_p_scalar_261.2
  %306 = mul nuw nsw i64 %305, 8000
  %scevgep267.2 = getelementptr i8, i8* %scevgep262, i64 %306
  %scevgep267268.2 = bitcast i8* %scevgep267.2 to double*
  %_p_scalar_269.2 = load double, double* %scevgep267268.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_273.2, %_p_scalar_269.2
  %307 = shl i64 %305, 3
  %308 = add nuw nsw i64 %307, %119
  %scevgep274.2 = getelementptr i8, i8* %call, i64 %308
  %scevgep274275.2 = bitcast i8* %scevgep274.2 to double*
  %_p_scalar_276.2 = load double, double* %scevgep274275.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_276.2
  store double %p_add42.i118.2, double* %scevgep274275.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %exitcond877.2.not = icmp eq i64 %polly.indvar255.2, %smin.2
  br i1 %exitcond877.2.not, label %polly.loop_exit254.2, label %polly.loop_header252.2

polly.loop_exit254.2:                             ; preds = %polly.loop_header252.2
  %scevgep263.3 = getelementptr i8, i8* %scevgep262, i64 %122
  %scevgep263264.3 = bitcast i8* %scevgep263.3 to double*
  %_p_scalar_265.3 = load double, double* %scevgep263264.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1271.3 = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1272.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.3
  %_p_scalar_273.3 = load double, double* %polly.access.Packed_MemRef_call1272.3, align 8
  br label %polly.loop_header252.3

polly.loop_header252.3:                           ; preds = %polly.loop_header252.3, %polly.loop_exit254.2
  %polly.indvar255.3 = phi i64 [ 0, %polly.loop_exit254.2 ], [ %polly.indvar_next256.3, %polly.loop_header252.3 ]
  %309 = add nuw nsw i64 %polly.indvar255.3, %97
  %polly.access.add.Packed_MemRef_call1259.3 = add nuw nsw i64 %polly.indvar255.3, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call1260.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_265.3, %_p_scalar_261.3
  %310 = mul nuw nsw i64 %309, 8000
  %scevgep267.3 = getelementptr i8, i8* %scevgep262, i64 %310
  %scevgep267268.3 = bitcast i8* %scevgep267.3 to double*
  %_p_scalar_269.3 = load double, double* %scevgep267268.3, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_273.3, %_p_scalar_269.3
  %311 = shl i64 %309, 3
  %312 = add nuw nsw i64 %311, %123
  %scevgep274.3 = getelementptr i8, i8* %call, i64 %312
  %scevgep274275.3 = bitcast i8* %scevgep274.3 to double*
  %_p_scalar_276.3 = load double, double* %scevgep274275.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_276.3
  store double %p_add42.i118.3, double* %scevgep274275.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %exitcond877.3.not = icmp eq i64 %polly.indvar_next256.3, 4
  br i1 %exitcond877.3.not, label %polly.loop_exit254.3, label %polly.loop_header252.3

polly.loop_exit254.3:                             ; preds = %polly.loop_header252.3
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next244, 1000
  br i1 %exitcond879.not, label %polly.loop_exit242, label %polly.loop_header240

polly.loop_header436.1:                           ; preds = %polly.loop_header436.1, %polly.loop_exit438
  %polly.indvar439.1 = phi i64 [ 0, %polly.loop_exit438 ], [ %polly.indvar_next440.1, %polly.loop_header436.1 ]
  %313 = add nuw nsw i64 %polly.indvar439.1, %139
  %polly.access.add.Packed_MemRef_call1282443.1 = add nuw nsw i64 %polly.indvar439.1, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282444.1 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282443.1
  %_p_scalar_445.1 = load double, double* %polly.access.Packed_MemRef_call1282444.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_449.1, %_p_scalar_445.1
  %314 = mul nuw nsw i64 %313, 8000
  %scevgep451.1 = getelementptr i8, i8* %scevgep446, i64 %314
  %scevgep451452.1 = bitcast i8* %scevgep451.1 to double*
  %_p_scalar_453.1 = load double, double* %scevgep451452.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_457.1, %_p_scalar_453.1
  %315 = shl i64 %313, 3
  %316 = add nuw nsw i64 %315, %157
  %scevgep458.1 = getelementptr i8, i8* %call, i64 %316
  %scevgep458459.1 = bitcast i8* %scevgep458.1 to double*
  %_p_scalar_460.1 = load double, double* %scevgep458459.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_460.1
  store double %p_add42.i79.1, double* %scevgep458459.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next440.1 = add nuw nsw i64 %polly.indvar439.1, 1
  %exitcond893.1.not = icmp eq i64 %polly.indvar439.1, %smin892.1
  br i1 %exitcond893.1.not, label %polly.loop_exit438.1, label %polly.loop_header436.1

polly.loop_exit438.1:                             ; preds = %polly.loop_header436.1
  %scevgep447.2 = getelementptr i8, i8* %scevgep446, i64 %160
  %scevgep447448.2 = bitcast i8* %scevgep447.2 to double*
  %_p_scalar_449.2 = load double, double* %scevgep447448.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1282455.2 = add nuw nsw i64 %158, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282456.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282455.2
  %_p_scalar_457.2 = load double, double* %polly.access.Packed_MemRef_call1282456.2, align 8
  br label %polly.loop_header436.2

polly.loop_header436.2:                           ; preds = %polly.loop_header436.2, %polly.loop_exit438.1
  %polly.indvar439.2 = phi i64 [ 0, %polly.loop_exit438.1 ], [ %polly.indvar_next440.2, %polly.loop_header436.2 ]
  %317 = add nuw nsw i64 %polly.indvar439.2, %139
  %polly.access.add.Packed_MemRef_call1282443.2 = add nuw nsw i64 %polly.indvar439.2, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282444.2 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282443.2
  %_p_scalar_445.2 = load double, double* %polly.access.Packed_MemRef_call1282444.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_449.2, %_p_scalar_445.2
  %318 = mul nuw nsw i64 %317, 8000
  %scevgep451.2 = getelementptr i8, i8* %scevgep446, i64 %318
  %scevgep451452.2 = bitcast i8* %scevgep451.2 to double*
  %_p_scalar_453.2 = load double, double* %scevgep451452.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_457.2, %_p_scalar_453.2
  %319 = shl i64 %317, 3
  %320 = add nuw nsw i64 %319, %161
  %scevgep458.2 = getelementptr i8, i8* %call, i64 %320
  %scevgep458459.2 = bitcast i8* %scevgep458.2 to double*
  %_p_scalar_460.2 = load double, double* %scevgep458459.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_460.2
  store double %p_add42.i79.2, double* %scevgep458459.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next440.2 = add nuw nsw i64 %polly.indvar439.2, 1
  %exitcond893.2.not = icmp eq i64 %polly.indvar439.2, %smin892.2
  br i1 %exitcond893.2.not, label %polly.loop_exit438.2, label %polly.loop_header436.2

polly.loop_exit438.2:                             ; preds = %polly.loop_header436.2
  %scevgep447.3 = getelementptr i8, i8* %scevgep446, i64 %164
  %scevgep447448.3 = bitcast i8* %scevgep447.3 to double*
  %_p_scalar_449.3 = load double, double* %scevgep447448.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1282455.3 = add nuw nsw i64 %162, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282456.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282455.3
  %_p_scalar_457.3 = load double, double* %polly.access.Packed_MemRef_call1282456.3, align 8
  br label %polly.loop_header436.3

polly.loop_header436.3:                           ; preds = %polly.loop_header436.3, %polly.loop_exit438.2
  %polly.indvar439.3 = phi i64 [ 0, %polly.loop_exit438.2 ], [ %polly.indvar_next440.3, %polly.loop_header436.3 ]
  %321 = add nuw nsw i64 %polly.indvar439.3, %139
  %polly.access.add.Packed_MemRef_call1282443.3 = add nuw nsw i64 %polly.indvar439.3, %polly.access.mul.Packed_MemRef_call1282442
  %polly.access.Packed_MemRef_call1282444.3 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282443.3
  %_p_scalar_445.3 = load double, double* %polly.access.Packed_MemRef_call1282444.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_449.3, %_p_scalar_445.3
  %322 = mul nuw nsw i64 %321, 8000
  %scevgep451.3 = getelementptr i8, i8* %scevgep446, i64 %322
  %scevgep451452.3 = bitcast i8* %scevgep451.3 to double*
  %_p_scalar_453.3 = load double, double* %scevgep451452.3, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.3 = fmul fast double %_p_scalar_457.3, %_p_scalar_453.3
  %323 = shl i64 %321, 3
  %324 = add nuw nsw i64 %323, %165
  %scevgep458.3 = getelementptr i8, i8* %call, i64 %324
  %scevgep458459.3 = bitcast i8* %scevgep458.3 to double*
  %_p_scalar_460.3 = load double, double* %scevgep458459.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_460.3
  store double %p_add42.i79.3, double* %scevgep458459.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next440.3 = add nuw nsw i64 %polly.indvar439.3, 1
  %exitcond893.3.not = icmp eq i64 %polly.indvar_next440.3, 4
  br i1 %exitcond893.3.not, label %polly.loop_exit438.3, label %polly.loop_header436.3

polly.loop_exit438.3:                             ; preds = %polly.loop_header436.3
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next428, 1000
  br i1 %exitcond895.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header620.1:                           ; preds = %polly.loop_header620.1, %polly.loop_exit622
  %polly.indvar623.1 = phi i64 [ 0, %polly.loop_exit622 ], [ %polly.indvar_next624.1, %polly.loop_header620.1 ]
  %325 = add nuw nsw i64 %polly.indvar623.1, %181
  %polly.access.add.Packed_MemRef_call1466627.1 = add nuw nsw i64 %polly.indvar623.1, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466628.1 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466627.1
  %_p_scalar_629.1 = load double, double* %polly.access.Packed_MemRef_call1466628.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_633.1, %_p_scalar_629.1
  %326 = mul nuw nsw i64 %325, 8000
  %scevgep635.1 = getelementptr i8, i8* %scevgep630, i64 %326
  %scevgep635636.1 = bitcast i8* %scevgep635.1 to double*
  %_p_scalar_637.1 = load double, double* %scevgep635636.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_641.1, %_p_scalar_637.1
  %327 = shl i64 %325, 3
  %328 = add nuw nsw i64 %327, %199
  %scevgep642.1 = getelementptr i8, i8* %call, i64 %328
  %scevgep642643.1 = bitcast i8* %scevgep642.1 to double*
  %_p_scalar_644.1 = load double, double* %scevgep642643.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_644.1
  store double %p_add42.i.1, double* %scevgep642643.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next624.1 = add nuw nsw i64 %polly.indvar623.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar623.1, %smin908.1
  br i1 %exitcond909.1.not, label %polly.loop_exit622.1, label %polly.loop_header620.1

polly.loop_exit622.1:                             ; preds = %polly.loop_header620.1
  %scevgep631.2 = getelementptr i8, i8* %scevgep630, i64 %202
  %scevgep631632.2 = bitcast i8* %scevgep631.2 to double*
  %_p_scalar_633.2 = load double, double* %scevgep631632.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1466639.2 = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466640.2 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466639.2
  %_p_scalar_641.2 = load double, double* %polly.access.Packed_MemRef_call1466640.2, align 8
  br label %polly.loop_header620.2

polly.loop_header620.2:                           ; preds = %polly.loop_header620.2, %polly.loop_exit622.1
  %polly.indvar623.2 = phi i64 [ 0, %polly.loop_exit622.1 ], [ %polly.indvar_next624.2, %polly.loop_header620.2 ]
  %329 = add nuw nsw i64 %polly.indvar623.2, %181
  %polly.access.add.Packed_MemRef_call1466627.2 = add nuw nsw i64 %polly.indvar623.2, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466628.2 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466627.2
  %_p_scalar_629.2 = load double, double* %polly.access.Packed_MemRef_call1466628.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_633.2, %_p_scalar_629.2
  %330 = mul nuw nsw i64 %329, 8000
  %scevgep635.2 = getelementptr i8, i8* %scevgep630, i64 %330
  %scevgep635636.2 = bitcast i8* %scevgep635.2 to double*
  %_p_scalar_637.2 = load double, double* %scevgep635636.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_641.2, %_p_scalar_637.2
  %331 = shl i64 %329, 3
  %332 = add nuw nsw i64 %331, %203
  %scevgep642.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep642643.2 = bitcast i8* %scevgep642.2 to double*
  %_p_scalar_644.2 = load double, double* %scevgep642643.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_644.2
  store double %p_add42.i.2, double* %scevgep642643.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next624.2 = add nuw nsw i64 %polly.indvar623.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar623.2, %smin908.2
  br i1 %exitcond909.2.not, label %polly.loop_exit622.2, label %polly.loop_header620.2

polly.loop_exit622.2:                             ; preds = %polly.loop_header620.2
  %scevgep631.3 = getelementptr i8, i8* %scevgep630, i64 %206
  %scevgep631632.3 = bitcast i8* %scevgep631.3 to double*
  %_p_scalar_633.3 = load double, double* %scevgep631632.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1466639.3 = add nuw nsw i64 %204, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466640.3 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466639.3
  %_p_scalar_641.3 = load double, double* %polly.access.Packed_MemRef_call1466640.3, align 8
  br label %polly.loop_header620.3

polly.loop_header620.3:                           ; preds = %polly.loop_header620.3, %polly.loop_exit622.2
  %polly.indvar623.3 = phi i64 [ 0, %polly.loop_exit622.2 ], [ %polly.indvar_next624.3, %polly.loop_header620.3 ]
  %333 = add nuw nsw i64 %polly.indvar623.3, %181
  %polly.access.add.Packed_MemRef_call1466627.3 = add nuw nsw i64 %polly.indvar623.3, %polly.access.mul.Packed_MemRef_call1466626
  %polly.access.Packed_MemRef_call1466628.3 = getelementptr double, double* %Packed_MemRef_call1466, i64 %polly.access.add.Packed_MemRef_call1466627.3
  %_p_scalar_629.3 = load double, double* %polly.access.Packed_MemRef_call1466628.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_633.3, %_p_scalar_629.3
  %334 = mul nuw nsw i64 %333, 8000
  %scevgep635.3 = getelementptr i8, i8* %scevgep630, i64 %334
  %scevgep635636.3 = bitcast i8* %scevgep635.3 to double*
  %_p_scalar_637.3 = load double, double* %scevgep635636.3, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.3 = fmul fast double %_p_scalar_641.3, %_p_scalar_637.3
  %335 = shl i64 %333, 3
  %336 = add nuw nsw i64 %335, %207
  %scevgep642.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep642643.3 = bitcast i8* %scevgep642.3 to double*
  %_p_scalar_644.3 = load double, double* %scevgep642643.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_644.3
  store double %p_add42.i.3, double* %scevgep642643.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next624.3 = add nuw nsw i64 %polly.indvar623.3, 1
  %exitcond909.3.not = icmp eq i64 %polly.indvar_next624.3, 4
  br i1 %exitcond909.3.not, label %polly.loop_exit622.3, label %polly.loop_header620.3

polly.loop_exit622.3:                             ; preds = %polly.loop_header620.3
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next612, 1000
  br i1 %exitcond911.not, label %polly.loop_exit610, label %polly.loop_header608
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 4}
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
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
