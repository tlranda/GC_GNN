; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8225.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8225.c"
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
  %97 = shl nuw nsw i64 %polly.indvar202, 5
  %98 = shl nsw i64 %polly.indvar202, 8
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 5
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %97, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 255)
  %100 = mul nsw i64 %polly.indvar208, 64000
  %101 = mul nsw i64 %polly.indvar208, 76800
  %indvars.iv.next765 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765, i64 255)
  %102 = or i64 %99, 1
  %103 = mul nuw nsw i64 %102, 8000
  %104 = mul nuw nsw i64 %102, 9600
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv.next765, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.1, i64 255)
  %105 = or i64 %99, 2
  %106 = mul nuw nsw i64 %105, 8000
  %107 = mul nuw nsw i64 %105, 9600
  %indvars.iv.next765.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.2, i64 255)
  %108 = or i64 %99, 3
  %109 = mul nuw nsw i64 %108, 8000
  %110 = mul nuw nsw i64 %108, 9600
  %indvars.iv.next765.3 = add nuw nsw i64 %indvars.iv.next765.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.3, i64 255)
  %111 = or i64 %99, 4
  %112 = mul nuw nsw i64 %111, 8000
  %113 = mul nuw nsw i64 %111, 9600
  %indvars.iv.next765.4 = add nuw nsw i64 %indvars.iv.next765.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.4, i64 255)
  %114 = or i64 %99, 5
  %115 = mul nuw nsw i64 %114, 8000
  %116 = mul nuw nsw i64 %114, 9600
  %indvars.iv.next765.5 = add nuw nsw i64 %indvars.iv.next765.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.5, i64 255)
  %117 = or i64 %99, 6
  %118 = mul nuw nsw i64 %117, 8000
  %119 = mul nuw nsw i64 %117, 9600
  %indvars.iv.next765.6 = or i64 %indvars.iv, 7
  %smin.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next765.6, i64 255)
  %120 = or i64 %99, 7
  %121 = mul nuw nsw i64 %120, 8000
  %122 = mul nuw nsw i64 %120, 9600
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.7
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 150
  br i1 %exitcond768.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.7, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit225.7 ]
  %123 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %123
  %scevgep233 = getelementptr i8, i8* %call2, i64 %123
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
  %124 = add nuw nsw i64 %polly.indvar226, %98
  %125 = mul nuw nsw i64 %124, 8000
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %125
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %125
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %126 = shl i64 %124, 3
  %127 = add nuw nsw i64 %126, %101
  %scevgep245 = getelementptr i8, i8* %call, i64 %127
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
  %128 = add i64 %indvar943, 1
  %129 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check945 = icmp ult i64 %128, 4
  br i1 %min.iters.check945, label %polly.loop_header340.preheader, label %vector.ph946

vector.ph946:                                     ; preds = %polly.loop_header334
  %n.vec948 = and i64 %128, -4
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph946
  %index949 = phi i64 [ 0, %vector.ph946 ], [ %index.next950, %vector.body942 ]
  %130 = shl nuw nsw i64 %index949, 3
  %131 = getelementptr i8, i8* %scevgep346, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load953 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !72, !noalias !74
  %133 = fmul fast <4 x double> %wide.load953, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !72, !noalias !74
  %index.next950 = add i64 %index949, 4
  %135 = icmp eq i64 %index.next950, %n.vec948
  br i1 %135, label %middle.block940, label %vector.body942, !llvm.loop !77

middle.block940:                                  ; preds = %vector.body942
  %cmp.n952 = icmp eq i64 %128, %n.vec948
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
  %136 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %136
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond782.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %137 = shl nuw nsw i64 %polly.indvar353, 5
  %138 = shl nsw i64 %polly.indvar353, 8
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next354, 5
  br i1 %exitcond781.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header350
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit364 ], [ 0, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ %137, %polly.loop_header350 ]
  %139 = shl nsw i64 %polly.indvar359, 3
  %smin776 = call i64 @llvm.smin.i64(i64 %indvars.iv772, i64 255)
  %140 = mul nsw i64 %polly.indvar359, 64000
  %141 = mul nsw i64 %polly.indvar359, 76800
  %indvars.iv.next775 = or i64 %indvars.iv772, 1
  %smin776.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775, i64 255)
  %142 = or i64 %139, 1
  %143 = mul nuw nsw i64 %142, 8000
  %144 = mul nuw nsw i64 %142, 9600
  %indvars.iv.next775.1 = add nuw nsw i64 %indvars.iv.next775, 1
  %smin776.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.1, i64 255)
  %145 = or i64 %139, 2
  %146 = mul nuw nsw i64 %145, 8000
  %147 = mul nuw nsw i64 %145, 9600
  %indvars.iv.next775.2 = or i64 %indvars.iv772, 3
  %smin776.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.2, i64 255)
  %148 = or i64 %139, 3
  %149 = mul nuw nsw i64 %148, 8000
  %150 = mul nuw nsw i64 %148, 9600
  %indvars.iv.next775.3 = add nuw nsw i64 %indvars.iv.next775.2, 1
  %smin776.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.3, i64 255)
  %151 = or i64 %139, 4
  %152 = mul nuw nsw i64 %151, 8000
  %153 = mul nuw nsw i64 %151, 9600
  %indvars.iv.next775.4 = add nuw nsw i64 %indvars.iv.next775.2, 2
  %smin776.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.4, i64 255)
  %154 = or i64 %139, 5
  %155 = mul nuw nsw i64 %154, 8000
  %156 = mul nuw nsw i64 %154, 9600
  %indvars.iv.next775.5 = add nuw nsw i64 %indvars.iv.next775.2, 3
  %smin776.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.5, i64 255)
  %157 = or i64 %139, 6
  %158 = mul nuw nsw i64 %157, 8000
  %159 = mul nuw nsw i64 %157, 9600
  %indvars.iv.next775.6 = or i64 %indvars.iv772, 7
  %smin776.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next775.6, i64 255)
  %160 = or i64 %139, 7
  %161 = mul nuw nsw i64 %160, 8000
  %162 = mul nuw nsw i64 %160, 9600
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit376.7
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 8
  %exitcond780.not = icmp eq i64 %polly.indvar_next360, 150
  br i1 %exitcond780.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit376.7, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit376.7 ]
  %163 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep380 = getelementptr i8, i8* %call1, i64 %163
  %scevgep384 = getelementptr i8, i8* %call2, i64 %163
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %140
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !76, !noalias !79
  %scevgep393 = getelementptr i8, i8* %scevgep380, i64 %140
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %scevgep385.1 = getelementptr i8, i8* %scevgep384, i64 %143
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !76, !noalias !79
  %scevgep393.1 = getelementptr i8, i8* %scevgep380, i64 %143
  %scevgep393394.1 = bitcast i8* %scevgep393.1 to double*
  %_p_scalar_395.1 = load double, double* %scevgep393394.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.1

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header362
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header362 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %164 = add nuw nsw i64 %polly.indvar377, %138
  %165 = mul nuw nsw i64 %164, 8000
  %scevgep381 = getelementptr i8, i8* %scevgep380, i64 %165
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_387, %_p_scalar_383
  %scevgep389 = getelementptr i8, i8* %scevgep384, i64 %165
  %scevgep389390 = bitcast i8* %scevgep389 to double*
  %_p_scalar_391 = load double, double* %scevgep389390, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_395, %_p_scalar_391
  %166 = shl i64 %164, 3
  %167 = add nuw nsw i64 %166, %141
  %scevgep396 = getelementptr i8, i8* %call, i64 %167
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
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar488, 9600
  %scevgep497 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check919 = icmp ult i64 %168, 4
  br i1 %min.iters.check919, label %polly.loop_header491.preheader, label %vector.ph920

