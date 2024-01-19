; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7380.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7380.c"
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
  %scevgep925 = getelementptr i8, i8* %call2, i64 %12
  %scevgep924 = getelementptr i8, i8* %call2, i64 %11
  %scevgep923 = getelementptr i8, i8* %call1, i64 %12
  %scevgep922 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep922, %scevgep925
  %bound1 = icmp ult i8* %scevgep924, %scevgep923
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
  br i1 %exitcond18.not.i, label %vector.ph929, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph929:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert936 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat937 = shufflevector <4 x i64> %broadcast.splatinsert936, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph929
  %index930 = phi i64 [ 0, %vector.ph929 ], [ %index.next931, %vector.body928 ]
  %vec.ind934 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph929 ], [ %vec.ind.next935, %vector.body928 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind934, %broadcast.splat937
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index930
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next931 = add i64 %index930, 4
  %vec.ind.next935 = add <4 x i64> %vec.ind934, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next931, 1200
  br i1 %40, label %for.inc41.i, label %vector.body928, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body928
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph929, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check992 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check992, label %for.body3.i46.preheader1066, label %vector.ph993

vector.ph993:                                     ; preds = %for.body3.i46.preheader
  %n.vec995 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next997, %vector.body991 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index996
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next997 = add i64 %index996, 4
  %46 = icmp eq i64 %index.next997, %n.vec995
  br i1 %46, label %middle.block989, label %vector.body991, !llvm.loop !18

middle.block989:                                  ; preds = %vector.body991
  %cmp.n999 = icmp eq i64 %indvars.iv21.i, %n.vec995
  br i1 %cmp.n999, label %for.inc6.i, label %for.body3.i46.preheader1066

for.body3.i46.preheader1066:                      ; preds = %for.body3.i46.preheader, %middle.block989
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec995, %middle.block989 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1066, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1066 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block989, %for.cond1.preheader.i45
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
  %min.iters.check1015 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1015, label %for.body3.i60.preheader1065, label %vector.ph1016

vector.ph1016:                                    ; preds = %for.body3.i60.preheader
  %n.vec1018 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1014 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1019
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1023 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1023, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1020 = add i64 %index1019, 4
  %57 = icmp eq i64 %index.next1020, %n.vec1018
  br i1 %57, label %middle.block1012, label %vector.body1014, !llvm.loop !55

middle.block1012:                                 ; preds = %vector.body1014
  %cmp.n1022 = icmp eq i64 %indvars.iv21.i52, %n.vec1018
  br i1 %cmp.n1022, label %for.inc6.i63, label %for.body3.i60.preheader1065

for.body3.i60.preheader1065:                      ; preds = %for.body3.i60.preheader, %middle.block1012
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1018, %middle.block1012 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1065, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1065 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1012, %for.cond1.preheader.i54
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
  %min.iters.check1041 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1041, label %for.body3.i99.preheader1064, label %vector.ph1042

vector.ph1042:                                    ; preds = %for.body3.i99.preheader
  %n.vec1044 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1042
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1046, %vector.body1040 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1045
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1049 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1049, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1046 = add i64 %index1045, 4
  %68 = icmp eq i64 %index.next1046, %n.vec1044
  br i1 %68, label %middle.block1038, label %vector.body1040, !llvm.loop !57

middle.block1038:                                 ; preds = %vector.body1040
  %cmp.n1048 = icmp eq i64 %indvars.iv21.i91, %n.vec1044
  br i1 %cmp.n1048, label %for.inc6.i102, label %for.body3.i99.preheader1064

for.body3.i99.preheader1064:                      ; preds = %for.body3.i99.preheader, %middle.block1038
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1044, %middle.block1038 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1064, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1064 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1038, %for.cond1.preheader.i93
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
  %indvar1053 = phi i64 [ %indvar.next1054, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1053, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1055 = icmp ult i64 %88, 4
  br i1 %min.iters.check1055, label %polly.loop_header191.preheader, label %vector.ph1056

vector.ph1056:                                    ; preds = %polly.loop_header
  %n.vec1058 = and i64 %88, -4
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1056
  %index1059 = phi i64 [ 0, %vector.ph1056 ], [ %index.next1060, %vector.body1052 ]
  %90 = shl nuw nsw i64 %index1059, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1063 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1063, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1060 = add i64 %index1059, 4
  %95 = icmp eq i64 %index.next1060, %n.vec1058
  br i1 %95, label %middle.block1050, label %vector.body1052, !llvm.loop !69

middle.block1050:                                 ; preds = %vector.body1052
  %cmp.n1062 = icmp eq i64 %88, %n.vec1058
  br i1 %cmp.n1062, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1050
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1058, %middle.block1050 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1050
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1054 = add i64 %indvar1053, 1
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
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit223 ], [ 24, %polly.loop_exit207 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv834, 7
  %98 = mul nsw i64 %polly.indvar218, -50
  %99 = mul nuw nsw i64 %polly.indvar218, 50
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 50
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 25
  %exitcond837.not = icmp eq i64 %polly.indvar_next219, 24
  br i1 %exitcond837.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit229 ], [ %indvars.iv827, %polly.loop_header215 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %100 = shl nsw i64 %polly.indvar224, 8
  %101 = add nsw i64 %100, %98
  %102 = icmp sgt i64 %101, 0
  %103 = select i1 %102, i64 %101, i64 0
  %polly.loop_guard = icmp slt i64 %103, 50
  br i1 %polly.loop_guard, label %polly.loop_header227.preheader, label %polly.loop_exit229

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv825, i64 0)
  %104 = add i64 %smax, %indvars.iv829
  %105 = sub nsw i64 %99, %100
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, 256
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -256
  %exitcond836.not = icmp eq i64 %polly.indvar224, %97
  br i1 %exitcond836.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv831 = phi i64 [ %104, %polly.loop_header227.preheader ], [ %indvars.iv.next832, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %103, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 255)
  %106 = add nsw i64 %polly.indvar230, %105
  %polly.loop_guard243917 = icmp sgt i64 %106, -1
  %107 = add nuw nsw i64 %polly.indvar230, %99
  %108 = mul i64 %107, 8000
  %109 = mul i64 %107, 9600
  br i1 %polly.loop_guard243917, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %110 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %110
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %107
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %108
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %111 = add nuw nsw i64 %polly.indvar244.us, %100
  %112 = mul nuw nsw i64 %111, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %112
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %113 = shl i64 %111, 3
  %114 = add i64 %113, %109
  %scevgep263.us = getelementptr i8, i8* %call, i64 %114
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
  %polly.loop_cond232 = icmp ult i64 %polly.indvar230, 49
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1027 = phi i64 [ %indvar.next1028, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %115 = add i64 %indvar1027, 1
  %116 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %116
  %min.iters.check1029 = icmp ult i64 %115, 4
  br i1 %min.iters.check1029, label %polly.loop_header360.preheader, label %vector.ph1030

vector.ph1030:                                    ; preds = %polly.loop_header354
  %n.vec1032 = and i64 %115, -4
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1034, %vector.body1026 ]
  %117 = shl nuw nsw i64 %index1033, 3
  %118 = getelementptr i8, i8* %scevgep366, i64 %117
  %119 = bitcast i8* %118 to <4 x double>*
  %wide.load1037 = load <4 x double>, <4 x double>* %119, align 8, !alias.scope !74, !noalias !76
  %120 = fmul fast <4 x double> %wide.load1037, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %121 = bitcast i8* %118 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !74, !noalias !76
  %index.next1034 = add i64 %index1033, 4
  %122 = icmp eq i64 %index.next1034, %n.vec1032
  br i1 %122, label %middle.block1024, label %vector.body1026, !llvm.loop !80

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1036 = icmp eq i64 %115, %n.vec1032
  br i1 %cmp.n1036, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1024
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1032, %middle.block1024 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1024
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1028 = add i64 %indvar1027, 1
  br i1 %exitcond863.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %123 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %123
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond862.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 1200
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next374, 1000
  br i1 %exitcond861.not, label %polly.loop_header386, label %polly.loop_header370

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
  %exitcond860.not = icmp eq i64 %polly.indvar_next380, 1200
  br i1 %exitcond860.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header386:                             ; preds = %polly.loop_exit378, %polly.loop_exit395
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit395 ], [ 24, %polly.loop_exit378 ]
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %124 = lshr i64 %indvars.iv856, 7
  %125 = mul nsw i64 %polly.indvar389, -50
  %126 = mul nuw nsw i64 %polly.indvar389, 50
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit402
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -50
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 50
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 25
  %exitcond859.not = icmp eq i64 %polly.indvar_next390, 24
  br i1 %exitcond859.not, label %polly.exiting269, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_exit402, %polly.loop_header386
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit402 ], [ %indvars.iv847, %polly.loop_header386 ]
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit402 ], [ %indvars.iv842, %polly.loop_header386 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit402 ], [ 0, %polly.loop_header386 ]
  %127 = shl nsw i64 %polly.indvar396, 8
  %128 = add nsw i64 %127, %125
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %polly.loop_guard403 = icmp slt i64 %130, 50
  br i1 %polly.loop_guard403, label %polly.loop_header400.preheader, label %polly.loop_exit402

