; ModuleID = 'syr2k_exhaustive/mmp_all_XL_7257.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_7257.c"
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
  %call766 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1627 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2628 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1627, %call2
  %polly.access.call2647 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2647, %call1
  %2 = or i1 %0, %1
  %polly.access.call667 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call667, %call2
  %4 = icmp ule i8* %polly.access.call2647, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call667, %call1
  %8 = icmp ule i8* %polly.access.call1627, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep927 = getelementptr i8, i8* %call2, i64 %12
  %scevgep926 = getelementptr i8, i8* %call2, i64 %11
  %scevgep925 = getelementptr i8, i8* %call1, i64 %12
  %scevgep924 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep924, %scevgep927
  %bound1 = icmp ult i8* %scevgep926, %scevgep925
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
  br i1 %exitcond18.not.i, label %vector.ph931, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph931:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert938 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat939 = shufflevector <4 x i64> %broadcast.splatinsert938, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph931
  %index932 = phi i64 [ 0, %vector.ph931 ], [ %index.next933, %vector.body930 ]
  %vec.ind936 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph931 ], [ %vec.ind.next937, %vector.body930 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind936, %broadcast.splat939
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index932
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next933 = add i64 %index932, 4
  %vec.ind.next937 = add <4 x i64> %vec.ind936, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next933, 1200
  br i1 %40, label %for.inc41.i, label %vector.body930, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body930
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph931, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check994 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check994, label %for.body3.i46.preheader1068, label %vector.ph995

vector.ph995:                                     ; preds = %for.body3.i46.preheader
  %n.vec997 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next999, %vector.body993 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index998
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next999 = add i64 %index998, 4
  %46 = icmp eq i64 %index.next999, %n.vec997
  br i1 %46, label %middle.block991, label %vector.body993, !llvm.loop !18

middle.block991:                                  ; preds = %vector.body993
  %cmp.n1001 = icmp eq i64 %indvars.iv21.i, %n.vec997
  br i1 %cmp.n1001, label %for.inc6.i, label %for.body3.i46.preheader1068

for.body3.i46.preheader1068:                      ; preds = %for.body3.i46.preheader, %middle.block991
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec997, %middle.block991 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1068, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1068 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block991, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting443
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1017 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1017, label %for.body3.i60.preheader1067, label %vector.ph1018

vector.ph1018:                                    ; preds = %for.body3.i60.preheader
  %n.vec1020 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1016 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1021
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1025 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1025, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1022 = add i64 %index1021, 4
  %57 = icmp eq i64 %index.next1022, %n.vec1020
  br i1 %57, label %middle.block1014, label %vector.body1016, !llvm.loop !55

middle.block1014:                                 ; preds = %vector.body1016
  %cmp.n1024 = icmp eq i64 %indvars.iv21.i52, %n.vec1020
  br i1 %cmp.n1024, label %for.inc6.i63, label %for.body3.i60.preheader1067

for.body3.i60.preheader1067:                      ; preds = %for.body3.i60.preheader, %middle.block1014
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1020, %middle.block1014 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1067, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1067 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1014, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting269
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1043 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1043, label %for.body3.i99.preheader1066, label %vector.ph1044

vector.ph1044:                                    ; preds = %for.body3.i99.preheader
  %n.vec1046 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1044
  %index1047 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1048, %vector.body1042 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1047
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1051 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1051, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1048 = add i64 %index1047, 4
  %68 = icmp eq i64 %index.next1048, %n.vec1046
  br i1 %68, label %middle.block1040, label %vector.body1042, !llvm.loop !57

middle.block1040:                                 ; preds = %vector.body1042
  %cmp.n1050 = icmp eq i64 %indvars.iv21.i91, %n.vec1046
  br i1 %cmp.n1050, label %for.inc6.i102, label %for.body3.i99.preheader1066

for.body3.i99.preheader1066:                      ; preds = %for.body3.i99.preheader, %middle.block1040
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1046, %middle.block1040 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1066, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1066 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1040, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1055 = phi i64 [ %indvar.next1056, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1055, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1057 = icmp ult i64 %88, 4
  br i1 %min.iters.check1057, label %polly.loop_header191.preheader, label %vector.ph1058

vector.ph1058:                                    ; preds = %polly.loop_header
  %n.vec1060 = and i64 %88, -4
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %vector.ph1058
  %index1061 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1062, %vector.body1054 ]
  %90 = shl nuw nsw i64 %index1061, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1065 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1065, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1062 = add i64 %index1061, 4
  %95 = icmp eq i64 %index.next1062, %n.vec1060
  br i1 %95, label %middle.block1052, label %vector.body1054, !llvm.loop !69

middle.block1052:                                 ; preds = %vector.body1054
  %cmp.n1064 = icmp eq i64 %88, %n.vec1060
  br i1 %cmp.n1064, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1052
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1060, %middle.block1052 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1052
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1056 = add i64 %indvar1055, 1
  br i1 %exitcond841.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond840.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond839.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond838.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit223 ], [ 7, %polly.loop_exit207 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv834, 25
  %umin = call i64 @llvm.umin.i64(i64 %97, i64 11)
  %98 = mul nsw i64 %polly.indvar218, -32
  %99 = icmp slt i64 %98, -1168
  %100 = select i1 %99, i64 %98, i64 -1168
  %101 = add nsw i64 %100, 1199
  %102 = shl nsw i64 %polly.indvar218, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 32
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 8
  %exitcond837.not = icmp eq i64 %polly.indvar_next219, 38
  br i1 %exitcond837.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit229 ], [ %indvars.iv827, %polly.loop_header215 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %103 = mul nuw nsw i64 %polly.indvar224, 100
  %104 = add nsw i64 %103, %98
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard.not = icmp sgt i64 %106, %101
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv825, i64 0)
  %107 = add i64 %smax, %indvars.iv829
  %108 = sub nsw i64 %102, %103
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, 100
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -100
  %exitcond836.not = icmp eq i64 %polly.indvar224, %umin
  br i1 %exitcond836.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv831 = phi i64 [ %107, %polly.loop_header227.preheader ], [ %indvars.iv.next832, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %106, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 99)
  %109 = add nsw i64 %polly.indvar230, %108
  %polly.loop_guard243919 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar230, %102
  %111 = mul i64 %110, 8000
  %112 = mul i64 %110, 9600
  br i1 %polly.loop_guard243919, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %113 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %113
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %110
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %111
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %114 = add nuw nsw i64 %polly.indvar244.us, %103
  %115 = mul nuw nsw i64 %114, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %115
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %114, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %116 = shl i64 %114, 3
  %117 = add i64 %116, %112
  %scevgep263.us = getelementptr i8, i8* %call, i64 %117
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond833.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp ult i64 %polly.indvar230, %101
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1029 = phi i64 [ %indvar.next1030, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %118 = add i64 %indvar1029, 1
  %119 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1031 = icmp ult i64 %118, 4
  br i1 %min.iters.check1031, label %polly.loop_header360.preheader, label %vector.ph1032

vector.ph1032:                                    ; preds = %polly.loop_header354
  %n.vec1034 = and i64 %118, -4
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1036, %vector.body1028 ]
  %120 = shl nuw nsw i64 %index1035, 3
  %121 = getelementptr i8, i8* %scevgep366, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1039 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !74, !noalias !76
  %123 = fmul fast <4 x double> %wide.load1039, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !74, !noalias !76
  %index.next1036 = add i64 %index1035, 4
  %125 = icmp eq i64 %index.next1036, %n.vec1034
  br i1 %125, label %middle.block1026, label %vector.body1028, !llvm.loop !80

