; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8103.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8103.c"
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
  %call702 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1563 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1563, %call2
  %polly.access.call2583 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2583, %call1
  %2 = or i1 %0, %1
  %polly.access.call603 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call603, %call2
  %4 = icmp ule i8* %polly.access.call2583, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call603, %call1
  %8 = icmp ule i8* %polly.access.call1563, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header676, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep841 = getelementptr i8, i8* %call2, i64 %12
  %scevgep840 = getelementptr i8, i8* %call2, i64 %11
  %scevgep839 = getelementptr i8, i8* %call1, i64 %12
  %scevgep838 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep838, %scevgep841
  %bound1 = icmp ult i8* %scevgep840, %scevgep839
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
  br i1 %exitcond18.not.i, label %vector.ph845, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph845:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert852 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat853 = shufflevector <4 x i64> %broadcast.splatinsert852, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body844

vector.body844:                                   ; preds = %vector.body844, %vector.ph845
  %index846 = phi i64 [ 0, %vector.ph845 ], [ %index.next847, %vector.body844 ]
  %vec.ind850 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph845 ], [ %vec.ind.next851, %vector.body844 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind850, %broadcast.splat853
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv7.i, i64 %index846
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next847 = add i64 %index846, 4
  %vec.ind.next851 = add <4 x i64> %vec.ind850, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next847, 1200
  br i1 %40, label %for.inc41.i, label %vector.body844, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body844
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph845, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit737
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header485, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check908 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check908, label %for.body3.i46.preheader985, label %vector.ph909

vector.ph909:                                     ; preds = %for.body3.i46.preheader
  %n.vec911 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph909
  %index912 = phi i64 [ 0, %vector.ph909 ], [ %index.next913, %vector.body907 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i, i64 %index912
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next913 = add i64 %index912, 4
  %46 = icmp eq i64 %index.next913, %n.vec911
  br i1 %46, label %middle.block905, label %vector.body907, !llvm.loop !18

middle.block905:                                  ; preds = %vector.body907
  %cmp.n915 = icmp eq i64 %indvars.iv21.i, %n.vec911
  br i1 %cmp.n915, label %for.inc6.i, label %for.body3.i46.preheader985

for.body3.i46.preheader985:                       ; preds = %for.body3.i46.preheader, %middle.block905
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec911, %middle.block905 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader985, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader985 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block905, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit509
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check931 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check931, label %for.body3.i60.preheader983, label %vector.ph932

vector.ph932:                                     ; preds = %for.body3.i60.preheader
  %n.vec934 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next936, %vector.body930 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i52, i64 %index935
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load939 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load939, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next936 = add i64 %index935, 4
  %57 = icmp eq i64 %index.next936, %n.vec934
  br i1 %57, label %middle.block928, label %vector.body930, !llvm.loop !54

middle.block928:                                  ; preds = %vector.body930
  %cmp.n938 = icmp eq i64 %indvars.iv21.i52, %n.vec934
  br i1 %cmp.n938, label %for.inc6.i63, label %for.body3.i60.preheader983

for.body3.i60.preheader983:                       ; preds = %for.body3.i60.preheader, %middle.block928
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec934, %middle.block928 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader983, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader983 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block928, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit358
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check957 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check957, label %for.body3.i99.preheader981, label %vector.ph958

vector.ph958:                                     ; preds = %for.body3.i99.preheader
  %n.vec960 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next962, %vector.body956 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i91, i64 %index961
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load965 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load965, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next962 = add i64 %index961, 4
  %68 = icmp eq i64 %index.next962, %n.vec960
  br i1 %68, label %middle.block954, label %vector.body956, !llvm.loop !56

middle.block954:                                  ; preds = %vector.body956
  %cmp.n964 = icmp eq i64 %indvars.iv21.i91, %n.vec960
  br i1 %cmp.n964, label %for.inc6.i102, label %for.body3.i99.preheader981

for.body3.i99.preheader981:                       ; preds = %for.body3.i99.preheader, %middle.block954
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec960, %middle.block954 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader981, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader981 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block954, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar969 = phi i64 [ %indvar.next970, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar969, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check971 = icmp ult i64 %88, 4
  br i1 %min.iters.check971, label %polly.loop_header191.preheader, label %vector.ph972

vector.ph972:                                     ; preds = %polly.loop_header
  %n.vec974 = and i64 %88, -4
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph972
  %index975 = phi i64 [ 0, %vector.ph972 ], [ %index.next976, %vector.body968 ]
  %90 = shl nuw nsw i64 %index975, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load979 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load979, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next976 = add i64 %index975, 4
  %95 = icmp eq i64 %index.next976, %n.vec974
  br i1 %95, label %middle.block966, label %vector.body968, !llvm.loop !67

middle.block966:                                  ; preds = %vector.body968
  %cmp.n978 = icmp eq i64 %88, %n.vec974
  br i1 %cmp.n978, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block966
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec974, %middle.block966 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block966
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next970 = add i64 %indvar969, 1
  br i1 %exitcond771.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond770.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %97, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 2
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 79)
  %100 = mul nsw i64 %polly.indvar208, 32000
  %101 = mul nsw i64 %polly.indvar208, 38400
  %indvars.iv.next765 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765, i64 79)
  %102 = or i64 %99, 1
  %103 = mul nuw nsw i64 %102, 8000
  %104 = mul nuw nsw i64 %102, 9600
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv.next765, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.1, i64 79)
  %105 = or i64 %99, 2
  %106 = mul nuw nsw i64 %105, 8000
  %107 = mul nuw nsw i64 %105, 9600
  %indvars.iv.next765.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.2, i64 79)
  %108 = or i64 %99, 3
  %109 = mul nuw nsw i64 %108, 8000
  %110 = mul nuw nsw i64 %108, 9600
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond768.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit225.3 ]
  %111 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %111
  %scevgep233 = getelementptr i8, i8* %call2, i64 %111
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %100
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !66, !noalias !70
  %scevgep242 = getelementptr i8, i8* %scevgep229, i64 %100
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %scevgep234.1 = getelementptr i8, i8* %scevgep233, i64 %103
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !66, !noalias !70
  %scevgep242.1 = getelementptr i8, i8* %scevgep229, i64 %103
  %scevgep242243.1 = bitcast i8* %scevgep242.1 to double*
  %_p_scalar_244.1 = load double, double* %scevgep242243.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header211
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %112 = add nuw nsw i64 %polly.indvar226, %98
  %113 = mul nuw nsw i64 %112, 8000
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %113
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %113
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %114 = shl i64 %112, 3
  %115 = add nuw nsw i64 %114, %101
  %scevgep245 = getelementptr i8, i8* %call, i64 %115
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_247
  store double %p_add42.i118, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar943 = phi i64 [ %indvar.next944, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %116 = add i64 %indvar943, 1
  %117 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check945 = icmp ult i64 %116, 4
  br i1 %min.iters.check945, label %polly.loop_header340.preheader, label %vector.ph946

vector.ph946:                                     ; preds = %polly.loop_header334
  %n.vec948 = and i64 %116, -4
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph946
  %index949 = phi i64 [ 0, %vector.ph946 ], [ %index.next950, %vector.body942 ]
  %118 = shl nuw nsw i64 %index949, 3
  %119 = getelementptr i8, i8* %scevgep346, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load953 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !72, !noalias !74
  %121 = fmul fast <4 x double> %wide.load953, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !72, !noalias !74
  %index.next950 = add i64 %index949, 4
  %123 = icmp eq i64 %index.next950, %n.vec948
  br i1 %123, label %middle.block940, label %vector.body942, !llvm.loop !77

middle.block940:                                  ; preds = %vector.body942
  %cmp.n952 = icmp eq i64 %116, %n.vec948
  br i1 %cmp.n952, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block940
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec948, %middle.block940 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block940
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next338, 1200
  %indvar.next944 = add i64 %indvar943, 1
  br i1 %exitcond783.not, label %polly.loop_header350, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %124
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond782.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %125 = mul nuw nsw i64 %polly.indvar353, 20
  %126 = mul nuw nsw i64 %polly.indvar353, 80
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next354, 15
  br i1 %exitcond781.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header350
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit364 ], [ 0, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ %125, %polly.loop_header350 ]
  %127 = shl nsw i64 %polly.indvar359, 2
  %smin776 = call i64 @llvm.smin.i64(i64 %indvars.iv772, i64 79)
  %128 = mul nsw i64 %polly.indvar359, 32000
  %129 = mul nsw i64 %polly.indvar359, 38400
  %indvars.iv.next775 = or i64 %indvars.iv772, 1
  %smin776.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775, i64 79)
  %130 = or i64 %127, 1
  %131 = mul nuw nsw i64 %130, 8000
  %132 = mul nuw nsw i64 %130, 9600
  %indvars.iv.next775.1 = add nuw nsw i64 %indvars.iv.next775, 1
  %smin776.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.1, i64 79)
  %133 = or i64 %127, 2
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  %indvars.iv.next775.2 = or i64 %indvars.iv772, 3
  %smin776.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.2, i64 79)
  %136 = or i64 %127, 3
  %137 = mul nuw nsw i64 %136, 8000
  %138 = mul nuw nsw i64 %136, 9600
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit376.3
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 4
  %exitcond780.not = icmp eq i64 %polly.indvar_next360, 300
  br i1 %exitcond780.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit376.3, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit376.3 ]
  %139 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep380 = getelementptr i8, i8* %call1, i64 %139
  %scevgep384 = getelementptr i8, i8* %call2, i64 %139
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %128
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !76, !noalias !79
  %scevgep393 = getelementptr i8, i8* %scevgep380, i64 %128
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %scevgep385.1 = getelementptr i8, i8* %scevgep384, i64 %131
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !76, !noalias !79
  %scevgep393.1 = getelementptr i8, i8* %scevgep380, i64 %131
  %scevgep393394.1 = bitcast i8* %scevgep393.1 to double*
  %_p_scalar_395.1 = load double, double* %scevgep393394.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.1

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header362
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header362 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %140 = add nuw nsw i64 %polly.indvar377, %126
  %141 = mul nuw nsw i64 %140, 8000
  %scevgep381 = getelementptr i8, i8* %scevgep380, i64 %141
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_387, %_p_scalar_383
  %scevgep389 = getelementptr i8, i8* %scevgep384, i64 %141
  %scevgep389390 = bitcast i8* %scevgep389 to double*
  %_p_scalar_391 = load double, double* %scevgep389390, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_395, %_p_scalar_391
  %142 = shl i64 %140, 3
  %143 = add nuw nsw i64 %142, %129
  %scevgep396 = getelementptr i8, i8* %call, i64 %143
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_398
  store double %p_add42.i79, double* %scevgep396397, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond777.not = icmp eq i64 %polly.indvar377, %smin776
  br i1 %exitcond777.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header485:                             ; preds = %init_array.exit, %polly.loop_exit493
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit493 ], [ 0, %init_array.exit ]
  %polly.indvar488 = phi i64 [ %polly.indvar_next489, %polly.loop_exit493 ], [ 1, %init_array.exit ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar488, 9600
  %scevgep497 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check919 = icmp ult i64 %144, 4
  br i1 %min.iters.check919, label %polly.loop_header491.preheader, label %vector.ph920

vector.ph920:                                     ; preds = %polly.loop_header485
  %n.vec922 = and i64 %144, -4
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next924, %vector.body918 ]
  %146 = shl nuw nsw i64 %index923, 3
  %147 = getelementptr i8, i8* %scevgep497, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load927 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !81, !noalias !83
  %149 = fmul fast <4 x double> %wide.load927, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !81, !noalias !83
  %index.next924 = add i64 %index923, 4
  %151 = icmp eq i64 %index.next924, %n.vec922
  br i1 %151, label %middle.block916, label %vector.body918, !llvm.loop !86