vector.ph920:                                     ; preds = %polly.loop_header485
  %n.vec922 = and i64 %168, -4
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next924, %vector.body918 ]
  %170 = shl nuw nsw i64 %index923, 3
  %171 = getelementptr i8, i8* %scevgep497, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load927 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !81, !noalias !83
  %173 = fmul fast <4 x double> %wide.load927, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !81, !noalias !83
  %index.next924 = add i64 %index923, 4
  %175 = icmp eq i64 %index.next924, %n.vec922
  br i1 %175, label %middle.block916, label %vector.body918, !llvm.loop !86

middle.block916:                                  ; preds = %vector.body918
  %cmp.n926 = icmp eq i64 %168, %n.vec922
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
  %176 = shl nuw nsw i64 %polly.indvar494, 3
  %scevgep498 = getelementptr i8, i8* %scevgep497, i64 %176
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_500, 1.200000e+00
  store double %p_mul.i, double* %scevgep498499, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next495, %polly.indvar488
  br i1 %exitcond794.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !87

polly.loop_header501:                             ; preds = %polly.loop_exit493, %polly.loop_exit509
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_exit509 ], [ 0, %polly.loop_exit493 ]
  %177 = shl nuw nsw i64 %polly.indvar504, 5
  %178 = shl nsw i64 %polly.indvar504, 8
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_exit515
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next505, 5
  br i1 %exitcond793.not, label %kernel_syr2k.exit, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_exit515, %polly.loop_header501
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit515 ], [ 0, %polly.loop_header501 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ %177, %polly.loop_header501 ]
  %179 = shl nsw i64 %polly.indvar510, 3
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv784, i64 255)
  %180 = mul nsw i64 %polly.indvar510, 64000
  %181 = mul nsw i64 %polly.indvar510, 76800
  %indvars.iv.next787 = or i64 %indvars.iv784, 1
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787, i64 255)
  %182 = or i64 %179, 1
  %183 = mul nuw nsw i64 %182, 8000
  %184 = mul nuw nsw i64 %182, 9600
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv.next787, 1
  %smin788.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.1, i64 255)
  %185 = or i64 %179, 2
  %186 = mul nuw nsw i64 %185, 8000
  %187 = mul nuw nsw i64 %185, 9600
  %indvars.iv.next787.2 = or i64 %indvars.iv784, 3
  %smin788.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.2, i64 255)
  %188 = or i64 %179, 3
  %189 = mul nuw nsw i64 %188, 8000
  %190 = mul nuw nsw i64 %188, 9600
  %indvars.iv.next787.3 = add nuw nsw i64 %indvars.iv.next787.2, 1
  %smin788.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.3, i64 255)
  %191 = or i64 %179, 4
  %192 = mul nuw nsw i64 %191, 8000
  %193 = mul nuw nsw i64 %191, 9600
  %indvars.iv.next787.4 = add nuw nsw i64 %indvars.iv.next787.2, 2
  %smin788.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.4, i64 255)
  %194 = or i64 %179, 5
  %195 = mul nuw nsw i64 %194, 8000
  %196 = mul nuw nsw i64 %194, 9600
  %indvars.iv.next787.5 = add nuw nsw i64 %indvars.iv.next787.2, 3
  %smin788.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.5, i64 255)
  %197 = or i64 %179, 6
  %198 = mul nuw nsw i64 %197, 8000
  %199 = mul nuw nsw i64 %197, 9600
  %indvars.iv.next787.6 = or i64 %indvars.iv784, 7
  %smin788.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next787.6, i64 255)
  %200 = or i64 %179, 7
  %201 = mul nuw nsw i64 %200, 8000
  %202 = mul nuw nsw i64 %200, 9600
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit527.7
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 8
  %exitcond792.not = icmp eq i64 %polly.indvar_next511, 150
  br i1 %exitcond792.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit527.7, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit527.7 ]
  %203 = shl nuw nsw i64 %polly.indvar516, 3
  %scevgep531 = getelementptr i8, i8* %call1, i64 %203
  %scevgep535 = getelementptr i8, i8* %call2, i64 %203
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %180
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %scevgep544 = getelementptr i8, i8* %scevgep531, i64 %180
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_header525
  %scevgep536.1 = getelementptr i8, i8* %scevgep535, i64 %183
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %scevgep544.1 = getelementptr i8, i8* %scevgep531, i64 %183
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.1

polly.loop_header525:                             ; preds = %polly.loop_header525, %polly.loop_header513
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header513 ], [ %polly.indvar_next529, %polly.loop_header525 ]
  %204 = add nuw nsw i64 %polly.indvar528, %178
  %205 = mul nuw nsw i64 %204, 8000
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %205
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_538, %_p_scalar_534
  %scevgep540 = getelementptr i8, i8* %scevgep535, i64 %205
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_546, %_p_scalar_542
  %206 = shl i64 %204, 3
  %207 = add nuw nsw i64 %206, %181
  %scevgep547 = getelementptr i8, i8* %call, i64 %207
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
  %208 = shl nsw i64 %polly.indvar679, 5
  %209 = add nsw i64 %smin822, 1199
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_exit690
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond825.not = icmp eq i64 %polly.indvar_next680, 38
  br i1 %exitcond825.not, label %polly.loop_header703, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_exit690, %polly.loop_header676
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %210 = mul nsw i64 %polly.indvar685, -32
  %smin857 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin857, 1200
  %smin818 = call i64 @llvm.smin.i64(i64 %indvars.iv816, i64 -1168)
  %212 = shl nsw i64 %polly.indvar685, 5
  %213 = add nsw i64 %smin818, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond824.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %polly.indvar691 = phi i64 [ 0, %polly.loop_header682 ], [ %polly.indvar_next692, %polly.loop_exit696 ]
  %214 = add nuw nsw i64 %polly.indvar691, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header694, label %vector.ph858

