; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8338.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8338.c"
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
  %call714 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1575 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1575, %call2
  %polly.access.call2595 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2595, %call1
  %2 = or i1 %0, %1
  %polly.access.call615 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call615, %call2
  %4 = icmp ule i8* %polly.access.call2595, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call615, %call1
  %8 = icmp ule i8* %polly.access.call1575, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header688, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep876 = getelementptr i8, i8* %call2, i64 %12
  %scevgep875 = getelementptr i8, i8* %call2, i64 %11
  %scevgep874 = getelementptr i8, i8* %call1, i64 %12
  %scevgep873 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep873, %scevgep876
  %bound1 = icmp ult i8* %scevgep875, %scevgep874
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
  br i1 %exitcond18.not.i, label %vector.ph880, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph880:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert887 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat888 = shufflevector <4 x i64> %broadcast.splatinsert887, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body879

vector.body879:                                   ; preds = %vector.body879, %vector.ph880
  %index881 = phi i64 [ 0, %vector.ph880 ], [ %index.next882, %vector.body879 ]
  %vec.ind885 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph880 ], [ %vec.ind.next886, %vector.body879 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind885, %broadcast.splat888
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv7.i, i64 %index881
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next882 = add i64 %index881, 4
  %vec.ind.next886 = add <4 x i64> %vec.ind885, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next882, 1200
  br i1 %40, label %for.inc41.i, label %vector.body879, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body879
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph880, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit749
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header492, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check943 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check943, label %for.body3.i46.preheader1020, label %vector.ph944

vector.ph944:                                     ; preds = %for.body3.i46.preheader
  %n.vec946 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph944
  %index947 = phi i64 [ 0, %vector.ph944 ], [ %index.next948, %vector.body942 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %index947
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next948 = add i64 %index947, 4
  %46 = icmp eq i64 %index.next948, %n.vec946
  br i1 %46, label %middle.block940, label %vector.body942, !llvm.loop !18

middle.block940:                                  ; preds = %vector.body942
  %cmp.n950 = icmp eq i64 %indvars.iv21.i, %n.vec946
  br i1 %cmp.n950, label %for.inc6.i, label %for.body3.i46.preheader1020

for.body3.i46.preheader1020:                      ; preds = %for.body3.i46.preheader, %middle.block940
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec946, %middle.block940 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1020, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1020 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block940, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check966 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check966, label %for.body3.i60.preheader1018, label %vector.ph967

vector.ph967:                                     ; preds = %for.body3.i60.preheader
  %n.vec969 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph967
  %index970 = phi i64 [ 0, %vector.ph967 ], [ %index.next971, %vector.body965 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %index970
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load974 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load974, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next971 = add i64 %index970, 4
  %57 = icmp eq i64 %index.next971, %n.vec969
  br i1 %57, label %middle.block963, label %vector.body965, !llvm.loop !54

middle.block963:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %indvars.iv21.i52, %n.vec969
  br i1 %cmp.n973, label %for.inc6.i63, label %for.body3.i60.preheader1018

for.body3.i60.preheader1018:                      ; preds = %for.body3.i60.preheader, %middle.block963
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec969, %middle.block963 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1018, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1018 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block963, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit361
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check992 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check992, label %for.body3.i99.preheader1016, label %vector.ph993

vector.ph993:                                     ; preds = %for.body3.i99.preheader
  %n.vec995 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next997, %vector.body991 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %index996
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1000 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1000, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next997 = add i64 %index996, 4
  %68 = icmp eq i64 %index.next997, %n.vec995
  br i1 %68, label %middle.block989, label %vector.body991, !llvm.loop !56

middle.block989:                                  ; preds = %vector.body991
  %cmp.n999 = icmp eq i64 %indvars.iv21.i91, %n.vec995
  br i1 %cmp.n999, label %for.inc6.i102, label %for.body3.i99.preheader1016

for.body3.i99.preheader1016:                      ; preds = %for.body3.i99.preheader, %middle.block989
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec995, %middle.block989 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1016, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1016 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block989, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1004 = phi i64 [ %indvar.next1005, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1004, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1006 = icmp ult i64 %88, 4
  br i1 %min.iters.check1006, label %polly.loop_header191.preheader, label %vector.ph1007

vector.ph1007:                                    ; preds = %polly.loop_header
  %n.vec1009 = and i64 %88, -4
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1011, %vector.body1003 ]
  %90 = shl nuw nsw i64 %index1010, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1014 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1014, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1011 = add i64 %index1010, 4
  %95 = icmp eq i64 %index.next1011, %n.vec1009
  br i1 %95, label %middle.block1001, label %vector.body1003, !llvm.loop !67

middle.block1001:                                 ; preds = %vector.body1003
  %cmp.n1013 = icmp eq i64 %88, %n.vec1009
  br i1 %cmp.n1013, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1001
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1009, %middle.block1001 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1001
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1005 = add i64 %indvar1004, 1
  br i1 %exitcond791.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond790.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = shl nuw nsw i64 %97, 4
  %99 = sub nsw i64 %indvars.iv, %98
  %100 = add i64 %indvars.iv781, %98
  %101 = shl nsw i64 %polly.indvar202, 2
  %102 = mul nsw i64 %polly.indvar202, -4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -4
  %exitcond789.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond789.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit213 ], [ %100, %polly.loop_header199 ]
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit213 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %97, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv779, i64 0)
  %103 = add i64 %smax, %indvars.iv783
  %104 = shl nsw i64 %polly.indvar208, 4
  %105 = sub nsw i64 %101, %104
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard = icmp slt i64 %107, 16
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_exit213

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit219.loopexit.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit219.loopexit.us ], [ 0, %polly.loop_header205 ]
  %108 = shl nuw nsw i64 %polly.indvar214.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %108
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %108
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_exit226.us, %polly.loop_header211.us
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit226.us ], [ %103, %polly.loop_header211.us ]
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.us ], [ %107, %polly.loop_header211.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 3)
  %109 = add nuw i64 %polly.indvar220.us, %104
  %110 = add i64 %109, %102
  %polly.loop_guard227.us862 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard227.us862, label %polly.loop_header224.preheader.us, label %polly.loop_exit226.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.preheader.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header224.preheader.us ]
  %111 = add nuw nsw i64 %polly.indvar228.us, %101
  %112 = mul nuw nsw i64 %111, 8000
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %112
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %112
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %113 = shl i64 %111, 3
  %114 = add i64 %113, %116
  %scevgep247.us = getelementptr i8, i8* %call, i64 %114
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.us, label %polly.loop_header224.us