middle.block916:                                  ; preds = %vector.body918
  %cmp.n926 = icmp eq i64 %144, %n.vec922
  br i1 %cmp.n926, label %polly.loop_exit493, label %polly.loop_header491.preheader

polly.loop_header491.preheader:                   ; preds = %polly.loop_header485, %middle.block916
  %polly.indvar494.ph = phi i64 [ 0, %polly.loop_header485 ], [ %n.vec922, %middle.block916 ]
  br label %polly.loop_header491

polly.loop_exit493:                               ; preds = %polly.loop_header491, %middle.block916
  %polly.indvar_next489 = add nuw nsw i64 %polly.indvar488, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next489, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond795.not, label %polly.loop_header501, label %polly.loop_header485

polly.loop_header491:                             ; preds = %polly.loop_header491.preheader, %polly.loop_header491
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_header491 ], [ %polly.indvar494.ph, %polly.loop_header491.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar494, 3
  %scevgep498 = getelementptr i8, i8* %scevgep497, i64 %152
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_500, 1.200000e+00
  store double %p_mul.i, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next495, %polly.indvar488
  br i1 %exitcond794.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !87

polly.loop_header501:                             ; preds = %polly.loop_exit493, %polly.loop_exit509
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_exit509 ], [ 0, %polly.loop_exit493 ]
  %153 = mul nuw nsw i64 %polly.indvar504, 20
  %154 = mul nuw nsw i64 %polly.indvar504, 80
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_exit515
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next505, 15
  br i1 %exitcond793.not, label %kernel_syr2k.exit, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_exit515, %polly.loop_header501
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit515 ], [ 0, %polly.loop_header501 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ %153, %polly.loop_header501 ]
  %155 = shl nsw i64 %polly.indvar510, 2
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv784, i64 79)
  %156 = mul nsw i64 %polly.indvar510, 32000
  %157 = mul nsw i64 %polly.indvar510, 38400
  %indvars.iv.next787 = or i64 %indvars.iv784, 1
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787, i64 79)
  %158 = or i64 %155, 1
  %159 = mul nuw nsw i64 %158, 8000
  %160 = mul nuw nsw i64 %158, 9600
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv.next787, 1
  %smin788.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.1, i64 79)
  %161 = or i64 %155, 2
  %162 = mul nuw nsw i64 %161, 8000
  %163 = mul nuw nsw i64 %161, 9600
  %indvars.iv.next787.2 = or i64 %indvars.iv784, 3
  %smin788.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.2, i64 79)
  %164 = or i64 %155, 3
  %165 = mul nuw nsw i64 %164, 8000
  %166 = mul nuw nsw i64 %164, 9600
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit527.3
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 4
  %exitcond792.not = icmp eq i64 %polly.indvar_next511, 300
  br i1 %exitcond792.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit527.3, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit527.3 ]
  %167 = shl nuw nsw i64 %polly.indvar516, 3
  %scevgep531 = getelementptr i8, i8* %call1, i64 %167
  %scevgep535 = getelementptr i8, i8* %call2, i64 %167
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %156
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %scevgep544 = getelementptr i8, i8* %scevgep531, i64 %156
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_header525
  %scevgep536.1 = getelementptr i8, i8* %scevgep535, i64 %159
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %scevgep544.1 = getelementptr i8, i8* %scevgep531, i64 %159
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.1

