; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2695.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2695.c"
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
  %98 = shl nsw i64 %polly.indvar208, 2
  %99 = mul nsw i64 %polly.indvar208, -4
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 4000
  %100 = or i64 %98, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %100, 1000
  %101 = or i64 %98, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %101, 1000
  %102 = or i64 %98, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %102, 1000
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 4000
  %103 = or i64 %98, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %98, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %98, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %105, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond905.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit248 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %polly.indvar208, %polly.loop_header205 ]
  %106 = shl nsw i64 %polly.indvar214, 2
  %107 = add nsw i64 %106, %99
  %108 = icmp ugt i64 %107, 4
  %109 = select i1 %108, i64 %107, i64 4
  %110 = or i64 %107, 3
  %polly.loop_guard.not = icmp ugt i64 %109, %110
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211 ]
  %111 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %111
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %111
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %111
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %111
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next221.us, 20
  br i1 %exitcond898.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_exit248:                               ; preds = %polly.loop_exit260.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond904.not = icmp eq i64 %polly.indvar_next215, 300
  br i1 %exitcond904.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211 ]
  %112 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %112
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %112
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %112
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %112
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond896.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_header217.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %113 = mul nsw i64 %polly.indvar214, 32000
  %114 = mul nsw i64 %polly.indvar214, 38400
  %indvars.iv.next900 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900, i64 3)
  %115 = or i64 %107, 1
  %116 = or i64 %106, 1
  %117 = mul nuw nsw i64 %116, 8000
  %118 = mul nuw nsw i64 %116, 9600
  %indvars.iv.next900.1 = add nuw nsw i64 %indvars.iv.next900, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.1, i64 3)
  %119 = or i64 %107, 2
  %120 = or i64 %106, 2
  %121 = mul nuw nsw i64 %120, 8000
  %122 = mul nuw nsw i64 %120, 9600
  %123 = or i64 %107, 3
  %124 = or i64 %106, 3
  %125 = mul nuw nsw i64 %124, 8000
  %126 = mul nuw nsw i64 %124, 9600
  br label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %109, %polly.loop_header217 ]
  %127 = add nuw nsw i64 %polly.indvar236, %98
  %polly.access.mul.call1240 = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %112
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %110
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit260.3
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit260.3 ], [ 0, %polly.loop_header246.preheader ]
  %128 = add nuw nsw i64 %polly.indvar249, %97
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar249, 1200
  %129 = shl i64 %128, 3
  %130 = add nuw nsw i64 %113, %129
  %scevgep268 = getelementptr i8, i8* %call2, i64 %130
  %scevgep268269 = bitcast i8* %scevgep268 to double*
  %_p_scalar_270 = load double, double* %scevgep268269, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275 = add nuw nsw i64 %107, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header258

polly.loop_exit260:                               ; preds = %polly.loop_header258
  %131 = add nuw nsw i64 %117, %129
  %scevgep268.1 = getelementptr i8, i8* %call2, i64 %131
  %scevgep268269.1 = bitcast i8* %scevgep268.1 to double*
  %_p_scalar_270.1 = load double, double* %scevgep268269.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.1 = add nuw nsw i64 %115, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header258.1

polly.loop_header258:                             ; preds = %polly.loop_header258, %polly.loop_header246
  %polly.indvar261 = phi i64 [ 0, %polly.loop_header246 ], [ %polly.indvar_next262, %polly.loop_header258 ]
  %132 = add nuw nsw i64 %polly.indvar261, %98
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar261, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call1266, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_270, %_p_scalar_267
  %133 = mul nuw nsw i64 %132, 8000
  %134 = add nuw nsw i64 %133, %129
  %scevgep271 = getelementptr i8, i8* %call2, i64 %134
  %scevgep271272 = bitcast i8* %scevgep271 to double*
  %_p_scalar_273 = load double, double* %scevgep271272, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %135 = shl i64 %132, 3
  %136 = add nuw nsw i64 %135, %114
  %scevgep278 = getelementptr i8, i8* %call, i64 %136
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
  %137 = add i64 %indvar1090, 1
  %138 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %138
  %min.iters.check1092 = icmp ult i64 %137, 4
  br i1 %min.iters.check1092, label %polly.loop_header375.preheader, label %vector.ph1093

vector.ph1093:                                    ; preds = %polly.loop_header369
  %n.vec1095 = and i64 %137, -4
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1097, %vector.body1089 ]
  %139 = shl nuw nsw i64 %index1096, 3
  %140 = getelementptr i8, i8* %scevgep381, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1100 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !78, !noalias !80
  %142 = fmul fast <4 x double> %wide.load1100, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !78, !noalias !80
  %index.next1097 = add i64 %index1096, 4
  %144 = icmp eq i64 %index.next1097, %n.vec1095
  br i1 %144, label %middle.block1087, label %vector.body1089, !llvm.loop !84

middle.block1087:                                 ; preds = %vector.body1089
  %cmp.n1099 = icmp eq i64 %137, %n.vec1095
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
  %145 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %145
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond924.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !85

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_header385.preheader ]
  %146 = mul nuw nsw i64 %polly.indvar388, 20
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next389, 50
  br i1 %exitcond923.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %147 = shl nsw i64 %polly.indvar394, 2
  %148 = mul nsw i64 %polly.indvar394, -4
  %polly.access.mul.call1416 = mul nsw i64 %polly.indvar394, 4000
  %149 = or i64 %147, 1
  %polly.access.mul.call1416.1 = mul nuw nsw i64 %149, 1000
  %150 = or i64 %147, 2
  %polly.access.mul.call1416.2 = mul nuw nsw i64 %150, 1000
  %151 = or i64 %147, 3
  %polly.access.mul.call1416.3 = mul nuw nsw i64 %151, 1000
  %polly.access.mul.call1416.us = mul nsw i64 %polly.indvar394, 4000
  %152 = or i64 %147, 1
  %polly.access.mul.call1416.us.1 = mul nuw nsw i64 %152, 1000
  %153 = or i64 %147, 2
  %polly.access.mul.call1416.us.2 = mul nuw nsw i64 %153, 1000
  %154 = or i64 %147, 3
  %polly.access.mul.call1416.us.3 = mul nuw nsw i64 %154, 1000
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit436
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next395, 300
  br i1 %exitcond922.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit436, %polly.loop_header391
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit436 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit436 ], [ %polly.indvar394, %polly.loop_header391 ]
  %155 = shl nsw i64 %polly.indvar400, 2
  %156 = add nsw i64 %155, %148
  %157 = icmp ugt i64 %156, 4
  %158 = select i1 %157, i64 %156, i64 4
  %159 = or i64 %156, 3
  %polly.loop_guard423.not = icmp ugt i64 %158, %159
  br i1 %polly.loop_guard423.not, label %polly.loop_header403.us, label %polly.loop_header403

