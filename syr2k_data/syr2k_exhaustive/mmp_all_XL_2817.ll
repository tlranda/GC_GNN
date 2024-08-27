; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2817.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2817.c"
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
  %call809 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1661 = bitcast i8* %call1 to double*
  %polly.access.call1670 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1670, %call2
  %polly.access.call2690 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2690, %call1
  %2 = or i1 %0, %1
  %polly.access.call710 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call710, %call2
  %4 = icmp ule i8* %polly.access.call2690, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call710, %call1
  %8 = icmp ule i8* %polly.access.call1670, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header783, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep988 = getelementptr i8, i8* %call2, i64 %12
  %scevgep987 = getelementptr i8, i8* %call2, i64 %11
  %scevgep986 = getelementptr i8, i8* %call1, i64 %12
  %scevgep985 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep985, %scevgep988
  %bound1 = icmp ult i8* %scevgep987, %scevgep986
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
  br i1 %exitcond18.not.i, label %vector.ph992, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph992:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert999 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1000 = shufflevector <4 x i64> %broadcast.splatinsert999, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %vector.ph992
  %index993 = phi i64 [ 0, %vector.ph992 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph992 ], [ %vec.ind.next998, %vector.body991 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind997, %broadcast.splat1000
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv7.i, i64 %index993
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next994, 1200
  br i1 %40, label %for.inc41.i, label %vector.body991, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body991
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph992, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit844
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1055 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1055, label %for.body3.i46.preheader1132, label %vector.ph1056

vector.ph1056:                                    ; preds = %for.body3.i46.preheader
  %n.vec1058 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1060, %vector.body1054 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %index1059
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1060 = add i64 %index1059, 4
  %46 = icmp eq i64 %index.next1060, %n.vec1058
  br i1 %46, label %middle.block1052, label %vector.body1054, !llvm.loop !18

middle.block1052:                                 ; preds = %vector.body1054
  %cmp.n1062 = icmp eq i64 %indvars.iv21.i, %n.vec1058
  br i1 %cmp.n1062, label %for.inc6.i, label %for.body3.i46.preheader1132

for.body3.i46.preheader1132:                      ; preds = %for.body3.i46.preheader, %middle.block1052
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1058, %middle.block1052 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1132, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1132 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1052, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1078 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1078, label %for.body3.i60.preheader1130, label %vector.ph1079

vector.ph1079:                                    ; preds = %for.body3.i60.preheader
  %n.vec1081 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1079
  %index1082 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1083, %vector.body1077 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %index1082
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1086 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1086, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1083 = add i64 %index1082, 4
  %57 = icmp eq i64 %index.next1083, %n.vec1081
  br i1 %57, label %middle.block1075, label %vector.body1077, !llvm.loop !59

middle.block1075:                                 ; preds = %vector.body1077
  %cmp.n1085 = icmp eq i64 %indvars.iv21.i52, %n.vec1081
  br i1 %cmp.n1085, label %for.inc6.i63, label %for.body3.i60.preheader1130

for.body3.i60.preheader1130:                      ; preds = %for.body3.i60.preheader, %middle.block1075
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1081, %middle.block1075 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1130, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1130 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1075, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1104 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1104, label %for.body3.i99.preheader1128, label %vector.ph1105

vector.ph1105:                                    ; preds = %for.body3.i99.preheader
  %n.vec1107 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1105
  %index1108 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1109, %vector.body1103 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %index1108
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1112 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1112, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1109 = add i64 %index1108, 4
  %68 = icmp eq i64 %index.next1109, %n.vec1107
  br i1 %68, label %middle.block1101, label %vector.body1103, !llvm.loop !61

middle.block1101:                                 ; preds = %vector.body1103
  %cmp.n1111 = icmp eq i64 %indvars.iv21.i91, %n.vec1107
  br i1 %cmp.n1111, label %for.inc6.i102, label %for.body3.i99.preheader1128

for.body3.i99.preheader1128:                      ; preds = %for.body3.i99.preheader, %middle.block1101
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1107, %middle.block1101 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1128, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1128 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1101, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1116 = phi i64 [ %indvar.next1117, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1116, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1118 = icmp ult i64 %88, 4
  br i1 %min.iters.check1118, label %polly.loop_header191.preheader, label %vector.ph1119

vector.ph1119:                                    ; preds = %polly.loop_header
  %n.vec1121 = and i64 %88, -4
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %vector.ph1119
  %index1122 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1123, %vector.body1115 ]
  %90 = shl nuw nsw i64 %index1122, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1126 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1126, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1123 = add i64 %index1122, 4
  %95 = icmp eq i64 %index.next1123, %n.vec1121
  br i1 %95, label %middle.block1113, label %vector.body1115, !llvm.loop !73

middle.block1113:                                 ; preds = %vector.body1115
  %cmp.n1125 = icmp eq i64 %88, %n.vec1121
  br i1 %cmp.n1125, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1113
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1121, %middle.block1113 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1113
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1117 = add i64 %indvar1116, 1
  br i1 %exitcond908.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond907.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond907.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next203, 50
  br i1 %exitcond906.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %98 = shl nsw i64 %polly.indvar208, 3
  %99 = mul nsw i64 %polly.indvar208, -8
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 8000
  %100 = or i64 %98, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %100, 1000
  %101 = or i64 %98, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %101, 1000
  %102 = or i64 %98, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %98, 4
  %polly.access.mul.call1230.4 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %98, 5
  %polly.access.mul.call1230.5 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %98, 6
  %polly.access.mul.call1230.6 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %98, 7
  %polly.access.mul.call1230.7 = mul nuw nsw i64 %106, 1000
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 8000
  %107 = or i64 %98, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %98, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %98, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %98, 4
  %polly.access.mul.call1230.us.4 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %98, 5
  %polly.access.mul.call1230.us.5 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %98, 6
  %polly.access.mul.call1230.us.6 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %98, 7
  %polly.access.mul.call1230.us.7 = mul nuw nsw i64 %113, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next209, 150
  br i1 %exitcond905.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit248 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %polly.indvar208, %polly.loop_header205 ]
  %114 = shl nsw i64 %polly.indvar214, 3
  %115 = add nsw i64 %114, %99
  %116 = icmp ugt i64 %115, 8
  %117 = select i1 %116, i64 %115, i64 8
  %118 = or i64 %115, 7
  %polly.loop_guard.not = icmp ugt i64 %117, %118
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211 ]
  %119 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %119
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %119
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %119
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %119
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %polly.access.mul.call1230.us.4, %119
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %polly.access.mul.call1230.us.5, %119
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %polly.access.mul.call1230.us.6, %119
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %polly.access.mul.call1230.us.7, %119
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next221.us, 20
  br i1 %exitcond898.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_exit248:                               ; preds = %polly.loop_exit260.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond904.not = icmp eq i64 %polly.indvar_next215, 150
  br i1 %exitcond904.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211 ]
  %120 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %120
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %120
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %120
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %120
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1231.4 = add nuw nsw i64 %polly.access.mul.call1230.4, %120
  %polly.access.call1232.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.4
  %polly.access.call1232.load.4 = load double, double* %polly.access.call1232.4, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1232.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1231.5 = add nuw nsw i64 %polly.access.mul.call1230.5, %120
  %polly.access.call1232.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.5
  %polly.access.call1232.load.5 = load double, double* %polly.access.call1232.5, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1232.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1231.6 = add nuw nsw i64 %polly.access.mul.call1230.6, %120
  %polly.access.call1232.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.6
  %polly.access.call1232.load.6 = load double, double* %polly.access.call1232.6, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1232.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1231.7 = add nuw nsw i64 %polly.access.mul.call1230.7, %120
  %polly.access.call1232.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.7
  %polly.access.call1232.load.7 = load double, double* %polly.access.call1232.7, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1232.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond896.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_header217.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %121 = mul nsw i64 %polly.indvar214, 64000
  %122 = mul nsw i64 %polly.indvar214, 76800
  %indvars.iv.next900 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900, i64 7)
  %123 = or i64 %115, 1
  %124 = or i64 %114, 1
  %125 = mul nuw nsw i64 %124, 8000
  %126 = mul nuw nsw i64 %124, 9600
  %indvars.iv.next900.1 = add nuw nsw i64 %indvars.iv.next900, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.1, i64 7)
  %127 = or i64 %115, 2
  %128 = or i64 %114, 2
  %129 = mul nuw nsw i64 %128, 8000
  %130 = mul nuw nsw i64 %128, 9600
  %indvars.iv.next900.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.2, i64 7)
  %131 = or i64 %115, 3
  %132 = or i64 %114, 3
  %133 = mul nuw nsw i64 %132, 8000
  %134 = mul nuw nsw i64 %132, 9600
  %indvars.iv.next900.3 = add nuw nsw i64 %indvars.iv.next900.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.3, i64 7)
  %135 = or i64 %115, 4
  %136 = or i64 %114, 4
  %137 = mul nuw nsw i64 %136, 8000
  %138 = mul nuw nsw i64 %136, 9600
  %indvars.iv.next900.4 = add nuw nsw i64 %indvars.iv.next900.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.4, i64 7)
  %139 = or i64 %115, 5
  %140 = or i64 %114, 5
  %141 = mul nuw nsw i64 %140, 8000
  %142 = mul nuw nsw i64 %140, 9600
  %indvars.iv.next900.5 = add nuw nsw i64 %indvars.iv.next900.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.5, i64 7)
  %143 = or i64 %115, 6
  %144 = or i64 %114, 6
  %145 = mul nuw nsw i64 %144, 8000
  %146 = mul nuw nsw i64 %144, 9600
  %147 = or i64 %115, 7
  %148 = or i64 %114, 7
  %149 = mul nuw nsw i64 %148, 8000
  %150 = mul nuw nsw i64 %148, 9600
  br label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %117, %polly.loop_header217 ]
  %151 = add nuw nsw i64 %polly.indvar236, %98
  %polly.access.mul.call1240 = mul nuw nsw i64 %151, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %120
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %118
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit260.7
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit260.7 ], [ 0, %polly.loop_header246.preheader ]
  %152 = add nuw nsw i64 %polly.indvar249, %97
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar249, 1200
  %153 = shl i64 %152, 3
  %154 = add nuw nsw i64 %121, %153
  %scevgep268 = getelementptr i8, i8* %call2, i64 %154
  %scevgep268269 = bitcast i8* %scevgep268 to double*
  %_p_scalar_270 = load double, double* %scevgep268269, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header258

polly.loop_exit260:                               ; preds = %polly.loop_header258
  %155 = add nuw nsw i64 %125, %153
  %scevgep268.1 = getelementptr i8, i8* %call2, i64 %155
  %scevgep268269.1 = bitcast i8* %scevgep268.1 to double*
  %_p_scalar_270.1 = load double, double* %scevgep268269.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.1 = add nuw nsw i64 %123, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header258.1

polly.loop_header258:                             ; preds = %polly.loop_header258, %polly.loop_header246
  %polly.indvar261 = phi i64 [ 0, %polly.loop_header246 ], [ %polly.indvar_next262, %polly.loop_header258 ]
  %156 = add nuw nsw i64 %polly.indvar261, %98
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar261, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call1266, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_270, %_p_scalar_267
  %157 = mul nuw nsw i64 %156, 8000
  %158 = add nuw nsw i64 %157, %153
  %scevgep271 = getelementptr i8, i8* %call2, i64 %158
  %scevgep271272 = bitcast i8* %scevgep271 to double*
  %_p_scalar_273 = load double, double* %scevgep271272, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %159 = shl i64 %156, 3
  %160 = add nuw nsw i64 %159, %122
  %scevgep278 = getelementptr i8, i8* %call, i64 %160
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %exitcond901.not = icmp eq i64 %polly.indvar261, %smin
  br i1 %exitcond901.not, label %polly.loop_exit260, label %polly.loop_header258

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* nonnull %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1090 = phi i64 [ %indvar.next1091, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %161 = add i64 %indvar1090, 1
  %162 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %162
  %min.iters.check1092 = icmp ult i64 %161, 4
  br i1 %min.iters.check1092, label %polly.loop_header375.preheader, label %vector.ph1093

vector.ph1093:                                    ; preds = %polly.loop_header369
  %n.vec1095 = and i64 %161, -4
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1097, %vector.body1089 ]
  %163 = shl nuw nsw i64 %index1096, 3
  %164 = getelementptr i8, i8* %scevgep381, i64 %163
  %165 = bitcast i8* %164 to <4 x double>*
  %wide.load1100 = load <4 x double>, <4 x double>* %165, align 8, !alias.scope !78, !noalias !80
  %166 = fmul fast <4 x double> %wide.load1100, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %167 = bitcast i8* %164 to <4 x double>*
  store <4 x double> %166, <4 x double>* %167, align 8, !alias.scope !78, !noalias !80
  %index.next1097 = add i64 %index1096, 4
  %168 = icmp eq i64 %index.next1097, %n.vec1095
  br i1 %168, label %middle.block1087, label %vector.body1089, !llvm.loop !84