polly.loop_header525:                             ; preds = %polly.loop_header525, %polly.loop_header513
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header513 ], [ %polly.indvar_next529, %polly.loop_header525 ]
  %168 = add nuw nsw i64 %polly.indvar528, %154
  %169 = mul nuw nsw i64 %168, 8000
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %169
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_538, %_p_scalar_534
  %scevgep540 = getelementptr i8, i8* %scevgep535, i64 %169
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_546, %_p_scalar_542
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %157
  %scevgep547 = getelementptr i8, i8* %call, i64 %171
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_549
  store double %p_add42.i, double* %scevgep547548, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond789.not = icmp eq i64 %polly.indvar528, %smin788
  br i1 %exitcond789.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit684 ], [ 0, %entry ]
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 -1168)
  %172 = shl nsw i64 %polly.indvar679, 5
  %173 = add nsw i64 %smin822, 1199
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_exit690
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond825.not = icmp eq i64 %polly.indvar_next680, 38
  br i1 %exitcond825.not, label %polly.loop_header703, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_exit690, %polly.loop_header676
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %174 = mul nsw i64 %polly.indvar685, -32
  %smin857 = call i64 @llvm.smin.i64(i64 %174, i64 -1168)
  %175 = add nsw i64 %smin857, 1200
  %smin818 = call i64 @llvm.smin.i64(i64 %indvars.iv816, i64 -1168)
  %176 = shl nsw i64 %polly.indvar685, 5
  %177 = add nsw i64 %smin818, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond824.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %polly.indvar691 = phi i64 [ 0, %polly.loop_header682 ], [ %polly.indvar_next692, %polly.loop_exit696 ]
  %178 = add nuw nsw i64 %polly.indvar691, %172
  %179 = trunc i64 %178 to i32
  %180 = mul nuw nsw i64 %178, 9600
  %min.iters.check = icmp eq i64 %175, 0
  br i1 %min.iters.check, label %polly.loop_header694, label %vector.ph858