polly.loop_header403.us:                          ; preds = %polly.loop_header397, %polly.loop_header403.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header403.us ], [ 0, %polly.loop_header397 ]
  %160 = add nuw nsw i64 %polly.indvar406.us, %146
  %polly.access.mul.Packed_MemRef_call1286.us = mul nuw nsw i64 %polly.indvar406.us, 1200
  %polly.access.add.call1417.us = add nuw nsw i64 %polly.access.mul.call1416.us, %160
  %polly.access.call1418.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us
  %polly.access.call1418.load.us = load double, double* %polly.access.call1418.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286.us = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286.us
  store double %polly.access.call1418.load.us, double* %polly.access.Packed_MemRef_call1286.us, align 8
  %polly.access.add.call1417.us.1 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %160
  %polly.access.call1418.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1
  %polly.access.call1418.load.us.1 = load double, double* %polly.access.call1418.us.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 1
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  store double %polly.access.call1418.load.us.1, double* %polly.access.Packed_MemRef_call1286.us.1, align 8
  %polly.access.add.call1417.us.2 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %160
  %polly.access.call1418.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2
  %polly.access.call1418.load.us.2 = load double, double* %polly.access.call1418.us.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 2
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  store double %polly.access.call1418.load.us.2, double* %polly.access.Packed_MemRef_call1286.us.2, align 8
  %polly.access.add.call1417.us.3 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %160
  %polly.access.call1418.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3
  %polly.access.call1418.load.us.3 = load double, double* %polly.access.call1418.us.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1286.us, 3
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  store double %polly.access.call1418.load.us.3, double* %polly.access.Packed_MemRef_call1286.us.3, align 8
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next407.us, 20
  br i1 %exitcond912.not, label %polly.loop_header434.preheader, label %polly.loop_header403.us

polly.loop_exit436:                               ; preds = %polly.loop_exit448.3
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 4
  %exitcond921.not = icmp eq i64 %polly.indvar_next401, 300
  br i1 %exitcond921.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header403:                             ; preds = %polly.loop_header397, %polly.loop_exit422
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit422 ], [ 0, %polly.loop_header397 ]
  %161 = add nuw nsw i64 %polly.indvar406, %146
  %polly.access.mul.Packed_MemRef_call1286 = mul nuw nsw i64 %polly.indvar406, 1200
  %polly.access.add.call1417 = add nuw nsw i64 %polly.access.mul.call1416, %161
  %polly.access.call1418 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417
  %polly.access.call1418.load = load double, double* %polly.access.call1418, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286
  store double %polly.access.call1418.load, double* %polly.access.Packed_MemRef_call1286, align 8
  %polly.access.add.call1417.1 = add nuw nsw i64 %polly.access.mul.call1416.1, %161
  %polly.access.call1418.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.1
  %polly.access.call1418.load.1 = load double, double* %polly.access.call1418.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.1 = or i64 %polly.access.mul.Packed_MemRef_call1286, 1
  %polly.access.Packed_MemRef_call1286.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.1
  store double %polly.access.call1418.load.1, double* %polly.access.Packed_MemRef_call1286.1, align 8
  %polly.access.add.call1417.2 = add nuw nsw i64 %polly.access.mul.call1416.2, %161
  %polly.access.call1418.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.2
  %polly.access.call1418.load.2 = load double, double* %polly.access.call1418.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.2 = or i64 %polly.access.mul.Packed_MemRef_call1286, 2
  %polly.access.Packed_MemRef_call1286.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.2
  store double %polly.access.call1418.load.2, double* %polly.access.Packed_MemRef_call1286.2, align 8
  %polly.access.add.call1417.3 = add nuw nsw i64 %polly.access.mul.call1416.3, %161
  %polly.access.call1418.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.3
  %polly.access.call1418.load.3 = load double, double* %polly.access.call1418.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.3 = or i64 %polly.access.mul.Packed_MemRef_call1286, 3
  %polly.access.Packed_MemRef_call1286.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.3
  store double %polly.access.call1418.load.3, double* %polly.access.Packed_MemRef_call1286.3, align 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next407, 20
  br i1 %exitcond910.not, label %polly.loop_header434.preheader, label %polly.loop_header403

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit422, %polly.loop_header403.us
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 3)
  %162 = mul nsw i64 %polly.indvar400, 32000
  %163 = mul nsw i64 %polly.indvar400, 38400
  %indvars.iv.next916 = or i64 %indvars.iv913, 1
  %smin917.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916, i64 3)
  %164 = or i64 %156, 1
  %165 = or i64 %155, 1
  %166 = mul nuw nsw i64 %165, 8000
  %167 = mul nuw nsw i64 %165, 9600
  %indvars.iv.next916.1 = add nuw nsw i64 %indvars.iv.next916, 1
  %smin917.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.1, i64 3)
  %168 = or i64 %156, 2
  %169 = or i64 %155, 2
  %170 = mul nuw nsw i64 %169, 8000
  %171 = mul nuw nsw i64 %169, 9600
  %172 = or i64 %156, 3
  %173 = or i64 %155, 3
  %174 = mul nuw nsw i64 %173, 8000
  %175 = mul nuw nsw i64 %173, 9600
  br label %polly.loop_header434