polly.loop_header400.preheader:                   ; preds = %polly.loop_header393
  %smax846 = call i64 @llvm.smax.i64(i64 %indvars.iv844, i64 0)
  %131 = add i64 %smax846, %indvars.iv849
  %132 = sub nsw i64 %126, %127
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit409, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, 256
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -256
  %exitcond858.not = icmp eq i64 %polly.indvar396, %124
  br i1 %exitcond858.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv851 = phi i64 [ %131, %polly.loop_header400.preheader ], [ %indvars.iv.next852, %polly.loop_exit409 ]
  %polly.indvar404 = phi i64 [ %130, %polly.loop_header400.preheader ], [ %polly.indvar_next405, %polly.loop_exit409 ]
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 255)
  %133 = add nsw i64 %polly.indvar404, %132
  %polly.loop_guard417918 = icmp sgt i64 %133, -1
  %134 = add nuw nsw i64 %polly.indvar404, %126
  %135 = mul i64 %134, 8000
  %136 = mul i64 %134, 9600
  br i1 %polly.loop_guard417918, label %polly.loop_header407.us, label %polly.loop_exit409

polly.loop_header407.us:                          ; preds = %polly.loop_header400, %polly.loop_exit416.loopexit.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.loopexit.us ], [ 0, %polly.loop_header400 ]
  %137 = shl nuw nsw i64 %polly.indvar410.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %137
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar410.us, 1200
  %polly.access.add.Packed_MemRef_call2271426.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %134
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %135
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header407.us
  %polly.indvar418.us = phi i64 [ 0, %polly.loop_header407.us ], [ %polly.indvar_next419.us, %polly.loop_header414.us ]
  %138 = add nuw nsw i64 %polly.indvar418.us, %127
  %139 = mul nuw nsw i64 %138, 8000
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %139
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %138, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %140 = shl i64 %138, 3
  %141 = add i64 %140, %136
  %scevgep437.us = getelementptr i8, i8* %call, i64 %141
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
  %polly.loop_cond406 = icmp ult i64 %polly.indvar404, 49
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond406, label %polly.loop_header400, label %polly.loop_exit402

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %142 = add i64 %indvar, 1
  %143 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %143
  %min.iters.check1003 = icmp ult i64 %142, 4
  br i1 %min.iters.check1003, label %polly.loop_header534.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %polly.loop_header528
  %n.vec1006 = and i64 %142, -4
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1004
  %index1007 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1008, %vector.body1002 ]
  %144 = shl nuw nsw i64 %index1007, 3
  %145 = getelementptr i8, i8* %scevgep540, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1011 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !84, !noalias !86
  %147 = fmul fast <4 x double> %wide.load1011, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %147, <4 x double>* %148, align 8, !alias.scope !84, !noalias !86
  %index.next1008 = add i64 %index1007, 4
  %149 = icmp eq i64 %index.next1008, %n.vec1006
  br i1 %149, label %middle.block1000, label %vector.body1002, !llvm.loop !90