vector.ph858:                                     ; preds = %polly.loop_header688
  %broadcast.splatinsert865 = insertelement <4 x i64> poison, i64 %176, i32 0
  %broadcast.splat866 = shufflevector <4 x i64> %broadcast.splatinsert865, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat868 = shufflevector <4 x i32> %broadcast.splatinsert867, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph858
  %index859 = phi i64 [ 0, %vector.ph858 ], [ %index.next860, %vector.body856 ]
  %vec.ind863 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph858 ], [ %vec.ind.next864, %vector.body856 ]
  %181 = add nuw nsw <4 x i64> %vec.ind863, %broadcast.splat866
  %182 = trunc <4 x i64> %181 to <4 x i32>
  %183 = mul <4 x i32> %broadcast.splat868, %182
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 1200, i32 1200, i32 1200, i32 1200>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %188 = extractelement <4 x i64> %181, i32 0
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %180
  %191 = getelementptr i8, i8* %call, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %187, <4 x double>* %192, align 8, !alias.scope !90, !noalias !92
  %index.next860 = add i64 %index859, 4
  %vec.ind.next864 = add <4 x i64> %vec.ind863, <i64 4, i64 4, i64 4, i64 4>
  %193 = icmp eq i64 %index.next860, %175
  br i1 %193, label %polly.loop_exit696, label %vector.body856, !llvm.loop !95

polly.loop_exit696:                               ; preds = %vector.body856, %polly.loop_header694
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %exitcond823.not = icmp eq i64 %polly.indvar691, %173
  br i1 %exitcond823.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_header688, %polly.loop_header694
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_header694 ], [ 0, %polly.loop_header688 ]
  %194 = add nuw nsw i64 %polly.indvar697, %176
  %195 = trunc i64 %194 to i32
  %196 = mul i32 %195, %179
  %197 = add i32 %196, 3
  %198 = urem i32 %197, 1200
  %p_conv31.i = sitofp i32 %198 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %199 = shl i64 %194, 3
  %200 = add nuw nsw i64 %199, %180
  %scevgep700 = getelementptr i8, i8* %call, i64 %200
  %scevgep700701 = bitcast i8* %scevgep700 to double*
  store double %p_div33.i, double* %scevgep700701, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond819.not = icmp eq i64 %polly.indvar697, %177
  br i1 %exitcond819.not, label %polly.loop_exit696, label %polly.loop_header694, !llvm.loop !96

