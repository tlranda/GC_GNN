; ModuleID = 'syr2k_exhaustive/mmp_all_XL_6169.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_6169.c"
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
  %call758 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1619 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2620 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1619, %call2
  %polly.access.call2639 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2639, %call1
  %2 = or i1 %0, %1
  %polly.access.call659 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call659, %call2
  %4 = icmp ule i8* %polly.access.call2639, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call659, %call1
  %8 = icmp ule i8* %polly.access.call1619, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header732, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv7.i, i64 %index932
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit793
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start437, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %index998
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting438
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %index1021
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1025 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1025, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1022 = add i64 %index1021, 4
  %57 = icmp eq i64 %index.next1022, %n.vec1020
  br i1 %57, label %middle.block1014, label %vector.body1016, !llvm.loop !60

middle.block1014:                                 ; preds = %vector.body1016
  %cmp.n1024 = icmp eq i64 %indvars.iv21.i52, %n.vec1020
  br i1 %cmp.n1024, label %for.inc6.i63, label %for.body3.i60.preheader1067

for.body3.i60.preheader1067:                      ; preds = %for.body3.i60.preheader, %middle.block1014
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1020, %middle.block1014 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1067, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1067 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %index1047
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1051 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1051, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1048 = add i64 %index1047, 4
  %68 = icmp eq i64 %index.next1048, %n.vec1046
  br i1 %68, label %middle.block1040, label %vector.body1042, !llvm.loop !62

middle.block1040:                                 ; preds = %vector.body1042
  %cmp.n1050 = icmp eq i64 %indvars.iv21.i91, %n.vec1046
  br i1 %cmp.n1050, label %for.inc6.i102, label %for.body3.i99.preheader1066

for.body3.i99.preheader1066:                      ; preds = %for.body3.i99.preheader, %middle.block1040
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1046, %middle.block1040 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1066, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1066 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call758, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1065 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1065, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1062 = add i64 %index1061, 4
  %95 = icmp eq i64 %index.next1062, %n.vec1060
  br i1 %95, label %middle.block1052, label %vector.body1054, !llvm.loop !74

middle.block1052:                                 ; preds = %vector.body1054
  %cmp.n1064 = icmp eq i64 %88, %n.vec1060
  br i1 %cmp.n1064, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1052
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1060, %middle.block1052 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1052
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1056 = add i64 %indvar1055, 1
  br i1 %exitcond843.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv833 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next834, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -128
  %99 = shl nuw nsw i64 %polly.indvar202, 1
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -128
  %exitcond841.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond841.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond827.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %100 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %100, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit229 ], [ %indvars.iv833, %polly.loop_exit207 ]
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -1136)
  %101 = add nsw i64 %smin837, 1199
  %smax = call i64 @llvm.smax.i64(i64 %101, i64 0)
  %102 = mul nsw i64 %polly.indvar224, -64
  %polly.loop_guard919 = icmp sgt i64 %102, -1200
  %103 = shl nsw i64 %polly.indvar224, 6
  br i1 %polly.loop_guard919, label %polly.loop_header227.us, label %polly.loop_exit229

polly.loop_header227.us:                          ; preds = %polly.loop_header221, %polly.loop_exit235.loopexit.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_exit235.loopexit.us ], [ 0, %polly.loop_header221 ]
  %104 = shl nuw nsw i64 %polly.indvar230.us, 3
  %scevgep245.us = getelementptr i8, i8* %call1, i64 %104
  %polly.access.mul.Packed_MemRef_call2249.us = mul nuw nsw i64 %polly.indvar230.us, 1200
  br label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_exit241.us, %polly.loop_header227.us
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit241.us ], [ %indvars.iv828, %polly.loop_header227.us ]
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.us ], [ 0, %polly.loop_header227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 127)
  %105 = add nuw nsw i64 %polly.indvar236.us, %103
  %106 = add nsw i64 %105, %98
  %polly.access.add.Packed_MemRef_call2250.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us, %106
  %polly.access.Packed_MemRef_call2251.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us
  %_p_scalar_252.us = load double, double* %polly.access.Packed_MemRef_call2251.us, align 8
  %107 = mul nuw nsw i64 %105, 8000
  %scevgep258.us = getelementptr i8, i8* %scevgep245.us, i64 %107
  %scevgep258259.us = bitcast i8* %scevgep258.us to double*
  %_p_scalar_260.us = load double, double* %scevgep258259.us, align 8, !alias.scope !71, !noalias !78
  %108 = mul nuw nsw i64 %105, 9600
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header233.us
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_header239.us ]
  %109 = add nuw nsw i64 %polly.indvar242.us, %97
  %110 = mul nuw nsw i64 %109, 8000
  %scevgep246.us = getelementptr i8, i8* %scevgep245.us, i64 %110
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us = fmul fast double %_p_scalar_252.us, %_p_scalar_248.us
  %polly.access.add.Packed_MemRef_call2254.us = add nuw nsw i64 %polly.indvar242.us, %polly.access.mul.Packed_MemRef_call2249.us
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_260.us, %_p_scalar_256.us
  %111 = shl i64 %109, 3
  %112 = add nuw nsw i64 %111, %108
  %scevgep261.us = getelementptr i8, i8* %call, i64 %112
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_263.us
  store double %p_add42.i118.us, double* %scevgep261262.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond832.not = icmp eq i64 %polly.indvar242.us, %smin
  br i1 %exitcond832.not, label %polly.loop_exit241.us, label %polly.loop_header239.us