vector.ph858:                                     ; preds = %polly.loop_header688
  %broadcast.splatinsert865 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat866 = shufflevector <4 x i64> %broadcast.splatinsert865, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat868 = shufflevector <4 x i32> %broadcast.splatinsert867, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph858
  %index859 = phi i64 [ 0, %vector.ph858 ], [ %index.next860, %vector.body856 ]
  %vec.ind863 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph858 ], [ %vec.ind.next864, %vector.body856 ]
  %217 = add nuw nsw <4 x i64> %vec.ind863, %broadcast.splat866
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat868, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !90, !noalias !92
  %index.next860 = add i64 %index859, 4
  %vec.ind.next864 = add <4 x i64> %vec.ind863, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next860, %211
  br i1 %229, label %polly.loop_exit696, label %vector.body856, !llvm.loop !95

polly.loop_exit696:                               ; preds = %vector.body856, %polly.loop_header694
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %exitcond823.not = icmp eq i64 %polly.indvar691, %209
  br i1 %exitcond823.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_header688, %polly.loop_header694
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_header694 ], [ 0, %polly.loop_header688 ]
  %230 = add nuw nsw i64 %polly.indvar697, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep700 = getelementptr i8, i8* %call, i64 %236
  %scevgep700701 = bitcast i8* %scevgep700 to double*
  store double %p_div33.i, double* %scevgep700701, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond819.not = icmp eq i64 %polly.indvar697, %213
  br i1 %exitcond819.not, label %polly.loop_exit696, label %polly.loop_header694, !llvm.loop !96

polly.loop_header703:                             ; preds = %polly.loop_exit684, %polly.loop_exit711
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 -1168)
  %237 = shl nsw i64 %polly.indvar706, 5
  %238 = add nsw i64 %smin812, 1199
  br label %polly.loop_header709

polly.loop_exit711:                               ; preds = %polly.loop_exit717
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -32
  %exitcond815.not = icmp eq i64 %polly.indvar_next707, 38
  br i1 %exitcond815.not, label %polly.loop_header729, label %polly.loop_header703

polly.loop_header709:                             ; preds = %polly.loop_exit717, %polly.loop_header703
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %239 = mul nsw i64 %polly.indvar712, -32
  %smin872 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin872, 1000
  %smin808 = call i64 @llvm.smin.i64(i64 %indvars.iv806, i64 -968)
  %241 = shl nsw i64 %polly.indvar712, 5
  %242 = add nsw i64 %smin808, 999
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, -32
  %exitcond814.not = icmp eq i64 %polly.indvar_next713, 32
  br i1 %exitcond814.not, label %polly.loop_exit711, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %polly.indvar718 = phi i64 [ 0, %polly.loop_header709 ], [ %polly.indvar_next719, %polly.loop_exit723 ]
  %243 = add nuw nsw i64 %polly.indvar718, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check873 = icmp eq i64 %240, 0
  br i1 %min.iters.check873, label %polly.loop_header721, label %vector.ph874

vector.ph874:                                     ; preds = %polly.loop_header715
  %broadcast.splatinsert883 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat884 = shufflevector <4 x i64> %broadcast.splatinsert883, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next878, %vector.body871 ]
  %vec.ind881 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph874 ], [ %vec.ind.next882, %vector.body871 ]
  %246 = add nuw nsw <4 x i64> %vec.ind881, %broadcast.splat884
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat886, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !94, !noalias !97
  %index.next878 = add i64 %index877, 4
  %vec.ind.next882 = add <4 x i64> %vec.ind881, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next878, %240
  br i1 %258, label %polly.loop_exit723, label %vector.body871, !llvm.loop !98

polly.loop_exit723:                               ; preds = %vector.body871, %polly.loop_header721
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %exitcond813.not = icmp eq i64 %polly.indvar718, %238
  br i1 %exitcond813.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_header715, %polly.loop_header721
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_header721 ], [ 0, %polly.loop_header715 ]
  %259 = add nuw nsw i64 %polly.indvar724, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep727 = getelementptr i8, i8* %call2, i64 %265
  %scevgep727728 = bitcast i8* %scevgep727 to double*
  store double %p_div12.i, double* %scevgep727728, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond809.not = icmp eq i64 %polly.indvar724, %242
  br i1 %exitcond809.not, label %polly.loop_exit723, label %polly.loop_header721, !llvm.loop !99

polly.loop_header729:                             ; preds = %polly.loop_exit711, %polly.loop_exit737
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %smin802 = call i64 @llvm.smin.i64(i64 %indvars.iv800, i64 -1168)
  %266 = shl nsw i64 %polly.indvar732, 5
  %267 = add nsw i64 %smin802, 1199
  br label %polly.loop_header735

polly.loop_exit737:                               ; preds = %polly.loop_exit743
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, -32
  %exitcond805.not = icmp eq i64 %polly.indvar_next733, 38
  br i1 %exitcond805.not, label %init_array.exit, label %polly.loop_header729

polly.loop_header735:                             ; preds = %polly.loop_exit743, %polly.loop_header729
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %268 = mul nsw i64 %polly.indvar738, -32
  %smin890 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin890, 1000
  %smin798 = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 -968)
  %270 = shl nsw i64 %polly.indvar738, 5
  %271 = add nsw i64 %smin798, 999
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, -32
  %exitcond804.not = icmp eq i64 %polly.indvar_next739, 32
  br i1 %exitcond804.not, label %polly.loop_exit737, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_exit749 ]
  %272 = add nuw nsw i64 %polly.indvar744, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check891 = icmp eq i64 %269, 0
  br i1 %min.iters.check891, label %polly.loop_header747, label %vector.ph892

vector.ph892:                                     ; preds = %polly.loop_header741
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph892
  %index895 = phi i64 [ 0, %vector.ph892 ], [ %index.next896, %vector.body889 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph892 ], [ %vec.ind.next900, %vector.body889 ]
  %275 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat904, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !93, !noalias !100
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next896, %269
  br i1 %287, label %polly.loop_exit749, label %vector.body889, !llvm.loop !101