middle.block1087:                                 ; preds = %vector.body1089
  %cmp.n1099 = icmp eq i64 %161, %n.vec1095
  br i1 %cmp.n1099, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1087
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1095, %middle.block1087 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1087
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1091 = add i64 %indvar1090, 1
  br i1 %exitcond925.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %169 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %169
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond924.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !85

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_header385.preheader ]
  %170 = mul nuw nsw i64 %polly.indvar388, 20
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next389, 50
  br i1 %exitcond923.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %171 = shl nsw i64 %polly.indvar394, 3
  %172 = mul nsw i64 %polly.indvar394, -8
  %polly.access.mul.call1416 = mul nsw i64 %polly.indvar394, 8000
  %173 = or i64 %171, 1
  %polly.access.mul.call1416.1 = mul nuw nsw i64 %173, 1000
  %174 = or i64 %171, 2
  %polly.access.mul.call1416.2 = mul nuw nsw i64 %174, 1000
  %175 = or i64 %171, 3
  %polly.access.mul.call1416.3 = mul nuw nsw i64 %175, 1000
  %176 = or i64 %171, 4
  %polly.access.mul.call1416.4 = mul nuw nsw i64 %176, 1000
  %177 = or i64 %171, 5
  %polly.access.mul.call1416.5 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %171, 6
  %polly.access.mul.call1416.6 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %171, 7
  %polly.access.mul.call1416.7 = mul nuw nsw i64 %179, 1000
  %polly.access.mul.call1416.us = mul nsw i64 %polly.indvar394, 8000
  %180 = or i64 %171, 1
  %polly.access.mul.call1416.us.1 = mul nuw nsw i64 %180, 1000
  %181 = or i64 %171, 2
  %polly.access.mul.call1416.us.2 = mul nuw nsw i64 %181, 1000
  %182 = or i64 %171, 3
  %polly.access.mul.call1416.us.3 = mul nuw nsw i64 %182, 1000
  %183 = or i64 %171, 4
  %polly.access.mul.call1416.us.4 = mul nuw nsw i64 %183, 1000
  %184 = or i64 %171, 5
  %polly.access.mul.call1416.us.5 = mul nuw nsw i64 %184, 1000
  %185 = or i64 %171, 6
  %polly.access.mul.call1416.us.6 = mul nuw nsw i64 %185, 1000
  %186 = or i64 %171, 7
  %polly.access.mul.call1416.us.7 = mul nuw nsw i64 %186, 1000
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit436
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next395, 150
  br i1 %exitcond922.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit436, %polly.loop_header391
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit436 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit436 ], [ %polly.indvar394, %polly.loop_header391 ]
  %187 = shl nsw i64 %polly.indvar400, 3
  %188 = add nsw i64 %187, %172
  %189 = icmp ugt i64 %188, 8
  %190 = select i1 %189, i64 %188, i64 8
  %191 = or i64 %188, 7
  %polly.loop_guard423.not = icmp ugt i64 %190, %191
  br i1 %polly.loop_guard423.not, label %polly.loop_header403.us, label %polly.loop_header403

polly.loop_header403.us:                          ; preds = %polly.loop_header397, %polly.loop_header403.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header403.us ], [ 0, %polly.loop_header397 ]
  %192 = add nuw nsw i64 %polly.indvar406.us, %170
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar406.us, 1200
  %polly.access.add.call1417.us = add nuw nsw i64 %polly.access.mul.call1416.us, %192
  %polly.access.call1418.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us
  %polly.access.call1418.load.us = load double, double* %polly.access.call1418.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286.us
  store double %polly.access.call1418.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.access.add.call1417.us.1 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %192
  %polly.access.call1418.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1
  %polly.access.call1418.load.us.1 = load double, double* %polly.access.call1418.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 1
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  store double %polly.access.call1418.load.us.1, double* %polly.access.Packed_MemRef_call1286.us.1, align 8
  %polly.access.add.call1417.us.2 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %192
  %polly.access.call1418.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2
  %polly.access.call1418.load.us.2 = load double, double* %polly.access.call1418.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 2
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  store double %polly.access.call1418.load.us.2, double* %polly.access.Packed_MemRef_call1286.us.2, align 8
  %polly.access.add.call1417.us.3 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %192
  %polly.access.call1418.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3
  %polly.access.call1418.load.us.3 = load double, double* %polly.access.call1418.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 3
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  store double %polly.access.call1418.load.us.3, double* %polly.access.Packed_MemRef_call1286.us.3, align 8
  %polly.access.add.call1417.us.4 = add nuw nsw i64 %polly.access.mul.call1416.us.4, %192
  %polly.access.call1418.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.4
  %polly.access.call1418.load.us.4 = load double, double* %polly.access.call1418.us.4, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 4
  %polly.access.Packed_MemRef_call1286.us.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.4
  store double %polly.access.call1418.load.us.4, double* %polly.access.Packed_MemRef_call1286.us.4, align 8
  %polly.access.add.call1417.us.5 = add nuw nsw i64 %polly.access.mul.call1416.us.5, %192
  %polly.access.call1418.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.5
  %polly.access.call1418.load.us.5 = load double, double* %polly.access.call1418.us.5, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 5
  %polly.access.Packed_MemRef_call1286.us.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.5
  store double %polly.access.call1418.load.us.5, double* %polly.access.Packed_MemRef_call1286.us.5, align 8
  %polly.access.add.call1417.us.6 = add nuw nsw i64 %polly.access.mul.call1416.us.6, %192
  %polly.access.call1418.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.6
  %polly.access.call1418.load.us.6 = load double, double* %polly.access.call1418.us.6, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 6
  %polly.access.Packed_MemRef_call1286.us.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.6
  store double %polly.access.call1418.load.us.6, double* %polly.access.Packed_MemRef_call1286.us.6, align 8
  %polly.access.add.call1417.us.7 = add nuw nsw i64 %polly.access.mul.call1416.us.7, %192
  %polly.access.call1418.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.7
  %polly.access.call1418.load.us.7 = load double, double* %polly.access.call1418.us.7, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 7
  %polly.access.Packed_MemRef_call1286.us.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.7
  store double %polly.access.call1418.load.us.7, double* %polly.access.Packed_MemRef_call1286.us.7, align 8
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next407.us, 20
  br i1 %exitcond912.not, label %polly.loop_header434.preheader, label %polly.loop_header403.us

polly.loop_exit436:                               ; preds = %polly.loop_exit448.7
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 8
  %exitcond921.not = icmp eq i64 %polly.indvar_next401, 150
  br i1 %exitcond921.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header403:                             ; preds = %polly.loop_header397, %polly.loop_exit422
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit422 ], [ 0, %polly.loop_header397 ]
  %193 = add nuw nsw i64 %polly.indvar406, %170
  %polly.access.mul.Packed_MemRef_call1286 = mul nuw nsw i64 %polly.indvar406, 1200
  %polly.access.add.call1417 = add nuw nsw i64 %polly.access.mul.call1416, %193
  %polly.access.call1418 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417
  %polly.access.call1418.load = load double, double* %polly.access.call1418, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286
  store double %polly.access.call1418.load, double* %polly.access.Packed_MemRef_call1286, align 8
  %polly.access.add.call1417.1 = add nuw nsw i64 %polly.access.mul.call1416.1, %193
  %polly.access.call1418.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.1
  %polly.access.call1418.load.1 = load double, double* %polly.access.call1418.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.1 = or i64 %polly.access.mul.Packed_MemRef_call1286, 1
  %polly.access.Packed_MemRef_call1286.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.1
  store double %polly.access.call1418.load.1, double* %polly.access.Packed_MemRef_call1286.1, align 8
  %polly.access.add.call1417.2 = add nuw nsw i64 %polly.access.mul.call1416.2, %193
  %polly.access.call1418.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.2
  %polly.access.call1418.load.2 = load double, double* %polly.access.call1418.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.2 = or i64 %polly.access.mul.Packed_MemRef_call1286, 2
  %polly.access.Packed_MemRef_call1286.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.2
  store double %polly.access.call1418.load.2, double* %polly.access.Packed_MemRef_call1286.2, align 8
  %polly.access.add.call1417.3 = add nuw nsw i64 %polly.access.mul.call1416.3, %193
  %polly.access.call1418.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.3
  %polly.access.call1418.load.3 = load double, double* %polly.access.call1418.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.3 = or i64 %polly.access.mul.Packed_MemRef_call1286, 3
  %polly.access.Packed_MemRef_call1286.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.3
  store double %polly.access.call1418.load.3, double* %polly.access.Packed_MemRef_call1286.3, align 8
  %polly.access.add.call1417.4 = add nuw nsw i64 %polly.access.mul.call1416.4, %193
  %polly.access.call1418.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.4
  %polly.access.call1418.load.4 = load double, double* %polly.access.call1418.4, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.4 = or i64 %polly.access.mul.Packed_MemRef_call1286, 4
  %polly.access.Packed_MemRef_call1286.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.4
  store double %polly.access.call1418.load.4, double* %polly.access.Packed_MemRef_call1286.4, align 8
  %polly.access.add.call1417.5 = add nuw nsw i64 %polly.access.mul.call1416.5, %193
  %polly.access.call1418.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.5
  %polly.access.call1418.load.5 = load double, double* %polly.access.call1418.5, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.5 = or i64 %polly.access.mul.Packed_MemRef_call1286, 5
  %polly.access.Packed_MemRef_call1286.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.5
  store double %polly.access.call1418.load.5, double* %polly.access.Packed_MemRef_call1286.5, align 8
  %polly.access.add.call1417.6 = add nuw nsw i64 %polly.access.mul.call1416.6, %193
  %polly.access.call1418.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.6
  %polly.access.call1418.load.6 = load double, double* %polly.access.call1418.6, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.6 = or i64 %polly.access.mul.Packed_MemRef_call1286, 6
  %polly.access.Packed_MemRef_call1286.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.6
  store double %polly.access.call1418.load.6, double* %polly.access.Packed_MemRef_call1286.6, align 8
  %polly.access.add.call1417.7 = add nuw nsw i64 %polly.access.mul.call1416.7, %193
  %polly.access.call1418.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.7
  %polly.access.call1418.load.7 = load double, double* %polly.access.call1418.7, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.7 = or i64 %polly.access.mul.Packed_MemRef_call1286, 7
  %polly.access.Packed_MemRef_call1286.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.7
  store double %polly.access.call1418.load.7, double* %polly.access.Packed_MemRef_call1286.7, align 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next407, 20
  br i1 %exitcond910.not, label %polly.loop_header434.preheader, label %polly.loop_header403

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit422, %polly.loop_header403.us
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 7)
  %194 = mul nsw i64 %polly.indvar400, 64000
  %195 = mul nsw i64 %polly.indvar400, 76800
  %indvars.iv.next916 = or i64 %indvars.iv913, 1
  %smin917.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916, i64 7)
  %196 = or i64 %188, 1
  %197 = or i64 %187, 1
  %198 = mul nuw nsw i64 %197, 8000
  %199 = mul nuw nsw i64 %197, 9600
  %indvars.iv.next916.1 = add nuw nsw i64 %indvars.iv.next916, 1
  %smin917.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.1, i64 7)
  %200 = or i64 %188, 2
  %201 = or i64 %187, 2
  %202 = mul nuw nsw i64 %201, 8000
  %203 = mul nuw nsw i64 %201, 9600
  %indvars.iv.next916.2 = or i64 %indvars.iv913, 3
  %smin917.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.2, i64 7)
  %204 = or i64 %188, 3
  %205 = or i64 %187, 3
  %206 = mul nuw nsw i64 %205, 8000
  %207 = mul nuw nsw i64 %205, 9600
  %indvars.iv.next916.3 = add nuw nsw i64 %indvars.iv.next916.2, 1
  %smin917.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.3, i64 7)
  %208 = or i64 %188, 4
  %209 = or i64 %187, 4
  %210 = mul nuw nsw i64 %209, 8000
  %211 = mul nuw nsw i64 %209, 9600
  %indvars.iv.next916.4 = add nuw nsw i64 %indvars.iv.next916.2, 2
  %smin917.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.4, i64 7)
  %212 = or i64 %188, 5
  %213 = or i64 %187, 5
  %214 = mul nuw nsw i64 %213, 8000
  %215 = mul nuw nsw i64 %213, 9600
  %indvars.iv.next916.5 = add nuw nsw i64 %indvars.iv.next916.2, 3
  %smin917.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.5, i64 7)
  %216 = or i64 %188, 6
  %217 = or i64 %187, 6
  %218 = mul nuw nsw i64 %217, 8000
  %219 = mul nuw nsw i64 %217, 9600
  %220 = or i64 %188, 7
  %221 = or i64 %187, 7
  %222 = mul nuw nsw i64 %221, 8000
  %223 = mul nuw nsw i64 %221, 9600
  br label %polly.loop_header434