polly.loop_header420:                             ; preds = %polly.loop_header403, %polly.loop_header420
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_header420 ], [ %158, %polly.loop_header403 ]
  %176 = add nuw nsw i64 %polly.indvar424, %147
  %polly.access.mul.call1428 = mul nuw nsw i64 %176, 1000
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %161
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286432 = add nuw nsw i64 %polly.indvar424, %polly.access.mul.Packed_MemRef_call1286
  %polly.access.Packed_MemRef_call1286433 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1286433, align 8
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp ult i64 %polly.indvar424, %159
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit448.3
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_exit448.3 ], [ 0, %polly.loop_header434.preheader ]
  %177 = add nuw nsw i64 %polly.indvar437, %146
  %polly.access.mul.Packed_MemRef_call1286452 = mul nuw nsw i64 %polly.indvar437, 1200
  %178 = shl i64 %177, 3
  %179 = add nuw nsw i64 %162, %178
  %scevgep456 = getelementptr i8, i8* %call2, i64 %179
  %scevgep456457 = bitcast i8* %scevgep456 to double*
  %_p_scalar_458 = load double, double* %scevgep456457, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463 = add nuw nsw i64 %156, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1286464, align 8
  br label %polly.loop_header446

polly.loop_exit448:                               ; preds = %polly.loop_header446
  %180 = add nuw nsw i64 %166, %178
  %scevgep456.1 = getelementptr i8, i8* %call2, i64 %180
  %scevgep456457.1 = bitcast i8* %scevgep456.1 to double*
  %_p_scalar_458.1 = load double, double* %scevgep456457.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.1 = add nuw nsw i64 %164, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1286464.1, align 8
  br label %polly.loop_header446.1

polly.loop_header446:                             ; preds = %polly.loop_header446, %polly.loop_header434
  %polly.indvar449 = phi i64 [ 0, %polly.loop_header434 ], [ %polly.indvar_next450, %polly.loop_header446 ]
  %181 = add nuw nsw i64 %polly.indvar449, %147
  %polly.access.add.Packed_MemRef_call1286453 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453
  %_p_scalar_455 = load double, double* %polly.access.Packed_MemRef_call1286454, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_458, %_p_scalar_455
  %182 = mul nuw nsw i64 %181, 8000
  %183 = add nuw nsw i64 %182, %178
  %scevgep459 = getelementptr i8, i8* %call2, i64 %183
  %scevgep459460 = bitcast i8* %scevgep459 to double*
  %_p_scalar_461 = load double, double* %scevgep459460, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %184 = shl i64 %181, 3
  %185 = add nuw nsw i64 %184, %163
  %scevgep466 = getelementptr i8, i8* %call, i64 %185
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
  %186 = add i64 %indvar, 1
  %187 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %187
  %min.iters.check1066 = icmp ult i64 %186, 4
  br i1 %min.iters.check1066, label %polly.loop_header563.preheader, label %vector.ph1067

vector.ph1067:                                    ; preds = %polly.loop_header557
  %n.vec1069 = and i64 %186, -4
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1067
  %index1070 = phi i64 [ 0, %vector.ph1067 ], [ %index.next1071, %vector.body1065 ]
  %188 = shl nuw nsw i64 %index1070, 3
  %189 = getelementptr i8, i8* %scevgep569, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1074 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !88, !noalias !90
  %191 = fmul fast <4 x double> %wide.load1074, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !88, !noalias !90
  %index.next1071 = add i64 %index1070, 4
  %193 = icmp eq i64 %index.next1071, %n.vec1069
  br i1 %193, label %middle.block1063, label %vector.body1065, !llvm.loop !94

middle.block1063:                                 ; preds = %vector.body1065
  %cmp.n1073 = icmp eq i64 %186, %n.vec1069
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
  %194 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %194
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond941.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ 0, %polly.loop_header573.preheader ]
  %195 = mul nuw nsw i64 %polly.indvar576, 20
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next577, 50
  br i1 %exitcond940.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %196 = shl nsw i64 %polly.indvar582, 2
  %197 = mul nsw i64 %polly.indvar582, -4
  %polly.access.mul.call1604 = mul nsw i64 %polly.indvar582, 4000
  %198 = or i64 %196, 1
  %polly.access.mul.call1604.1 = mul nuw nsw i64 %198, 1000
  %199 = or i64 %196, 2
  %polly.access.mul.call1604.2 = mul nuw nsw i64 %199, 1000
  %200 = or i64 %196, 3
  %polly.access.mul.call1604.3 = mul nuw nsw i64 %200, 1000
  %polly.access.mul.call1604.us = mul nsw i64 %polly.indvar582, 4000
  %201 = or i64 %196, 1
  %polly.access.mul.call1604.us.1 = mul nuw nsw i64 %201, 1000
  %202 = or i64 %196, 2
  %polly.access.mul.call1604.us.2 = mul nuw nsw i64 %202, 1000
  %203 = or i64 %196, 3
  %polly.access.mul.call1604.us.3 = mul nuw nsw i64 %203, 1000
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit624
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next583, 300
  br i1 %exitcond939.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit624, %polly.loop_header579
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit624 ], [ 0, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit624 ], [ %polly.indvar582, %polly.loop_header579 ]
  %204 = shl nsw i64 %polly.indvar588, 2
  %205 = add nsw i64 %204, %197
  %206 = icmp ugt i64 %205, 4
  %207 = select i1 %206, i64 %205, i64 4
  %208 = or i64 %205, 3
  %polly.loop_guard611.not = icmp ugt i64 %207, %208
  br i1 %polly.loop_guard611.not, label %polly.loop_header591.us, label %polly.loop_header591