middle.block1026:                                 ; preds = %vector.body1028
  %cmp.n1038 = icmp eq i64 %118, %n.vec1034
  br i1 %cmp.n1038, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1026
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1034, %middle.block1026 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1026
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1030 = add i64 %indvar1029, 1
  br i1 %exitcond864.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %126
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond863.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 1200
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next374, 1000
  br i1 %exitcond862.not, label %polly.loop_header386, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 1000
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next380, 1200
  br i1 %exitcond861.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header386:                             ; preds = %polly.loop_exit378, %polly.loop_exit395
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit395 ], [ 7, %polly.loop_exit378 ]
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %127 = udiv i64 %indvars.iv856, 25
  %umin858 = call i64 @llvm.umin.i64(i64 %127, i64 11)
  %128 = mul nsw i64 %polly.indvar389, -32
  %129 = icmp slt i64 %128, -1168
  %130 = select i1 %129, i64 %128, i64 -1168
  %131 = add nsw i64 %130, 1199
  %132 = shl nsw i64 %polly.indvar389, 5
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit402
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -32
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 32
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 8
  %exitcond860.not = icmp eq i64 %polly.indvar_next390, 38
  br i1 %exitcond860.not, label %polly.exiting269, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_exit402, %polly.loop_header386
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit402 ], [ %indvars.iv847, %polly.loop_header386 ]
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit402 ], [ %indvars.iv842, %polly.loop_header386 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit402 ], [ 0, %polly.loop_header386 ]
  %133 = mul nuw nsw i64 %polly.indvar396, 100
  %134 = add nsw i64 %133, %128
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard403.not = icmp sgt i64 %136, %131
  br i1 %polly.loop_guard403.not, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header393
  %smax846 = call i64 @llvm.smax.i64(i64 %indvars.iv844, i64 0)
  %137 = add i64 %smax846, %indvars.iv849
  %138 = sub nsw i64 %132, %133
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit409, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, 100
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -100
  %exitcond859.not = icmp eq i64 %polly.indvar396, %umin858
  br i1 %exitcond859.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv851 = phi i64 [ %137, %polly.loop_header400.preheader ], [ %indvars.iv.next852, %polly.loop_exit409 ]
  %polly.indvar404 = phi i64 [ %136, %polly.loop_header400.preheader ], [ %polly.indvar_next405, %polly.loop_exit409 ]
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 99)
  %139 = add nsw i64 %polly.indvar404, %138
  %polly.loop_guard417920 = icmp sgt i64 %139, -1
  %140 = add nuw nsw i64 %polly.indvar404, %132
  %141 = mul i64 %140, 8000
  %142 = mul i64 %140, 9600
  br i1 %polly.loop_guard417920, label %polly.loop_header407.us, label %polly.loop_exit409