polly.loop_exit226.us:                            ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %polly.loop_cond222.us = icmp ult i64 %polly.indvar220.us, 15
  %indvars.iv.next786 = add i64 %indvars.iv785, 1
  br i1 %polly.loop_cond222.us, label %polly.loop_header217.us, label %polly.loop_exit219.loopexit.us

polly.loop_header224.preheader.us:                ; preds = %polly.loop_header217.us
  %115 = mul i64 %109, 8000
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %115
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !66, !noalias !71
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %115
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !65, !noalias !70
  %116 = mul i64 %109, 9600
  br label %polly.loop_header224.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_exit226.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond787.not, label %polly.loop_exit213, label %polly.loop_header211.us

polly.loop_exit213:                               ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next780 = add i64 %indvars.iv779, -16
  %indvars.iv.next784 = add i64 %indvars.iv783, 16
  %exitcond788.not = icmp eq i64 %polly.indvar_next209, 75
  br i1 %exitcond788.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar978 = phi i64 [ %indvar.next979, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %117 = add i64 %indvar978, 1
  %118 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check980 = icmp ult i64 %117, 4
  br i1 %min.iters.check980, label %polly.loop_header342.preheader, label %vector.ph981

vector.ph981:                                     ; preds = %polly.loop_header336
  %n.vec983 = and i64 %117, -4
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph981
  %index984 = phi i64 [ 0, %vector.ph981 ], [ %index.next985, %vector.body977 ]
  %119 = shl nuw nsw i64 %index984, 3
  %120 = getelementptr i8, i8* %scevgep348, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load988 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !72, !noalias !74
  %122 = fmul fast <4 x double> %wide.load988, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !72, !noalias !74
  %index.next985 = add i64 %index984, 4
  %124 = icmp eq i64 %index.next985, %n.vec983
  br i1 %124, label %middle.block975, label %vector.body977, !llvm.loop !77

middle.block975:                                  ; preds = %vector.body977
  %cmp.n987 = icmp eq i64 %117, %n.vec983
  br i1 %cmp.n987, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block975
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec983, %middle.block975 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block975
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next979 = add i64 %indvar978, 1
  br i1 %exitcond809.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %125
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond808.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit361
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %126 = lshr i64 %polly.indvar355, 2
  %127 = shl nuw nsw i64 %126, 4
  %128 = sub nsw i64 %indvars.iv792, %127
  %129 = add i64 %indvars.iv797, %127
  %130 = shl nsw i64 %polly.indvar355, 2
  %131 = mul nsw i64 %polly.indvar355, -4
  br label %polly.loop_header359

polly.loop_exit361:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 4
  %indvars.iv.next798 = add nsw i64 %indvars.iv797, -4
  %exitcond807.not = icmp eq i64 %polly.indvar_next356, 300
  br i1 %exitcond807.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header359:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit367 ], [ %129, %polly.loop_header352 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit367 ], [ %128, %polly.loop_header352 ]
  %polly.indvar362 = phi i64 [ %polly.indvar_next363, %polly.loop_exit367 ], [ %126, %polly.loop_header352 ]
  %smax796 = call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 0)
  %132 = add i64 %smax796, %indvars.iv799
  %133 = shl nsw i64 %polly.indvar362, 4
  %134 = sub nsw i64 %130, %133
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard375 = icmp slt i64 %136, 16
  br i1 %polly.loop_guard375, label %polly.loop_header365.us, label %polly.loop_exit367