polly.loop_header420:                             ; preds = %polly.loop_header403, %polly.loop_header420
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_header420 ], [ %190, %polly.loop_header403 ]
  %224 = add nuw nsw i64 %polly.indvar424, %171
  %polly.access.mul.call1428 = mul nuw nsw i64 %224, 1000
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %193
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286432 = add nuw nsw i64 %polly.indvar424, %polly.access.mul.Packed_MemRef_call1286
  %polly.access.Packed_MemRef_call1286433 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1286433, align 8
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp ult i64 %polly.indvar424, %191
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit448.7
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_exit448.7 ], [ 0, %polly.loop_header434.preheader ]
  %225 = add nuw nsw i64 %polly.indvar437, %170
  %polly.access.mul.Packed_MemRef_call1286452 = mul nuw nsw i64 %polly.indvar437, 1200
  %226 = shl i64 %225, 3
  %227 = add nuw nsw i64 %194, %226
  %scevgep456 = getelementptr i8, i8* %call2, i64 %227
  %scevgep456457 = bitcast i8* %scevgep456 to double*
  %_p_scalar_458 = load double, double* %scevgep456457, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463 = add nuw nsw i64 %188, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1286464, align 8
  br label %polly.loop_header446

polly.loop_exit448:                               ; preds = %polly.loop_header446
  %228 = add nuw nsw i64 %198, %226
  %scevgep456.1 = getelementptr i8, i8* %call2, i64 %228
  %scevgep456457.1 = bitcast i8* %scevgep456.1 to double*
  %_p_scalar_458.1 = load double, double* %scevgep456457.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.1 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1286464.1, align 8
  br label %polly.loop_header446.1

polly.loop_header446:                             ; preds = %polly.loop_header446, %polly.loop_header434
  %polly.indvar449 = phi i64 [ 0, %polly.loop_header434 ], [ %polly.indvar_next450, %polly.loop_header446 ]
  %229 = add nuw nsw i64 %polly.indvar449, %171
  %polly.access.add.Packed_MemRef_call1286453 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453
  %_p_scalar_455 = load double, double* %polly.access.Packed_MemRef_call1286454, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_458, %_p_scalar_455
  %230 = mul nuw nsw i64 %229, 8000
  %231 = add nuw nsw i64 %230, %226
  %scevgep459 = getelementptr i8, i8* %call2, i64 %231
  %scevgep459460 = bitcast i8* %scevgep459 to double*
  %_p_scalar_461 = load double, double* %scevgep459460, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %232 = shl i64 %229, 3
  %233 = add nuw nsw i64 %232, %195
  %scevgep466 = getelementptr i8, i8* %call, i64 %233
  %scevgep466467 = bitcast i8* %scevgep466 to double*
  %_p_scalar_468 = load double, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_468
  store double %p_add42.i79, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond918.not = icmp eq i64 %polly.indvar449, %smin917
  br i1 %exitcond918.not, label %polly.loop_exit448, label %polly.loop_header446

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* nonnull %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %234 = add i64 %indvar, 1
  %235 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %235
  %min.iters.check1066 = icmp ult i64 %234, 4
  br i1 %min.iters.check1066, label %polly.loop_header563.preheader, label %vector.ph1067

vector.ph1067:                                    ; preds = %polly.loop_header557
  %n.vec1069 = and i64 %234, -4
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1067
  %index1070 = phi i64 [ 0, %vector.ph1067 ], [ %index.next1071, %vector.body1065 ]
  %236 = shl nuw nsw i64 %index1070, 3
  %237 = getelementptr i8, i8* %scevgep569, i64 %236
  %238 = bitcast i8* %237 to <4 x double>*
  %wide.load1074 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !88, !noalias !90
  %239 = fmul fast <4 x double> %wide.load1074, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %240 = bitcast i8* %237 to <4 x double>*
  store <4 x double> %239, <4 x double>* %240, align 8, !alias.scope !88, !noalias !90
  %index.next1071 = add i64 %index1070, 4
  %241 = icmp eq i64 %index.next1071, %n.vec1069
  br i1 %241, label %middle.block1063, label %vector.body1065, !llvm.loop !94

middle.block1063:                                 ; preds = %vector.body1065
  %cmp.n1073 = icmp eq i64 %234, %n.vec1069
  br i1 %cmp.n1073, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1063
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1069, %middle.block1063 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1063
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond942.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %242 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %242
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond941.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ 0, %polly.loop_header573.preheader ]
  %243 = mul nuw nsw i64 %polly.indvar576, 20
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next577, 50
  br i1 %exitcond940.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %244 = shl nsw i64 %polly.indvar582, 3
  %245 = mul nsw i64 %polly.indvar582, -8
  %polly.access.mul.call1604 = mul nsw i64 %polly.indvar582, 8000
  %246 = or i64 %244, 1
  %polly.access.mul.call1604.1 = mul nuw nsw i64 %246, 1000
  %247 = or i64 %244, 2
  %polly.access.mul.call1604.2 = mul nuw nsw i64 %247, 1000
  %248 = or i64 %244, 3
  %polly.access.mul.call1604.3 = mul nuw nsw i64 %248, 1000
  %249 = or i64 %244, 4
  %polly.access.mul.call1604.4 = mul nuw nsw i64 %249, 1000
  %250 = or i64 %244, 5
  %polly.access.mul.call1604.5 = mul nuw nsw i64 %250, 1000
  %251 = or i64 %244, 6
  %polly.access.mul.call1604.6 = mul nuw nsw i64 %251, 1000
  %252 = or i64 %244, 7
  %polly.access.mul.call1604.7 = mul nuw nsw i64 %252, 1000
  %polly.access.mul.call1604.us = mul nsw i64 %polly.indvar582, 8000
  %253 = or i64 %244, 1
  %polly.access.mul.call1604.us.1 = mul nuw nsw i64 %253, 1000
  %254 = or i64 %244, 2
  %polly.access.mul.call1604.us.2 = mul nuw nsw i64 %254, 1000
  %255 = or i64 %244, 3
  %polly.access.mul.call1604.us.3 = mul nuw nsw i64 %255, 1000
  %256 = or i64 %244, 4
  %polly.access.mul.call1604.us.4 = mul nuw nsw i64 %256, 1000
  %257 = or i64 %244, 5
  %polly.access.mul.call1604.us.5 = mul nuw nsw i64 %257, 1000
  %258 = or i64 %244, 6
  %polly.access.mul.call1604.us.6 = mul nuw nsw i64 %258, 1000
  %259 = or i64 %244, 7
  %polly.access.mul.call1604.us.7 = mul nuw nsw i64 %259, 1000
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit624
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next583, 150
  br i1 %exitcond939.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit624, %polly.loop_header579
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit624 ], [ 0, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit624 ], [ %polly.indvar582, %polly.loop_header579 ]
  %260 = shl nsw i64 %polly.indvar588, 3
  %261 = add nsw i64 %260, %245
  %262 = icmp ugt i64 %261, 8
  %263 = select i1 %262, i64 %261, i64 8
  %264 = or i64 %261, 7
  %polly.loop_guard611.not = icmp ugt i64 %263, %264
  br i1 %polly.loop_guard611.not, label %polly.loop_header591.us, label %polly.loop_header591

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_header591.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_header591.us ], [ 0, %polly.loop_header585 ]
  %265 = add nuw nsw i64 %polly.indvar594.us, %243
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.access.mul.call1604.us, %265
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474.us
  store double %polly.access.call1606.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.access.add.call1605.us.1 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %265
  %polly.access.call1606.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1
  %polly.access.call1606.load.us.1 = load double, double* %polly.access.call1606.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 1
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1606.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.access.add.call1605.us.2 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %265
  %polly.access.call1606.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2
  %polly.access.call1606.load.us.2 = load double, double* %polly.access.call1606.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 2
  %polly.access.Packed_MemRef_call1474.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.2
  store double %polly.access.call1606.load.us.2, double* %polly.access.Packed_MemRef_call1474.us.2, align 8
  %polly.access.add.call1605.us.3 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %265
  %polly.access.call1606.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3
  %polly.access.call1606.load.us.3 = load double, double* %polly.access.call1606.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 3
  %polly.access.Packed_MemRef_call1474.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.3
  store double %polly.access.call1606.load.us.3, double* %polly.access.Packed_MemRef_call1474.us.3, align 8
  %polly.access.add.call1605.us.4 = add nuw nsw i64 %polly.access.mul.call1604.us.4, %265
  %polly.access.call1606.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.4
  %polly.access.call1606.load.us.4 = load double, double* %polly.access.call1606.us.4, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 4
  %polly.access.Packed_MemRef_call1474.us.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.4
  store double %polly.access.call1606.load.us.4, double* %polly.access.Packed_MemRef_call1474.us.4, align 8
  %polly.access.add.call1605.us.5 = add nuw nsw i64 %polly.access.mul.call1604.us.5, %265
  %polly.access.call1606.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.5
  %polly.access.call1606.load.us.5 = load double, double* %polly.access.call1606.us.5, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 5
  %polly.access.Packed_MemRef_call1474.us.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.5
  store double %polly.access.call1606.load.us.5, double* %polly.access.Packed_MemRef_call1474.us.5, align 8
  %polly.access.add.call1605.us.6 = add nuw nsw i64 %polly.access.mul.call1604.us.6, %265
  %polly.access.call1606.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.6
  %polly.access.call1606.load.us.6 = load double, double* %polly.access.call1606.us.6, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 6
  %polly.access.Packed_MemRef_call1474.us.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.6
  store double %polly.access.call1606.load.us.6, double* %polly.access.Packed_MemRef_call1474.us.6, align 8
  %polly.access.add.call1605.us.7 = add nuw nsw i64 %polly.access.mul.call1604.us.7, %265
  %polly.access.call1606.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.7
  %polly.access.call1606.load.us.7 = load double, double* %polly.access.call1606.us.7, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 7
  %polly.access.Packed_MemRef_call1474.us.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.7
  store double %polly.access.call1606.load.us.7, double* %polly.access.Packed_MemRef_call1474.us.7, align 8
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next595.us, 20
  br i1 %exitcond929.not, label %polly.loop_header622.preheader, label %polly.loop_header591.us

