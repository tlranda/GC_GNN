; ModuleID = 'syr2k_exhaustive/mmp_all_XL_7250.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_7250.c"
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
  %call764 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1625 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2626 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1625, %call2
  %polly.access.call2645 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2645, %call1
  %2 = or i1 %0, %1
  %polly.access.call665 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call665, %call2
  %4 = icmp ule i8* %polly.access.call2645, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call665, %call1
  %8 = icmp ule i8* %polly.access.call1625, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header738, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv7.i, i64 %index930
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit799
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start441, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %index996
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting442
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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1019
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1045
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond839.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1054 = add i64 %indvar1053, 1
  br i1 %exitcond839.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond838.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond838.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond837.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond836.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit223 ], [ 3, %polly.loop_exit207 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv832, i64 149)
  %97 = mul nsw i64 %polly.indvar218, -32
  %98 = icmp slt i64 %97, -1168
  %99 = select i1 %98, i64 %97, i64 -1168
  %100 = add nsw i64 %99, 1199
  %101 = shl nsw i64 %polly.indvar218, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 32
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 4
  %exitcond835.not = icmp eq i64 %polly.indvar_next219, 38
  br i1 %exitcond835.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit229 ], [ %indvars.iv825, %polly.loop_header215 ]
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %102 = shl nsw i64 %polly.indvar224, 3
  %103 = add nsw i64 %102, %97
  %104 = icmp sgt i64 %103, 0
  %105 = select i1 %104, i64 %103, i64 0
  %polly.loop_guard.not = icmp sgt i64 %105, %100
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv823, i64 0)
  %106 = add i64 %smax, %indvars.iv827
  %107 = sub nsw i64 %101, %102
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next824 = add nsw i64 %indvars.iv823, 8
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -8
  %exitcond834.not = icmp eq i64 %polly.indvar224, %umin
  br i1 %exitcond834.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv829 = phi i64 [ %106, %polly.loop_header227.preheader ], [ %indvars.iv.next830, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %105, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 7)
  %108 = add nsw i64 %polly.indvar230, %107
  %polly.loop_guard243917 = icmp sgt i64 %108, -1
  %109 = add nuw nsw i64 %polly.indvar230, %101
  %110 = mul i64 %109, 8000
  %111 = mul i64 %109, 9600
  br i1 %polly.loop_guard243917, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %112 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %112
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %109
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %110
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %113 = add nuw nsw i64 %polly.indvar244.us, %102
  %114 = mul nuw nsw i64 %113, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %114
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %115 = shl i64 %113, 3
  %116 = add i64 %115, %111
  %scevgep263.us = getelementptr i8, i8* %call, i64 %116
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
  %exitcond831.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond831.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp ult i64 %polly.indvar230, %100
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit394
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1027 = phi i64 [ %indvar.next1028, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %117 = add i64 %indvar1027, 1
  %118 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1029 = icmp ult i64 %117, 4
  br i1 %min.iters.check1029, label %polly.loop_header360.preheader, label %vector.ph1030

vector.ph1030:                                    ; preds = %polly.loop_header354
  %n.vec1032 = and i64 %117, -4
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1034, %vector.body1026 ]
  %119 = shl nuw nsw i64 %index1033, 3
  %120 = getelementptr i8, i8* %scevgep366, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1037 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !74, !noalias !76
  %122 = fmul fast <4 x double> %wide.load1037, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %index.next1034 = add i64 %index1033, 4
  %124 = icmp eq i64 %index.next1034, %n.vec1032
  br i1 %124, label %middle.block1024, label %vector.body1026, !llvm.loop !80

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1036 = icmp eq i64 %117, %n.vec1032
  br i1 %cmp.n1036, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1024
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1032, %middle.block1024 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1024
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1028 = add i64 %indvar1027, 1
  br i1 %exitcond862.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %125
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond861.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 1200
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next374, 1000
  br i1 %exitcond860.not, label %polly.loop_header386, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 1000
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next380, 1200
  br i1 %exitcond859.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header386:                             ; preds = %polly.loop_exit378, %polly.loop_exit394
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit394 ], [ 3, %polly.loop_exit378 ]
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit394 ], [ 0, %polly.loop_exit378 ]
  %umin856 = call i64 @llvm.umin.i64(i64 %indvars.iv854, i64 149)
  %126 = mul nsw i64 %polly.indvar389, -32
  %127 = icmp slt i64 %126, -1168
  %128 = select i1 %127, i64 %126, i64 -1168
  %129 = add nsw i64 %128, 1199
  %130 = shl nsw i64 %polly.indvar389, 5
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_exit401
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %indvars.iv.next846 = add nuw nsw i64 %indvars.iv845, 32
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 4
  %exitcond858.not = icmp eq i64 %polly.indvar_next390, 38
  br i1 %exitcond858.not, label %polly.exiting269, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_exit401, %polly.loop_header386
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit401 ], [ %indvars.iv845, %polly.loop_header386 ]
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit401 ], [ %indvars.iv840, %polly.loop_header386 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit401 ], [ 0, %polly.loop_header386 ]
  %131 = shl nsw i64 %polly.indvar395, 3
  %132 = add nsw i64 %131, %126
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %polly.loop_guard402.not = icmp sgt i64 %134, %129
  br i1 %polly.loop_guard402.not, label %polly.loop_exit401, label %polly.loop_header399.preheader