polly.loop_header703:                             ; preds = %polly.loop_exit684, %polly.loop_exit711
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 -1168)
  %201 = shl nsw i64 %polly.indvar706, 5
  %202 = add nsw i64 %smin812, 1199
  br label %polly.loop_header709

polly.loop_exit711:                               ; preds = %polly.loop_exit717
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -32
  %exitcond815.not = icmp eq i64 %polly.indvar_next707, 38
  br i1 %exitcond815.not, label %polly.loop_header729, label %polly.loop_header703

polly.loop_header709:                             ; preds = %polly.loop_exit717, %polly.loop_header703
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %203 = mul nsw i64 %polly.indvar712, -32
  %smin872 = call i64 @llvm.smin.i64(i64 %203, i64 -968)
  %204 = add nsw i64 %smin872, 1000
  %smin808 = call i64 @llvm.smin.i64(i64 %indvars.iv806, i64 -968)
  %205 = shl nsw i64 %polly.indvar712, 5
  %206 = add nsw i64 %smin808, 999
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, -32
  %exitcond814.not = icmp eq i64 %polly.indvar_next713, 32
  br i1 %exitcond814.not, label %polly.loop_exit711, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %polly.indvar718 = phi i64 [ 0, %polly.loop_header709 ], [ %polly.indvar_next719, %polly.loop_exit723 ]
  %207 = add nuw nsw i64 %polly.indvar718, %201
  %208 = trunc i64 %207 to i32
  %209 = mul nuw nsw i64 %207, 8000
  %min.iters.check873 = icmp eq i64 %204, 0
  br i1 %min.iters.check873, label %polly.loop_header721, label %vector.ph874

vector.ph874:                                     ; preds = %polly.loop_header715
  %broadcast.splatinsert883 = insertelement <4 x i64> poison, i64 %205, i32 0
  %broadcast.splat884 = shufflevector <4 x i64> %broadcast.splatinsert883, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next878, %vector.body871 ]
  %vec.ind881 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph874 ], [ %vec.ind.next882, %vector.body871 ]
  %210 = add nuw nsw <4 x i64> %vec.ind881, %broadcast.splat884
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat886, %211
  %213 = add <4 x i32> %212, <i32 2, i32 2, i32 2, i32 2>
  %214 = urem <4 x i32> %213, <i32 1000, i32 1000, i32 1000, i32 1000>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %209
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !94, !noalias !97
  %index.next878 = add i64 %index877, 4
  %vec.ind.next882 = add <4 x i64> %vec.ind881, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next878, %204
  br i1 %222, label %polly.loop_exit723, label %vector.body871, !llvm.loop !98

polly.loop_exit723:                               ; preds = %vector.body871, %polly.loop_header721
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %exitcond813.not = icmp eq i64 %polly.indvar718, %202
  br i1 %exitcond813.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_header715, %polly.loop_header721
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_header721 ], [ 0, %polly.loop_header715 ]
  %223 = add nuw nsw i64 %polly.indvar724, %205
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, %208
  %226 = add i32 %225, 2
  %227 = urem i32 %226, 1000
  %p_conv10.i = sitofp i32 %227 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %228 = shl i64 %223, 3
  %229 = add nuw nsw i64 %228, %209
  %scevgep727 = getelementptr i8, i8* %call2, i64 %229
  %scevgep727728 = bitcast i8* %scevgep727 to double*
  store double %p_div12.i, double* %scevgep727728, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond809.not = icmp eq i64 %polly.indvar724, %206
  br i1 %exitcond809.not, label %polly.loop_exit723, label %polly.loop_header721, !llvm.loop !99

polly.loop_header729:                             ; preds = %polly.loop_exit711, %polly.loop_exit737
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %smin802 = call i64 @llvm.smin.i64(i64 %indvars.iv800, i64 -1168)
  %230 = shl nsw i64 %polly.indvar732, 5
  %231 = add nsw i64 %smin802, 1199
  br label %polly.loop_header735

polly.loop_exit737:                               ; preds = %polly.loop_exit743
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, -32
  %exitcond805.not = icmp eq i64 %polly.indvar_next733, 38
  br i1 %exitcond805.not, label %init_array.exit, label %polly.loop_header729