polly.loop_header591.us:                          ; preds = %polly.loop_header585, %polly.loop_header591.us
  %polly.indvar594.us = phi i64 [ %polly.indvar_next595.us, %polly.loop_header591.us ], [ 0, %polly.loop_header585 ]
  %209 = add nuw nsw i64 %polly.indvar594.us, %195
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar594.us, 1200
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.access.mul.call1604.us, %209
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474.us
  store double %polly.access.call1606.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.access.add.call1605.us.1 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %209
  %polly.access.call1606.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1
  %polly.access.call1606.load.us.1 = load double, double* %polly.access.call1606.us.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 1
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1606.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.access.add.call1605.us.2 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %209
  %polly.access.call1606.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2
  %polly.access.call1606.load.us.2 = load double, double* %polly.access.call1606.us.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 2
  %polly.access.Packed_MemRef_call1474.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.2
  store double %polly.access.call1606.load.us.2, double* %polly.access.Packed_MemRef_call1474.us.2, align 8
  %polly.access.add.call1605.us.3 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %209
  %polly.access.call1606.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3
  %polly.access.call1606.load.us.3 = load double, double* %polly.access.call1606.us.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1474.us, 3
  %polly.access.Packed_MemRef_call1474.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.3
  store double %polly.access.call1606.load.us.3, double* %polly.access.Packed_MemRef_call1474.us.3, align 8
  %polly.indvar_next595.us = add nuw nsw i64 %polly.indvar594.us, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next595.us, 20
  br i1 %exitcond929.not, label %polly.loop_header622.preheader, label %polly.loop_header591.us

polly.loop_exit624:                               ; preds = %polly.loop_exit636.3
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 4
  %exitcond938.not = icmp eq i64 %polly.indvar_next589, 300
  br i1 %exitcond938.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header591:                             ; preds = %polly.loop_header585, %polly.loop_exit610
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit610 ], [ 0, %polly.loop_header585 ]
  %210 = add nuw nsw i64 %polly.indvar594, %195
  %polly.access.mul.Packed_MemRef_call1474 = mul nuw nsw i64 %polly.indvar594, 1200
  %polly.access.add.call1605 = add nuw nsw i64 %polly.access.mul.call1604, %210
  %polly.access.call1606 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605
  %polly.access.call1606.load = load double, double* %polly.access.call1606, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474
  store double %polly.access.call1606.load, double* %polly.access.Packed_MemRef_call1474, align 8
  %polly.access.add.call1605.1 = add nuw nsw i64 %polly.access.mul.call1604.1, %210
  %polly.access.call1606.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.1
  %polly.access.call1606.load.1 = load double, double* %polly.access.call1606.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.1 = or i64 %polly.access.mul.Packed_MemRef_call1474, 1
  %polly.access.Packed_MemRef_call1474.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.1
  store double %polly.access.call1606.load.1, double* %polly.access.Packed_MemRef_call1474.1, align 8
  %polly.access.add.call1605.2 = add nuw nsw i64 %polly.access.mul.call1604.2, %210
  %polly.access.call1606.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.2
  %polly.access.call1606.load.2 = load double, double* %polly.access.call1606.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.2 = or i64 %polly.access.mul.Packed_MemRef_call1474, 2
  %polly.access.Packed_MemRef_call1474.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.2
  store double %polly.access.call1606.load.2, double* %polly.access.Packed_MemRef_call1474.2, align 8
  %polly.access.add.call1605.3 = add nuw nsw i64 %polly.access.mul.call1604.3, %210
  %polly.access.call1606.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.3
  %polly.access.call1606.load.3 = load double, double* %polly.access.call1606.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.3 = or i64 %polly.access.mul.Packed_MemRef_call1474, 3
  %polly.access.Packed_MemRef_call1474.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.3
  store double %polly.access.call1606.load.3, double* %polly.access.Packed_MemRef_call1474.3, align 8
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next595, 20
  br i1 %exitcond927.not, label %polly.loop_header622.preheader, label %polly.loop_header591

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit610, %polly.loop_header591.us
  %smin934 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 3)
  %211 = mul nsw i64 %polly.indvar588, 32000
  %212 = mul nsw i64 %polly.indvar588, 38400
  %indvars.iv.next933 = or i64 %indvars.iv930, 1
  %smin934.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933, i64 3)
  %213 = or i64 %205, 1
  %214 = or i64 %204, 1
  %215 = mul nuw nsw i64 %214, 8000
  %216 = mul nuw nsw i64 %214, 9600
  %indvars.iv.next933.1 = add nuw nsw i64 %indvars.iv.next933, 1
  %smin934.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.1, i64 3)
  %217 = or i64 %205, 2
  %218 = or i64 %204, 2
  %219 = mul nuw nsw i64 %218, 8000
  %220 = mul nuw nsw i64 %218, 9600
  %221 = or i64 %205, 3
  %222 = or i64 %204, 3
  %223 = mul nuw nsw i64 %222, 8000
  %224 = mul nuw nsw i64 %222, 9600
  br label %polly.loop_header622