middle.block1000:                                 ; preds = %vector.body1002
  %cmp.n1010 = icmp eq i64 %142, %n.vec1006
  br i1 %cmp.n1010, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1000
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1006, %middle.block1000 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1000
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond885.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %150 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %150
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond884.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !91

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit552
  %polly.indvar547 = phi i64 [ %polly.indvar_next548, %polly.loop_exit552 ], [ 0, %polly.loop_header544.preheader ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar547, 1200
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_header550
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next548, 1000
  br i1 %exitcond883.not, label %polly.loop_header560, label %polly.loop_header544

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
  %exitcond882.not = icmp eq i64 %polly.indvar_next554, 1200
  br i1 %exitcond882.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header560:                             ; preds = %polly.loop_exit552, %polly.loop_exit569
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit569 ], [ 24, %polly.loop_exit552 ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %151 = lshr i64 %indvars.iv878, 7
  %152 = mul nsw i64 %polly.indvar563, -50
  %153 = mul nuw nsw i64 %polly.indvar563, 50
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit576
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -50
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 50
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 25
  %exitcond881.not = icmp eq i64 %polly.indvar_next564, 24
  br i1 %exitcond881.not, label %polly.exiting443, label %polly.loop_header560

polly.loop_header567:                             ; preds = %polly.loop_exit576, %polly.loop_header560
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit576 ], [ %indvars.iv869, %polly.loop_header560 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit576 ], [ %indvars.iv864, %polly.loop_header560 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit576 ], [ 0, %polly.loop_header560 ]
  %154 = shl nsw i64 %polly.indvar570, 8
  %155 = add nsw i64 %154, %152
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %polly.loop_guard577 = icmp slt i64 %157, 50
  br i1 %polly.loop_guard577, label %polly.loop_header574.preheader, label %polly.loop_exit576