polly.loop_header735:                             ; preds = %polly.loop_exit743, %polly.loop_header729
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %232 = mul nsw i64 %polly.indvar738, -32
  %smin890 = call i64 @llvm.smin.i64(i64 %232, i64 -968)
  %233 = add nsw i64 %smin890, 1000
  %smin798 = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 -968)
  %234 = shl nsw i64 %polly.indvar738, 5
  %235 = add nsw i64 %smin798, 999
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, -32
  %exitcond804.not = icmp eq i64 %polly.indvar_next739, 32
  br i1 %exitcond804.not, label %polly.loop_exit737, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_exit749 ]
  %236 = add nuw nsw i64 %polly.indvar744, %230
  %237 = trunc i64 %236 to i32
  %238 = mul nuw nsw i64 %236, 8000
  %min.iters.check891 = icmp eq i64 %233, 0
  br i1 %min.iters.check891, label %polly.loop_header747, label %vector.ph892

vector.ph892:                                     ; preds = %polly.loop_header741
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %234, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph892
  %index895 = phi i64 [ 0, %vector.ph892 ], [ %index.next896, %vector.body889 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph892 ], [ %vec.ind.next900, %vector.body889 ]
  %239 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat904, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 1200, i32 1200, i32 1200, i32 1200>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add nuw nsw i64 %247, %238
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !93, !noalias !100
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next896, %233
  br i1 %251, label %polly.loop_exit749, label %vector.body889, !llvm.loop !101

polly.loop_exit749:                               ; preds = %vector.body889, %polly.loop_header747
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond803.not = icmp eq i64 %polly.indvar744, %231
  br i1 %exitcond803.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_header741, %polly.loop_header747
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_header747 ], [ 0, %polly.loop_header741 ]
  %252 = add nuw nsw i64 %polly.indvar750, %234
  %253 = trunc i64 %252 to i32
  %254 = mul i32 %253, %237
  %255 = add i32 %254, 1
  %256 = urem i32 %255, 1200
  %p_conv.i = sitofp i32 %256 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %257 = shl i64 %252, 3
  %258 = add nuw nsw i64 %257, %238
  %scevgep754 = getelementptr i8, i8* %call1, i64 %258
  %scevgep754755 = bitcast i8* %scevgep754 to double*
  store double %p_div.i, double* %scevgep754755, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond799.not = icmp eq i64 %polly.indvar750, %235
  br i1 %exitcond799.not, label %polly.loop_exit749, label %polly.loop_header747, !llvm.loop !102

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_exit225
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_exit225 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %259 = add nuw nsw i64 %polly.indvar226.1, %98
  %260 = mul nuw nsw i64 %259, 8000
  %scevgep230.1 = getelementptr i8, i8* %scevgep229, i64 %260
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep233, i64 %260
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_244.1, %_p_scalar_240.1
  %261 = shl i64 %259, 3
  %262 = add nuw nsw i64 %261, %104
  %scevgep245.1 = getelementptr i8, i8* %call, i64 %262
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_247.1
  store double %p_add42.i118.1, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %scevgep234.2 = getelementptr i8, i8* %scevgep233, i64 %106
  %scevgep234235.2 = bitcast i8* %scevgep234.2 to double*
  %_p_scalar_236.2 = load double, double* %scevgep234235.2, align 8, !alias.scope !66, !noalias !70
  %scevgep242.2 = getelementptr i8, i8* %scevgep229, i64 %106
  %scevgep242243.2 = bitcast i8* %scevgep242.2 to double*
  %_p_scalar_244.2 = load double, double* %scevgep242243.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_exit225.1
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_exit225.1 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %263 = add nuw nsw i64 %polly.indvar226.2, %98
  %264 = mul nuw nsw i64 %263, 8000
  %scevgep230.2 = getelementptr i8, i8* %scevgep229, i64 %264
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep233, i64 %264
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_244.2, %_p_scalar_240.2
  %265 = shl i64 %263, 3
  %266 = add nuw nsw i64 %265, %107
  %scevgep245.2 = getelementptr i8, i8* %call, i64 %266
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_247.2
  store double %p_add42.i118.2, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %scevgep234.3 = getelementptr i8, i8* %scevgep233, i64 %109
  %scevgep234235.3 = bitcast i8* %scevgep234.3 to double*
  %_p_scalar_236.3 = load double, double* %scevgep234235.3, align 8, !alias.scope !66, !noalias !70
  %scevgep242.3 = getelementptr i8, i8* %scevgep229, i64 %109
  %scevgep242243.3 = bitcast i8* %scevgep242.3 to double*
  %_p_scalar_244.3 = load double, double* %scevgep242243.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_exit225.2
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_exit225.2 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %267 = add nuw nsw i64 %polly.indvar226.3, %98
  %268 = mul nuw nsw i64 %267, 8000
  %scevgep230.3 = getelementptr i8, i8* %scevgep229, i64 %268
  %scevgep230231.3 = bitcast i8* %scevgep230.3 to double*
  %_p_scalar_232.3 = load double, double* %scevgep230231.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_236.3, %_p_scalar_232.3
  %scevgep238.3 = getelementptr i8, i8* %scevgep233, i64 %268
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_244.3, %_p_scalar_240.3
  %269 = shl i64 %267, 3
  %270 = add nuw nsw i64 %269, %110
  %scevgep245.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_247.3
  store double %p_add42.i118.3, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_exit376
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_exit376 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %271 = add nuw nsw i64 %polly.indvar377.1, %126
  %272 = mul nuw nsw i64 %271, 8000
  %scevgep381.1 = getelementptr i8, i8* %scevgep380, i64 %272
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_383.1
  %scevgep389.1 = getelementptr i8, i8* %scevgep384, i64 %272
  %scevgep389390.1 = bitcast i8* %scevgep389.1 to double*
  %_p_scalar_391.1 = load double, double* %scevgep389390.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_395.1, %_p_scalar_391.1
  %273 = shl i64 %271, 3
  %274 = add nuw nsw i64 %273, %132
  %scevgep396.1 = getelementptr i8, i8* %call, i64 %274
  %scevgep396397.1 = bitcast i8* %scevgep396.1 to double*
  %_p_scalar_398.1 = load double, double* %scevgep396397.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_398.1
  store double %p_add42.i79.1, double* %scevgep396397.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar377.1, %smin776.1
  br i1 %exitcond777.1.not, label %polly.loop_exit376.1, label %polly.loop_header374.1