polly.loop_header365.us:                          ; preds = %polly.loop_header359, %polly.loop_exit374.loopexit.us
  %polly.indvar368.us = phi i64 [ %polly.indvar_next369.us, %polly.loop_exit374.loopexit.us ], [ 0, %polly.loop_header359 ]
  %137 = shl nuw nsw i64 %polly.indvar368.us, 3
  %scevgep387.us = getelementptr i8, i8* %call1, i64 %137
  %scevgep391.us = getelementptr i8, i8* %call2, i64 %137
  br label %polly.loop_header372.us

polly.loop_header372.us:                          ; preds = %polly.loop_exit382.us, %polly.loop_header365.us
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit382.us ], [ %132, %polly.loop_header365.us ]
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.us ], [ %136, %polly.loop_header365.us ]
  %smin803 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 3)
  %138 = add nuw i64 %polly.indvar376.us, %133
  %139 = add i64 %138, %131
  %polly.loop_guard383.us863 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard383.us863, label %polly.loop_header380.preheader.us, label %polly.loop_exit382.us

polly.loop_header380.us:                          ; preds = %polly.loop_header380.preheader.us, %polly.loop_header380.us
  %polly.indvar384.us = phi i64 [ %polly.indvar_next385.us, %polly.loop_header380.us ], [ 0, %polly.loop_header380.preheader.us ]
  %140 = add nuw nsw i64 %polly.indvar384.us, %130
  %141 = mul nuw nsw i64 %140, 8000
  %scevgep388.us = getelementptr i8, i8* %scevgep387.us, i64 %141
  %scevgep388389.us = bitcast i8* %scevgep388.us to double*
  %_p_scalar_390.us = load double, double* %scevgep388389.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_394.us, %_p_scalar_390.us
  %scevgep396.us = getelementptr i8, i8* %scevgep391.us, i64 %141
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_398.us
  %142 = shl i64 %140, 3
  %143 = add i64 %142, %145
  %scevgep403.us = getelementptr i8, i8* %call, i64 %143
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond804.not = icmp eq i64 %polly.indvar384.us, %smin803
  br i1 %exitcond804.not, label %polly.loop_exit382.us, label %polly.loop_header380.us