polly.loop_header407.us:                          ; preds = %polly.loop_header400, %polly.loop_exit416.loopexit.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.loopexit.us ], [ 0, %polly.loop_header400 ]
  %143 = shl nuw nsw i64 %polly.indvar410.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %143
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar410.us, 1200
  %polly.access.add.Packed_MemRef_call2271426.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %140
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %141
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header407.us
  %polly.indvar418.us = phi i64 [ 0, %polly.loop_header407.us ], [ %polly.indvar_next419.us, %polly.loop_header414.us ]
  %144 = add nuw nsw i64 %polly.indvar418.us, %133
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %145
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %144, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %142
  %scevgep437.us = getelementptr i8, i8* %call, i64 %147
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_439.us
  store double %p_add42.i79.us, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar418.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next411.us, 1000
  br i1 %exitcond855.not, label %polly.loop_exit409, label %polly.loop_header407.us

polly.loop_exit409:                               ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header400
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %polly.loop_cond406.not.not = icmp ult i64 %polly.indvar404, %131
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond406.not.not, label %polly.loop_header400, label %polly.loop_exit402

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1005 = icmp ult i64 %148, 4
  br i1 %min.iters.check1005, label %polly.loop_header534.preheader, label %vector.ph1006

vector.ph1006:                                    ; preds = %polly.loop_header528
  %n.vec1008 = and i64 %148, -4
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %150 = shl nuw nsw i64 %index1009, 3
  %151 = getelementptr i8, i8* %scevgep540, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1013 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !84, !noalias !86
  %153 = fmul fast <4 x double> %wide.load1013, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !84, !noalias !86
  %index.next1010 = add i64 %index1009, 4
  %155 = icmp eq i64 %index.next1010, %n.vec1008
  br i1 %155, label %middle.block1002, label %vector.body1004, !llvm.loop !90

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1012 = icmp eq i64 %148, %n.vec1008
  br i1 %cmp.n1012, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1002
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1008, %middle.block1002 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1002
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond887.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %156
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond886.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !91

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit552
  %polly.indvar547 = phi i64 [ %polly.indvar_next548, %polly.loop_exit552 ], [ 0, %polly.loop_header544.preheader ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar547, 1200
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_header550
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next548, 1000
  br i1 %exitcond885.not, label %polly.loop_header560, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_header550, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_header550 ]
  %polly.access.mul.call2557 = mul nuw nsw i64 %polly.indvar553, 1000
  %polly.access.add.call2558 = add nuw nsw i64 %polly.access.mul.call2557, %polly.indvar547
  %polly.access.call2559 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2558
  %polly.access.call2559.load = load double, double* %polly.access.call2559, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar553, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2559.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next554, 1200
  br i1 %exitcond884.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header560:                             ; preds = %polly.loop_exit552, %polly.loop_exit569
  %indvars.iv879 = phi i64 [ %indvars.iv.next880, %polly.loop_exit569 ], [ 7, %polly.loop_exit552 ]
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %157 = udiv i64 %indvars.iv879, 25
  %umin881 = call i64 @llvm.umin.i64(i64 %157, i64 11)
  %158 = mul nsw i64 %polly.indvar563, -32
  %159 = icmp slt i64 %158, -1168
  %160 = select i1 %159, i64 %158, i64 -1168
  %161 = add nsw i64 %160, 1199
  %162 = shl nsw i64 %polly.indvar563, 5
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit576
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -32
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 32
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 8
  %exitcond883.not = icmp eq i64 %polly.indvar_next564, 38
  br i1 %exitcond883.not, label %polly.exiting443, label %polly.loop_header560