polly.loop_exit376.1:                             ; preds = %polly.loop_header374.1
  %scevgep385.2 = getelementptr i8, i8* %scevgep384, i64 %134
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !76, !noalias !79
  %scevgep393.2 = getelementptr i8, i8* %scevgep380, i64 %134
  %scevgep393394.2 = bitcast i8* %scevgep393.2 to double*
  %_p_scalar_395.2 = load double, double* %scevgep393394.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.2

polly.loop_header374.2:                           ; preds = %polly.loop_header374.2, %polly.loop_exit376.1
  %polly.indvar377.2 = phi i64 [ 0, %polly.loop_exit376.1 ], [ %polly.indvar_next378.2, %polly.loop_header374.2 ]
  %275 = add nuw nsw i64 %polly.indvar377.2, %126
  %276 = mul nuw nsw i64 %275, 8000
  %scevgep381.2 = getelementptr i8, i8* %scevgep380, i64 %276
  %scevgep381382.2 = bitcast i8* %scevgep381.2 to double*
  %_p_scalar_383.2 = load double, double* %scevgep381382.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_383.2
  %scevgep389.2 = getelementptr i8, i8* %scevgep384, i64 %276
  %scevgep389390.2 = bitcast i8* %scevgep389.2 to double*
  %_p_scalar_391.2 = load double, double* %scevgep389390.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_395.2, %_p_scalar_391.2
  %277 = shl i64 %275, 3
  %278 = add nuw nsw i64 %277, %135
  %scevgep396.2 = getelementptr i8, i8* %call, i64 %278
  %scevgep396397.2 = bitcast i8* %scevgep396.2 to double*
  %_p_scalar_398.2 = load double, double* %scevgep396397.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_398.2
  store double %p_add42.i79.2, double* %scevgep396397.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.2 = add nuw nsw i64 %polly.indvar377.2, 1
  %exitcond777.2.not = icmp eq i64 %polly.indvar377.2, %smin776.2
  br i1 %exitcond777.2.not, label %polly.loop_exit376.2, label %polly.loop_header374.2

polly.loop_exit376.2:                             ; preds = %polly.loop_header374.2
  %scevgep385.3 = getelementptr i8, i8* %scevgep384, i64 %137
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !76, !noalias !79
  %scevgep393.3 = getelementptr i8, i8* %scevgep380, i64 %137
  %scevgep393394.3 = bitcast i8* %scevgep393.3 to double*
  %_p_scalar_395.3 = load double, double* %scevgep393394.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.3

polly.loop_header374.3:                           ; preds = %polly.loop_header374.3, %polly.loop_exit376.2
  %polly.indvar377.3 = phi i64 [ 0, %polly.loop_exit376.2 ], [ %polly.indvar_next378.3, %polly.loop_header374.3 ]
  %279 = add nuw nsw i64 %polly.indvar377.3, %126
  %280 = mul nuw nsw i64 %279, 8000
  %scevgep381.3 = getelementptr i8, i8* %scevgep380, i64 %280
  %scevgep381382.3 = bitcast i8* %scevgep381.3 to double*
  %_p_scalar_383.3 = load double, double* %scevgep381382.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_383.3
  %scevgep389.3 = getelementptr i8, i8* %scevgep384, i64 %280
  %scevgep389390.3 = bitcast i8* %scevgep389.3 to double*
  %_p_scalar_391.3 = load double, double* %scevgep389390.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_395.3, %_p_scalar_391.3
  %281 = shl i64 %279, 3
  %282 = add nuw nsw i64 %281, %138
  %scevgep396.3 = getelementptr i8, i8* %call, i64 %282
  %scevgep396397.3 = bitcast i8* %scevgep396.3 to double*
  %_p_scalar_398.3 = load double, double* %scevgep396397.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_398.3
  store double %p_add42.i79.3, double* %scevgep396397.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.3 = add nuw nsw i64 %polly.indvar377.3, 1
  %exitcond777.3.not = icmp eq i64 %polly.indvar377.3, %smin776.3
  br i1 %exitcond777.3.not, label %polly.loop_exit376.3, label %polly.loop_header374.3