polly.loop_header399.preheader:                   ; preds = %polly.loop_header392
  %smax844 = call i64 @llvm.smax.i64(i64 %indvars.iv842, i64 0)
  %135 = add i64 %smax844, %indvars.iv847
  %136 = sub nsw i64 %130, %131
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header392
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, 8
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -8
  %exitcond857.not = icmp eq i64 %polly.indvar395, %umin856
  br i1 %exitcond857.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit408
  %indvars.iv849 = phi i64 [ %135, %polly.loop_header399.preheader ], [ %indvars.iv.next850, %polly.loop_exit408 ]
  %polly.indvar403 = phi i64 [ %134, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 7)
  %137 = add nsw i64 %polly.indvar403, %136
  %polly.loop_guard416918 = icmp sgt i64 %137, -1
  %138 = add nuw nsw i64 %polly.indvar403, %130
  %139 = mul i64 %138, 8000
  %140 = mul i64 %138, 9600
  br i1 %polly.loop_guard416918, label %polly.loop_header406.us, label %polly.loop_exit408

polly.loop_header406.us:                          ; preds = %polly.loop_header399, %polly.loop_exit415.loopexit.us
  %polly.indvar409.us = phi i64 [ %polly.indvar_next410.us, %polly.loop_exit415.loopexit.us ], [ 0, %polly.loop_header399 ]
  %141 = shl nuw nsw i64 %polly.indvar409.us, 3
  %scevgep420.us = getelementptr i8, i8* %call1, i64 %141
  %polly.access.mul.Packed_MemRef_call2271424.us = mul nuw nsw i64 %polly.indvar409.us, 1200
  %polly.access.add.Packed_MemRef_call2271425.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271424.us, %138
  %polly.access.Packed_MemRef_call2271426.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.us
  %_p_scalar_427.us = load double, double* %polly.access.Packed_MemRef_call2271426.us, align 8
  %scevgep433.us = getelementptr i8, i8* %scevgep420.us, i64 %139
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header413.us