polly.loop_exit382.us:                            ; preds = %polly.loop_header380.us, %polly.loop_header372.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %polly.loop_cond378.us = icmp ult i64 %polly.indvar376.us, 15
  %indvars.iv.next802 = add i64 %indvars.iv801, 1
  br i1 %polly.loop_cond378.us, label %polly.loop_header372.us, label %polly.loop_exit374.loopexit.us

polly.loop_header380.preheader.us:                ; preds = %polly.loop_header372.us
  %144 = mul i64 %138, 8000
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %144
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !76, !noalias !80
  %scevgep400.us = getelementptr i8, i8* %scevgep387.us, i64 %144
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !75, !noalias !79
  %145 = mul i64 %138, 9600
  br label %polly.loop_header380.us

polly.loop_exit374.loopexit.us:                   ; preds = %polly.loop_exit382.us
  %polly.indvar_next369.us = add nuw nsw i64 %polly.indvar368.us, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next369.us, 1000
  br i1 %exitcond805.not, label %polly.loop_exit367, label %polly.loop_header365.us

polly.loop_exit367:                               ; preds = %polly.loop_exit374.loopexit.us, %polly.loop_header359
  %polly.indvar_next363 = add nuw nsw i64 %polly.indvar362, 1
  %indvars.iv.next795 = add i64 %indvars.iv794, -16
  %indvars.iv.next800 = add i64 %indvars.iv799, 16
  %exitcond806.not = icmp eq i64 %polly.indvar_next363, 75
  br i1 %exitcond806.not, label %polly.loop_exit361, label %polly.loop_header359

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar495, 9600
  %scevgep504 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check954 = icmp ult i64 %146, 4
  br i1 %min.iters.check954, label %polly.loop_header498.preheader, label %vector.ph955

vector.ph955:                                     ; preds = %polly.loop_header492
  %n.vec957 = and i64 %146, -4
  br label %vector.body953

vector.body953:                                   ; preds = %vector.body953, %vector.ph955
  %index958 = phi i64 [ 0, %vector.ph955 ], [ %index.next959, %vector.body953 ]
  %148 = shl nuw nsw i64 %index958, 3
  %149 = getelementptr i8, i8* %scevgep504, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load962 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !81, !noalias !83
  %151 = fmul fast <4 x double> %wide.load962, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !81, !noalias !83
  %index.next959 = add i64 %index958, 4
  %153 = icmp eq i64 %index.next959, %n.vec957
  br i1 %153, label %middle.block951, label %vector.body953, !llvm.loop !86

middle.block951:                                  ; preds = %vector.body953
  %cmp.n961 = icmp eq i64 %146, %n.vec957
  br i1 %cmp.n961, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block951
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec957, %middle.block951 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block951
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next496, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond827.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %154
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond826.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !87

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit517
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %155 = lshr i64 %polly.indvar511, 2
  %156 = shl nuw nsw i64 %155, 4
  %157 = sub nsw i64 %indvars.iv810, %156
  %158 = add i64 %indvars.iv815, %156
  %159 = shl nsw i64 %polly.indvar511, 2
  %160 = mul nsw i64 %polly.indvar511, -4
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit523
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 4
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -4
  %exitcond825.not = icmp eq i64 %polly.indvar_next512, 300
  br i1 %exitcond825.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header515:                             ; preds = %polly.loop_exit523, %polly.loop_header508
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit523 ], [ %158, %polly.loop_header508 ]
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit523 ], [ %157, %polly.loop_header508 ]
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_exit523 ], [ %155, %polly.loop_header508 ]
  %smax814 = call i64 @llvm.smax.i64(i64 %indvars.iv812, i64 0)
  %161 = add i64 %smax814, %indvars.iv817
  %162 = shl nsw i64 %polly.indvar518, 4
  %163 = sub nsw i64 %159, %162
  %164 = icmp sgt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  %polly.loop_guard531 = icmp slt i64 %165, 16
  br i1 %polly.loop_guard531, label %polly.loop_header521.us, label %polly.loop_exit523