polly.loop_header574.preheader:                   ; preds = %polly.loop_header567
  %smax868 = call i64 @llvm.smax.i64(i64 %indvars.iv866, i64 0)
  %158 = add i64 %smax868, %indvars.iv871
  %159 = sub nsw i64 %153, %154
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, 256
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -256
  %exitcond880.not = icmp eq i64 %polly.indvar570, %151
  br i1 %exitcond880.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit583
  %indvars.iv873 = phi i64 [ %158, %polly.loop_header574.preheader ], [ %indvars.iv.next874, %polly.loop_exit583 ]
  %polly.indvar578 = phi i64 [ %157, %polly.loop_header574.preheader ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 255)
  %160 = add nsw i64 %polly.indvar578, %159
  %polly.loop_guard591919 = icmp sgt i64 %160, -1
  %161 = add nuw nsw i64 %polly.indvar578, %153
  %162 = mul i64 %161, 8000
  %163 = mul i64 %161, 9600
  br i1 %polly.loop_guard591919, label %polly.loop_header581.us, label %polly.loop_exit583

polly.loop_header581.us:                          ; preds = %polly.loop_header574, %polly.loop_exit590.loopexit.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.loopexit.us ], [ 0, %polly.loop_header574 ]
  %164 = shl nuw nsw i64 %polly.indvar584.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %164
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  %polly.access.add.Packed_MemRef_call2445600.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %161
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %162
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.us, %polly.loop_header581.us
  %polly.indvar592.us = phi i64 [ 0, %polly.loop_header581.us ], [ %polly.indvar_next593.us, %polly.loop_header588.us ]
  %165 = add nuw nsw i64 %polly.indvar592.us, %154
  %166 = mul nuw nsw i64 %165, 8000
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %166
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %165, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %167 = shl i64 %165, 3
  %168 = add i64 %167, %163
  %scevgep611.us = getelementptr i8, i8* %call, i64 %168
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar592.us, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_header588.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next585.us, 1000
  br i1 %exitcond877.not, label %polly.loop_exit583, label %polly.loop_header581.us

polly.loop_exit583:                               ; preds = %polly.loop_exit590.loopexit.us, %polly.loop_header574
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %polly.loop_cond580 = icmp ult i64 %polly.indvar578, 49
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond580, label %polly.loop_header574, label %polly.loop_exit576

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %169 = shl nsw i64 %polly.indvar743, 5
  %170 = add nsw i64 %smin912, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond915.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %171 = mul nsw i64 %polly.indvar749, -32
  %smin941 = call i64 @llvm.smin.i64(i64 %171, i64 -1168)
  %172 = add nsw i64 %smin941, 1200
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -1168)
  %173 = shl nsw i64 %polly.indvar749, 5
  %174 = add nsw i64 %smin908, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond914.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %175 = add nuw nsw i64 %polly.indvar755, %169
  %176 = trunc i64 %175 to i32
  %177 = mul nuw nsw i64 %175, 9600
  %min.iters.check = icmp eq i64 %172, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph942