polly.loop_header413.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header406.us
  %polly.indvar417.us = phi i64 [ 0, %polly.loop_header406.us ], [ %polly.indvar_next418.us, %polly.loop_header413.us ]
  %142 = add nuw nsw i64 %polly.indvar417.us, %131
  %143 = mul nuw nsw i64 %142, 8000
  %scevgep421.us = getelementptr i8, i8* %scevgep420.us, i64 %143
  %scevgep421422.us = bitcast i8* %scevgep421.us to double*
  %_p_scalar_423.us = load double, double* %scevgep421422.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_427.us, %_p_scalar_423.us
  %polly.access.add.Packed_MemRef_call2271429.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call2271424.us
  %polly.access.Packed_MemRef_call2271430.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.us
  %_p_scalar_431.us = load double, double* %polly.access.Packed_MemRef_call2271430.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_435.us, %_p_scalar_431.us
  %144 = shl i64 %142, 3
  %145 = add i64 %144, %140
  %scevgep436.us = getelementptr i8, i8* %call, i64 %145
  %scevgep436437.us = bitcast i8* %scevgep436.us to double*
  %_p_scalar_438.us = load double, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_438.us
  store double %p_add42.i79.us, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond852.not = icmp eq i64 %polly.indvar417.us, %smin851
  br i1 %exitcond852.not, label %polly.loop_exit415.loopexit.us, label %polly.loop_header413.us

polly.loop_exit415.loopexit.us:                   ; preds = %polly.loop_header413.us
  %polly.indvar_next410.us = add nuw nsw i64 %polly.indvar409.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next410.us, 1000
  br i1 %exitcond853.not, label %polly.loop_exit408, label %polly.loop_header406.us

polly.loop_exit408:                               ; preds = %polly.loop_exit415.loopexit.us, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %polly.loop_cond405.not.not = icmp ult i64 %polly.indvar403, %129
  %indvars.iv.next850 = add i64 %indvars.iv849, 1
  br i1 %polly.loop_cond405.not.not, label %polly.loop_header399, label %polly.loop_exit401

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header527

polly.exiting442:                                 ; preds = %polly.loop_exit567
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar530, 9600
  %scevgep539 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1003 = icmp ult i64 %146, 4
  br i1 %min.iters.check1003, label %polly.loop_header533.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %polly.loop_header527
  %n.vec1006 = and i64 %146, -4
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1004
  %index1007 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1008, %vector.body1002 ]
  %148 = shl nuw nsw i64 %index1007, 3
  %149 = getelementptr i8, i8* %scevgep539, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1011 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %151 = fmul fast <4 x double> %wide.load1011, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !84, !noalias !86
  %index.next1008 = add i64 %index1007, 4
  %153 = icmp eq i64 %index.next1008, %n.vec1006
  br i1 %153, label %middle.block1000, label %vector.body1002, !llvm.loop !90

middle.block1000:                                 ; preds = %vector.body1002
  %cmp.n1010 = icmp eq i64 %146, %n.vec1006
  br i1 %cmp.n1010, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block1000
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1006, %middle.block1000 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block1000
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next531, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond885.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header543

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %154
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond884.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !91

polly.loop_header543:                             ; preds = %polly.loop_header543.preheader, %polly.loop_exit551
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit551 ], [ 0, %polly.loop_header543.preheader ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar546, 1200
  br label %polly.loop_header549

polly.loop_exit551:                               ; preds = %polly.loop_header549
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next547, 1000
  br i1 %exitcond883.not, label %polly.loop_header559, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_header549, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_header549 ]
  %polly.access.mul.call2556 = mul nuw nsw i64 %polly.indvar552, 1000
  %polly.access.add.call2557 = add nuw nsw i64 %polly.access.mul.call2556, %polly.indvar546
  %polly.access.call2558 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2557
  %polly.access.call2558.load = load double, double* %polly.access.call2558, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2558.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next553, 1200
  br i1 %exitcond882.not, label %polly.loop_exit551, label %polly.loop_header549

polly.loop_header559:                             ; preds = %polly.loop_exit551, %polly.loop_exit567
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit567 ], [ 3, %polly.loop_exit551 ]
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_exit567 ], [ 0, %polly.loop_exit551 ]
  %umin879 = call i64 @llvm.umin.i64(i64 %indvars.iv877, i64 149)
  %155 = mul nsw i64 %polly.indvar562, -32
  %156 = icmp slt i64 %155, -1168
  %157 = select i1 %156, i64 %155, i64 -1168
  %158 = add nsw i64 %157, 1199
  %159 = shl nsw i64 %polly.indvar562, 5
  br label %polly.loop_header565