polly.loop_header567:                             ; preds = %polly.loop_exit576, %polly.loop_header560
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit576 ], [ %indvars.iv870, %polly.loop_header560 ]
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit576 ], [ %indvars.iv865, %polly.loop_header560 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit576 ], [ 0, %polly.loop_header560 ]
  %163 = mul nuw nsw i64 %polly.indvar570, 100
  %164 = add nsw i64 %163, %158
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %polly.loop_guard577.not = icmp sgt i64 %166, %161
  br i1 %polly.loop_guard577.not, label %polly.loop_exit576, label %polly.loop_header574.preheader

polly.loop_header574.preheader:                   ; preds = %polly.loop_header567
  %smax869 = call i64 @llvm.smax.i64(i64 %indvars.iv867, i64 0)
  %167 = add i64 %smax869, %indvars.iv872
  %168 = sub nsw i64 %162, %163
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, 100
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -100
  %exitcond882.not = icmp eq i64 %polly.indvar570, %umin881
  br i1 %exitcond882.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit583
  %indvars.iv874 = phi i64 [ %167, %polly.loop_header574.preheader ], [ %indvars.iv.next875, %polly.loop_exit583 ]
  %polly.indvar578 = phi i64 [ %166, %polly.loop_header574.preheader ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv874, i64 99)
  %169 = add nsw i64 %polly.indvar578, %168
  %polly.loop_guard591921 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar578, %162
  %171 = mul i64 %170, 8000
  %172 = mul i64 %170, 9600
  br i1 %polly.loop_guard591921, label %polly.loop_header581.us, label %polly.loop_exit583

polly.loop_header581.us:                          ; preds = %polly.loop_header574, %polly.loop_exit590.loopexit.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.loopexit.us ], [ 0, %polly.loop_header574 ]
  %173 = shl nuw nsw i64 %polly.indvar584.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %173
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  %polly.access.add.Packed_MemRef_call2445600.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %170
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %171
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.us, %polly.loop_header581.us
  %polly.indvar592.us = phi i64 [ 0, %polly.loop_header581.us ], [ %polly.indvar_next593.us, %polly.loop_header588.us ]
  %174 = add nuw nsw i64 %polly.indvar592.us, %163
  %175 = mul nuw nsw i64 %174, 8000
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %175
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %174, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %176 = shl i64 %174, 3
  %177 = add i64 %176, %172
  %scevgep611.us = getelementptr i8, i8* %call, i64 %177
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond877.not = icmp eq i64 %polly.indvar592.us, %smin876
  br i1 %exitcond877.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_header588.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next585.us, 1000
  br i1 %exitcond878.not, label %polly.loop_exit583, label %polly.loop_header581.us