polly.loop_exit624:                               ; preds = %polly.loop_exit636.7
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 8
  %exitcond938.not = icmp eq i64 %polly.indvar_next589, 150
  br i1 %exitcond938.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header591:                             ; preds = %polly.loop_header585, %polly.loop_exit610
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit610 ], [ 0, %polly.loop_header585 ]
  %266 = add nuw nsw i64 %polly.indvar594, %243
  %polly.access.mul.Packed_MemRef_call1474 = mul nuw nsw i64 %polly.indvar594, 1200
  %polly.access.add.call1605 = add nuw nsw i64 %polly.access.mul.call1604, %266
  %polly.access.call1606 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605
  %polly.access.call1606.load = load double, double* %polly.access.call1606, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474
  store double %polly.access.call1606.load, double* %polly.access.Packed_MemRef_call1474, align 8
  %polly.access.add.call1605.1 = add nuw nsw i64 %polly.access.mul.call1604.1, %266
  %polly.access.call1606.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.1
  %polly.access.call1606.load.1 = load double, double* %polly.access.call1606.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.1 = or i64 %polly.access.mul.Packed_MemRef_call1474, 1
  %polly.access.Packed_MemRef_call1474.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.1
  store double %polly.access.call1606.load.1, double* %polly.access.Packed_MemRef_call1474.1, align 8
  %polly.access.add.call1605.2 = add nuw nsw i64 %polly.access.mul.call1604.2, %266
  %polly.access.call1606.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.2
  %polly.access.call1606.load.2 = load double, double* %polly.access.call1606.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.2 = or i64 %polly.access.mul.Packed_MemRef_call1474, 2
  %polly.access.Packed_MemRef_call1474.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.2
  store double %polly.access.call1606.load.2, double* %polly.access.Packed_MemRef_call1474.2, align 8
  %polly.access.add.call1605.3 = add nuw nsw i64 %polly.access.mul.call1604.3, %266
  %polly.access.call1606.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.3
  %polly.access.call1606.load.3 = load double, double* %polly.access.call1606.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.3 = or i64 %polly.access.mul.Packed_MemRef_call1474, 3
  %polly.access.Packed_MemRef_call1474.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.3
  store double %polly.access.call1606.load.3, double* %polly.access.Packed_MemRef_call1474.3, align 8
  %polly.access.add.call1605.4 = add nuw nsw i64 %polly.access.mul.call1604.4, %266
  %polly.access.call1606.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.4
  %polly.access.call1606.load.4 = load double, double* %polly.access.call1606.4, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.4 = or i64 %polly.access.mul.Packed_MemRef_call1474, 4
  %polly.access.Packed_MemRef_call1474.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.4
  store double %polly.access.call1606.load.4, double* %polly.access.Packed_MemRef_call1474.4, align 8
  %polly.access.add.call1605.5 = add nuw nsw i64 %polly.access.mul.call1604.5, %266
  %polly.access.call1606.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.5
  %polly.access.call1606.load.5 = load double, double* %polly.access.call1606.5, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.5 = or i64 %polly.access.mul.Packed_MemRef_call1474, 5
  %polly.access.Packed_MemRef_call1474.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.5
  store double %polly.access.call1606.load.5, double* %polly.access.Packed_MemRef_call1474.5, align 8
  %polly.access.add.call1605.6 = add nuw nsw i64 %polly.access.mul.call1604.6, %266
  %polly.access.call1606.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.6
  %polly.access.call1606.load.6 = load double, double* %polly.access.call1606.6, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.6 = or i64 %polly.access.mul.Packed_MemRef_call1474, 6
  %polly.access.Packed_MemRef_call1474.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.6
  store double %polly.access.call1606.load.6, double* %polly.access.Packed_MemRef_call1474.6, align 8
  %polly.access.add.call1605.7 = add nuw nsw i64 %polly.access.mul.call1604.7, %266
  %polly.access.call1606.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.7
  %polly.access.call1606.load.7 = load double, double* %polly.access.call1606.7, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.7 = or i64 %polly.access.mul.Packed_MemRef_call1474, 7
  %polly.access.Packed_MemRef_call1474.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.7
  store double %polly.access.call1606.load.7, double* %polly.access.Packed_MemRef_call1474.7, align 8
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next595, 20
  br i1 %exitcond927.not, label %polly.loop_header622.preheader, label %polly.loop_header591

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit610, %polly.loop_header591.us
  %smin934 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 7)
  %267 = mul nsw i64 %polly.indvar588, 64000
  %268 = mul nsw i64 %polly.indvar588, 76800
  %indvars.iv.next933 = or i64 %indvars.iv930, 1
  %smin934.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933, i64 7)
  %269 = or i64 %261, 1
  %270 = or i64 %260, 1
  %271 = mul nuw nsw i64 %270, 8000
  %272 = mul nuw nsw i64 %270, 9600
  %indvars.iv.next933.1 = add nuw nsw i64 %indvars.iv.next933, 1
  %smin934.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.1, i64 7)
  %273 = or i64 %261, 2
  %274 = or i64 %260, 2
  %275 = mul nuw nsw i64 %274, 8000
  %276 = mul nuw nsw i64 %274, 9600
  %indvars.iv.next933.2 = or i64 %indvars.iv930, 3
  %smin934.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.2, i64 7)
  %277 = or i64 %261, 3
  %278 = or i64 %260, 3
  %279 = mul nuw nsw i64 %278, 8000
  %280 = mul nuw nsw i64 %278, 9600
  %indvars.iv.next933.3 = add nuw nsw i64 %indvars.iv.next933.2, 1
  %smin934.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.3, i64 7)
  %281 = or i64 %261, 4
  %282 = or i64 %260, 4
  %283 = mul nuw nsw i64 %282, 8000
  %284 = mul nuw nsw i64 %282, 9600
  %indvars.iv.next933.4 = add nuw nsw i64 %indvars.iv.next933.2, 2
  %smin934.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.4, i64 7)
  %285 = or i64 %261, 5
  %286 = or i64 %260, 5
  %287 = mul nuw nsw i64 %286, 8000
  %288 = mul nuw nsw i64 %286, 9600
  %indvars.iv.next933.5 = add nuw nsw i64 %indvars.iv.next933.2, 3
  %smin934.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.5, i64 7)
  %289 = or i64 %261, 6
  %290 = or i64 %260, 6
  %291 = mul nuw nsw i64 %290, 8000
  %292 = mul nuw nsw i64 %290, 9600
  %293 = or i64 %261, 7
  %294 = or i64 %260, 7
  %295 = mul nuw nsw i64 %294, 8000
  %296 = mul nuw nsw i64 %294, 9600
  br label %polly.loop_header622

polly.loop_header608:                             ; preds = %polly.loop_header591, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ %263, %polly.loop_header591 ]
  %297 = add nuw nsw i64 %polly.indvar612, %244
  %polly.access.mul.call1616 = mul nuw nsw i64 %297, 1000
  %polly.access.add.call1617 = add nuw nsw i64 %polly.access.mul.call1616, %266
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474620 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call1474
  %polly.access.Packed_MemRef_call1474621 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1474621, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %polly.loop_cond614.not.not = icmp ult i64 %polly.indvar612, %264
  br i1 %polly.loop_cond614.not.not, label %polly.loop_header608, label %polly.loop_exit610

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit636.7
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit636.7 ], [ 0, %polly.loop_header622.preheader ]
  %298 = add nuw nsw i64 %polly.indvar625, %243
  %polly.access.mul.Packed_MemRef_call1474640 = mul nuw nsw i64 %polly.indvar625, 1200
  %299 = shl i64 %298, 3
  %300 = add nuw nsw i64 %267, %299
  %scevgep644 = getelementptr i8, i8* %call2, i64 %300
  %scevgep644645 = bitcast i8* %scevgep644 to double*
  %_p_scalar_646 = load double, double* %scevgep644645, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651 = add nuw nsw i64 %261, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1474652, align 8
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_header634
  %301 = add nuw nsw i64 %271, %299
  %scevgep644.1 = getelementptr i8, i8* %call2, i64 %301
  %scevgep644645.1 = bitcast i8* %scevgep644.1 to double*
  %_p_scalar_646.1 = load double, double* %scevgep644645.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.1 = add nuw nsw i64 %269, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1474652.1, align 8
  br label %polly.loop_header634.1

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header622
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %302 = add nuw nsw i64 %polly.indvar637, %244
  %polly.access.add.Packed_MemRef_call1474641 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call1474642, align 8
  %p_mul27.i = fmul fast double %_p_scalar_646, %_p_scalar_643
  %303 = mul nuw nsw i64 %302, 8000
  %304 = add nuw nsw i64 %303, %299
  %scevgep647 = getelementptr i8, i8* %call2, i64 %304
  %scevgep647648 = bitcast i8* %scevgep647 to double*
  %_p_scalar_649 = load double, double* %scevgep647648, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %305 = shl i64 %302, 3
  %306 = add nuw nsw i64 %305, %268
  %scevgep654 = getelementptr i8, i8* %call, i64 %306
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_656
  store double %p_add42.i, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond935.not = icmp eq i64 %polly.indvar637, %smin934
  br i1 %exitcond935.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header783:                             ; preds = %entry, %polly.loop_exit791
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit791 ], [ 0, %entry ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %entry ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 -1168)
  %307 = shl nsw i64 %polly.indvar786, 5
  %308 = add nsw i64 %smin969, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -32
  %exitcond972.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond972.not, label %polly.loop_header810, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %309 = mul nsw i64 %polly.indvar792, -32
  %smin1004 = call i64 @llvm.smin.i64(i64 %309, i64 -1168)
  %310 = add nsw i64 %smin1004, 1200
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 -1168)
  %311 = shl nsw i64 %polly.indvar792, 5
  %312 = add nsw i64 %smin965, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond971.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond971.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %polly.indvar798 = phi i64 [ 0, %polly.loop_header789 ], [ %polly.indvar_next799, %polly.loop_exit803 ]
  %313 = add nuw nsw i64 %polly.indvar798, %307
  %314 = trunc i64 %313 to i32
  %315 = mul nuw nsw i64 %313, 9600
  %min.iters.check = icmp eq i64 %310, 0
  br i1 %min.iters.check, label %polly.loop_header801, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header795
  %broadcast.splatinsert1012 = insertelement <4 x i64> poison, i64 %311, i32 0
  %broadcast.splat1013 = shufflevector <4 x i64> %broadcast.splatinsert1012, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1005
  %index1006 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1007, %vector.body1003 ]
  %vec.ind1010 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1005 ], [ %vec.ind.next1011, %vector.body1003 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1010, %broadcast.splat1013
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1015, %317
  %319 = add <4 x i32> %318, <i32 3, i32 3, i32 3, i32 3>
  %320 = urem <4 x i32> %319, <i32 1200, i32 1200, i32 1200, i32 1200>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add nuw nsw i64 %324, %315
  %326 = getelementptr i8, i8* %call, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !98, !noalias !100
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1011 = add <4 x i64> %vec.ind1010, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1007, %310
  br i1 %328, label %polly.loop_exit803, label %vector.body1003, !llvm.loop !103

polly.loop_exit803:                               ; preds = %vector.body1003, %polly.loop_header801
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond970.not = icmp eq i64 %polly.indvar798, %308
  br i1 %exitcond970.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_header795, %polly.loop_header801
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_header801 ], [ 0, %polly.loop_header795 ]
  %329 = add nuw nsw i64 %polly.indvar804, %311
  %330 = trunc i64 %329 to i32
  %331 = mul i32 %330, %314
  %332 = add i32 %331, 3
  %333 = urem i32 %332, 1200
  %p_conv31.i = sitofp i32 %333 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %334 = shl i64 %329, 3
  %335 = add nuw nsw i64 %334, %315
  %scevgep807 = getelementptr i8, i8* %call, i64 %335
  %scevgep807808 = bitcast i8* %scevgep807 to double*
  store double %p_div33.i, double* %scevgep807808, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond966.not = icmp eq i64 %polly.indvar804, %312
  br i1 %exitcond966.not, label %polly.loop_exit803, label %polly.loop_header801, !llvm.loop !104