polly.loop_exit241.us:                            ; preds = %polly.loop_header239.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1
  %exitcond838.not = icmp eq i64 %polly.indvar236.us, %smax
  br i1 %exitcond838.not, label %polly.loop_exit235.loopexit.us, label %polly.loop_header233.us

polly.loop_exit235.loopexit.us:                   ; preds = %polly.loop_exit241.us
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next231.us, 1000
  br i1 %exitcond839.not, label %polly.loop_exit229, label %polly.loop_header227.us

polly.loop_exit229:                               ; preds = %polly.loop_exit235.loopexit.us, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 64
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -64
  %exitcond840.not = icmp eq i64 %polly.indvar_next225, 19
  br i1 %exitcond840.not, label %polly.loop_exit223, label %polly.loop_header221

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit392
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1029 = phi i64 [ %indvar.next1030, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %113 = add i64 %indvar1029, 1
  %114 = mul nuw nsw i64 %polly.indvar355, 9600
  %scevgep364 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1031 = icmp ult i64 %113, 4
  br i1 %min.iters.check1031, label %polly.loop_header358.preheader, label %vector.ph1032

vector.ph1032:                                    ; preds = %polly.loop_header352
  %n.vec1034 = and i64 %113, -4
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1036, %vector.body1028 ]
  %115 = shl nuw nsw i64 %index1035, 3
  %116 = getelementptr i8, i8* %scevgep364, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1039 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !79, !noalias !81
  %118 = fmul fast <4 x double> %wide.load1039, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !79, !noalias !81
  %index.next1036 = add i64 %index1035, 4
  %120 = icmp eq i64 %index.next1036, %n.vec1034
  br i1 %120, label %middle.block1026, label %vector.body1028, !llvm.loop !85

middle.block1026:                                 ; preds = %vector.body1028
  %cmp.n1038 = icmp eq i64 %113, %n.vec1034
  br i1 %cmp.n1038, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1026
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1034, %middle.block1026 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1026
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next356, 1200
  %indvar.next1030 = add i64 %indvar1029, 1
  br i1 %exitcond865.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %121
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond864.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !86

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit392
  %indvars.iv854 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %indvars.iv.next855, %polly.loop_exit392 ]
  %indvars.iv844 = phi i64 [ 1200, %polly.loop_header368.preheader ], [ %indvars.iv.next845, %polly.loop_exit392 ]
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header368.preheader ], [ %polly.indvar_next372, %polly.loop_exit392 ]
  %122 = shl nsw i64 %polly.indvar371, 7
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit382
  %123 = mul nsw i64 %polly.indvar371, -128
  %124 = shl nuw nsw i64 %polly.indvar371, 1
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -128
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -128
  %exitcond863.not = icmp eq i64 %polly.indvar_next372, 10
  br i1 %exitcond863.not, label %polly.exiting267, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_exit382, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond847.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %125 = add nuw nsw i64 %polly.indvar383, %122
  %polly.access.mul.call2387 = mul nuw nsw i64 %125, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next384, %indvars.iv844
  br i1 %exitcond846.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_exit376
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit398 ], [ %indvars.iv854, %polly.loop_exit376 ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit398 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ %124, %polly.loop_exit376 ]
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 -1136)
  %126 = add nsw i64 %smin858, 1199
  %smax859 = call i64 @llvm.smax.i64(i64 %126, i64 0)
  %127 = mul nsw i64 %polly.indvar393, -64
  %polly.loop_guard406920 = icmp sgt i64 %127, -1200
  %128 = shl nsw i64 %polly.indvar393, 6
  br i1 %polly.loop_guard406920, label %polly.loop_header396.us, label %polly.loop_exit398