polly.loop_exit749:                               ; preds = %vector.body889, %polly.loop_header747
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond803.not = icmp eq i64 %polly.indvar744, %267
  br i1 %exitcond803.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_header741, %polly.loop_header747
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_header747 ], [ 0, %polly.loop_header741 ]
  %288 = add nuw nsw i64 %polly.indvar750, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep754 = getelementptr i8, i8* %call1, i64 %294
  %scevgep754755 = bitcast i8* %scevgep754 to double*
  store double %p_div.i, double* %scevgep754755, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond799.not = icmp eq i64 %polly.indvar750, %271
  br i1 %exitcond799.not, label %polly.loop_exit749, label %polly.loop_header747, !llvm.loop !102

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_exit225
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_exit225 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %295 = add nuw nsw i64 %polly.indvar226.1, %98
  %296 = mul nuw nsw i64 %295, 8000
  %scevgep230.1 = getelementptr i8, i8* %scevgep229, i64 %296
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep233, i64 %296
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_244.1, %_p_scalar_240.1
  %297 = shl i64 %295, 3
  %298 = add nuw nsw i64 %297, %104
  %scevgep245.1 = getelementptr i8, i8* %call, i64 %298
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
  %299 = add nuw nsw i64 %polly.indvar226.2, %98
  %300 = mul nuw nsw i64 %299, 8000
  %scevgep230.2 = getelementptr i8, i8* %scevgep229, i64 %300
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep233, i64 %300
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_244.2, %_p_scalar_240.2
  %301 = shl i64 %299, 3
  %302 = add nuw nsw i64 %301, %107
  %scevgep245.2 = getelementptr i8, i8* %call, i64 %302
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
  %303 = add nuw nsw i64 %polly.indvar226.3, %98
  %304 = mul nuw nsw i64 %303, 8000
  %scevgep230.3 = getelementptr i8, i8* %scevgep229, i64 %304
  %scevgep230231.3 = bitcast i8* %scevgep230.3 to double*
  %_p_scalar_232.3 = load double, double* %scevgep230231.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_236.3, %_p_scalar_232.3
  %scevgep238.3 = getelementptr i8, i8* %scevgep233, i64 %304
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_244.3, %_p_scalar_240.3
  %305 = shl i64 %303, 3
  %306 = add nuw nsw i64 %305, %110
  %scevgep245.3 = getelementptr i8, i8* %call, i64 %306
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
  %scevgep234.4 = getelementptr i8, i8* %scevgep233, i64 %112
  %scevgep234235.4 = bitcast i8* %scevgep234.4 to double*
  %_p_scalar_236.4 = load double, double* %scevgep234235.4, align 8, !alias.scope !66, !noalias !70
  %scevgep242.4 = getelementptr i8, i8* %scevgep229, i64 %112
  %scevgep242243.4 = bitcast i8* %scevgep242.4 to double*
  %_p_scalar_244.4 = load double, double* %scevgep242243.4, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_exit225.3
  %polly.indvar226.4 = phi i64 [ 0, %polly.loop_exit225.3 ], [ %polly.indvar_next227.4, %polly.loop_header223.4 ]
  %307 = add nuw nsw i64 %polly.indvar226.4, %98
  %308 = mul nuw nsw i64 %307, 8000
  %scevgep230.4 = getelementptr i8, i8* %scevgep229, i64 %308
  %scevgep230231.4 = bitcast i8* %scevgep230.4 to double*
  %_p_scalar_232.4 = load double, double* %scevgep230231.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_236.4, %_p_scalar_232.4
  %scevgep238.4 = getelementptr i8, i8* %scevgep233, i64 %308
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_244.4, %_p_scalar_240.4
  %309 = shl i64 %307, 3
  %310 = add nuw nsw i64 %309, %113
  %scevgep245.4 = getelementptr i8, i8* %call, i64 %310
  %scevgep245246.4 = bitcast i8* %scevgep245.4 to double*
  %_p_scalar_247.4 = load double, double* %scevgep245246.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_247.4
  store double %p_add42.i118.4, double* %scevgep245246.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar226.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4
  %scevgep234.5 = getelementptr i8, i8* %scevgep233, i64 %115
  %scevgep234235.5 = bitcast i8* %scevgep234.5 to double*
  %_p_scalar_236.5 = load double, double* %scevgep234235.5, align 8, !alias.scope !66, !noalias !70
  %scevgep242.5 = getelementptr i8, i8* %scevgep229, i64 %115
  %scevgep242243.5 = bitcast i8* %scevgep242.5 to double*
  %_p_scalar_244.5 = load double, double* %scevgep242243.5, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.5

polly.loop_header223.5:                           ; preds = %polly.loop_header223.5, %polly.loop_exit225.4
  %polly.indvar226.5 = phi i64 [ 0, %polly.loop_exit225.4 ], [ %polly.indvar_next227.5, %polly.loop_header223.5 ]
  %311 = add nuw nsw i64 %polly.indvar226.5, %98
  %312 = mul nuw nsw i64 %311, 8000
  %scevgep230.5 = getelementptr i8, i8* %scevgep229, i64 %312
  %scevgep230231.5 = bitcast i8* %scevgep230.5 to double*
  %_p_scalar_232.5 = load double, double* %scevgep230231.5, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.5 = fmul fast double %_p_scalar_236.5, %_p_scalar_232.5
  %scevgep238.5 = getelementptr i8, i8* %scevgep233, i64 %312
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.5 = fmul fast double %_p_scalar_244.5, %_p_scalar_240.5
  %313 = shl i64 %311, 3
  %314 = add nuw nsw i64 %313, %116
  %scevgep245.5 = getelementptr i8, i8* %call, i64 %314
  %scevgep245246.5 = bitcast i8* %scevgep245.5 to double*
  %_p_scalar_247.5 = load double, double* %scevgep245246.5, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_247.5
  store double %p_add42.i118.5, double* %scevgep245246.5, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.5 = add nuw nsw i64 %polly.indvar226.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar226.5, %smin.5
  br i1 %exitcond.5.not, label %polly.loop_exit225.5, label %polly.loop_header223.5

polly.loop_exit225.5:                             ; preds = %polly.loop_header223.5
  %scevgep234.6 = getelementptr i8, i8* %scevgep233, i64 %118
  %scevgep234235.6 = bitcast i8* %scevgep234.6 to double*
  %_p_scalar_236.6 = load double, double* %scevgep234235.6, align 8, !alias.scope !66, !noalias !70
  %scevgep242.6 = getelementptr i8, i8* %scevgep229, i64 %118
  %scevgep242243.6 = bitcast i8* %scevgep242.6 to double*
  %_p_scalar_244.6 = load double, double* %scevgep242243.6, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.6

polly.loop_header223.6:                           ; preds = %polly.loop_header223.6, %polly.loop_exit225.5
  %polly.indvar226.6 = phi i64 [ 0, %polly.loop_exit225.5 ], [ %polly.indvar_next227.6, %polly.loop_header223.6 ]
  %315 = add nuw nsw i64 %polly.indvar226.6, %98
  %316 = mul nuw nsw i64 %315, 8000
  %scevgep230.6 = getelementptr i8, i8* %scevgep229, i64 %316
  %scevgep230231.6 = bitcast i8* %scevgep230.6 to double*
  %_p_scalar_232.6 = load double, double* %scevgep230231.6, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.6 = fmul fast double %_p_scalar_236.6, %_p_scalar_232.6
  %scevgep238.6 = getelementptr i8, i8* %scevgep233, i64 %316
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.6 = fmul fast double %_p_scalar_244.6, %_p_scalar_240.6
  %317 = shl i64 %315, 3
  %318 = add nuw nsw i64 %317, %119
  %scevgep245.6 = getelementptr i8, i8* %call, i64 %318
  %scevgep245246.6 = bitcast i8* %scevgep245.6 to double*
  %_p_scalar_247.6 = load double, double* %scevgep245246.6, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_247.6
  store double %p_add42.i118.6, double* %scevgep245246.6, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.6 = add nuw nsw i64 %polly.indvar226.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar226.6, %smin.6
  br i1 %exitcond.6.not, label %polly.loop_exit225.6, label %polly.loop_header223.6