polly.loop_header810:                             ; preds = %polly.loop_exit791, %polly.loop_exit818
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 -1168)
  %336 = shl nsw i64 %polly.indvar813, 5
  %337 = add nsw i64 %smin959, 1199
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -32
  %exitcond962.not = icmp eq i64 %polly.indvar_next814, 38
  br i1 %exitcond962.not, label %polly.loop_header836, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %indvars.iv953 = phi i64 [ %indvars.iv.next954, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %338 = mul nsw i64 %polly.indvar819, -32
  %smin1019 = call i64 @llvm.smin.i64(i64 %338, i64 -968)
  %339 = add nsw i64 %smin1019, 1000
  %smin955 = call i64 @llvm.smin.i64(i64 %indvars.iv953, i64 -968)
  %340 = shl nsw i64 %polly.indvar819, 5
  %341 = add nsw i64 %smin955, 999
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next954 = add nsw i64 %indvars.iv953, -32
  %exitcond961.not = icmp eq i64 %polly.indvar_next820, 32
  br i1 %exitcond961.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %polly.indvar825 = phi i64 [ 0, %polly.loop_header816 ], [ %polly.indvar_next826, %polly.loop_exit830 ]
  %342 = add nuw nsw i64 %polly.indvar825, %336
  %343 = trunc i64 %342 to i32
  %344 = mul nuw nsw i64 %342, 8000
  %min.iters.check1020 = icmp eq i64 %339, 0
  br i1 %min.iters.check1020, label %polly.loop_header828, label %vector.ph1021

vector.ph1021:                                    ; preds = %polly.loop_header822
  %broadcast.splatinsert1030 = insertelement <4 x i64> poison, i64 %340, i32 0
  %broadcast.splat1031 = shufflevector <4 x i64> %broadcast.splatinsert1030, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1021
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1025, %vector.body1018 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1021 ], [ %vec.ind.next1029, %vector.body1018 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1028, %broadcast.splat1031
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1033, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 1000, i32 1000, i32 1000, i32 1000>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add nuw nsw i64 %353, %344
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !102, !noalias !105
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1025, %339
  br i1 %357, label %polly.loop_exit830, label %vector.body1018, !llvm.loop !106

polly.loop_exit830:                               ; preds = %vector.body1018, %polly.loop_header828
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond960.not = icmp eq i64 %polly.indvar825, %337
  br i1 %exitcond960.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_header822, %polly.loop_header828
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_header828 ], [ 0, %polly.loop_header822 ]
  %358 = add nuw nsw i64 %polly.indvar831, %340
  %359 = trunc i64 %358 to i32
  %360 = mul i32 %359, %343
  %361 = add i32 %360, 2
  %362 = urem i32 %361, 1000
  %p_conv10.i = sitofp i32 %362 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %363 = shl i64 %358, 3
  %364 = add nuw nsw i64 %363, %344
  %scevgep834 = getelementptr i8, i8* %call2, i64 %364
  %scevgep834835 = bitcast i8* %scevgep834 to double*
  store double %p_div12.i, double* %scevgep834835, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond956.not = icmp eq i64 %polly.indvar831, %341
  br i1 %exitcond956.not, label %polly.loop_exit830, label %polly.loop_header828, !llvm.loop !107

polly.loop_header836:                             ; preds = %polly.loop_exit818, %polly.loop_exit844
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %smin949 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -1168)
  %365 = shl nsw i64 %polly.indvar839, 5
  %366 = add nsw i64 %smin949, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -32
  %exitcond952.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond952.not, label %init_array.exit, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %367 = mul nsw i64 %polly.indvar845, -32
  %smin1037 = call i64 @llvm.smin.i64(i64 %367, i64 -968)
  %368 = add nsw i64 %smin1037, 1000
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 -968)
  %369 = shl nsw i64 %polly.indvar845, 5
  %370 = add nsw i64 %smin945, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, -32
  %exitcond951.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond951.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %371 = add nuw nsw i64 %polly.indvar851, %365
  %372 = trunc i64 %371 to i32
  %373 = mul nuw nsw i64 %371, 8000
  %min.iters.check1038 = icmp eq i64 %368, 0
  br i1 %min.iters.check1038, label %polly.loop_header854, label %vector.ph1039