polly.loop_header521.us:                          ; preds = %polly.loop_header515, %polly.loop_exit530.loopexit.us
  %polly.indvar524.us = phi i64 [ %polly.indvar_next525.us, %polly.loop_exit530.loopexit.us ], [ 0, %polly.loop_header515 ]
  %166 = shl nuw nsw i64 %polly.indvar524.us, 3
  %scevgep543.us = getelementptr i8, i8* %call1, i64 %166
  %scevgep547.us = getelementptr i8, i8* %call2, i64 %166
  br label %polly.loop_header528.us

polly.loop_header528.us:                          ; preds = %polly.loop_exit538.us, %polly.loop_header521.us
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit538.us ], [ %161, %polly.loop_header521.us ]
  %polly.indvar532.us = phi i64 [ %polly.indvar_next533.us, %polly.loop_exit538.us ], [ %165, %polly.loop_header521.us ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 3)
  %167 = add nuw i64 %polly.indvar532.us, %162
  %168 = add i64 %167, %160
  %polly.loop_guard539.us864 = icmp sgt i64 %168, -1
  br i1 %polly.loop_guard539.us864, label %polly.loop_header536.preheader.us, label %polly.loop_exit538.us

polly.loop_header536.us:                          ; preds = %polly.loop_header536.preheader.us, %polly.loop_header536.us
  %polly.indvar540.us = phi i64 [ %polly.indvar_next541.us, %polly.loop_header536.us ], [ 0, %polly.loop_header536.preheader.us ]
  %169 = add nuw nsw i64 %polly.indvar540.us, %159
  %170 = mul nuw nsw i64 %169, 8000
  %scevgep544.us = getelementptr i8, i8* %scevgep543.us, i64 %170
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %scevgep552.us = getelementptr i8, i8* %scevgep547.us, i64 %170
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_554.us
  %171 = shl i64 %169, 3
  %172 = add i64 %171, %174
  %scevgep559.us = getelementptr i8, i8* %call, i64 %172
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond822.not = icmp eq i64 %polly.indvar540.us, %smin821
  br i1 %exitcond822.not, label %polly.loop_exit538.us, label %polly.loop_header536.us

polly.loop_exit538.us:                            ; preds = %polly.loop_header536.us, %polly.loop_header528.us
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %polly.loop_cond534.us = icmp ult i64 %polly.indvar532.us, 15
  %indvars.iv.next820 = add i64 %indvars.iv819, 1
  br i1 %polly.loop_cond534.us, label %polly.loop_header528.us, label %polly.loop_exit530.loopexit.us

polly.loop_header536.preheader.us:                ; preds = %polly.loop_header528.us
  %173 = mul i64 %167, 8000
  %scevgep548.us = getelementptr i8, i8* %scevgep547.us, i64 %173
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !85, !noalias !89
  %scevgep556.us = getelementptr i8, i8* %scevgep543.us, i64 %173
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !84, !noalias !88
  %174 = mul i64 %167, 9600
  br label %polly.loop_header536.us

polly.loop_exit530.loopexit.us:                   ; preds = %polly.loop_exit538.us
  %polly.indvar_next525.us = add nuw nsw i64 %polly.indvar524.us, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next525.us, 1000
  br i1 %exitcond823.not, label %polly.loop_exit523, label %polly.loop_header521.us

polly.loop_exit523:                               ; preds = %polly.loop_exit530.loopexit.us, %polly.loop_header515
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %indvars.iv.next813 = add i64 %indvars.iv812, -16
  %indvars.iv.next818 = add i64 %indvars.iv817, 16
  %exitcond824.not = icmp eq i64 %polly.indvar_next519, 75
  br i1 %exitcond824.not, label %polly.loop_exit517, label %polly.loop_header515