polly.loop_header396.us:                          ; preds = %polly.loop_header390, %polly.loop_exit405.loopexit.us
  %polly.indvar399.us = phi i64 [ %polly.indvar_next400.us, %polly.loop_exit405.loopexit.us ], [ 0, %polly.loop_header390 ]
  %129 = shl nuw nsw i64 %polly.indvar399.us, 3
  %scevgep416.us = getelementptr i8, i8* %call1, i64 %129
  %polly.access.mul.Packed_MemRef_call2269420.us = mul nuw nsw i64 %polly.indvar399.us, 1200
  br label %polly.loop_header403.us

polly.loop_header403.us:                          ; preds = %polly.loop_exit412.us, %polly.loop_header396.us
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit412.us ], [ %indvars.iv848, %polly.loop_header396.us ]
  %polly.indvar407.us = phi i64 [ %polly.indvar_next408.us, %polly.loop_exit412.us ], [ 0, %polly.loop_header396.us ]
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 127)
  %130 = add nuw nsw i64 %polly.indvar407.us, %128
  %131 = add nsw i64 %130, %123
  %polly.access.add.Packed_MemRef_call2269421.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269420.us, %131
  %polly.access.Packed_MemRef_call2269422.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269421.us
  %_p_scalar_423.us = load double, double* %polly.access.Packed_MemRef_call2269422.us, align 8
  %132 = mul nuw nsw i64 %130, 8000
  %scevgep429.us = getelementptr i8, i8* %scevgep416.us, i64 %132
  %scevgep429430.us = bitcast i8* %scevgep429.us to double*
  %_p_scalar_431.us = load double, double* %scevgep429430.us, align 8, !alias.scope !82, !noalias !88
  %133 = mul nuw nsw i64 %130, 9600
  br label %polly.loop_header410.us

polly.loop_header410.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header403.us
  %polly.indvar413.us = phi i64 [ 0, %polly.loop_header403.us ], [ %polly.indvar_next414.us, %polly.loop_header410.us ]
  %134 = add nuw nsw i64 %polly.indvar413.us, %122
  %135 = mul nuw nsw i64 %134, 8000
  %scevgep417.us = getelementptr i8, i8* %scevgep416.us, i64 %135
  %scevgep417418.us = bitcast i8* %scevgep417.us to double*
  %_p_scalar_419.us = load double, double* %scevgep417418.us, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us = fmul fast double %_p_scalar_423.us, %_p_scalar_419.us
  %polly.access.add.Packed_MemRef_call2269425.us = add nuw nsw i64 %polly.indvar413.us, %polly.access.mul.Packed_MemRef_call2269420.us
  %polly.access.Packed_MemRef_call2269426.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269425.us
  %_p_scalar_427.us = load double, double* %polly.access.Packed_MemRef_call2269426.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_431.us, %_p_scalar_427.us
  %136 = shl i64 %134, 3
  %137 = add nuw nsw i64 %136, %133
  %scevgep432.us = getelementptr i8, i8* %call, i64 %137
  %scevgep432433.us = bitcast i8* %scevgep432.us to double*
  %_p_scalar_434.us = load double, double* %scevgep432433.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_434.us
  store double %p_add42.i79.us, double* %scevgep432433.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar413.us, %smin852
  br i1 %exitcond853.not, label %polly.loop_exit412.us, label %polly.loop_header410.us

polly.loop_exit412.us:                            ; preds = %polly.loop_header410.us
  %polly.indvar_next408.us = add nuw nsw i64 %polly.indvar407.us, 1
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1
  %exitcond860.not = icmp eq i64 %polly.indvar407.us, %smax859
  br i1 %exitcond860.not, label %polly.loop_exit405.loopexit.us, label %polly.loop_header403.us