vector.ph1039:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1048 = insertelement <4 x i64> poison, i64 %369, i32 0
  %broadcast.splat1049 = shufflevector <4 x i64> %broadcast.splatinsert1048, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1039
  %index1042 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1043, %vector.body1036 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1039 ], [ %vec.ind.next1047, %vector.body1036 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1046, %broadcast.splat1049
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1051, %375
  %377 = add <4 x i32> %376, <i32 1, i32 1, i32 1, i32 1>
  %378 = urem <4 x i32> %377, <i32 1200, i32 1200, i32 1200, i32 1200>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %373
  %384 = getelementptr i8, i8* %call1, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !101, !noalias !108
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1043, %368
  br i1 %386, label %polly.loop_exit856, label %vector.body1036, !llvm.loop !109

polly.loop_exit856:                               ; preds = %vector.body1036, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond950.not = icmp eq i64 %polly.indvar851, %366
  br i1 %exitcond950.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %387 = add nuw nsw i64 %polly.indvar857, %369
  %388 = trunc i64 %387 to i32
  %389 = mul i32 %388, %372
  %390 = add i32 %389, 1
  %391 = urem i32 %390, 1200
  %p_conv.i = sitofp i32 %391 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %392 = shl i64 %387, 3
  %393 = add nuw nsw i64 %392, %373
  %scevgep861 = getelementptr i8, i8* %call1, i64 %393
  %scevgep861862 = bitcast i8* %scevgep861 to double*
  store double %p_div.i, double* %scevgep861862, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond946.not = icmp eq i64 %polly.indvar857, %370
  br i1 %exitcond946.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !110

polly.loop_header258.1:                           ; preds = %polly.loop_header258.1, %polly.loop_exit260
  %polly.indvar261.1 = phi i64 [ 0, %polly.loop_exit260 ], [ %polly.indvar_next262.1, %polly.loop_header258.1 ]
  %394 = add nuw nsw i64 %polly.indvar261.1, %98
  %polly.access.add.Packed_MemRef_call1265.1 = add nuw nsw i64 %polly.indvar261.1, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_270.1, %_p_scalar_267.1
  %395 = mul nuw nsw i64 %394, 8000
  %396 = add nuw nsw i64 %395, %153
  %scevgep271.1 = getelementptr i8, i8* %call2, i64 %396
  %scevgep271272.1 = bitcast i8* %scevgep271.1 to double*
  %_p_scalar_273.1 = load double, double* %scevgep271272.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %397 = shl i64 %394, 3
  %398 = add nuw nsw i64 %397, %126
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %398
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.1 = add nuw nsw i64 %polly.indvar261.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar261.1, %smin.1
  br i1 %exitcond901.1.not, label %polly.loop_exit260.1, label %polly.loop_header258.1

polly.loop_exit260.1:                             ; preds = %polly.loop_header258.1
  %399 = add nuw nsw i64 %129, %153
  %scevgep268.2 = getelementptr i8, i8* %call2, i64 %399
  %scevgep268269.2 = bitcast i8* %scevgep268.2 to double*
  %_p_scalar_270.2 = load double, double* %scevgep268269.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.2 = add nuw nsw i64 %127, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header258.2

polly.loop_header258.2:                           ; preds = %polly.loop_header258.2, %polly.loop_exit260.1
  %polly.indvar261.2 = phi i64 [ 0, %polly.loop_exit260.1 ], [ %polly.indvar_next262.2, %polly.loop_header258.2 ]
  %400 = add nuw nsw i64 %polly.indvar261.2, %98
  %polly.access.add.Packed_MemRef_call1265.2 = add nuw nsw i64 %polly.indvar261.2, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  %_p_scalar_267.2 = load double, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_270.2, %_p_scalar_267.2
  %401 = mul nuw nsw i64 %400, 8000
  %402 = add nuw nsw i64 %401, %153
  %scevgep271.2 = getelementptr i8, i8* %call2, i64 %402
  %scevgep271272.2 = bitcast i8* %scevgep271.2 to double*
  %_p_scalar_273.2 = load double, double* %scevgep271272.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %403 = shl i64 %400, 3
  %404 = add nuw nsw i64 %403, %130
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %404
  %scevgep278279.2 = bitcast i8* %scevgep278.2 to double*
  %_p_scalar_280.2 = load double, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_280.2
  store double %p_add42.i118.2, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.2 = add nuw nsw i64 %polly.indvar261.2, 1
  %exitcond901.2.not = icmp eq i64 %polly.indvar261.2, %smin.2
  br i1 %exitcond901.2.not, label %polly.loop_exit260.2, label %polly.loop_header258.2

polly.loop_exit260.2:                             ; preds = %polly.loop_header258.2
  %405 = add nuw nsw i64 %133, %153
  %scevgep268.3 = getelementptr i8, i8* %call2, i64 %405
  %scevgep268269.3 = bitcast i8* %scevgep268.3 to double*
  %_p_scalar_270.3 = load double, double* %scevgep268269.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.3 = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  br label %polly.loop_header258.3

polly.loop_header258.3:                           ; preds = %polly.loop_header258.3, %polly.loop_exit260.2
  %polly.indvar261.3 = phi i64 [ 0, %polly.loop_exit260.2 ], [ %polly.indvar_next262.3, %polly.loop_header258.3 ]
  %406 = add nuw nsw i64 %polly.indvar261.3, %98
  %polly.access.add.Packed_MemRef_call1265.3 = add nuw nsw i64 %polly.indvar261.3, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  %_p_scalar_267.3 = load double, double* %polly.access.Packed_MemRef_call1266.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_270.3, %_p_scalar_267.3
  %407 = mul nuw nsw i64 %406, 8000
  %408 = add nuw nsw i64 %407, %153
  %scevgep271.3 = getelementptr i8, i8* %call2, i64 %408
  %scevgep271272.3 = bitcast i8* %scevgep271.3 to double*
  %_p_scalar_273.3 = load double, double* %scevgep271272.3, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %409 = shl i64 %406, 3
  %410 = add nuw nsw i64 %409, %134
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %410
  %scevgep278279.3 = bitcast i8* %scevgep278.3 to double*
  %_p_scalar_280.3 = load double, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_280.3
  store double %p_add42.i118.3, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.3 = add nuw nsw i64 %polly.indvar261.3, 1
  %exitcond901.3.not = icmp eq i64 %polly.indvar261.3, %smin.3
  br i1 %exitcond901.3.not, label %polly.loop_exit260.3, label %polly.loop_header258.3

polly.loop_exit260.3:                             ; preds = %polly.loop_header258.3
  %411 = add nuw nsw i64 %137, %153
  %scevgep268.4 = getelementptr i8, i8* %call2, i64 %411
  %scevgep268269.4 = bitcast i8* %scevgep268.4 to double*
  %_p_scalar_270.4 = load double, double* %scevgep268269.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.4 = add nuw nsw i64 %135, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.4
  %_p_scalar_277.4 = load double, double* %polly.access.Packed_MemRef_call1276.4, align 8
  br label %polly.loop_header258.4

polly.loop_header258.4:                           ; preds = %polly.loop_header258.4, %polly.loop_exit260.3
  %polly.indvar261.4 = phi i64 [ 0, %polly.loop_exit260.3 ], [ %polly.indvar_next262.4, %polly.loop_header258.4 ]
  %412 = add nuw nsw i64 %polly.indvar261.4, %98
  %polly.access.add.Packed_MemRef_call1265.4 = add nuw nsw i64 %polly.indvar261.4, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.4
  %_p_scalar_267.4 = load double, double* %polly.access.Packed_MemRef_call1266.4, align 8
  %p_mul27.i112.4 = fmul fast double %_p_scalar_270.4, %_p_scalar_267.4
  %413 = mul nuw nsw i64 %412, 8000
  %414 = add nuw nsw i64 %413, %153
  %scevgep271.4 = getelementptr i8, i8* %call2, i64 %414
  %scevgep271272.4 = bitcast i8* %scevgep271.4 to double*
  %_p_scalar_273.4 = load double, double* %scevgep271272.4, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.4 = fmul fast double %_p_scalar_277.4, %_p_scalar_273.4
  %415 = shl i64 %412, 3
  %416 = add nuw nsw i64 %415, %138
  %scevgep278.4 = getelementptr i8, i8* %call, i64 %416
  %scevgep278279.4 = bitcast i8* %scevgep278.4 to double*
  %_p_scalar_280.4 = load double, double* %scevgep278279.4, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_280.4
  store double %p_add42.i118.4, double* %scevgep278279.4, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.4 = add nuw nsw i64 %polly.indvar261.4, 1
  %exitcond901.4.not = icmp eq i64 %polly.indvar261.4, %smin.4
  br i1 %exitcond901.4.not, label %polly.loop_exit260.4, label %polly.loop_header258.4

polly.loop_exit260.4:                             ; preds = %polly.loop_header258.4
  %417 = add nuw nsw i64 %141, %153
  %scevgep268.5 = getelementptr i8, i8* %call2, i64 %417
  %scevgep268269.5 = bitcast i8* %scevgep268.5 to double*
  %_p_scalar_270.5 = load double, double* %scevgep268269.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.5 = add nuw nsw i64 %139, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.5
  %_p_scalar_277.5 = load double, double* %polly.access.Packed_MemRef_call1276.5, align 8
  br label %polly.loop_header258.5

polly.loop_header258.5:                           ; preds = %polly.loop_header258.5, %polly.loop_exit260.4
  %polly.indvar261.5 = phi i64 [ 0, %polly.loop_exit260.4 ], [ %polly.indvar_next262.5, %polly.loop_header258.5 ]
  %418 = add nuw nsw i64 %polly.indvar261.5, %98
  %polly.access.add.Packed_MemRef_call1265.5 = add nuw nsw i64 %polly.indvar261.5, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.5
  %_p_scalar_267.5 = load double, double* %polly.access.Packed_MemRef_call1266.5, align 8
  %p_mul27.i112.5 = fmul fast double %_p_scalar_270.5, %_p_scalar_267.5
  %419 = mul nuw nsw i64 %418, 8000
  %420 = add nuw nsw i64 %419, %153
  %scevgep271.5 = getelementptr i8, i8* %call2, i64 %420
  %scevgep271272.5 = bitcast i8* %scevgep271.5 to double*
  %_p_scalar_273.5 = load double, double* %scevgep271272.5, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.5 = fmul fast double %_p_scalar_277.5, %_p_scalar_273.5
  %421 = shl i64 %418, 3
  %422 = add nuw nsw i64 %421, %142
  %scevgep278.5 = getelementptr i8, i8* %call, i64 %422
  %scevgep278279.5 = bitcast i8* %scevgep278.5 to double*
  %_p_scalar_280.5 = load double, double* %scevgep278279.5, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_280.5
  store double %p_add42.i118.5, double* %scevgep278279.5, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.5 = add nuw nsw i64 %polly.indvar261.5, 1
  %exitcond901.5.not = icmp eq i64 %polly.indvar261.5, %smin.5
  br i1 %exitcond901.5.not, label %polly.loop_exit260.5, label %polly.loop_header258.5

polly.loop_exit260.5:                             ; preds = %polly.loop_header258.5
  %423 = add nuw nsw i64 %145, %153
  %scevgep268.6 = getelementptr i8, i8* %call2, i64 %423
  %scevgep268269.6 = bitcast i8* %scevgep268.6 to double*
  %_p_scalar_270.6 = load double, double* %scevgep268269.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.6 = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.6
  %_p_scalar_277.6 = load double, double* %polly.access.Packed_MemRef_call1276.6, align 8
  br label %polly.loop_header258.6

polly.loop_header258.6:                           ; preds = %polly.loop_header258.6, %polly.loop_exit260.5
  %polly.indvar261.6 = phi i64 [ 0, %polly.loop_exit260.5 ], [ %polly.indvar_next262.6, %polly.loop_header258.6 ]
  %424 = add nuw nsw i64 %polly.indvar261.6, %98
  %polly.access.add.Packed_MemRef_call1265.6 = add nuw nsw i64 %polly.indvar261.6, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.6
  %_p_scalar_267.6 = load double, double* %polly.access.Packed_MemRef_call1266.6, align 8
  %p_mul27.i112.6 = fmul fast double %_p_scalar_270.6, %_p_scalar_267.6
  %425 = mul nuw nsw i64 %424, 8000
  %426 = add nuw nsw i64 %425, %153
  %scevgep271.6 = getelementptr i8, i8* %call2, i64 %426
  %scevgep271272.6 = bitcast i8* %scevgep271.6 to double*
  %_p_scalar_273.6 = load double, double* %scevgep271272.6, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.6 = fmul fast double %_p_scalar_277.6, %_p_scalar_273.6
  %427 = shl i64 %424, 3
  %428 = add nuw nsw i64 %427, %146
  %scevgep278.6 = getelementptr i8, i8* %call, i64 %428
  %scevgep278279.6 = bitcast i8* %scevgep278.6 to double*
  %_p_scalar_280.6 = load double, double* %scevgep278279.6, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_280.6
  store double %p_add42.i118.6, double* %scevgep278279.6, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.6 = add nuw nsw i64 %polly.indvar261.6, 1
  %exitcond901.6.not = icmp eq i64 %polly.indvar261.6, %smin.6
  br i1 %exitcond901.6.not, label %polly.loop_exit260.6, label %polly.loop_header258.6

polly.loop_exit260.6:                             ; preds = %polly.loop_header258.6
  %429 = add nuw nsw i64 %149, %153
  %scevgep268.7 = getelementptr i8, i8* %call2, i64 %429
  %scevgep268269.7 = bitcast i8* %scevgep268.7 to double*
  %_p_scalar_270.7 = load double, double* %scevgep268269.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.7 = add nuw nsw i64 %147, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.7
  %_p_scalar_277.7 = load double, double* %polly.access.Packed_MemRef_call1276.7, align 8
  br label %polly.loop_header258.7

polly.loop_header258.7:                           ; preds = %polly.loop_header258.7, %polly.loop_exit260.6
  %polly.indvar261.7 = phi i64 [ 0, %polly.loop_exit260.6 ], [ %polly.indvar_next262.7, %polly.loop_header258.7 ]
  %430 = add nuw nsw i64 %polly.indvar261.7, %98
  %polly.access.add.Packed_MemRef_call1265.7 = add nuw nsw i64 %polly.indvar261.7, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.7
  %_p_scalar_267.7 = load double, double* %polly.access.Packed_MemRef_call1266.7, align 8
  %p_mul27.i112.7 = fmul fast double %_p_scalar_270.7, %_p_scalar_267.7
  %431 = mul nuw nsw i64 %430, 8000
  %432 = add nuw nsw i64 %431, %153
  %scevgep271.7 = getelementptr i8, i8* %call2, i64 %432
  %scevgep271272.7 = bitcast i8* %scevgep271.7 to double*
  %_p_scalar_273.7 = load double, double* %scevgep271272.7, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.7 = fmul fast double %_p_scalar_277.7, %_p_scalar_273.7
  %433 = shl i64 %430, 3
  %434 = add nuw nsw i64 %433, %150
  %scevgep278.7 = getelementptr i8, i8* %call, i64 %434
  %scevgep278279.7 = bitcast i8* %scevgep278.7 to double*
  %_p_scalar_280.7 = load double, double* %scevgep278279.7, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_280.7
  store double %p_add42.i118.7, double* %scevgep278279.7, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.7 = add nuw nsw i64 %polly.indvar261.7, 1
  %exitcond901.7.not = icmp eq i64 %polly.indvar_next262.7, 8
  br i1 %exitcond901.7.not, label %polly.loop_exit260.7, label %polly.loop_header258.7

polly.loop_exit260.7:                             ; preds = %polly.loop_header258.7
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next250, 20
  br i1 %exitcond903.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header446.1:                           ; preds = %polly.loop_header446.1, %polly.loop_exit448
  %polly.indvar449.1 = phi i64 [ 0, %polly.loop_exit448 ], [ %polly.indvar_next450.1, %polly.loop_header446.1 ]
  %435 = add nuw nsw i64 %polly.indvar449.1, %171
  %polly.access.add.Packed_MemRef_call1286453.1 = add nuw nsw i64 %polly.indvar449.1, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.1
  %_p_scalar_455.1 = load double, double* %polly.access.Packed_MemRef_call1286454.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_458.1, %_p_scalar_455.1
  %436 = mul nuw nsw i64 %435, 8000
  %437 = add nuw nsw i64 %436, %226
  %scevgep459.1 = getelementptr i8, i8* %call2, i64 %437
  %scevgep459460.1 = bitcast i8* %scevgep459.1 to double*
  %_p_scalar_461.1 = load double, double* %scevgep459460.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %438 = shl i64 %435, 3
  %439 = add nuw nsw i64 %438, %199
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %439
  %scevgep466467.1 = bitcast i8* %scevgep466.1 to double*
  %_p_scalar_468.1 = load double, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_468.1
  store double %p_add42.i79.1, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.1 = add nuw nsw i64 %polly.indvar449.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar449.1, %smin917.1
  br i1 %exitcond918.1.not, label %polly.loop_exit448.1, label %polly.loop_header446.1

polly.loop_exit448.1:                             ; preds = %polly.loop_header446.1
  %440 = add nuw nsw i64 %202, %226
  %scevgep456.2 = getelementptr i8, i8* %call2, i64 %440
  %scevgep456457.2 = bitcast i8* %scevgep456.2 to double*
  %_p_scalar_458.2 = load double, double* %scevgep456457.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.2 = add nuw nsw i64 %200, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.2
  %_p_scalar_465.2 = load double, double* %polly.access.Packed_MemRef_call1286464.2, align 8
  br label %polly.loop_header446.2

polly.loop_header446.2:                           ; preds = %polly.loop_header446.2, %polly.loop_exit448.1
  %polly.indvar449.2 = phi i64 [ 0, %polly.loop_exit448.1 ], [ %polly.indvar_next450.2, %polly.loop_header446.2 ]
  %441 = add nuw nsw i64 %polly.indvar449.2, %171
  %polly.access.add.Packed_MemRef_call1286453.2 = add nuw nsw i64 %polly.indvar449.2, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.2
  %_p_scalar_455.2 = load double, double* %polly.access.Packed_MemRef_call1286454.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_458.2, %_p_scalar_455.2
  %442 = mul nuw nsw i64 %441, 8000
  %443 = add nuw nsw i64 %442, %226
  %scevgep459.2 = getelementptr i8, i8* %call2, i64 %443
  %scevgep459460.2 = bitcast i8* %scevgep459.2 to double*
  %_p_scalar_461.2 = load double, double* %scevgep459460.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_465.2, %_p_scalar_461.2
  %444 = shl i64 %441, 3
  %445 = add nuw nsw i64 %444, %203
  %scevgep466.2 = getelementptr i8, i8* %call, i64 %445
  %scevgep466467.2 = bitcast i8* %scevgep466.2 to double*
  %_p_scalar_468.2 = load double, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_468.2
  store double %p_add42.i79.2, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.2 = add nuw nsw i64 %polly.indvar449.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar449.2, %smin917.2
  br i1 %exitcond918.2.not, label %polly.loop_exit448.2, label %polly.loop_header446.2

polly.loop_exit448.2:                             ; preds = %polly.loop_header446.2
  %446 = add nuw nsw i64 %206, %226
  %scevgep456.3 = getelementptr i8, i8* %call2, i64 %446
  %scevgep456457.3 = bitcast i8* %scevgep456.3 to double*
  %_p_scalar_458.3 = load double, double* %scevgep456457.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.3 = add nuw nsw i64 %204, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.3
  %_p_scalar_465.3 = load double, double* %polly.access.Packed_MemRef_call1286464.3, align 8
  br label %polly.loop_header446.3

polly.loop_header446.3:                           ; preds = %polly.loop_header446.3, %polly.loop_exit448.2
  %polly.indvar449.3 = phi i64 [ 0, %polly.loop_exit448.2 ], [ %polly.indvar_next450.3, %polly.loop_header446.3 ]
  %447 = add nuw nsw i64 %polly.indvar449.3, %171
  %polly.access.add.Packed_MemRef_call1286453.3 = add nuw nsw i64 %polly.indvar449.3, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.3
  %_p_scalar_455.3 = load double, double* %polly.access.Packed_MemRef_call1286454.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_458.3, %_p_scalar_455.3
  %448 = mul nuw nsw i64 %447, 8000
  %449 = add nuw nsw i64 %448, %226
  %scevgep459.3 = getelementptr i8, i8* %call2, i64 %449
  %scevgep459460.3 = bitcast i8* %scevgep459.3 to double*
  %_p_scalar_461.3 = load double, double* %scevgep459460.3, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.3 = fmul fast double %_p_scalar_465.3, %_p_scalar_461.3
  %450 = shl i64 %447, 3
  %451 = add nuw nsw i64 %450, %207
  %scevgep466.3 = getelementptr i8, i8* %call, i64 %451
  %scevgep466467.3 = bitcast i8* %scevgep466.3 to double*
  %_p_scalar_468.3 = load double, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_468.3
  store double %p_add42.i79.3, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.3 = add nuw nsw i64 %polly.indvar449.3, 1
  %exitcond918.3.not = icmp eq i64 %polly.indvar449.3, %smin917.3
  br i1 %exitcond918.3.not, label %polly.loop_exit448.3, label %polly.loop_header446.3

polly.loop_exit448.3:                             ; preds = %polly.loop_header446.3
  %452 = add nuw nsw i64 %210, %226
  %scevgep456.4 = getelementptr i8, i8* %call2, i64 %452
  %scevgep456457.4 = bitcast i8* %scevgep456.4 to double*
  %_p_scalar_458.4 = load double, double* %scevgep456457.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.4 = add nuw nsw i64 %208, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.4
  %_p_scalar_465.4 = load double, double* %polly.access.Packed_MemRef_call1286464.4, align 8
  br label %polly.loop_header446.4

polly.loop_header446.4:                           ; preds = %polly.loop_header446.4, %polly.loop_exit448.3
  %polly.indvar449.4 = phi i64 [ 0, %polly.loop_exit448.3 ], [ %polly.indvar_next450.4, %polly.loop_header446.4 ]
  %453 = add nuw nsw i64 %polly.indvar449.4, %171
  %polly.access.add.Packed_MemRef_call1286453.4 = add nuw nsw i64 %polly.indvar449.4, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.4 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.4
  %_p_scalar_455.4 = load double, double* %polly.access.Packed_MemRef_call1286454.4, align 8
  %p_mul27.i73.4 = fmul fast double %_p_scalar_458.4, %_p_scalar_455.4
  %454 = mul nuw nsw i64 %453, 8000
  %455 = add nuw nsw i64 %454, %226
  %scevgep459.4 = getelementptr i8, i8* %call2, i64 %455
  %scevgep459460.4 = bitcast i8* %scevgep459.4 to double*
  %_p_scalar_461.4 = load double, double* %scevgep459460.4, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.4 = fmul fast double %_p_scalar_465.4, %_p_scalar_461.4
  %456 = shl i64 %453, 3
  %457 = add nuw nsw i64 %456, %211
  %scevgep466.4 = getelementptr i8, i8* %call, i64 %457
  %scevgep466467.4 = bitcast i8* %scevgep466.4 to double*
  %_p_scalar_468.4 = load double, double* %scevgep466467.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_468.4
  store double %p_add42.i79.4, double* %scevgep466467.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.4 = add nuw nsw i64 %polly.indvar449.4, 1
  %exitcond918.4.not = icmp eq i64 %polly.indvar449.4, %smin917.4
  br i1 %exitcond918.4.not, label %polly.loop_exit448.4, label %polly.loop_header446.4

polly.loop_exit448.4:                             ; preds = %polly.loop_header446.4
  %458 = add nuw nsw i64 %214, %226
  %scevgep456.5 = getelementptr i8, i8* %call2, i64 %458
  %scevgep456457.5 = bitcast i8* %scevgep456.5 to double*
  %_p_scalar_458.5 = load double, double* %scevgep456457.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.5 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.5
  %_p_scalar_465.5 = load double, double* %polly.access.Packed_MemRef_call1286464.5, align 8
  br label %polly.loop_header446.5

polly.loop_header446.5:                           ; preds = %polly.loop_header446.5, %polly.loop_exit448.4
  %polly.indvar449.5 = phi i64 [ 0, %polly.loop_exit448.4 ], [ %polly.indvar_next450.5, %polly.loop_header446.5 ]
  %459 = add nuw nsw i64 %polly.indvar449.5, %171
  %polly.access.add.Packed_MemRef_call1286453.5 = add nuw nsw i64 %polly.indvar449.5, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.5 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.5
  %_p_scalar_455.5 = load double, double* %polly.access.Packed_MemRef_call1286454.5, align 8
  %p_mul27.i73.5 = fmul fast double %_p_scalar_458.5, %_p_scalar_455.5
  %460 = mul nuw nsw i64 %459, 8000
  %461 = add nuw nsw i64 %460, %226
  %scevgep459.5 = getelementptr i8, i8* %call2, i64 %461
  %scevgep459460.5 = bitcast i8* %scevgep459.5 to double*
  %_p_scalar_461.5 = load double, double* %scevgep459460.5, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.5 = fmul fast double %_p_scalar_465.5, %_p_scalar_461.5
  %462 = shl i64 %459, 3
  %463 = add nuw nsw i64 %462, %215
  %scevgep466.5 = getelementptr i8, i8* %call, i64 %463
  %scevgep466467.5 = bitcast i8* %scevgep466.5 to double*
  %_p_scalar_468.5 = load double, double* %scevgep466467.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_468.5
  store double %p_add42.i79.5, double* %scevgep466467.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.5 = add nuw nsw i64 %polly.indvar449.5, 1
  %exitcond918.5.not = icmp eq i64 %polly.indvar449.5, %smin917.5
  br i1 %exitcond918.5.not, label %polly.loop_exit448.5, label %polly.loop_header446.5

polly.loop_exit448.5:                             ; preds = %polly.loop_header446.5
  %464 = add nuw nsw i64 %218, %226
  %scevgep456.6 = getelementptr i8, i8* %call2, i64 %464
  %scevgep456457.6 = bitcast i8* %scevgep456.6 to double*
  %_p_scalar_458.6 = load double, double* %scevgep456457.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.6 = add nuw nsw i64 %216, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.6
  %_p_scalar_465.6 = load double, double* %polly.access.Packed_MemRef_call1286464.6, align 8
  br label %polly.loop_header446.6

polly.loop_header446.6:                           ; preds = %polly.loop_header446.6, %polly.loop_exit448.5
  %polly.indvar449.6 = phi i64 [ 0, %polly.loop_exit448.5 ], [ %polly.indvar_next450.6, %polly.loop_header446.6 ]
  %465 = add nuw nsw i64 %polly.indvar449.6, %171
  %polly.access.add.Packed_MemRef_call1286453.6 = add nuw nsw i64 %polly.indvar449.6, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.6 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.6
  %_p_scalar_455.6 = load double, double* %polly.access.Packed_MemRef_call1286454.6, align 8
  %p_mul27.i73.6 = fmul fast double %_p_scalar_458.6, %_p_scalar_455.6
  %466 = mul nuw nsw i64 %465, 8000
  %467 = add nuw nsw i64 %466, %226
  %scevgep459.6 = getelementptr i8, i8* %call2, i64 %467
  %scevgep459460.6 = bitcast i8* %scevgep459.6 to double*
  %_p_scalar_461.6 = load double, double* %scevgep459460.6, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.6 = fmul fast double %_p_scalar_465.6, %_p_scalar_461.6
  %468 = shl i64 %465, 3
  %469 = add nuw nsw i64 %468, %219
  %scevgep466.6 = getelementptr i8, i8* %call, i64 %469
  %scevgep466467.6 = bitcast i8* %scevgep466.6 to double*
  %_p_scalar_468.6 = load double, double* %scevgep466467.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_468.6
  store double %p_add42.i79.6, double* %scevgep466467.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.6 = add nuw nsw i64 %polly.indvar449.6, 1
  %exitcond918.6.not = icmp eq i64 %polly.indvar449.6, %smin917.6
  br i1 %exitcond918.6.not, label %polly.loop_exit448.6, label %polly.loop_header446.6

polly.loop_exit448.6:                             ; preds = %polly.loop_header446.6
  %470 = add nuw nsw i64 %222, %226
  %scevgep456.7 = getelementptr i8, i8* %call2, i64 %470
  %scevgep456457.7 = bitcast i8* %scevgep456.7 to double*
  %_p_scalar_458.7 = load double, double* %scevgep456457.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.7 = add nuw nsw i64 %220, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.7
  %_p_scalar_465.7 = load double, double* %polly.access.Packed_MemRef_call1286464.7, align 8
  br label %polly.loop_header446.7

polly.loop_header446.7:                           ; preds = %polly.loop_header446.7, %polly.loop_exit448.6
  %polly.indvar449.7 = phi i64 [ 0, %polly.loop_exit448.6 ], [ %polly.indvar_next450.7, %polly.loop_header446.7 ]
  %471 = add nuw nsw i64 %polly.indvar449.7, %171
  %polly.access.add.Packed_MemRef_call1286453.7 = add nuw nsw i64 %polly.indvar449.7, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.7 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.7
  %_p_scalar_455.7 = load double, double* %polly.access.Packed_MemRef_call1286454.7, align 8
  %p_mul27.i73.7 = fmul fast double %_p_scalar_458.7, %_p_scalar_455.7
  %472 = mul nuw nsw i64 %471, 8000
  %473 = add nuw nsw i64 %472, %226
  %scevgep459.7 = getelementptr i8, i8* %call2, i64 %473
  %scevgep459460.7 = bitcast i8* %scevgep459.7 to double*
  %_p_scalar_461.7 = load double, double* %scevgep459460.7, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.7 = fmul fast double %_p_scalar_465.7, %_p_scalar_461.7
  %474 = shl i64 %471, 3
  %475 = add nuw nsw i64 %474, %223
  %scevgep466.7 = getelementptr i8, i8* %call, i64 %475
  %scevgep466467.7 = bitcast i8* %scevgep466.7 to double*
  %_p_scalar_468.7 = load double, double* %scevgep466467.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_468.7
  store double %p_add42.i79.7, double* %scevgep466467.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.7 = add nuw nsw i64 %polly.indvar449.7, 1
  %exitcond918.7.not = icmp eq i64 %polly.indvar_next450.7, 8
  br i1 %exitcond918.7.not, label %polly.loop_exit448.7, label %polly.loop_header446.7

polly.loop_exit448.7:                             ; preds = %polly.loop_header446.7
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next438, 20
  br i1 %exitcond920.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_exit636
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_exit636 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %476 = add nuw nsw i64 %polly.indvar637.1, %244
  %polly.access.add.Packed_MemRef_call1474641.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call1474642.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_646.1, %_p_scalar_643.1
  %477 = mul nuw nsw i64 %476, 8000
  %478 = add nuw nsw i64 %477, %299
  %scevgep647.1 = getelementptr i8, i8* %call2, i64 %478
  %scevgep647648.1 = bitcast i8* %scevgep647.1 to double*
  %_p_scalar_649.1 = load double, double* %scevgep647648.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %479 = shl i64 %476, 3
  %480 = add nuw nsw i64 %479, %272
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %480
  %scevgep654655.1 = bitcast i8* %scevgep654.1 to double*
  %_p_scalar_656.1 = load double, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_656.1
  store double %p_add42.i.1, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond935.1.not = icmp eq i64 %polly.indvar637.1, %smin934.1
  br i1 %exitcond935.1.not, label %polly.loop_exit636.1, label %polly.loop_header634.1

polly.loop_exit636.1:                             ; preds = %polly.loop_header634.1
  %481 = add nuw nsw i64 %275, %299
  %scevgep644.2 = getelementptr i8, i8* %call2, i64 %481
  %scevgep644645.2 = bitcast i8* %scevgep644.2 to double*
  %_p_scalar_646.2 = load double, double* %scevgep644645.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.2 = add nuw nsw i64 %273, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.2
  %_p_scalar_653.2 = load double, double* %polly.access.Packed_MemRef_call1474652.2, align 8
  br label %polly.loop_header634.2

polly.loop_header634.2:                           ; preds = %polly.loop_header634.2, %polly.loop_exit636.1
  %polly.indvar637.2 = phi i64 [ 0, %polly.loop_exit636.1 ], [ %polly.indvar_next638.2, %polly.loop_header634.2 ]
  %482 = add nuw nsw i64 %polly.indvar637.2, %244
  %polly.access.add.Packed_MemRef_call1474641.2 = add nuw nsw i64 %polly.indvar637.2, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call1474642.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_646.2, %_p_scalar_643.2
  %483 = mul nuw nsw i64 %482, 8000
  %484 = add nuw nsw i64 %483, %299
  %scevgep647.2 = getelementptr i8, i8* %call2, i64 %484
  %scevgep647648.2 = bitcast i8* %scevgep647.2 to double*
  %_p_scalar_649.2 = load double, double* %scevgep647648.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_653.2, %_p_scalar_649.2
  %485 = shl i64 %482, 3
  %486 = add nuw nsw i64 %485, %276
  %scevgep654.2 = getelementptr i8, i8* %call, i64 %486
  %scevgep654655.2 = bitcast i8* %scevgep654.2 to double*
  %_p_scalar_656.2 = load double, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_656.2
  store double %p_add42.i.2, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.2 = add nuw nsw i64 %polly.indvar637.2, 1
  %exitcond935.2.not = icmp eq i64 %polly.indvar637.2, %smin934.2
  br i1 %exitcond935.2.not, label %polly.loop_exit636.2, label %polly.loop_header634.2

polly.loop_exit636.2:                             ; preds = %polly.loop_header634.2
  %487 = add nuw nsw i64 %279, %299
  %scevgep644.3 = getelementptr i8, i8* %call2, i64 %487
  %scevgep644645.3 = bitcast i8* %scevgep644.3 to double*
  %_p_scalar_646.3 = load double, double* %scevgep644645.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.3 = add nuw nsw i64 %277, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.3
  %_p_scalar_653.3 = load double, double* %polly.access.Packed_MemRef_call1474652.3, align 8
  br label %polly.loop_header634.3

polly.loop_header634.3:                           ; preds = %polly.loop_header634.3, %polly.loop_exit636.2
  %polly.indvar637.3 = phi i64 [ 0, %polly.loop_exit636.2 ], [ %polly.indvar_next638.3, %polly.loop_header634.3 ]
  %488 = add nuw nsw i64 %polly.indvar637.3, %244
  %polly.access.add.Packed_MemRef_call1474641.3 = add nuw nsw i64 %polly.indvar637.3, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.3
  %_p_scalar_643.3 = load double, double* %polly.access.Packed_MemRef_call1474642.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_646.3, %_p_scalar_643.3
  %489 = mul nuw nsw i64 %488, 8000
  %490 = add nuw nsw i64 %489, %299
  %scevgep647.3 = getelementptr i8, i8* %call2, i64 %490
  %scevgep647648.3 = bitcast i8* %scevgep647.3 to double*
  %_p_scalar_649.3 = load double, double* %scevgep647648.3, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.3 = fmul fast double %_p_scalar_653.3, %_p_scalar_649.3
  %491 = shl i64 %488, 3
  %492 = add nuw nsw i64 %491, %280
  %scevgep654.3 = getelementptr i8, i8* %call, i64 %492
  %scevgep654655.3 = bitcast i8* %scevgep654.3 to double*
  %_p_scalar_656.3 = load double, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_656.3
  store double %p_add42.i.3, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.3 = add nuw nsw i64 %polly.indvar637.3, 1
  %exitcond935.3.not = icmp eq i64 %polly.indvar637.3, %smin934.3
  br i1 %exitcond935.3.not, label %polly.loop_exit636.3, label %polly.loop_header634.3

polly.loop_exit636.3:                             ; preds = %polly.loop_header634.3
  %493 = add nuw nsw i64 %283, %299
  %scevgep644.4 = getelementptr i8, i8* %call2, i64 %493
  %scevgep644645.4 = bitcast i8* %scevgep644.4 to double*
  %_p_scalar_646.4 = load double, double* %scevgep644645.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.4 = add nuw nsw i64 %281, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.4
  %_p_scalar_653.4 = load double, double* %polly.access.Packed_MemRef_call1474652.4, align 8
  br label %polly.loop_header634.4

polly.loop_header634.4:                           ; preds = %polly.loop_header634.4, %polly.loop_exit636.3
  %polly.indvar637.4 = phi i64 [ 0, %polly.loop_exit636.3 ], [ %polly.indvar_next638.4, %polly.loop_header634.4 ]
  %494 = add nuw nsw i64 %polly.indvar637.4, %244
  %polly.access.add.Packed_MemRef_call1474641.4 = add nuw nsw i64 %polly.indvar637.4, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.4 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.4
  %_p_scalar_643.4 = load double, double* %polly.access.Packed_MemRef_call1474642.4, align 8
  %p_mul27.i.4 = fmul fast double %_p_scalar_646.4, %_p_scalar_643.4
  %495 = mul nuw nsw i64 %494, 8000
  %496 = add nuw nsw i64 %495, %299
  %scevgep647.4 = getelementptr i8, i8* %call2, i64 %496
  %scevgep647648.4 = bitcast i8* %scevgep647.4 to double*
  %_p_scalar_649.4 = load double, double* %scevgep647648.4, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.4 = fmul fast double %_p_scalar_653.4, %_p_scalar_649.4
  %497 = shl i64 %494, 3
  %498 = add nuw nsw i64 %497, %284
  %scevgep654.4 = getelementptr i8, i8* %call, i64 %498
  %scevgep654655.4 = bitcast i8* %scevgep654.4 to double*
  %_p_scalar_656.4 = load double, double* %scevgep654655.4, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_656.4
  store double %p_add42.i.4, double* %scevgep654655.4, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.4 = add nuw nsw i64 %polly.indvar637.4, 1
  %exitcond935.4.not = icmp eq i64 %polly.indvar637.4, %smin934.4
  br i1 %exitcond935.4.not, label %polly.loop_exit636.4, label %polly.loop_header634.4

polly.loop_exit636.4:                             ; preds = %polly.loop_header634.4
  %499 = add nuw nsw i64 %287, %299
  %scevgep644.5 = getelementptr i8, i8* %call2, i64 %499
  %scevgep644645.5 = bitcast i8* %scevgep644.5 to double*
  %_p_scalar_646.5 = load double, double* %scevgep644645.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.5 = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.5
  %_p_scalar_653.5 = load double, double* %polly.access.Packed_MemRef_call1474652.5, align 8
  br label %polly.loop_header634.5

polly.loop_header634.5:                           ; preds = %polly.loop_header634.5, %polly.loop_exit636.4
  %polly.indvar637.5 = phi i64 [ 0, %polly.loop_exit636.4 ], [ %polly.indvar_next638.5, %polly.loop_header634.5 ]
  %500 = add nuw nsw i64 %polly.indvar637.5, %244
  %polly.access.add.Packed_MemRef_call1474641.5 = add nuw nsw i64 %polly.indvar637.5, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.5 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.5
  %_p_scalar_643.5 = load double, double* %polly.access.Packed_MemRef_call1474642.5, align 8
  %p_mul27.i.5 = fmul fast double %_p_scalar_646.5, %_p_scalar_643.5
  %501 = mul nuw nsw i64 %500, 8000
  %502 = add nuw nsw i64 %501, %299
  %scevgep647.5 = getelementptr i8, i8* %call2, i64 %502
  %scevgep647648.5 = bitcast i8* %scevgep647.5 to double*
  %_p_scalar_649.5 = load double, double* %scevgep647648.5, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.5 = fmul fast double %_p_scalar_653.5, %_p_scalar_649.5
  %503 = shl i64 %500, 3
  %504 = add nuw nsw i64 %503, %288
  %scevgep654.5 = getelementptr i8, i8* %call, i64 %504
  %scevgep654655.5 = bitcast i8* %scevgep654.5 to double*
  %_p_scalar_656.5 = load double, double* %scevgep654655.5, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_656.5
  store double %p_add42.i.5, double* %scevgep654655.5, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.5 = add nuw nsw i64 %polly.indvar637.5, 1
  %exitcond935.5.not = icmp eq i64 %polly.indvar637.5, %smin934.5
  br i1 %exitcond935.5.not, label %polly.loop_exit636.5, label %polly.loop_header634.5

polly.loop_exit636.5:                             ; preds = %polly.loop_header634.5
  %505 = add nuw nsw i64 %291, %299
  %scevgep644.6 = getelementptr i8, i8* %call2, i64 %505
  %scevgep644645.6 = bitcast i8* %scevgep644.6 to double*
  %_p_scalar_646.6 = load double, double* %scevgep644645.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.6 = add nuw nsw i64 %289, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.6
  %_p_scalar_653.6 = load double, double* %polly.access.Packed_MemRef_call1474652.6, align 8
  br label %polly.loop_header634.6

polly.loop_header634.6:                           ; preds = %polly.loop_header634.6, %polly.loop_exit636.5
  %polly.indvar637.6 = phi i64 [ 0, %polly.loop_exit636.5 ], [ %polly.indvar_next638.6, %polly.loop_header634.6 ]
  %506 = add nuw nsw i64 %polly.indvar637.6, %244
  %polly.access.add.Packed_MemRef_call1474641.6 = add nuw nsw i64 %polly.indvar637.6, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.6 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.6
  %_p_scalar_643.6 = load double, double* %polly.access.Packed_MemRef_call1474642.6, align 8
  %p_mul27.i.6 = fmul fast double %_p_scalar_646.6, %_p_scalar_643.6
  %507 = mul nuw nsw i64 %506, 8000
  %508 = add nuw nsw i64 %507, %299
  %scevgep647.6 = getelementptr i8, i8* %call2, i64 %508
  %scevgep647648.6 = bitcast i8* %scevgep647.6 to double*
  %_p_scalar_649.6 = load double, double* %scevgep647648.6, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.6 = fmul fast double %_p_scalar_653.6, %_p_scalar_649.6
  %509 = shl i64 %506, 3
  %510 = add nuw nsw i64 %509, %292
  %scevgep654.6 = getelementptr i8, i8* %call, i64 %510
  %scevgep654655.6 = bitcast i8* %scevgep654.6 to double*
  %_p_scalar_656.6 = load double, double* %scevgep654655.6, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_656.6
  store double %p_add42.i.6, double* %scevgep654655.6, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.6 = add nuw nsw i64 %polly.indvar637.6, 1
  %exitcond935.6.not = icmp eq i64 %polly.indvar637.6, %smin934.6
  br i1 %exitcond935.6.not, label %polly.loop_exit636.6, label %polly.loop_header634.6

polly.loop_exit636.6:                             ; preds = %polly.loop_header634.6
  %511 = add nuw nsw i64 %295, %299
  %scevgep644.7 = getelementptr i8, i8* %call2, i64 %511
  %scevgep644645.7 = bitcast i8* %scevgep644.7 to double*
  %_p_scalar_646.7 = load double, double* %scevgep644645.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.7 = add nuw nsw i64 %293, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.7
  %_p_scalar_653.7 = load double, double* %polly.access.Packed_MemRef_call1474652.7, align 8
  br label %polly.loop_header634.7

polly.loop_header634.7:                           ; preds = %polly.loop_header634.7, %polly.loop_exit636.6
  %polly.indvar637.7 = phi i64 [ 0, %polly.loop_exit636.6 ], [ %polly.indvar_next638.7, %polly.loop_header634.7 ]
  %512 = add nuw nsw i64 %polly.indvar637.7, %244
  %polly.access.add.Packed_MemRef_call1474641.7 = add nuw nsw i64 %polly.indvar637.7, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.7 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.7
  %_p_scalar_643.7 = load double, double* %polly.access.Packed_MemRef_call1474642.7, align 8
  %p_mul27.i.7 = fmul fast double %_p_scalar_646.7, %_p_scalar_643.7
  %513 = mul nuw nsw i64 %512, 8000
  %514 = add nuw nsw i64 %513, %299
  %scevgep647.7 = getelementptr i8, i8* %call2, i64 %514
  %scevgep647648.7 = bitcast i8* %scevgep647.7 to double*
  %_p_scalar_649.7 = load double, double* %scevgep647648.7, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.7 = fmul fast double %_p_scalar_653.7, %_p_scalar_649.7
  %515 = shl i64 %512, 3
  %516 = add nuw nsw i64 %515, %296
  %scevgep654.7 = getelementptr i8, i8* %call, i64 %516
  %scevgep654655.7 = bitcast i8* %scevgep654.7 to double*
  %_p_scalar_656.7 = load double, double* %scevgep654655.7, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_656.7
  store double %p_add42.i.7, double* %scevgep654655.7, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.7 = add nuw nsw i64 %polly.indvar637.7, 1
  %exitcond935.7.not = icmp eq i64 %polly.indvar_next638.7, 8
  br i1 %exitcond935.7.not, label %polly.loop_exit636.7, label %polly.loop_header634.7

polly.loop_exit636.7:                             ; preds = %polly.loop_header634.7
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next626, 20
  br i1 %exitcond937.not, label %polly.loop_exit624, label %polly.loop_header622
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