polly.loop_exit225.6:                             ; preds = %polly.loop_header223.6
  %scevgep234.7 = getelementptr i8, i8* %scevgep233, i64 %121
  %scevgep234235.7 = bitcast i8* %scevgep234.7 to double*
  %_p_scalar_236.7 = load double, double* %scevgep234235.7, align 8, !alias.scope !66, !noalias !70
  %scevgep242.7 = getelementptr i8, i8* %scevgep229, i64 %121
  %scevgep242243.7 = bitcast i8* %scevgep242.7 to double*
  %_p_scalar_244.7 = load double, double* %scevgep242243.7, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.7

polly.loop_header223.7:                           ; preds = %polly.loop_header223.7, %polly.loop_exit225.6
  %polly.indvar226.7 = phi i64 [ 0, %polly.loop_exit225.6 ], [ %polly.indvar_next227.7, %polly.loop_header223.7 ]
  %319 = add nuw nsw i64 %polly.indvar226.7, %98
  %320 = mul nuw nsw i64 %319, 8000
  %scevgep230.7 = getelementptr i8, i8* %scevgep229, i64 %320
  %scevgep230231.7 = bitcast i8* %scevgep230.7 to double*
  %_p_scalar_232.7 = load double, double* %scevgep230231.7, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.7 = fmul fast double %_p_scalar_236.7, %_p_scalar_232.7
  %scevgep238.7 = getelementptr i8, i8* %scevgep233, i64 %320
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.7 = fmul fast double %_p_scalar_244.7, %_p_scalar_240.7
  %321 = shl i64 %319, 3
  %322 = add nuw nsw i64 %321, %122
  %scevgep245.7 = getelementptr i8, i8* %call, i64 %322
  %scevgep245246.7 = bitcast i8* %scevgep245.7 to double*
  %_p_scalar_247.7 = load double, double* %scevgep245246.7, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_247.7
  store double %p_add42.i118.7, double* %scevgep245246.7, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.7 = add nuw nsw i64 %polly.indvar226.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar226.7, %smin.7
  br i1 %exitcond.7.not, label %polly.loop_exit225.7, label %polly.loop_header223.7

polly.loop_exit225.7:                             ; preds = %polly.loop_header223.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_exit376
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_exit376 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %323 = add nuw nsw i64 %polly.indvar377.1, %138
  %324 = mul nuw nsw i64 %323, 8000
  %scevgep381.1 = getelementptr i8, i8* %scevgep380, i64 %324
  %scevgep381382.1 = bitcast i8* %scevgep381.1 to double*
  %_p_scalar_383.1 = load double, double* %scevgep381382.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_383.1
  %scevgep389.1 = getelementptr i8, i8* %scevgep384, i64 %324
  %scevgep389390.1 = bitcast i8* %scevgep389.1 to double*
  %_p_scalar_391.1 = load double, double* %scevgep389390.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_395.1, %_p_scalar_391.1
  %325 = shl i64 %323, 3
  %326 = add nuw nsw i64 %325, %144
  %scevgep396.1 = getelementptr i8, i8* %call, i64 %326
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
  %scevgep385.2 = getelementptr i8, i8* %scevgep384, i64 %146
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !76, !noalias !79
  %scevgep393.2 = getelementptr i8, i8* %scevgep380, i64 %146
  %scevgep393394.2 = bitcast i8* %scevgep393.2 to double*
  %_p_scalar_395.2 = load double, double* %scevgep393394.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.2

polly.loop_header374.2:                           ; preds = %polly.loop_header374.2, %polly.loop_exit376.1
  %polly.indvar377.2 = phi i64 [ 0, %polly.loop_exit376.1 ], [ %polly.indvar_next378.2, %polly.loop_header374.2 ]
  %327 = add nuw nsw i64 %polly.indvar377.2, %138
  %328 = mul nuw nsw i64 %327, 8000
  %scevgep381.2 = getelementptr i8, i8* %scevgep380, i64 %328
  %scevgep381382.2 = bitcast i8* %scevgep381.2 to double*
  %_p_scalar_383.2 = load double, double* %scevgep381382.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_383.2
  %scevgep389.2 = getelementptr i8, i8* %scevgep384, i64 %328
  %scevgep389390.2 = bitcast i8* %scevgep389.2 to double*
  %_p_scalar_391.2 = load double, double* %scevgep389390.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_395.2, %_p_scalar_391.2
  %329 = shl i64 %327, 3
  %330 = add nuw nsw i64 %329, %147
  %scevgep396.2 = getelementptr i8, i8* %call, i64 %330
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
  %scevgep385.3 = getelementptr i8, i8* %scevgep384, i64 %149
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !76, !noalias !79
  %scevgep393.3 = getelementptr i8, i8* %scevgep380, i64 %149
  %scevgep393394.3 = bitcast i8* %scevgep393.3 to double*
  %_p_scalar_395.3 = load double, double* %scevgep393394.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.3

polly.loop_header374.3:                           ; preds = %polly.loop_header374.3, %polly.loop_exit376.2
  %polly.indvar377.3 = phi i64 [ 0, %polly.loop_exit376.2 ], [ %polly.indvar_next378.3, %polly.loop_header374.3 ]
  %331 = add nuw nsw i64 %polly.indvar377.3, %138
  %332 = mul nuw nsw i64 %331, 8000
  %scevgep381.3 = getelementptr i8, i8* %scevgep380, i64 %332
  %scevgep381382.3 = bitcast i8* %scevgep381.3 to double*
  %_p_scalar_383.3 = load double, double* %scevgep381382.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_383.3
  %scevgep389.3 = getelementptr i8, i8* %scevgep384, i64 %332
  %scevgep389390.3 = bitcast i8* %scevgep389.3 to double*
  %_p_scalar_391.3 = load double, double* %scevgep389390.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_395.3, %_p_scalar_391.3
  %333 = shl i64 %331, 3
  %334 = add nuw nsw i64 %333, %150
  %scevgep396.3 = getelementptr i8, i8* %call, i64 %334
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
  %scevgep385.4 = getelementptr i8, i8* %scevgep384, i64 %152
  %scevgep385386.4 = bitcast i8* %scevgep385.4 to double*
  %_p_scalar_387.4 = load double, double* %scevgep385386.4, align 8, !alias.scope !76, !noalias !79
  %scevgep393.4 = getelementptr i8, i8* %scevgep380, i64 %152
  %scevgep393394.4 = bitcast i8* %scevgep393.4 to double*
  %_p_scalar_395.4 = load double, double* %scevgep393394.4, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.4