polly.loop_header688:                             ; preds = %entry, %polly.loop_exit696
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit696 ], [ 0, %entry ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %entry ]
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 -1168)
  %175 = shl nsw i64 %polly.indvar691, 5
  %176 = add nsw i64 %smin854, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond857.not, label %polly.loop_header715, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %177 = mul nsw i64 %polly.indvar697, -32
  %smin892 = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin892, 1200
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -1168)
  %179 = shl nsw i64 %polly.indvar697, 5
  %180 = add nsw i64 %smin850, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond856.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond856.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %polly.indvar703 = phi i64 [ 0, %polly.loop_header694 ], [ %polly.indvar_next704, %polly.loop_exit708 ]
  %181 = add nuw nsw i64 %polly.indvar703, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header706, label %vector.ph893

vector.ph893:                                     ; preds = %polly.loop_header700
  %broadcast.splatinsert900 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat901 = shufflevector <4 x i64> %broadcast.splatinsert900, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert902 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat903 = shufflevector <4 x i32> %broadcast.splatinsert902, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body891

vector.body891:                                   ; preds = %vector.body891, %vector.ph893
  %index894 = phi i64 [ 0, %vector.ph893 ], [ %index.next895, %vector.body891 ]
  %vec.ind898 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph893 ], [ %vec.ind.next899, %vector.body891 ]
  %184 = add nuw nsw <4 x i64> %vec.ind898, %broadcast.splat901
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat903, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !90, !noalias !92
  %index.next895 = add i64 %index894, 4
  %vec.ind.next899 = add <4 x i64> %vec.ind898, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next895, %178
  br i1 %196, label %polly.loop_exit708, label %vector.body891, !llvm.loop !95

polly.loop_exit708:                               ; preds = %vector.body891, %polly.loop_header706
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond855.not = icmp eq i64 %polly.indvar703, %176
  br i1 %exitcond855.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_header700, %polly.loop_header706
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_header706 ], [ 0, %polly.loop_header700 ]
  %197 = add nuw nsw i64 %polly.indvar709, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep712 = getelementptr i8, i8* %call, i64 %203
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  store double %p_div33.i, double* %scevgep712713, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond851.not = icmp eq i64 %polly.indvar709, %180
  br i1 %exitcond851.not, label %polly.loop_exit708, label %polly.loop_header706, !llvm.loop !96

polly.loop_header715:                             ; preds = %polly.loop_exit696, %polly.loop_exit723
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %smin844 = call i64 @llvm.smin.i64(i64 %indvars.iv842, i64 -1168)
  %204 = shl nsw i64 %polly.indvar718, 5
  %205 = add nsw i64 %smin844, 1199
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next719, 38
  br i1 %exitcond847.not, label %polly.loop_header741, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %206 = mul nsw i64 %polly.indvar724, -32
  %smin907 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin907, 1000
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -968)
  %208 = shl nsw i64 %polly.indvar724, 5
  %209 = add nsw i64 %smin840, 999
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next725, 32
  br i1 %exitcond846.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header721 ], [ %polly.indvar_next731, %polly.loop_exit735 ]
  %210 = add nuw nsw i64 %polly.indvar730, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check908 = icmp eq i64 %207, 0
  br i1 %min.iters.check908, label %polly.loop_header733, label %vector.ph909

vector.ph909:                                     ; preds = %polly.loop_header727
  %broadcast.splatinsert918 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat919 = shufflevector <4 x i64> %broadcast.splatinsert918, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %vector.ph909
  %index912 = phi i64 [ 0, %vector.ph909 ], [ %index.next913, %vector.body906 ]
  %vec.ind916 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph909 ], [ %vec.ind.next917, %vector.body906 ]
  %213 = add nuw nsw <4 x i64> %vec.ind916, %broadcast.splat919
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat921, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !94, !noalias !97
  %index.next913 = add i64 %index912, 4
  %vec.ind.next917 = add <4 x i64> %vec.ind916, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next913, %207
  br i1 %225, label %polly.loop_exit735, label %vector.body906, !llvm.loop !98