polly.loop_exit405.loopexit.us:                   ; preds = %polly.loop_exit412.us
  %polly.indvar_next400.us = add nuw nsw i64 %polly.indvar399.us, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next400.us, 1000
  br i1 %exitcond861.not, label %polly.loop_exit398, label %polly.loop_header396.us

polly.loop_exit398:                               ; preds = %polly.loop_exit405.loopexit.us, %polly.loop_header390
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 64
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -64
  %exitcond862.not = icmp eq i64 %polly.indvar_next394, 19
  br i1 %exitcond862.not, label %polly.loop_exit392, label %polly.loop_header390

polly.start437:                                   ; preds = %init_array.exit
  %malloccall439 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header523

polly.exiting438:                                 ; preds = %polly.loop_exit563
  tail call void @free(i8* %malloccall439)
  br label %kernel_syr2k.exit

polly.loop_header523:                             ; preds = %polly.loop_exit531, %polly.start437
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit531 ], [ 0, %polly.start437 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit531 ], [ 1, %polly.start437 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar526, 9600
  %scevgep535 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check1005 = icmp ult i64 %138, 4
  br i1 %min.iters.check1005, label %polly.loop_header529.preheader, label %vector.ph1006

vector.ph1006:                                    ; preds = %polly.loop_header523
  %n.vec1008 = and i64 %138, -4
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %140 = shl nuw nsw i64 %index1009, 3
  %141 = getelementptr i8, i8* %scevgep535, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1013 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !89, !noalias !91
  %143 = fmul fast <4 x double> %wide.load1013, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !89, !noalias !91
  %index.next1010 = add i64 %index1009, 4
  %145 = icmp eq i64 %index.next1010, %n.vec1008
  br i1 %145, label %middle.block1002, label %vector.body1004, !llvm.loop !95

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1012 = icmp eq i64 %138, %n.vec1008
  br i1 %cmp.n1012, label %polly.loop_exit531, label %polly.loop_header529.preheader

polly.loop_header529.preheader:                   ; preds = %polly.loop_header523, %middle.block1002
  %polly.indvar532.ph = phi i64 [ 0, %polly.loop_header523 ], [ %n.vec1008, %middle.block1002 ]
  br label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_header529, %middle.block1002
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next527, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond887.not, label %polly.loop_header539.preheader, label %polly.loop_header523

polly.loop_header539.preheader:                   ; preds = %polly.loop_exit531
  %Packed_MemRef_call2440 = bitcast i8* %malloccall439 to double*
  br label %polly.loop_header539

polly.loop_header529:                             ; preds = %polly.loop_header529.preheader, %polly.loop_header529
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_header529 ], [ %polly.indvar532.ph, %polly.loop_header529.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar532, 3
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %146
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_538, 1.200000e+00
  store double %p_mul.i, double* %scevgep536537, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next533, %polly.indvar526
  br i1 %exitcond886.not, label %polly.loop_exit531, label %polly.loop_header529, !llvm.loop !96

polly.loop_header539:                             ; preds = %polly.loop_header539.preheader, %polly.loop_exit563
  %indvars.iv876 = phi i64 [ 0, %polly.loop_header539.preheader ], [ %indvars.iv.next877, %polly.loop_exit563 ]
  %indvars.iv866 = phi i64 [ 1200, %polly.loop_header539.preheader ], [ %indvars.iv.next867, %polly.loop_exit563 ]
  %polly.indvar542 = phi i64 [ 0, %polly.loop_header539.preheader ], [ %polly.indvar_next543, %polly.loop_exit563 ]
  %147 = shl nsw i64 %polly.indvar542, 7
  br label %polly.loop_header545

polly.loop_exit547:                               ; preds = %polly.loop_exit553
  %148 = mul nsw i64 %polly.indvar542, -128
  %149 = shl nuw nsw i64 %polly.indvar542, 1
  br label %polly.loop_header561

polly.loop_exit563:                               ; preds = %polly.loop_exit569
  %polly.indvar_next543 = add nuw nsw i64 %polly.indvar542, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -128
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -128
  %exitcond885.not = icmp eq i64 %polly.indvar_next543, 10
  br i1 %exitcond885.not, label %polly.exiting438, label %polly.loop_header539

polly.loop_header545:                             ; preds = %polly.loop_exit553, %polly.loop_header539
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header539 ], [ %polly.indvar_next549, %polly.loop_exit553 ]
  %polly.access.mul.Packed_MemRef_call2440 = mul nuw nsw i64 %polly.indvar548, 1200
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_header551
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next549, 1000
  br i1 %exitcond869.not, label %polly.loop_exit547, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_header551, %polly.loop_header545
  %polly.indvar554 = phi i64 [ 0, %polly.loop_header545 ], [ %polly.indvar_next555, %polly.loop_header551 ]
  %150 = add nuw nsw i64 %polly.indvar554, %147
  %polly.access.mul.call2558 = mul nuw nsw i64 %150, 1000
  %polly.access.add.call2559 = add nuw nsw i64 %polly.access.mul.call2558, %polly.indvar548
  %polly.access.call2560 = getelementptr double, double* %polly.access.cast.call2620, i64 %polly.access.add.call2559
  %polly.access.call2560.load = load double, double* %polly.access.call2560, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2440 = add nuw nsw i64 %polly.indvar554, %polly.access.mul.Packed_MemRef_call2440
  %polly.access.Packed_MemRef_call2440 = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440
  store double %polly.access.call2560.load, double* %polly.access.Packed_MemRef_call2440, align 8
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next555, %indvars.iv866
  br i1 %exitcond868.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header561:                             ; preds = %polly.loop_exit569, %polly.loop_exit547
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit569 ], [ %indvars.iv876, %polly.loop_exit547 ]
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit569 ], [ 0, %polly.loop_exit547 ]
  %polly.indvar564 = phi i64 [ %polly.indvar_next565, %polly.loop_exit569 ], [ %149, %polly.loop_exit547 ]
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -1136)
  %151 = add nsw i64 %smin880, 1199
  %smax881 = call i64 @llvm.smax.i64(i64 %151, i64 0)
  %152 = mul nsw i64 %polly.indvar564, -64
  %polly.loop_guard577921 = icmp sgt i64 %152, -1200
  %153 = shl nsw i64 %polly.indvar564, 6
  br i1 %polly.loop_guard577921, label %polly.loop_header567.us, label %polly.loop_exit569