vector.ph942:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert949 = insertelement <4 x i64> poison, i64 %173, i32 0
  %broadcast.splat950 = shufflevector <4 x i64> %broadcast.splatinsert949, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph942
  %index943 = phi i64 [ 0, %vector.ph942 ], [ %index.next944, %vector.body940 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph942 ], [ %vec.ind.next948, %vector.body940 ]
  %178 = add nuw nsw <4 x i64> %vec.ind947, %broadcast.splat950
  %179 = trunc <4 x i64> %178 to <4 x i32>
  %180 = mul <4 x i32> %broadcast.splat952, %179
  %181 = add <4 x i32> %180, <i32 3, i32 3, i32 3, i32 3>
  %182 = urem <4 x i32> %181, <i32 1200, i32 1200, i32 1200, i32 1200>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %185 = extractelement <4 x i64> %178, i32 0
  %186 = shl i64 %185, 3
  %187 = add nuw nsw i64 %186, %177
  %188 = getelementptr i8, i8* %call, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %184, <4 x double>* %189, align 8, !alias.scope !94, !noalias !96
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %190 = icmp eq i64 %index.next944, %172
  br i1 %190, label %polly.loop_exit760, label %vector.body940, !llvm.loop !99

polly.loop_exit760:                               ; preds = %vector.body940, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond913.not = icmp eq i64 %polly.indvar755, %170
  br i1 %exitcond913.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %191 = add nuw nsw i64 %polly.indvar761, %173
  %192 = trunc i64 %191 to i32
  %193 = mul i32 %192, %176
  %194 = add i32 %193, 3
  %195 = urem i32 %194, 1200
  %p_conv31.i = sitofp i32 %195 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %196 = shl i64 %191, 3
  %197 = add nuw nsw i64 %196, %177
  %scevgep764 = getelementptr i8, i8* %call, i64 %197
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond909.not = icmp eq i64 %polly.indvar761, %174
  br i1 %exitcond909.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !100

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 -1168)
  %198 = shl nsw i64 %polly.indvar770, 5
  %199 = add nsw i64 %smin902, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond905.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %200 = mul nsw i64 %polly.indvar776, -32
  %smin956 = call i64 @llvm.smin.i64(i64 %200, i64 -968)
  %201 = add nsw i64 %smin956, 1000
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -968)
  %202 = shl nsw i64 %polly.indvar776, 5
  %203 = add nsw i64 %smin898, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond904.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %204 = add nuw nsw i64 %polly.indvar782, %198
  %205 = trunc i64 %204 to i32
  %206 = mul nuw nsw i64 %204, 8000
  %min.iters.check957 = icmp eq i64 %201, 0
  br i1 %min.iters.check957, label %polly.loop_header785, label %vector.ph958

vector.ph958:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert967 = insertelement <4 x i64> poison, i64 %202, i32 0
  %broadcast.splat968 = shufflevector <4 x i64> %broadcast.splatinsert967, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %205, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next962, %vector.body955 ]
  %vec.ind965 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph958 ], [ %vec.ind.next966, %vector.body955 ]
  %207 = add nuw nsw <4 x i64> %vec.ind965, %broadcast.splat968
  %208 = trunc <4 x i64> %207 to <4 x i32>
  %209 = mul <4 x i32> %broadcast.splat970, %208
  %210 = add <4 x i32> %209, <i32 2, i32 2, i32 2, i32 2>
  %211 = urem <4 x i32> %210, <i32 1000, i32 1000, i32 1000, i32 1000>
  %212 = sitofp <4 x i32> %211 to <4 x double>
  %213 = fmul fast <4 x double> %212, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %214 = extractelement <4 x i64> %207, i32 0
  %215 = shl i64 %214, 3
  %216 = add nuw nsw i64 %215, %206
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %213, <4 x double>* %218, align 8, !alias.scope !98, !noalias !101
  %index.next962 = add i64 %index961, 4
  %vec.ind.next966 = add <4 x i64> %vec.ind965, <i64 4, i64 4, i64 4, i64 4>
  %219 = icmp eq i64 %index.next962, %201
  br i1 %219, label %polly.loop_exit787, label %vector.body955, !llvm.loop !102