polly.loop_exit567:                               ; preds = %polly.loop_exit574
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 32
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 4
  %exitcond881.not = icmp eq i64 %polly.indvar_next563, 38
  br i1 %exitcond881.not, label %polly.exiting442, label %polly.loop_header559

polly.loop_header565:                             ; preds = %polly.loop_exit574, %polly.loop_header559
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit574 ], [ %indvars.iv868, %polly.loop_header559 ]
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit574 ], [ %indvars.iv863, %polly.loop_header559 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit574 ], [ 0, %polly.loop_header559 ]
  %160 = shl nsw i64 %polly.indvar568, 3
  %161 = add nsw i64 %160, %155
  %162 = icmp sgt i64 %161, 0
  %163 = select i1 %162, i64 %161, i64 0
  %polly.loop_guard575.not = icmp sgt i64 %163, %158
  br i1 %polly.loop_guard575.not, label %polly.loop_exit574, label %polly.loop_header572.preheader

polly.loop_header572.preheader:                   ; preds = %polly.loop_header565
  %smax867 = call i64 @llvm.smax.i64(i64 %indvars.iv865, i64 0)
  %164 = add i64 %smax867, %indvars.iv870
  %165 = sub nsw i64 %159, %160
  br label %polly.loop_header572

polly.loop_exit574:                               ; preds = %polly.loop_exit581, %polly.loop_header565
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, 8
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -8
  %exitcond880.not = icmp eq i64 %polly.indvar568, %umin879
  br i1 %exitcond880.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header572:                             ; preds = %polly.loop_header572.preheader, %polly.loop_exit581
  %indvars.iv872 = phi i64 [ %164, %polly.loop_header572.preheader ], [ %indvars.iv.next873, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ %163, %polly.loop_header572.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 7)
  %166 = add nsw i64 %polly.indvar576, %165
  %polly.loop_guard589919 = icmp sgt i64 %166, -1
  %167 = add nuw nsw i64 %polly.indvar576, %159
  %168 = mul i64 %167, 8000
  %169 = mul i64 %167, 9600
  br i1 %polly.loop_guard589919, label %polly.loop_header579.us, label %polly.loop_exit581

polly.loop_header579.us:                          ; preds = %polly.loop_header572, %polly.loop_exit588.loopexit.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.loop_exit588.loopexit.us ], [ 0, %polly.loop_header572 ]
  %170 = shl nuw nsw i64 %polly.indvar582.us, 3
  %scevgep593.us = getelementptr i8, i8* %call1, i64 %170
  %polly.access.mul.Packed_MemRef_call2444597.us = mul nuw nsw i64 %polly.indvar582.us, 1200
  %polly.access.add.Packed_MemRef_call2444598.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2444597.us, %167
  %polly.access.Packed_MemRef_call2444599.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2444599.us, align 8
  %scevgep606.us = getelementptr i8, i8* %scevgep593.us, i64 %168
  %scevgep606607.us = bitcast i8* %scevgep606.us to double*
  %_p_scalar_608.us = load double, double* %scevgep606607.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_header586.us, %polly.loop_header579.us
  %polly.indvar590.us = phi i64 [ 0, %polly.loop_header579.us ], [ %polly.indvar_next591.us, %polly.loop_header586.us ]
  %171 = add nuw nsw i64 %polly.indvar590.us, %160
  %172 = mul nuw nsw i64 %171, 8000
  %scevgep594.us = getelementptr i8, i8* %scevgep593.us, i64 %172
  %scevgep594595.us = bitcast i8* %scevgep594.us to double*
  %_p_scalar_596.us = load double, double* %scevgep594595.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_600.us, %_p_scalar_596.us
  %polly.access.add.Packed_MemRef_call2444602.us = add nuw nsw i64 %171, %polly.access.mul.Packed_MemRef_call2444597.us
  %polly.access.Packed_MemRef_call2444603.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.us
  %_p_scalar_604.us = load double, double* %polly.access.Packed_MemRef_call2444603.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_608.us, %_p_scalar_604.us
  %173 = shl i64 %171, 3
  %174 = add i64 %173, %169
  %scevgep609.us = getelementptr i8, i8* %call, i64 %174
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_611.us
  store double %p_add42.i.us, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond875.not = icmp eq i64 %polly.indvar590.us, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit588.loopexit.us, label %polly.loop_header586.us