polly.loop_header374.4:                           ; preds = %polly.loop_header374.4, %polly.loop_exit376.3
  %polly.indvar377.4 = phi i64 [ 0, %polly.loop_exit376.3 ], [ %polly.indvar_next378.4, %polly.loop_header374.4 ]
  %335 = add nuw nsw i64 %polly.indvar377.4, %138
  %336 = mul nuw nsw i64 %335, 8000
  %scevgep381.4 = getelementptr i8, i8* %scevgep380, i64 %336
  %scevgep381382.4 = bitcast i8* %scevgep381.4 to double*
  %_p_scalar_383.4 = load double, double* %scevgep381382.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_387.4, %_p_scalar_383.4
  %scevgep389.4 = getelementptr i8, i8* %scevgep384, i64 %336
  %scevgep389390.4 = bitcast i8* %scevgep389.4 to double*
  %_p_scalar_391.4 = load double, double* %scevgep389390.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_395.4, %_p_scalar_391.4
  %337 = shl i64 %335, 3
  %338 = add nuw nsw i64 %337, %153
  %scevgep396.4 = getelementptr i8, i8* %call, i64 %338
  %scevgep396397.4 = bitcast i8* %scevgep396.4 to double*
  %_p_scalar_398.4 = load double, double* %scevgep396397.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_398.4
  store double %p_add42.i79.4, double* %scevgep396397.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.4 = add nuw nsw i64 %polly.indvar377.4, 1
  %exitcond777.4.not = icmp eq i64 %polly.indvar377.4, %smin776.4
  br i1 %exitcond777.4.not, label %polly.loop_exit376.4, label %polly.loop_header374.4

polly.loop_exit376.4:                             ; preds = %polly.loop_header374.4
  %scevgep385.5 = getelementptr i8, i8* %scevgep384, i64 %155
  %scevgep385386.5 = bitcast i8* %scevgep385.5 to double*
  %_p_scalar_387.5 = load double, double* %scevgep385386.5, align 8, !alias.scope !76, !noalias !79
  %scevgep393.5 = getelementptr i8, i8* %scevgep380, i64 %155
  %scevgep393394.5 = bitcast i8* %scevgep393.5 to double*
  %_p_scalar_395.5 = load double, double* %scevgep393394.5, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.5

polly.loop_header374.5:                           ; preds = %polly.loop_header374.5, %polly.loop_exit376.4
  %polly.indvar377.5 = phi i64 [ 0, %polly.loop_exit376.4 ], [ %polly.indvar_next378.5, %polly.loop_header374.5 ]
  %339 = add nuw nsw i64 %polly.indvar377.5, %138
  %340 = mul nuw nsw i64 %339, 8000
  %scevgep381.5 = getelementptr i8, i8* %scevgep380, i64 %340
  %scevgep381382.5 = bitcast i8* %scevgep381.5 to double*
  %_p_scalar_383.5 = load double, double* %scevgep381382.5, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.5 = fmul fast double %_p_scalar_387.5, %_p_scalar_383.5
  %scevgep389.5 = getelementptr i8, i8* %scevgep384, i64 %340
  %scevgep389390.5 = bitcast i8* %scevgep389.5 to double*
  %_p_scalar_391.5 = load double, double* %scevgep389390.5, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.5 = fmul fast double %_p_scalar_395.5, %_p_scalar_391.5
  %341 = shl i64 %339, 3
  %342 = add nuw nsw i64 %341, %156
  %scevgep396.5 = getelementptr i8, i8* %call, i64 %342
  %scevgep396397.5 = bitcast i8* %scevgep396.5 to double*
  %_p_scalar_398.5 = load double, double* %scevgep396397.5, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_398.5
  store double %p_add42.i79.5, double* %scevgep396397.5, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.5 = add nuw nsw i64 %polly.indvar377.5, 1
  %exitcond777.5.not = icmp eq i64 %polly.indvar377.5, %smin776.5
  br i1 %exitcond777.5.not, label %polly.loop_exit376.5, label %polly.loop_header374.5

polly.loop_exit376.5:                             ; preds = %polly.loop_header374.5
  %scevgep385.6 = getelementptr i8, i8* %scevgep384, i64 %158
  %scevgep385386.6 = bitcast i8* %scevgep385.6 to double*
  %_p_scalar_387.6 = load double, double* %scevgep385386.6, align 8, !alias.scope !76, !noalias !79
  %scevgep393.6 = getelementptr i8, i8* %scevgep380, i64 %158
  %scevgep393394.6 = bitcast i8* %scevgep393.6 to double*
  %_p_scalar_395.6 = load double, double* %scevgep393394.6, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.6

polly.loop_header374.6:                           ; preds = %polly.loop_header374.6, %polly.loop_exit376.5
  %polly.indvar377.6 = phi i64 [ 0, %polly.loop_exit376.5 ], [ %polly.indvar_next378.6, %polly.loop_header374.6 ]
  %343 = add nuw nsw i64 %polly.indvar377.6, %138
  %344 = mul nuw nsw i64 %343, 8000
  %scevgep381.6 = getelementptr i8, i8* %scevgep380, i64 %344
  %scevgep381382.6 = bitcast i8* %scevgep381.6 to double*
  %_p_scalar_383.6 = load double, double* %scevgep381382.6, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.6 = fmul fast double %_p_scalar_387.6, %_p_scalar_383.6
  %scevgep389.6 = getelementptr i8, i8* %scevgep384, i64 %344
  %scevgep389390.6 = bitcast i8* %scevgep389.6 to double*
  %_p_scalar_391.6 = load double, double* %scevgep389390.6, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.6 = fmul fast double %_p_scalar_395.6, %_p_scalar_391.6
  %345 = shl i64 %343, 3
  %346 = add nuw nsw i64 %345, %159
  %scevgep396.6 = getelementptr i8, i8* %call, i64 %346
  %scevgep396397.6 = bitcast i8* %scevgep396.6 to double*
  %_p_scalar_398.6 = load double, double* %scevgep396397.6, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_398.6
  store double %p_add42.i79.6, double* %scevgep396397.6, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.6 = add nuw nsw i64 %polly.indvar377.6, 1
  %exitcond777.6.not = icmp eq i64 %polly.indvar377.6, %smin776.6
  br i1 %exitcond777.6.not, label %polly.loop_exit376.6, label %polly.loop_header374.6

polly.loop_exit376.6:                             ; preds = %polly.loop_header374.6
  %scevgep385.7 = getelementptr i8, i8* %scevgep384, i64 %161
  %scevgep385386.7 = bitcast i8* %scevgep385.7 to double*
  %_p_scalar_387.7 = load double, double* %scevgep385386.7, align 8, !alias.scope !76, !noalias !79
  %scevgep393.7 = getelementptr i8, i8* %scevgep380, i64 %161
  %scevgep393394.7 = bitcast i8* %scevgep393.7 to double*
  %_p_scalar_395.7 = load double, double* %scevgep393394.7, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header374.7