polly.loop_exit787:                               ; preds = %vector.body955, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond903.not = icmp eq i64 %polly.indvar782, %199
  br i1 %exitcond903.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %220 = add nuw nsw i64 %polly.indvar788, %202
  %221 = trunc i64 %220 to i32
  %222 = mul i32 %221, %205
  %223 = add i32 %222, 2
  %224 = urem i32 %223, 1000
  %p_conv10.i = sitofp i32 %224 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %225 = shl i64 %220, 3
  %226 = add nuw nsw i64 %225, %206
  %scevgep791 = getelementptr i8, i8* %call2, i64 %226
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond899.not = icmp eq i64 %polly.indvar788, %203
  br i1 %exitcond899.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !103

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv890, i64 -1168)
  %227 = shl nsw i64 %polly.indvar796, 5
  %228 = add nsw i64 %smin892, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -32
  %exitcond895.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond895.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %229 = mul nsw i64 %polly.indvar802, -32
  %smin974 = call i64 @llvm.smin.i64(i64 %229, i64 -968)
  %230 = add nsw i64 %smin974, 1000
  %smin888 = call i64 @llvm.smin.i64(i64 %indvars.iv886, i64 -968)
  %231 = shl nsw i64 %polly.indvar802, 5
  %232 = add nsw i64 %smin888, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -32
  %exitcond894.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond894.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %233 = add nuw nsw i64 %polly.indvar808, %227
  %234 = trunc i64 %233 to i32
  %235 = mul nuw nsw i64 %233, 8000
  %min.iters.check975 = icmp eq i64 %230, 0
  br i1 %min.iters.check975, label %polly.loop_header811, label %vector.ph976

vector.ph976:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert985 = insertelement <4 x i64> poison, i64 %231, i32 0
  %broadcast.splat986 = shufflevector <4 x i64> %broadcast.splatinsert985, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next980, %vector.body973 ]
  %vec.ind983 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph976 ], [ %vec.ind.next984, %vector.body973 ]
  %236 = add nuw nsw <4 x i64> %vec.ind983, %broadcast.splat986
  %237 = trunc <4 x i64> %236 to <4 x i32>
  %238 = mul <4 x i32> %broadcast.splat988, %237
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 1200, i32 1200, i32 1200, i32 1200>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %243 = extractelement <4 x i64> %236, i32 0
  %244 = shl i64 %243, 3
  %245 = add nuw nsw i64 %244, %235
  %246 = getelementptr i8, i8* %call1, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %242, <4 x double>* %247, align 8, !alias.scope !97, !noalias !104
  %index.next980 = add i64 %index979, 4
  %vec.ind.next984 = add <4 x i64> %vec.ind983, <i64 4, i64 4, i64 4, i64 4>
  %248 = icmp eq i64 %index.next980, %230
  br i1 %248, label %polly.loop_exit813, label %vector.body973, !llvm.loop !105

polly.loop_exit813:                               ; preds = %vector.body973, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond893.not = icmp eq i64 %polly.indvar808, %228
  br i1 %exitcond893.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %249 = add nuw nsw i64 %polly.indvar814, %231
  %250 = trunc i64 %249 to i32
  %251 = mul i32 %250, %234
  %252 = add i32 %251, 1
  %253 = urem i32 %252, 1200
  %p_conv.i = sitofp i32 %253 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %254 = shl i64 %249, 3
  %255 = add nuw nsw i64 %254, %235
  %scevgep818 = getelementptr i8, i8* %call1, i64 %255
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond889.not = icmp eq i64 %polly.indvar814, %232
  br i1 %exitcond889.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 256}
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
!45 = !{!"llvm.loop.tile.size", i32 50}
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