polly.loop_header567.us:                          ; preds = %polly.loop_header561, %polly.loop_exit576.loopexit.us
  %polly.indvar570.us = phi i64 [ %polly.indvar_next571.us, %polly.loop_exit576.loopexit.us ], [ 0, %polly.loop_header561 ]
  %154 = shl nuw nsw i64 %polly.indvar570.us, 3
  %scevgep587.us = getelementptr i8, i8* %call1, i64 %154
  %polly.access.mul.Packed_MemRef_call2440591.us = mul nuw nsw i64 %polly.indvar570.us, 1200
  br label %polly.loop_header574.us

polly.loop_header574.us:                          ; preds = %polly.loop_exit583.us, %polly.loop_header567.us
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit583.us ], [ %indvars.iv870, %polly.loop_header567.us ]
  %polly.indvar578.us = phi i64 [ %polly.indvar_next579.us, %polly.loop_exit583.us ], [ 0, %polly.loop_header567.us ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 127)
  %155 = add nuw nsw i64 %polly.indvar578.us, %153
  %156 = add nsw i64 %155, %148
  %polly.access.add.Packed_MemRef_call2440592.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2440591.us, %156
  %polly.access.Packed_MemRef_call2440593.us = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440592.us
  %_p_scalar_594.us = load double, double* %polly.access.Packed_MemRef_call2440593.us, align 8
  %157 = mul nuw nsw i64 %155, 8000
  %scevgep600.us = getelementptr i8, i8* %scevgep587.us, i64 %157
  %scevgep600601.us = bitcast i8* %scevgep600.us to double*
  %_p_scalar_602.us = load double, double* %scevgep600601.us, align 8, !alias.scope !92, !noalias !98
  %158 = mul nuw nsw i64 %155, 9600
  br label %polly.loop_header581.us