polly.loop_exit588.loopexit.us:                   ; preds = %polly.loop_header586.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next583.us, 1000
  br i1 %exitcond876.not, label %polly.loop_exit581, label %polly.loop_header579.us

polly.loop_exit581:                               ; preds = %polly.loop_exit588.loopexit.us, %polly.loop_header572
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %polly.loop_cond578.not.not = icmp ult i64 %polly.indvar576, %158
  %indvars.iv.next873 = add i64 %indvars.iv872, 1
  br i1 %polly.loop_cond578.not.not, label %polly.loop_header572, label %polly.loop_exit574

polly.loop_header738:                             ; preds = %entry, %polly.loop_exit746
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit746 ], [ 0, %entry ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %entry ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %175 = shl nsw i64 %polly.indvar741, 5
  %176 = add nsw i64 %smin912, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond915.not, label %polly.loop_header765, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %177 = mul nsw i64 %polly.indvar747, -32
  %smin941 = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin941, 1200
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -1168)
  %179 = shl nsw i64 %polly.indvar747, 5
  %180 = add nsw i64 %smin908, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond914.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %polly.indvar753 = phi i64 [ 0, %polly.loop_header744 ], [ %polly.indvar_next754, %polly.loop_exit758 ]
  %181 = add nuw nsw i64 %polly.indvar753, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header756, label %vector.ph942

vector.ph942:                                     ; preds = %polly.loop_header750
  %broadcast.splatinsert949 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat950 = shufflevector <4 x i64> %broadcast.splatinsert949, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph942
  %index943 = phi i64 [ 0, %vector.ph942 ], [ %index.next944, %vector.body940 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph942 ], [ %vec.ind.next948, %vector.body940 ]
  %184 = add nuw nsw <4 x i64> %vec.ind947, %broadcast.splat950
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat952, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !94, !noalias !96
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next944, %178
  br i1 %196, label %polly.loop_exit758, label %vector.body940, !llvm.loop !99

polly.loop_exit758:                               ; preds = %vector.body940, %polly.loop_header756
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond913.not = icmp eq i64 %polly.indvar753, %176
  br i1 %exitcond913.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_header750, %polly.loop_header756
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_header756 ], [ 0, %polly.loop_header750 ]
  %197 = add nuw nsw i64 %polly.indvar759, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep762 = getelementptr i8, i8* %call, i64 %203
  %scevgep762763 = bitcast i8* %scevgep762 to double*
  store double %p_div33.i, double* %scevgep762763, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond909.not = icmp eq i64 %polly.indvar759, %180
  br i1 %exitcond909.not, label %polly.loop_exit758, label %polly.loop_header756, !llvm.loop !100

polly.loop_header765:                             ; preds = %polly.loop_exit746, %polly.loop_exit773
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 -1168)
  %204 = shl nsw i64 %polly.indvar768, 5
  %205 = add nsw i64 %smin902, 1199
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next769, 38
  br i1 %exitcond905.not, label %polly.loop_header791, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %206 = mul nsw i64 %polly.indvar774, -32
  %smin956 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin956, 1000
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -968)
  %208 = shl nsw i64 %polly.indvar774, 5
  %209 = add nsw i64 %smin898, 999
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next775, 32
  br i1 %exitcond904.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %polly.indvar780 = phi i64 [ 0, %polly.loop_header771 ], [ %polly.indvar_next781, %polly.loop_exit785 ]
  %210 = add nuw nsw i64 %polly.indvar780, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check957 = icmp eq i64 %207, 0
  br i1 %min.iters.check957, label %polly.loop_header783, label %vector.ph958