polly.loop_header374.7:                           ; preds = %polly.loop_header374.7, %polly.loop_exit376.6
  %polly.indvar377.7 = phi i64 [ 0, %polly.loop_exit376.6 ], [ %polly.indvar_next378.7, %polly.loop_header374.7 ]
  %347 = add nuw nsw i64 %polly.indvar377.7, %138
  %348 = mul nuw nsw i64 %347, 8000
  %scevgep381.7 = getelementptr i8, i8* %scevgep380, i64 %348
  %scevgep381382.7 = bitcast i8* %scevgep381.7 to double*
  %_p_scalar_383.7 = load double, double* %scevgep381382.7, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.7 = fmul fast double %_p_scalar_387.7, %_p_scalar_383.7
  %scevgep389.7 = getelementptr i8, i8* %scevgep384, i64 %348
  %scevgep389390.7 = bitcast i8* %scevgep389.7 to double*
  %_p_scalar_391.7 = load double, double* %scevgep389390.7, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.7 = fmul fast double %_p_scalar_395.7, %_p_scalar_391.7
  %349 = shl i64 %347, 3
  %350 = add nuw nsw i64 %349, %162
  %scevgep396.7 = getelementptr i8, i8* %call, i64 %350
  %scevgep396397.7 = bitcast i8* %scevgep396.7 to double*
  %_p_scalar_398.7 = load double, double* %scevgep396397.7, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_398.7
  store double %p_add42.i79.7, double* %scevgep396397.7, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next378.7 = add nuw nsw i64 %polly.indvar377.7, 1
  %exitcond777.7.not = icmp eq i64 %polly.indvar377.7, %smin776.7
  br i1 %exitcond777.7.not, label %polly.loop_exit376.7, label %polly.loop_header374.7

polly.loop_exit376.7:                             ; preds = %polly.loop_header374.7
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next366, 1000
  br i1 %exitcond779.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header525.1:                           ; preds = %polly.loop_header525.1, %polly.loop_exit527
  %polly.indvar528.1 = phi i64 [ 0, %polly.loop_exit527 ], [ %polly.indvar_next529.1, %polly.loop_header525.1 ]
  %351 = add nuw nsw i64 %polly.indvar528.1, %178
  %352 = mul nuw nsw i64 %351, 8000
  %scevgep532.1 = getelementptr i8, i8* %scevgep531, i64 %352
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_538.1, %_p_scalar_534.1
  %scevgep540.1 = getelementptr i8, i8* %scevgep535, i64 %352
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_542.1
  %353 = shl i64 %351, 3
  %354 = add nuw nsw i64 %353, %184
  %scevgep547.1 = getelementptr i8, i8* %call, i64 %354
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
  %scevgep536.2 = getelementptr i8, i8* %scevgep535, i64 %186
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %scevgep544.2 = getelementptr i8, i8* %scevgep531, i64 %186
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.2

polly.loop_header525.2:                           ; preds = %polly.loop_header525.2, %polly.loop_exit527.1
  %polly.indvar528.2 = phi i64 [ 0, %polly.loop_exit527.1 ], [ %polly.indvar_next529.2, %polly.loop_header525.2 ]
  %355 = add nuw nsw i64 %polly.indvar528.2, %178
  %356 = mul nuw nsw i64 %355, 8000
  %scevgep532.2 = getelementptr i8, i8* %scevgep531, i64 %356
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_538.2, %_p_scalar_534.2
  %scevgep540.2 = getelementptr i8, i8* %scevgep535, i64 %356
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_542.2
  %357 = shl i64 %355, 3
  %358 = add nuw nsw i64 %357, %187
  %scevgep547.2 = getelementptr i8, i8* %call, i64 %358
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
  %scevgep536.3 = getelementptr i8, i8* %scevgep535, i64 %189
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !85, !noalias !88
  %scevgep544.3 = getelementptr i8, i8* %scevgep531, i64 %189
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.3

polly.loop_header525.3:                           ; preds = %polly.loop_header525.3, %polly.loop_exit527.2
  %polly.indvar528.3 = phi i64 [ 0, %polly.loop_exit527.2 ], [ %polly.indvar_next529.3, %polly.loop_header525.3 ]
  %359 = add nuw nsw i64 %polly.indvar528.3, %178
  %360 = mul nuw nsw i64 %359, 8000
  %scevgep532.3 = getelementptr i8, i8* %scevgep531, i64 %360
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_538.3, %_p_scalar_534.3
  %scevgep540.3 = getelementptr i8, i8* %scevgep535, i64 %360
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_542.3
  %361 = shl i64 %359, 3
  %362 = add nuw nsw i64 %361, %190
  %scevgep547.3 = getelementptr i8, i8* %call, i64 %362
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
  %scevgep536.4 = getelementptr i8, i8* %scevgep535, i64 %192
  %scevgep536537.4 = bitcast i8* %scevgep536.4 to double*
  %_p_scalar_538.4 = load double, double* %scevgep536537.4, align 8, !alias.scope !85, !noalias !88
  %scevgep544.4 = getelementptr i8, i8* %scevgep531, i64 %192
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.4

polly.loop_header525.4:                           ; preds = %polly.loop_header525.4, %polly.loop_exit527.3
  %polly.indvar528.4 = phi i64 [ 0, %polly.loop_exit527.3 ], [ %polly.indvar_next529.4, %polly.loop_header525.4 ]
  %363 = add nuw nsw i64 %polly.indvar528.4, %178
  %364 = mul nuw nsw i64 %363, 8000
  %scevgep532.4 = getelementptr i8, i8* %scevgep531, i64 %364
  %scevgep532533.4 = bitcast i8* %scevgep532.4 to double*
  %_p_scalar_534.4 = load double, double* %scevgep532533.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_538.4, %_p_scalar_534.4
  %scevgep540.4 = getelementptr i8, i8* %scevgep535, i64 %364
  %scevgep540541.4 = bitcast i8* %scevgep540.4 to double*
  %_p_scalar_542.4 = load double, double* %scevgep540541.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_546.4, %_p_scalar_542.4
  %365 = shl i64 %363, 3
  %366 = add nuw nsw i64 %365, %193
  %scevgep547.4 = getelementptr i8, i8* %call, i64 %366
  %scevgep547548.4 = bitcast i8* %scevgep547.4 to double*
  %_p_scalar_549.4 = load double, double* %scevgep547548.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_549.4
  store double %p_add42.i.4, double* %scevgep547548.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.4 = add nuw nsw i64 %polly.indvar528.4, 1
  %exitcond789.4.not = icmp eq i64 %polly.indvar528.4, %smin788.4
  br i1 %exitcond789.4.not, label %polly.loop_exit527.4, label %polly.loop_header525.4

polly.loop_exit527.4:                             ; preds = %polly.loop_header525.4
  %scevgep536.5 = getelementptr i8, i8* %scevgep535, i64 %195
  %scevgep536537.5 = bitcast i8* %scevgep536.5 to double*
  %_p_scalar_538.5 = load double, double* %scevgep536537.5, align 8, !alias.scope !85, !noalias !88
  %scevgep544.5 = getelementptr i8, i8* %scevgep531, i64 %195
  %scevgep544545.5 = bitcast i8* %scevgep544.5 to double*
  %_p_scalar_546.5 = load double, double* %scevgep544545.5, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.5