polly.loop_header581.us:                          ; preds = %polly.loop_header581.us, %polly.loop_header574.us
  %polly.indvar584.us = phi i64 [ 0, %polly.loop_header574.us ], [ %polly.indvar_next585.us, %polly.loop_header581.us ]
  %159 = add nuw nsw i64 %polly.indvar584.us, %147
  %160 = mul nuw nsw i64 %159, 8000
  %scevgep588.us = getelementptr i8, i8* %scevgep587.us, i64 %160
  %scevgep588589.us = bitcast i8* %scevgep588.us to double*
  %_p_scalar_590.us = load double, double* %scevgep588589.us, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us = fmul fast double %_p_scalar_594.us, %_p_scalar_590.us
  %polly.access.add.Packed_MemRef_call2440596.us = add nuw nsw i64 %polly.indvar584.us, %polly.access.mul.Packed_MemRef_call2440591.us
  %polly.access.Packed_MemRef_call2440597.us = getelementptr double, double* %Packed_MemRef_call2440, i64 %polly.access.add.Packed_MemRef_call2440596.us
  %_p_scalar_598.us = load double, double* %polly.access.Packed_MemRef_call2440597.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %161 = shl i64 %159, 3
  %162 = add nuw nsw i64 %161, %158
  %scevgep603.us = getelementptr i8, i8* %call, i64 %162
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_605.us
  store double %p_add42.i.us, double* %scevgep603604.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond875.not = icmp eq i64 %polly.indvar584.us, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit583.us, label %polly.loop_header581.us

polly.loop_exit583.us:                            ; preds = %polly.loop_header581.us
  %polly.indvar_next579.us = add nuw nsw i64 %polly.indvar578.us, 1
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1
  %exitcond882.not = icmp eq i64 %polly.indvar578.us, %smax881
  br i1 %exitcond882.not, label %polly.loop_exit576.loopexit.us, label %polly.loop_header574.us

polly.loop_exit576.loopexit.us:                   ; preds = %polly.loop_exit583.us
  %polly.indvar_next571.us = add nuw nsw i64 %polly.indvar570.us, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next571.us, 1000
  br i1 %exitcond883.not, label %polly.loop_exit569, label %polly.loop_header567.us

polly.loop_exit569:                               ; preds = %polly.loop_exit576.loopexit.us, %polly.loop_header561
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 64
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -64
  %exitcond884.not = icmp eq i64 %polly.indvar_next565, 19
  br i1 %exitcond884.not, label %polly.loop_exit563, label %polly.loop_header561

polly.loop_header732:                             ; preds = %entry, %polly.loop_exit740
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit740 ], [ 0, %entry ]
  %polly.indvar735 = phi i64 [ %polly.indvar_next736, %polly.loop_exit740 ], [ 0, %entry ]
  %smin914 = call i64 @llvm.smin.i64(i64 %indvars.iv912, i64 -1168)
  %163 = shl nsw i64 %polly.indvar735, 5
  %164 = add nsw i64 %smin914, 1199
  br label %polly.loop_header738

polly.loop_exit740:                               ; preds = %polly.loop_exit746
  %polly.indvar_next736 = add nuw nsw i64 %polly.indvar735, 1
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -32
  %exitcond917.not = icmp eq i64 %polly.indvar_next736, 38
  br i1 %exitcond917.not, label %polly.loop_header759, label %polly.loop_header732

polly.loop_header738:                             ; preds = %polly.loop_exit746, %polly.loop_header732
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_header732 ]
  %165 = mul nsw i64 %polly.indvar741, -32
  %smin943 = call i64 @llvm.smin.i64(i64 %165, i64 -1168)
  %166 = add nsw i64 %smin943, 1200
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -1168)
  %167 = shl nsw i64 %polly.indvar741, 5
  %168 = add nsw i64 %smin910, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond916.not, label %polly.loop_exit740, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %polly.indvar747 = phi i64 [ 0, %polly.loop_header738 ], [ %polly.indvar_next748, %polly.loop_exit752 ]
  %169 = add nuw nsw i64 %polly.indvar747, %163
  %170 = trunc i64 %169 to i32
  %171 = mul nuw nsw i64 %169, 9600
  %min.iters.check = icmp eq i64 %166, 0
  br i1 %min.iters.check, label %polly.loop_header750, label %vector.ph944