polly.loop_exit583:                               ; preds = %polly.loop_exit590.loopexit.us, %polly.loop_header574
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %polly.loop_cond580.not.not = icmp ult i64 %polly.indvar578, %161
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  br i1 %polly.loop_cond580.not.not, label %polly.loop_header574, label %polly.loop_exit576

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin914 = call i64 @llvm.smin.i64(i64 %indvars.iv912, i64 -1168)
  %178 = shl nsw i64 %polly.indvar743, 5
  %179 = add nsw i64 %smin914, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -32
  %exitcond917.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond917.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %180 = mul nsw i64 %polly.indvar749, -32
  %smin943 = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin943, 1200
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -1168)
  %182 = shl nsw i64 %polly.indvar749, 5
  %183 = add nsw i64 %smin910, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond916.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %184 = add nuw nsw i64 %polly.indvar755, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph944

vector.ph944:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert951 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat952 = shufflevector <4 x i64> %broadcast.splatinsert951, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph944
  %index945 = phi i64 [ 0, %vector.ph944 ], [ %index.next946, %vector.body942 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph944 ], [ %vec.ind.next950, %vector.body942 ]
  %187 = add nuw nsw <4 x i64> %vec.ind949, %broadcast.splat952
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat954, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !94, !noalias !96
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next946, %181
  br i1 %199, label %polly.loop_exit760, label %vector.body942, !llvm.loop !99

polly.loop_exit760:                               ; preds = %vector.body942, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond915.not = icmp eq i64 %polly.indvar755, %179
  br i1 %exitcond915.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %200 = add nuw nsw i64 %polly.indvar761, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep764 = getelementptr i8, i8* %call, i64 %206
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond911.not = icmp eq i64 %polly.indvar761, %183
  br i1 %exitcond911.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !100

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %207 = shl nsw i64 %polly.indvar770, 5
  %208 = add nsw i64 %smin904, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond907.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %209 = mul nsw i64 %polly.indvar776, -32
  %smin958 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin958, 1000
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -968)
  %211 = shl nsw i64 %polly.indvar776, 5
  %212 = add nsw i64 %smin900, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond906.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %213 = add nuw nsw i64 %polly.indvar782, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check959 = icmp eq i64 %210, 0
  br i1 %min.iters.check959, label %polly.loop_header785, label %vector.ph960

vector.ph960:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert969 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat970 = shufflevector <4 x i64> %broadcast.splatinsert969, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next964, %vector.body957 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph960 ], [ %vec.ind.next968, %vector.body957 ]
  %216 = add nuw nsw <4 x i64> %vec.ind967, %broadcast.splat970
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat972, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !98, !noalias !101
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next964, %210
  br i1 %228, label %polly.loop_exit787, label %vector.body957, !llvm.loop !102

polly.loop_exit787:                               ; preds = %vector.body957, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond905.not = icmp eq i64 %polly.indvar782, %208
  br i1 %exitcond905.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %229 = add nuw nsw i64 %polly.indvar788, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep791 = getelementptr i8, i8* %call2, i64 %235
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond901.not = icmp eq i64 %polly.indvar788, %212
  br i1 %exitcond901.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !103

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -1168)
  %236 = shl nsw i64 %polly.indvar796, 5
  %237 = add nsw i64 %smin894, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond897.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond897.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %238 = mul nsw i64 %polly.indvar802, -32
  %smin976 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin976, 1000
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -968)
  %240 = shl nsw i64 %polly.indvar802, 5
  %241 = add nsw i64 %smin890, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond896.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %242 = add nuw nsw i64 %polly.indvar808, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check977 = icmp eq i64 %239, 0
  br i1 %min.iters.check977, label %polly.loop_header811, label %vector.ph978

vector.ph978:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert987 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat988 = shufflevector <4 x i64> %broadcast.splatinsert987, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body975 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph978 ], [ %vec.ind.next986, %vector.body975 ]
  %245 = add nuw nsw <4 x i64> %vec.ind985, %broadcast.splat988
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat990, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !97, !noalias !104
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next982, %239
  br i1 %257, label %polly.loop_exit813, label %vector.body975, !llvm.loop !105

polly.loop_exit813:                               ; preds = %vector.body975, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond895.not = icmp eq i64 %polly.indvar808, %237
  br i1 %exitcond895.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %258 = add nuw nsw i64 %polly.indvar814, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep818 = getelementptr i8, i8* %call1, i64 %264
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond891.not = icmp eq i64 %polly.indvar814, %241
  br i1 %exitcond891.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !106
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 32}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