polly.loop_header525.5:                           ; preds = %polly.loop_header525.5, %polly.loop_exit527.4
  %polly.indvar528.5 = phi i64 [ 0, %polly.loop_exit527.4 ], [ %polly.indvar_next529.5, %polly.loop_header525.5 ]
  %367 = add nuw nsw i64 %polly.indvar528.5, %178
  %368 = mul nuw nsw i64 %367, 8000
  %scevgep532.5 = getelementptr i8, i8* %scevgep531, i64 %368
  %scevgep532533.5 = bitcast i8* %scevgep532.5 to double*
  %_p_scalar_534.5 = load double, double* %scevgep532533.5, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.5 = fmul fast double %_p_scalar_538.5, %_p_scalar_534.5
  %scevgep540.5 = getelementptr i8, i8* %scevgep535, i64 %368
  %scevgep540541.5 = bitcast i8* %scevgep540.5 to double*
  %_p_scalar_542.5 = load double, double* %scevgep540541.5, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.5 = fmul fast double %_p_scalar_546.5, %_p_scalar_542.5
  %369 = shl i64 %367, 3
  %370 = add nuw nsw i64 %369, %196
  %scevgep547.5 = getelementptr i8, i8* %call, i64 %370
  %scevgep547548.5 = bitcast i8* %scevgep547.5 to double*
  %_p_scalar_549.5 = load double, double* %scevgep547548.5, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_549.5
  store double %p_add42.i.5, double* %scevgep547548.5, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.5 = add nuw nsw i64 %polly.indvar528.5, 1
  %exitcond789.5.not = icmp eq i64 %polly.indvar528.5, %smin788.5
  br i1 %exitcond789.5.not, label %polly.loop_exit527.5, label %polly.loop_header525.5

polly.loop_exit527.5:                             ; preds = %polly.loop_header525.5
  %scevgep536.6 = getelementptr i8, i8* %scevgep535, i64 %198
  %scevgep536537.6 = bitcast i8* %scevgep536.6 to double*
  %_p_scalar_538.6 = load double, double* %scevgep536537.6, align 8, !alias.scope !85, !noalias !88
  %scevgep544.6 = getelementptr i8, i8* %scevgep531, i64 %198
  %scevgep544545.6 = bitcast i8* %scevgep544.6 to double*
  %_p_scalar_546.6 = load double, double* %scevgep544545.6, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.6

polly.loop_header525.6:                           ; preds = %polly.loop_header525.6, %polly.loop_exit527.5
  %polly.indvar528.6 = phi i64 [ 0, %polly.loop_exit527.5 ], [ %polly.indvar_next529.6, %polly.loop_header525.6 ]
  %371 = add nuw nsw i64 %polly.indvar528.6, %178
  %372 = mul nuw nsw i64 %371, 8000
  %scevgep532.6 = getelementptr i8, i8* %scevgep531, i64 %372
  %scevgep532533.6 = bitcast i8* %scevgep532.6 to double*
  %_p_scalar_534.6 = load double, double* %scevgep532533.6, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.6 = fmul fast double %_p_scalar_538.6, %_p_scalar_534.6
  %scevgep540.6 = getelementptr i8, i8* %scevgep535, i64 %372
  %scevgep540541.6 = bitcast i8* %scevgep540.6 to double*
  %_p_scalar_542.6 = load double, double* %scevgep540541.6, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.6 = fmul fast double %_p_scalar_546.6, %_p_scalar_542.6
  %373 = shl i64 %371, 3
  %374 = add nuw nsw i64 %373, %199
  %scevgep547.6 = getelementptr i8, i8* %call, i64 %374
  %scevgep547548.6 = bitcast i8* %scevgep547.6 to double*
  %_p_scalar_549.6 = load double, double* %scevgep547548.6, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_549.6
  store double %p_add42.i.6, double* %scevgep547548.6, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.6 = add nuw nsw i64 %polly.indvar528.6, 1
  %exitcond789.6.not = icmp eq i64 %polly.indvar528.6, %smin788.6
  br i1 %exitcond789.6.not, label %polly.loop_exit527.6, label %polly.loop_header525.6

polly.loop_exit527.6:                             ; preds = %polly.loop_header525.6
  %scevgep536.7 = getelementptr i8, i8* %scevgep535, i64 %201
  %scevgep536537.7 = bitcast i8* %scevgep536.7 to double*
  %_p_scalar_538.7 = load double, double* %scevgep536537.7, align 8, !alias.scope !85, !noalias !88
  %scevgep544.7 = getelementptr i8, i8* %scevgep531, i64 %201
  %scevgep544545.7 = bitcast i8* %scevgep544.7 to double*
  %_p_scalar_546.7 = load double, double* %scevgep544545.7, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header525.7

polly.loop_header525.7:                           ; preds = %polly.loop_header525.7, %polly.loop_exit527.6
  %polly.indvar528.7 = phi i64 [ 0, %polly.loop_exit527.6 ], [ %polly.indvar_next529.7, %polly.loop_header525.7 ]
  %375 = add nuw nsw i64 %polly.indvar528.7, %178
  %376 = mul nuw nsw i64 %375, 8000
  %scevgep532.7 = getelementptr i8, i8* %scevgep531, i64 %376
  %scevgep532533.7 = bitcast i8* %scevgep532.7 to double*
  %_p_scalar_534.7 = load double, double* %scevgep532533.7, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.7 = fmul fast double %_p_scalar_538.7, %_p_scalar_534.7
  %scevgep540.7 = getelementptr i8, i8* %scevgep535, i64 %376
  %scevgep540541.7 = bitcast i8* %scevgep540.7 to double*
  %_p_scalar_542.7 = load double, double* %scevgep540541.7, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.7 = fmul fast double %_p_scalar_546.7, %_p_scalar_542.7
  %377 = shl i64 %375, 3
  %378 = add nuw nsw i64 %377, %202
  %scevgep547.7 = getelementptr i8, i8* %call, i64 %378
  %scevgep547548.7 = bitcast i8* %scevgep547.7 to double*
  %_p_scalar_549.7 = load double, double* %scevgep547548.7, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_549.7
  store double %p_add42.i.7, double* %scevgep547548.7, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next529.7 = add nuw nsw i64 %polly.indvar528.7, 1
  %exitcond789.7.not = icmp eq i64 %polly.indvar528.7, %smin788.7
  br i1 %exitcond789.7.not, label %polly.loop_exit527.7, label %polly.loop_header525.7

polly.loop_exit527.7:                             ; preds = %polly.loop_header525.7
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
!24 = !{!"llvm.loop.tile.size", i32 256}
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
!44 = !{!"llvm.loop.tile.size", i32 8}
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