vector.ph944:                                     ; preds = %polly.loop_header744
  %broadcast.splatinsert951 = insertelement <4 x i64> poison, i64 %167, i32 0
  %broadcast.splat952 = shufflevector <4 x i64> %broadcast.splatinsert951, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph944
  %index945 = phi i64 [ 0, %vector.ph944 ], [ %index.next946, %vector.body942 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph944 ], [ %vec.ind.next950, %vector.body942 ]
  %172 = add nuw nsw <4 x i64> %vec.ind949, %broadcast.splat952
  %173 = trunc <4 x i64> %172 to <4 x i32>
  %174 = mul <4 x i32> %broadcast.splat954, %173
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 1200, i32 1200, i32 1200, i32 1200>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %179 = extractelement <4 x i64> %172, i32 0
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %171
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %178, <4 x double>* %183, align 8, !alias.scope !99, !noalias !101
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %184 = icmp eq i64 %index.next946, %166
  br i1 %184, label %polly.loop_exit752, label %vector.body942, !llvm.loop !104

polly.loop_exit752:                               ; preds = %vector.body942, %polly.loop_header750
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %exitcond915.not = icmp eq i64 %polly.indvar747, %164
  br i1 %exitcond915.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_header744, %polly.loop_header750
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_header750 ], [ 0, %polly.loop_header744 ]
  %185 = add nuw nsw i64 %polly.indvar753, %167
  %186 = trunc i64 %185 to i32
  %187 = mul i32 %186, %170
  %188 = add i32 %187, 3
  %189 = urem i32 %188, 1200
  %p_conv31.i = sitofp i32 %189 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %190 = shl i64 %185, 3
  %191 = add nuw nsw i64 %190, %171
  %scevgep756 = getelementptr i8, i8* %call, i64 %191
  %scevgep756757 = bitcast i8* %scevgep756 to double*
  store double %p_div33.i, double* %scevgep756757, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond911.not = icmp eq i64 %polly.indvar753, %168
  br i1 %exitcond911.not, label %polly.loop_exit752, label %polly.loop_header750, !llvm.loop !105

polly.loop_header759:                             ; preds = %polly.loop_exit740, %polly.loop_exit767
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_exit767 ], [ 0, %polly.loop_exit740 ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %192 = shl nsw i64 %polly.indvar762, 5
  %193 = add nsw i64 %smin904, 1199
  br label %polly.loop_header765

polly.loop_exit767:                               ; preds = %polly.loop_exit773
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next763, 38
  br i1 %exitcond907.not, label %polly.loop_header785, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_exit773, %polly.loop_header759
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_header759 ]
  %194 = mul nsw i64 %polly.indvar768, -32
  %smin958 = call i64 @llvm.smin.i64(i64 %194, i64 -968)
  %195 = add nsw i64 %smin958, 1000
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -968)
  %196 = shl nsw i64 %polly.indvar768, 5
  %197 = add nsw i64 %smin900, 999
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next769, 32
  br i1 %exitcond906.not, label %polly.loop_exit767, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %polly.indvar774 = phi i64 [ 0, %polly.loop_header765 ], [ %polly.indvar_next775, %polly.loop_exit779 ]
  %198 = add nuw nsw i64 %polly.indvar774, %192
  %199 = trunc i64 %198 to i32
  %200 = mul nuw nsw i64 %198, 8000
  %min.iters.check959 = icmp eq i64 %195, 0
  br i1 %min.iters.check959, label %polly.loop_header777, label %vector.ph960

vector.ph960:                                     ; preds = %polly.loop_header771
  %broadcast.splatinsert969 = insertelement <4 x i64> poison, i64 %196, i32 0
  %broadcast.splat970 = shufflevector <4 x i64> %broadcast.splatinsert969, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert971 = insertelement <4 x i32> poison, i32 %199, i32 0
  %broadcast.splat972 = shufflevector <4 x i32> %broadcast.splatinsert971, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph960
  %index963 = phi i64 [ 0, %vector.ph960 ], [ %index.next964, %vector.body957 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph960 ], [ %vec.ind.next968, %vector.body957 ]
  %201 = add nuw nsw <4 x i64> %vec.ind967, %broadcast.splat970
  %202 = trunc <4 x i64> %201 to <4 x i32>
  %203 = mul <4 x i32> %broadcast.splat972, %202
  %204 = add <4 x i32> %203, <i32 2, i32 2, i32 2, i32 2>
  %205 = urem <4 x i32> %204, <i32 1000, i32 1000, i32 1000, i32 1000>
  %206 = sitofp <4 x i32> %205 to <4 x double>
  %207 = fmul fast <4 x double> %206, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %208 = extractelement <4 x i64> %201, i32 0
  %209 = shl i64 %208, 3
  %210 = add nuw nsw i64 %209, %200
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %207, <4 x double>* %212, align 8, !alias.scope !103, !noalias !106
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %213 = icmp eq i64 %index.next964, %195
  br i1 %213, label %polly.loop_exit779, label %vector.body957, !llvm.loop !107