polly.loop_exit735:                               ; preds = %vector.body906, %polly.loop_header733
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond845.not = icmp eq i64 %polly.indvar730, %205
  br i1 %exitcond845.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_header727, %polly.loop_header733
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_header733 ], [ 0, %polly.loop_header727 ]
  %226 = add nuw nsw i64 %polly.indvar736, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep739 = getelementptr i8, i8* %call2, i64 %232
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  store double %p_div12.i, double* %scevgep739740, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond841.not = icmp eq i64 %polly.indvar736, %209
  br i1 %exitcond841.not, label %polly.loop_exit735, label %polly.loop_header733, !llvm.loop !99

polly.loop_header741:                             ; preds = %polly.loop_exit723, %polly.loop_exit749
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %smin834 = call i64 @llvm.smin.i64(i64 %indvars.iv832, i64 -1168)
  %233 = shl nsw i64 %polly.indvar744, 5
  %234 = add nsw i64 %smin834, 1199
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next833 = add nsw i64 %indvars.iv832, -32
  %exitcond837.not = icmp eq i64 %polly.indvar_next745, 38
  br i1 %exitcond837.not, label %init_array.exit, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %235 = mul nsw i64 %polly.indvar750, -32
  %smin925 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin925, 1000
  %smin830 = call i64 @llvm.smin.i64(i64 %indvars.iv828, i64 -968)
  %237 = shl nsw i64 %polly.indvar750, 5
  %238 = add nsw i64 %smin830, 999
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -32
  %exitcond836.not = icmp eq i64 %polly.indvar_next751, 32
  br i1 %exitcond836.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %polly.indvar756 = phi i64 [ 0, %polly.loop_header747 ], [ %polly.indvar_next757, %polly.loop_exit761 ]
  %239 = add nuw nsw i64 %polly.indvar756, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check926 = icmp eq i64 %236, 0
  br i1 %min.iters.check926, label %polly.loop_header759, label %vector.ph927

vector.ph927:                                     ; preds = %polly.loop_header753
  %broadcast.splatinsert936 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat937 = shufflevector <4 x i64> %broadcast.splatinsert936, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert938 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat939 = shufflevector <4 x i32> %broadcast.splatinsert938, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %vector.ph927
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next931, %vector.body924 ]
  %vec.ind934 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph927 ], [ %vec.ind.next935, %vector.body924 ]
  %242 = add nuw nsw <4 x i64> %vec.ind934, %broadcast.splat937
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat939, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !93, !noalias !100
  %index.next931 = add i64 %index930, 4
  %vec.ind.next935 = add <4 x i64> %vec.ind934, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next931, %236
  br i1 %254, label %polly.loop_exit761, label %vector.body924, !llvm.loop !101

polly.loop_exit761:                               ; preds = %vector.body924, %polly.loop_header759
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond835.not = icmp eq i64 %polly.indvar756, %234
  br i1 %exitcond835.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_header753, %polly.loop_header759
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_header759 ], [ 0, %polly.loop_header753 ]
  %255 = add nuw nsw i64 %polly.indvar762, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep766 = getelementptr i8, i8* %call1, i64 %261
  %scevgep766767 = bitcast i8* %scevgep766 to double*
  store double %p_div.i, double* %scevgep766767, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond831.not = icmp eq i64 %polly.indvar762, %238
  br i1 %exitcond831.not, label %polly.loop_exit761, label %polly.loop_header759, !llvm.loop !102
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 4}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 16}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !66}
!71 = !{!62, !65}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !76}
!80 = !{!72, !75}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !85}
!89 = !{!81, !84}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !69, !13}
!97 = !{!93, !90}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !69, !13}
!100 = !{!94, !90}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !69, !13}