vector.ph958:                                     ; preds = %polly.loop_header777
  %broadcast.splatinsert967 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat968 = shufflevector <4 x i64> %broadcast.splatinsert967, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next962, %vector.body955 ]
  %vec.ind965 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph958 ], [ %vec.ind.next966, %vector.body955 ]
  %213 = add nuw nsw <4 x i64> %vec.ind965, %broadcast.splat968
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat970, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !98, !noalias !101
  %index.next962 = add i64 %index961, 4
  %vec.ind.next966 = add <4 x i64> %vec.ind965, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next962, %207
  br i1 %225, label %polly.loop_exit785, label %vector.body955, !llvm.loop !102

polly.loop_exit785:                               ; preds = %vector.body955, %polly.loop_header783
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond903.not = icmp eq i64 %polly.indvar780, %205
  br i1 %exitcond903.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_header777, %polly.loop_header783
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_header783 ], [ 0, %polly.loop_header777 ]
  %226 = add nuw nsw i64 %polly.indvar786, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep789 = getelementptr i8, i8* %call2, i64 %232
  %scevgep789790 = bitcast i8* %scevgep789 to double*
  store double %p_div12.i, double* %scevgep789790, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond899.not = icmp eq i64 %polly.indvar786, %209
  br i1 %exitcond899.not, label %polly.loop_exit785, label %polly.loop_header783, !llvm.loop !103

polly.loop_header791:                             ; preds = %polly.loop_exit773, %polly.loop_exit799
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv890, i64 -1168)
  %233 = shl nsw i64 %polly.indvar794, 5
  %234 = add nsw i64 %smin892, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -32
  %exitcond895.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond895.not, label %init_array.exit, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %235 = mul nsw i64 %polly.indvar800, -32
  %smin974 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin974, 1000
  %smin888 = call i64 @llvm.smin.i64(i64 %indvars.iv886, i64 -968)
  %237 = shl nsw i64 %polly.indvar800, 5
  %238 = add nsw i64 %smin888, 999
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -32
  %exitcond894.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond894.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %polly.indvar806 = phi i64 [ 0, %polly.loop_header797 ], [ %polly.indvar_next807, %polly.loop_exit811 ]
  %239 = add nuw nsw i64 %polly.indvar806, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check975 = icmp eq i64 %236, 0
  br i1 %min.iters.check975, label %polly.loop_header809, label %vector.ph976

vector.ph976:                                     ; preds = %polly.loop_header803
  %broadcast.splatinsert985 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat986 = shufflevector <4 x i64> %broadcast.splatinsert985, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next980, %vector.body973 ]
  %vec.ind983 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph976 ], [ %vec.ind.next984, %vector.body973 ]
  %242 = add nuw nsw <4 x i64> %vec.ind983, %broadcast.splat986
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat988, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !97, !noalias !104
  %index.next980 = add i64 %index979, 4
  %vec.ind.next984 = add <4 x i64> %vec.ind983, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next980, %236
  br i1 %254, label %polly.loop_exit811, label %vector.body973, !llvm.loop !105

polly.loop_exit811:                               ; preds = %vector.body973, %polly.loop_header809
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond893.not = icmp eq i64 %polly.indvar806, %234
  br i1 %exitcond893.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_header803, %polly.loop_header809
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_header809 ], [ 0, %polly.loop_header803 ]
  %255 = add nuw nsw i64 %polly.indvar812, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep816 = getelementptr i8, i8* %call1, i64 %261
  %scevgep816817 = bitcast i8* %scevgep816 to double*
  store double %p_div.i, double* %scevgep816817, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond889.not = icmp eq i64 %polly.indvar812, %238
  br i1 %exitcond889.not, label %polly.loop_exit811, label %polly.loop_header809, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 8}
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