polly.loop_header608:                             ; preds = %polly.loop_header591, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ %207, %polly.loop_header591 ]
  %225 = add nuw nsw i64 %polly.indvar612, %196
  %polly.access.mul.call1616 = mul nuw nsw i64 %225, 1000
  %polly.access.add.call1617 = add nuw nsw i64 %polly.access.mul.call1616, %210
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474620 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call1474
  %polly.access.Packed_MemRef_call1474621 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1474621, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %polly.loop_cond614.not.not = icmp ult i64 %polly.indvar612, %208
  br i1 %polly.loop_cond614.not.not, label %polly.loop_header608, label %polly.loop_exit610

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit636.3
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit636.3 ], [ 0, %polly.loop_header622.preheader ]
  %226 = add nuw nsw i64 %polly.indvar625, %195
  %polly.access.mul.Packed_MemRef_call1474640 = mul nuw nsw i64 %polly.indvar625, 1200
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %211, %227
  %scevgep644 = getelementptr i8, i8* %call2, i64 %228
  %scevgep644645 = bitcast i8* %scevgep644 to double*
  %_p_scalar_646 = load double, double* %scevgep644645, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1474652, align 8
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_header634
  %229 = add nuw nsw i64 %215, %227
  %scevgep644.1 = getelementptr i8, i8* %call2, i64 %229
  %scevgep644645.1 = bitcast i8* %scevgep644.1 to double*
  %_p_scalar_646.1 = load double, double* %scevgep644645.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.1 = add nuw nsw i64 %213, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1474652.1, align 8
  br label %polly.loop_header634.1

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header622
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %230 = add nuw nsw i64 %polly.indvar637, %196
  %polly.access.add.Packed_MemRef_call1474641 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call1474642, align 8
  %p_mul27.i = fmul fast double %_p_scalar_646, %_p_scalar_643
  %231 = mul nuw nsw i64 %230, 8000
  %232 = add nuw nsw i64 %231, %227
  %scevgep647 = getelementptr i8, i8* %call2, i64 %232
  %scevgep647648 = bitcast i8* %scevgep647 to double*
  %_p_scalar_649 = load double, double* %scevgep647648, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %233 = shl i64 %230, 3
  %234 = add nuw nsw i64 %233, %212
  %scevgep654 = getelementptr i8, i8* %call, i64 %234
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
  %235 = shl nsw i64 %polly.indvar786, 5
  %236 = add nsw i64 %smin969, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -32
  %exitcond972.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond972.not, label %polly.loop_header810, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %237 = mul nsw i64 %polly.indvar792, -32
  %smin1004 = call i64 @llvm.smin.i64(i64 %237, i64 -1168)
  %238 = add nsw i64 %smin1004, 1200
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 -1168)
  %239 = shl nsw i64 %polly.indvar792, 5
  %240 = add nsw i64 %smin965, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond971.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond971.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %polly.indvar798 = phi i64 [ 0, %polly.loop_header789 ], [ %polly.indvar_next799, %polly.loop_exit803 ]
  %241 = add nuw nsw i64 %polly.indvar798, %235
  %242 = trunc i64 %241 to i32
  %243 = mul nuw nsw i64 %241, 9600
  %min.iters.check = icmp eq i64 %238, 0
  br i1 %min.iters.check, label %polly.loop_header801, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header795
  %broadcast.splatinsert1012 = insertelement <4 x i64> poison, i64 %239, i32 0
  %broadcast.splat1013 = shufflevector <4 x i64> %broadcast.splatinsert1012, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1005
  %index1006 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1007, %vector.body1003 ]
  %vec.ind1010 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1005 ], [ %vec.ind.next1011, %vector.body1003 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1010, %broadcast.splat1013
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1015, %245
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 1200, i32 1200, i32 1200, i32 1200>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %252, %243
  %254 = getelementptr i8, i8* %call, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !98, !noalias !100
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1011 = add <4 x i64> %vec.ind1010, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1007, %238
  br i1 %256, label %polly.loop_exit803, label %vector.body1003, !llvm.loop !103

polly.loop_exit803:                               ; preds = %vector.body1003, %polly.loop_header801
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond970.not = icmp eq i64 %polly.indvar798, %236
  br i1 %exitcond970.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_header795, %polly.loop_header801
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_header801 ], [ 0, %polly.loop_header795 ]
  %257 = add nuw nsw i64 %polly.indvar804, %239
  %258 = trunc i64 %257 to i32
  %259 = mul i32 %258, %242
  %260 = add i32 %259, 3
  %261 = urem i32 %260, 1200
  %p_conv31.i = sitofp i32 %261 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %262 = shl i64 %257, 3
  %263 = add nuw nsw i64 %262, %243
  %scevgep807 = getelementptr i8, i8* %call, i64 %263
  %scevgep807808 = bitcast i8* %scevgep807 to double*
  store double %p_div33.i, double* %scevgep807808, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond966.not = icmp eq i64 %polly.indvar804, %240
  br i1 %exitcond966.not, label %polly.loop_exit803, label %polly.loop_header801, !llvm.loop !104