polly.loop_exit376.3:                             ; preds = %polly.loop_header374.3
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next366, 1000
  br i1 %exitcond779.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header525.1:                           ; preds = %polly.loop_header525.1, %polly.loop_exit527
  %polly.indvar528.1 = phi i64 [ 0, %polly.loop_exit527 ], [ %polly.indvar_next529.1, %polly.loop_header525.1 ]
  %283 = add nuw nsw i64 %polly.indvar528.1, %154
  %284 = mul nuw nsw i64 %283, 8000
  %scevgep532.1 = getelementptr i8, i8* %scevgep531, i64 %284
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_538.1, %_p_scalar_534.1
  %scevgep540.1 = getelementptr i8, i8* %scevgep535, i64 %284
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_542.1
  %285 = shl i64 %283, 3
  %286 = add nuw nsw i64 %285, %160
  %scevgep547.1 = getelementptr i8, i8* %call, i64 %286
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_549.1
  store double %p_add42.i.1, double* %scevgep547548.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.1 = add nuw nsw i64 %polly.indvar528.1, 1
  %exitcond789.1.not = icmp eq i64 %polly.indvar528.1, %smin788.1
  br i1 %exitcond789.1.not, label %polly.loop_exit527.1, label %polly.loop_header525.1

polly.loop_exit527.1:                             ; preds = %polly.loop_header525.1
  %scevgep536.2 = getelementptr i8, i8* %scevgep535, i64 %162
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %scevgep544.2 = getelementptr i8, i8* %scevgep531, i64 %162
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.2

polly.loop_header525.2:                           ; preds = %polly.loop_header525.2, %polly.loop_exit527.1
  %polly.indvar528.2 = phi i64 [ 0, %polly.loop_exit527.1 ], [ %polly.indvar_next529.2, %polly.loop_header525.2 ]
  %287 = add nuw nsw i64 %polly.indvar528.2, %154
  %288 = mul nuw nsw i64 %287, 8000
  %scevgep532.2 = getelementptr i8, i8* %scevgep531, i64 %288
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_538.2, %_p_scalar_534.2
  %scevgep540.2 = getelementptr i8, i8* %scevgep535, i64 %288
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_542.2
  %289 = shl i64 %287, 3
  %290 = add nuw nsw i64 %289, %163
  %scevgep547.2 = getelementptr i8, i8* %call, i64 %290
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_549.2
  store double %p_add42.i.2, double* %scevgep547548.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.2 = add nuw nsw i64 %polly.indvar528.2, 1
  %exitcond789.2.not = icmp eq i64 %polly.indvar528.2, %smin788.2
  br i1 %exitcond789.2.not, label %polly.loop_exit527.2, label %polly.loop_header525.2

polly.loop_exit527.2:                             ; preds = %polly.loop_header525.2
  %scevgep536.3 = getelementptr i8, i8* %scevgep535, i64 %165
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !85, !noalias !88
  %scevgep544.3 = getelementptr i8, i8* %scevgep531, i64 %165
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.3

polly.loop_header525.3:                           ; preds = %polly.loop_header525.3, %polly.loop_exit527.2
  %polly.indvar528.3 = phi i64 [ 0, %polly.loop_exit527.2 ], [ %polly.indvar_next529.3, %polly.loop_header525.3 ]
  %291 = add nuw nsw i64 %polly.indvar528.3, %154
  %292 = mul nuw nsw i64 %291, 8000
  %scevgep532.3 = getelementptr i8, i8* %scevgep531, i64 %292
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_538.3, %_p_scalar_534.3
  %scevgep540.3 = getelementptr i8, i8* %scevgep535, i64 %292
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_542.3
  %293 = shl i64 %291, 3
  %294 = add nuw nsw i64 %293, %166
  %scevgep547.3 = getelementptr i8, i8* %call, i64 %294
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_549.3
  store double %p_add42.i.3, double* %scevgep547548.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.3 = add nuw nsw i64 %polly.indvar528.3, 1
  %exitcond789.3.not = icmp eq i64 %polly.indvar528.3, %smin788.3
  br i1 %exitcond789.3.not, label %polly.loop_exit527.3, label %polly.loop_header525.3

polly.loop_exit527.3:                             ; preds = %polly.loop_header525.3
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next517, 1000
  br i1 %exitcond791.not, label %polly.loop_exit515, label %polly.loop_header513
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
!24 = !{!"llvm.loop.tile.size", i32 80}
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
!44 = !{!"llvm.loop.tile.size", i32 4}
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
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
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