polly.loop_exit779:                               ; preds = %vector.body957, %polly.loop_header777
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %exitcond905.not = icmp eq i64 %polly.indvar774, %193
  br i1 %exitcond905.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_header771, %polly.loop_header777
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_header777 ], [ 0, %polly.loop_header771 ]
  %214 = add nuw nsw i64 %polly.indvar780, %196
  %215 = trunc i64 %214 to i32
  %216 = mul i32 %215, %199
  %217 = add i32 %216, 2
  %218 = urem i32 %217, 1000
  %p_conv10.i = sitofp i32 %218 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %219 = shl i64 %214, 3
  %220 = add nuw nsw i64 %219, %200
  %scevgep783 = getelementptr i8, i8* %call2, i64 %220
  %scevgep783784 = bitcast i8* %scevgep783 to double*
  store double %p_div12.i, double* %scevgep783784, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond901.not = icmp eq i64 %polly.indvar780, %197
  br i1 %exitcond901.not, label %polly.loop_exit779, label %polly.loop_header777, !llvm.loop !108

polly.loop_header785:                             ; preds = %polly.loop_exit767, %polly.loop_exit793
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit767 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -1168)
  %221 = shl nsw i64 %polly.indvar788, 5
  %222 = add nsw i64 %smin894, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond897.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond897.not, label %init_array.exit, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %223 = mul nsw i64 %polly.indvar794, -32
  %smin976 = call i64 @llvm.smin.i64(i64 %223, i64 -968)
  %224 = add nsw i64 %smin976, 1000
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -968)
  %225 = shl nsw i64 %polly.indvar794, 5
  %226 = add nsw i64 %smin890, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond896.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %227 = add nuw nsw i64 %polly.indvar800, %221
  %228 = trunc i64 %227 to i32
  %229 = mul nuw nsw i64 %227, 8000
  %min.iters.check977 = icmp eq i64 %224, 0
  br i1 %min.iters.check977, label %polly.loop_header803, label %vector.ph978

vector.ph978:                                     ; preds = %polly.loop_header797
  %broadcast.splatinsert987 = insertelement <4 x i64> poison, i64 %225, i32 0
  %broadcast.splat988 = shufflevector <4 x i64> %broadcast.splatinsert987, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body975 ]
  %vec.ind985 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph978 ], [ %vec.ind.next986, %vector.body975 ]
  %230 = add nuw nsw <4 x i64> %vec.ind985, %broadcast.splat988
  %231 = trunc <4 x i64> %230 to <4 x i32>
  %232 = mul <4 x i32> %broadcast.splat990, %231
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 1200, i32 1200, i32 1200, i32 1200>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %237 = extractelement <4 x i64> %230, i32 0
  %238 = shl i64 %237, 3
  %239 = add nuw nsw i64 %238, %229
  %240 = getelementptr i8, i8* %call1, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %236, <4 x double>* %241, align 8, !alias.scope !102, !noalias !109
  %index.next982 = add i64 %index981, 4
  %vec.ind.next986 = add <4 x i64> %vec.ind985, <i64 4, i64 4, i64 4, i64 4>
  %242 = icmp eq i64 %index.next982, %224
  br i1 %242, label %polly.loop_exit805, label %vector.body975, !llvm.loop !110

polly.loop_exit805:                               ; preds = %vector.body975, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond895.not = icmp eq i64 %polly.indvar800, %222
  br i1 %exitcond895.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %243 = add nuw nsw i64 %polly.indvar806, %225
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, %228
  %246 = add i32 %245, 1
  %247 = urem i32 %246, 1200
  %p_conv.i = sitofp i32 %247 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %248 = shl i64 %243, 3
  %249 = add nuw nsw i64 %248, %229
  %scevgep810 = getelementptr i8, i8* %call1, i64 %249
  %scevgep810811 = bitcast i8* %scevgep810 to double*
  store double %p_div.i, double* %scevgep810811, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond891.not = icmp eq i64 %polly.indvar806, %226
  br i1 %exitcond891.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !111
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!25 = !{!"llvm.loop.tile.size", i32 128}
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
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 64}
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