polly.loop_header810:                             ; preds = %polly.loop_exit791, %polly.loop_exit818
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 -1168)
  %264 = shl nsw i64 %polly.indvar813, 5
  %265 = add nsw i64 %smin959, 1199
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -32
  %exitcond962.not = icmp eq i64 %polly.indvar_next814, 38
  br i1 %exitcond962.not, label %polly.loop_header836, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %indvars.iv953 = phi i64 [ %indvars.iv.next954, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %266 = mul nsw i64 %polly.indvar819, -32
  %smin1019 = call i64 @llvm.smin.i64(i64 %266, i64 -968)
  %267 = add nsw i64 %smin1019, 1000
  %smin955 = call i64 @llvm.smin.i64(i64 %indvars.iv953, i64 -968)
  %268 = shl nsw i64 %polly.indvar819, 5
  %269 = add nsw i64 %smin955, 999
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next954 = add nsw i64 %indvars.iv953, -32
  %exitcond961.not = icmp eq i64 %polly.indvar_next820, 32
  br i1 %exitcond961.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %polly.indvar825 = phi i64 [ 0, %polly.loop_header816 ], [ %polly.indvar_next826, %polly.loop_exit830 ]
  %270 = add nuw nsw i64 %polly.indvar825, %264
  %271 = trunc i64 %270 to i32
  %272 = mul nuw nsw i64 %270, 8000
  %min.iters.check1020 = icmp eq i64 %267, 0
  br i1 %min.iters.check1020, label %polly.loop_header828, label %vector.ph1021

vector.ph1021:                                    ; preds = %polly.loop_header822
  %broadcast.splatinsert1030 = insertelement <4 x i64> poison, i64 %268, i32 0
  %broadcast.splat1031 = shufflevector <4 x i64> %broadcast.splatinsert1030, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1021
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1025, %vector.body1018 ]
  %vec.ind1028 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1021 ], [ %vec.ind.next1029, %vector.body1018 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1028, %broadcast.splat1031
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1033, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 1000, i32 1000, i32 1000, i32 1000>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %272
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !102, !noalias !105
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1029 = add <4 x i64> %vec.ind1028, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1025, %267
  br i1 %285, label %polly.loop_exit830, label %vector.body1018, !llvm.loop !106

polly.loop_exit830:                               ; preds = %vector.body1018, %polly.loop_header828
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond960.not = icmp eq i64 %polly.indvar825, %265
  br i1 %exitcond960.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_header822, %polly.loop_header828
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_header828 ], [ 0, %polly.loop_header822 ]
  %286 = add nuw nsw i64 %polly.indvar831, %268
  %287 = trunc i64 %286 to i32
  %288 = mul i32 %287, %271
  %289 = add i32 %288, 2
  %290 = urem i32 %289, 1000
  %p_conv10.i = sitofp i32 %290 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %291 = shl i64 %286, 3
  %292 = add nuw nsw i64 %291, %272
  %scevgep834 = getelementptr i8, i8* %call2, i64 %292
  %scevgep834835 = bitcast i8* %scevgep834 to double*
  store double %p_div12.i, double* %scevgep834835, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond956.not = icmp eq i64 %polly.indvar831, %269
  br i1 %exitcond956.not, label %polly.loop_exit830, label %polly.loop_header828, !llvm.loop !107

polly.loop_header836:                             ; preds = %polly.loop_exit818, %polly.loop_exit844
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %smin949 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -1168)
  %293 = shl nsw i64 %polly.indvar839, 5
  %294 = add nsw i64 %smin949, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -32
  %exitcond952.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond952.not, label %init_array.exit, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %295 = mul nsw i64 %polly.indvar845, -32
  %smin1037 = call i64 @llvm.smin.i64(i64 %295, i64 -968)
  %296 = add nsw i64 %smin1037, 1000
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 -968)
  %297 = shl nsw i64 %polly.indvar845, 5
  %298 = add nsw i64 %smin945, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, -32
  %exitcond951.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond951.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %299 = add nuw nsw i64 %polly.indvar851, %293
  %300 = trunc i64 %299 to i32
  %301 = mul nuw nsw i64 %299, 8000
  %min.iters.check1038 = icmp eq i64 %296, 0
  br i1 %min.iters.check1038, label %polly.loop_header854, label %vector.ph1039

vector.ph1039:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1048 = insertelement <4 x i64> poison, i64 %297, i32 0
  %broadcast.splat1049 = shufflevector <4 x i64> %broadcast.splatinsert1048, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1039
  %index1042 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1043, %vector.body1036 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1039 ], [ %vec.ind.next1047, %vector.body1036 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1046, %broadcast.splat1049
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1051, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 1200, i32 1200, i32 1200, i32 1200>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add nuw nsw i64 %310, %301
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !101, !noalias !108
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1043, %296
  br i1 %314, label %polly.loop_exit856, label %vector.body1036, !llvm.loop !109

polly.loop_exit856:                               ; preds = %vector.body1036, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond950.not = icmp eq i64 %polly.indvar851, %294
  br i1 %exitcond950.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %315 = add nuw nsw i64 %polly.indvar857, %297
  %316 = trunc i64 %315 to i32
  %317 = mul i32 %316, %300
  %318 = add i32 %317, 1
  %319 = urem i32 %318, 1200
  %p_conv.i = sitofp i32 %319 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %320 = shl i64 %315, 3
  %321 = add nuw nsw i64 %320, %301
  %scevgep861 = getelementptr i8, i8* %call1, i64 %321
  %scevgep861862 = bitcast i8* %scevgep861 to double*
  store double %p_div.i, double* %scevgep861862, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond946.not = icmp eq i64 %polly.indvar857, %298
  br i1 %exitcond946.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !110

polly.loop_header258.1:                           ; preds = %polly.loop_header258.1, %polly.loop_exit260
  %polly.indvar261.1 = phi i64 [ 0, %polly.loop_exit260 ], [ %polly.indvar_next262.1, %polly.loop_header258.1 ]
  %322 = add nuw nsw i64 %polly.indvar261.1, %98
  %polly.access.add.Packed_MemRef_call1265.1 = add nuw nsw i64 %polly.indvar261.1, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_270.1, %_p_scalar_267.1
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %129
  %scevgep271.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep271272.1 = bitcast i8* %scevgep271.1 to double*
  %_p_scalar_273.1 = load double, double* %scevgep271272.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %325 = shl i64 %322, 3
  %326 = add nuw nsw i64 %325, %118
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %326
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
  %327 = add nuw nsw i64 %121, %129
  %scevgep268.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep268269.2 = bitcast i8* %scevgep268.2 to double*
  %_p_scalar_270.2 = load double, double* %scevgep268269.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.2 = add nuw nsw i64 %119, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header258.2

polly.loop_header258.2:                           ; preds = %polly.loop_header258.2, %polly.loop_exit260.1
  %polly.indvar261.2 = phi i64 [ 0, %polly.loop_exit260.1 ], [ %polly.indvar_next262.2, %polly.loop_header258.2 ]
  %328 = add nuw nsw i64 %polly.indvar261.2, %98
  %polly.access.add.Packed_MemRef_call1265.2 = add nuw nsw i64 %polly.indvar261.2, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  %_p_scalar_267.2 = load double, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_270.2, %_p_scalar_267.2
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %129
  %scevgep271.2 = getelementptr i8, i8* %call2, i64 %330
  %scevgep271272.2 = bitcast i8* %scevgep271.2 to double*
  %_p_scalar_273.2 = load double, double* %scevgep271272.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %331 = shl i64 %328, 3
  %332 = add nuw nsw i64 %331, %122
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %332
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
  %333 = add nuw nsw i64 %125, %129
  %scevgep268.3 = getelementptr i8, i8* %call2, i64 %333
  %scevgep268269.3 = bitcast i8* %scevgep268.3 to double*
  %_p_scalar_270.3 = load double, double* %scevgep268269.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.3 = add nuw nsw i64 %123, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  br label %polly.loop_header258.3

polly.loop_header258.3:                           ; preds = %polly.loop_header258.3, %polly.loop_exit260.2
  %polly.indvar261.3 = phi i64 [ 0, %polly.loop_exit260.2 ], [ %polly.indvar_next262.3, %polly.loop_header258.3 ]
  %334 = add nuw nsw i64 %polly.indvar261.3, %98
  %polly.access.add.Packed_MemRef_call1265.3 = add nuw nsw i64 %polly.indvar261.3, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  %_p_scalar_267.3 = load double, double* %polly.access.Packed_MemRef_call1266.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_270.3, %_p_scalar_267.3
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %129
  %scevgep271.3 = getelementptr i8, i8* %call2, i64 %336
  %scevgep271272.3 = bitcast i8* %scevgep271.3 to double*
  %_p_scalar_273.3 = load double, double* %scevgep271272.3, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %337 = shl i64 %334, 3
  %338 = add nuw nsw i64 %337, %126
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %338
  %scevgep278279.3 = bitcast i8* %scevgep278.3 to double*
  %_p_scalar_280.3 = load double, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_280.3
  store double %p_add42.i118.3, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.3 = add nuw nsw i64 %polly.indvar261.3, 1
  %exitcond901.3.not = icmp eq i64 %polly.indvar_next262.3, 4
  br i1 %exitcond901.3.not, label %polly.loop_exit260.3, label %polly.loop_header258.3

polly.loop_exit260.3:                             ; preds = %polly.loop_header258.3
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next250, 20
  br i1 %exitcond903.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header446.1:                           ; preds = %polly.loop_header446.1, %polly.loop_exit448
  %polly.indvar449.1 = phi i64 [ 0, %polly.loop_exit448 ], [ %polly.indvar_next450.1, %polly.loop_header446.1 ]
  %339 = add nuw nsw i64 %polly.indvar449.1, %147
  %polly.access.add.Packed_MemRef_call1286453.1 = add nuw nsw i64 %polly.indvar449.1, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.1
  %_p_scalar_455.1 = load double, double* %polly.access.Packed_MemRef_call1286454.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_458.1, %_p_scalar_455.1
  %340 = mul nuw nsw i64 %339, 8000
  %341 = add nuw nsw i64 %340, %178
  %scevgep459.1 = getelementptr i8, i8* %call2, i64 %341
  %scevgep459460.1 = bitcast i8* %scevgep459.1 to double*
  %_p_scalar_461.1 = load double, double* %scevgep459460.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %342 = shl i64 %339, 3
  %343 = add nuw nsw i64 %342, %167
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %343
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
  %344 = add nuw nsw i64 %170, %178
  %scevgep456.2 = getelementptr i8, i8* %call2, i64 %344
  %scevgep456457.2 = bitcast i8* %scevgep456.2 to double*
  %_p_scalar_458.2 = load double, double* %scevgep456457.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.2 = add nuw nsw i64 %168, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.2
  %_p_scalar_465.2 = load double, double* %polly.access.Packed_MemRef_call1286464.2, align 8
  br label %polly.loop_header446.2

polly.loop_header446.2:                           ; preds = %polly.loop_header446.2, %polly.loop_exit448.1
  %polly.indvar449.2 = phi i64 [ 0, %polly.loop_exit448.1 ], [ %polly.indvar_next450.2, %polly.loop_header446.2 ]
  %345 = add nuw nsw i64 %polly.indvar449.2, %147
  %polly.access.add.Packed_MemRef_call1286453.2 = add nuw nsw i64 %polly.indvar449.2, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.2
  %_p_scalar_455.2 = load double, double* %polly.access.Packed_MemRef_call1286454.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_458.2, %_p_scalar_455.2
  %346 = mul nuw nsw i64 %345, 8000
  %347 = add nuw nsw i64 %346, %178
  %scevgep459.2 = getelementptr i8, i8* %call2, i64 %347
  %scevgep459460.2 = bitcast i8* %scevgep459.2 to double*
  %_p_scalar_461.2 = load double, double* %scevgep459460.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_465.2, %_p_scalar_461.2
  %348 = shl i64 %345, 3
  %349 = add nuw nsw i64 %348, %171
  %scevgep466.2 = getelementptr i8, i8* %call, i64 %349
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
  %350 = add nuw nsw i64 %174, %178
  %scevgep456.3 = getelementptr i8, i8* %call2, i64 %350
  %scevgep456457.3 = bitcast i8* %scevgep456.3 to double*
  %_p_scalar_458.3 = load double, double* %scevgep456457.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.3 = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.3
  %_p_scalar_465.3 = load double, double* %polly.access.Packed_MemRef_call1286464.3, align 8
  br label %polly.loop_header446.3

polly.loop_header446.3:                           ; preds = %polly.loop_header446.3, %polly.loop_exit448.2
  %polly.indvar449.3 = phi i64 [ 0, %polly.loop_exit448.2 ], [ %polly.indvar_next450.3, %polly.loop_header446.3 ]
  %351 = add nuw nsw i64 %polly.indvar449.3, %147
  %polly.access.add.Packed_MemRef_call1286453.3 = add nuw nsw i64 %polly.indvar449.3, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.3
  %_p_scalar_455.3 = load double, double* %polly.access.Packed_MemRef_call1286454.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_458.3, %_p_scalar_455.3
  %352 = mul nuw nsw i64 %351, 8000
  %353 = add nuw nsw i64 %352, %178
  %scevgep459.3 = getelementptr i8, i8* %call2, i64 %353
  %scevgep459460.3 = bitcast i8* %scevgep459.3 to double*
  %_p_scalar_461.3 = load double, double* %scevgep459460.3, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.3 = fmul fast double %_p_scalar_465.3, %_p_scalar_461.3
  %354 = shl i64 %351, 3
  %355 = add nuw nsw i64 %354, %175
  %scevgep466.3 = getelementptr i8, i8* %call, i64 %355
  %scevgep466467.3 = bitcast i8* %scevgep466.3 to double*
  %_p_scalar_468.3 = load double, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_468.3
  store double %p_add42.i79.3, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.3 = add nuw nsw i64 %polly.indvar449.3, 1
  %exitcond918.3.not = icmp eq i64 %polly.indvar_next450.3, 4
  br i1 %exitcond918.3.not, label %polly.loop_exit448.3, label %polly.loop_header446.3

polly.loop_exit448.3:                             ; preds = %polly.loop_header446.3
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next438, 20
  br i1 %exitcond920.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_exit636
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_exit636 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %356 = add nuw nsw i64 %polly.indvar637.1, %196
  %polly.access.add.Packed_MemRef_call1474641.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call1474642.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_646.1, %_p_scalar_643.1
  %357 = mul nuw nsw i64 %356, 8000
  %358 = add nuw nsw i64 %357, %227
  %scevgep647.1 = getelementptr i8, i8* %call2, i64 %358
  %scevgep647648.1 = bitcast i8* %scevgep647.1 to double*
  %_p_scalar_649.1 = load double, double* %scevgep647648.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %359 = shl i64 %356, 3
  %360 = add nuw nsw i64 %359, %216
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %360
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
  %361 = add nuw nsw i64 %219, %227
  %scevgep644.2 = getelementptr i8, i8* %call2, i64 %361
  %scevgep644645.2 = bitcast i8* %scevgep644.2 to double*
  %_p_scalar_646.2 = load double, double* %scevgep644645.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.2 = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.2
  %_p_scalar_653.2 = load double, double* %polly.access.Packed_MemRef_call1474652.2, align 8
  br label %polly.loop_header634.2

polly.loop_header634.2:                           ; preds = %polly.loop_header634.2, %polly.loop_exit636.1
  %polly.indvar637.2 = phi i64 [ 0, %polly.loop_exit636.1 ], [ %polly.indvar_next638.2, %polly.loop_header634.2 ]
  %362 = add nuw nsw i64 %polly.indvar637.2, %196
  %polly.access.add.Packed_MemRef_call1474641.2 = add nuw nsw i64 %polly.indvar637.2, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call1474642.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_646.2, %_p_scalar_643.2
  %363 = mul nuw nsw i64 %362, 8000
  %364 = add nuw nsw i64 %363, %227
  %scevgep647.2 = getelementptr i8, i8* %call2, i64 %364
  %scevgep647648.2 = bitcast i8* %scevgep647.2 to double*
  %_p_scalar_649.2 = load double, double* %scevgep647648.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_653.2, %_p_scalar_649.2
  %365 = shl i64 %362, 3
  %366 = add nuw nsw i64 %365, %220
  %scevgep654.2 = getelementptr i8, i8* %call, i64 %366
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
  %367 = add nuw nsw i64 %223, %227
  %scevgep644.3 = getelementptr i8, i8* %call2, i64 %367
  %scevgep644645.3 = bitcast i8* %scevgep644.3 to double*
  %_p_scalar_646.3 = load double, double* %scevgep644645.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.3 = add nuw nsw i64 %221, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.3
  %_p_scalar_653.3 = load double, double* %polly.access.Packed_MemRef_call1474652.3, align 8
  br label %polly.loop_header634.3

polly.loop_header634.3:                           ; preds = %polly.loop_header634.3, %polly.loop_exit636.2
  %polly.indvar637.3 = phi i64 [ 0, %polly.loop_exit636.2 ], [ %polly.indvar_next638.3, %polly.loop_header634.3 ]
  %368 = add nuw nsw i64 %polly.indvar637.3, %196
  %polly.access.add.Packed_MemRef_call1474641.3 = add nuw nsw i64 %polly.indvar637.3, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.3
  %_p_scalar_643.3 = load double, double* %polly.access.Packed_MemRef_call1474642.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_646.3, %_p_scalar_643.3
  %369 = mul nuw nsw i64 %368, 8000
  %370 = add nuw nsw i64 %369, %227
  %scevgep647.3 = getelementptr i8, i8* %call2, i64 %370
  %scevgep647648.3 = bitcast i8* %scevgep647.3 to double*
  %_p_scalar_649.3 = load double, double* %scevgep647648.3, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.3 = fmul fast double %_p_scalar_653.3, %_p_scalar_649.3
  %371 = shl i64 %368, 3
  %372 = add nuw nsw i64 %371, %224
  %scevgep654.3 = getelementptr i8, i8* %call, i64 %372
  %scevgep654655.3 = bitcast i8* %scevgep654.3 to double*
  %_p_scalar_656.3 = load double, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_656.3
  store double %p_add42.i.3, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.3 = add nuw nsw i64 %polly.indvar637.3, 1
  %exitcond935.3.not = icmp eq i64 %polly.indvar_next638.3, 4
  br i1 %exitcond935.3.not, label %polly.loop_exit636.3, label %polly.loop_header634.3

polly.loop_exit636.3:                             ; preds = %polly.loop_header634.3
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
!25 = !{!"llvm.loop.tile.size", i32 4}
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
