; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8948.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8948.c"
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
  br i1 %57, label %middle.block928, label %vector.body930, !llvm.loop !53

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

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
  br i1 %68, label %middle.block954, label %vector.body956, !llvm.loop !55

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call702, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %wide.load979 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load979, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next976 = add i64 %index975, 4
  %95 = icmp eq i64 %index.next976, %n.vec974
  br i1 %95, label %middle.block966, label %vector.body968, !llvm.loop !66

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond770.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond770.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond769.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %polly.indvar202, %polly.loop_header199 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 80
  %exitcond768.not = icmp eq i64 %polly.indvar_next209, 15
  br i1 %exitcond768.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %99
  %scevgep233 = getelementptr i8, i8* %call2, i64 %99
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond767.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %polly.loop_exit225 ], [ %indvars.iv, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv764, i64 79)
  %100 = add nuw nsw i64 %polly.indvar220, %98
  %101 = mul nuw nsw i64 %100, 8000
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %101
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !65, !noalias !69
  %scevgep242 = getelementptr i8, i8* %scevgep229, i64 %101
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !64, !noalias !70
  %102 = mul nuw nsw i64 %100, 9600
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next221, 80
  br i1 %exitcond766.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %103 = add nuw nsw i64 %polly.indvar226, %97
  %104 = mul nuw nsw i64 %103, 8000
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %104
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %104
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %105 = shl i64 %103, 3
  %106 = add nuw nsw i64 %105, %102
  %scevgep245 = getelementptr i8, i8* %call, i64 %106
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_247
  store double %p_add42.i118, double* %scevgep245246, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar943 = phi i64 [ %indvar.next944, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %107 = add i64 %indvar943, 1
  %108 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check945 = icmp ult i64 %107, 4
  br i1 %min.iters.check945, label %polly.loop_header340.preheader, label %vector.ph946

vector.ph946:                                     ; preds = %polly.loop_header334
  %n.vec948 = and i64 %107, -4
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph946
  %index949 = phi i64 [ 0, %vector.ph946 ], [ %index.next950, %vector.body942 ]
  %109 = shl nuw nsw i64 %index949, 3
  %110 = getelementptr i8, i8* %scevgep346, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load953 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !71, !noalias !73
  %112 = fmul fast <4 x double> %wide.load953, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !71, !noalias !73
  %index.next950 = add i64 %index949, 4
  %114 = icmp eq i64 %index.next950, %n.vec948
  br i1 %114, label %middle.block940, label %vector.body942, !llvm.loop !76

middle.block940:                                  ; preds = %vector.body942
  %cmp.n952 = icmp eq i64 %107, %n.vec948
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
  %115 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %115
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond782.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !77

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %116 = mul nuw nsw i64 %polly.indvar353, 80
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit364
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next354, 15
  br i1 %exitcond781.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.loop_header350
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit364 ], [ 0, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ %polly.indvar353, %polly.loop_header350 ]
  %117 = mul nuw nsw i64 %polly.indvar359, 80
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit370
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 80
  %exitcond780.not = icmp eq i64 %polly.indvar_next360, 15
  br i1 %exitcond780.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit370, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit370 ]
  %118 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep380 = getelementptr i8, i8* %call1, i64 %118
  %scevgep384 = getelementptr i8, i8* %call2, i64 %118
  br label %polly.loop_header368

polly.loop_exit370:                               ; preds = %polly.loop_exit376
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next366, 1000
  br i1 %exitcond779.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header368:                             ; preds = %polly.loop_exit376, %polly.loop_header362
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %polly.loop_exit376 ], [ %indvars.iv772, %polly.loop_header362 ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header362 ]
  %smin776 = call i64 @llvm.smin.i64(i64 %indvars.iv774, i64 79)
  %119 = add nuw nsw i64 %polly.indvar371, %117
  %120 = mul nuw nsw i64 %119, 8000
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %120
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !75, !noalias !78
  %scevgep393 = getelementptr i8, i8* %scevgep380, i64 %120
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !74, !noalias !79
  %121 = mul nuw nsw i64 %119, 9600
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next372, 80
  br i1 %exitcond778.not, label %polly.loop_exit370, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %122 = add nuw nsw i64 %polly.indvar377, %116
  %123 = mul nuw nsw i64 %122, 8000
  %scevgep381 = getelementptr i8, i8* %scevgep380, i64 %123
  %scevgep381382 = bitcast i8* %scevgep381 to double*
  %_p_scalar_383 = load double, double* %scevgep381382, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73 = fmul fast double %_p_scalar_387, %_p_scalar_383
  %scevgep389 = getelementptr i8, i8* %scevgep384, i64 %123
  %scevgep389390 = bitcast i8* %scevgep389 to double*
  %_p_scalar_391 = load double, double* %scevgep389390, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75 = fmul fast double %_p_scalar_395, %_p_scalar_391
  %124 = shl i64 %122, 3
  %125 = add nuw nsw i64 %124, %121
  %scevgep396 = getelementptr i8, i8* %call, i64 %125
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_398
  store double %p_add42.i79, double* %scevgep396397, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond777.not = icmp eq i64 %polly.indvar377, %smin776
  br i1 %exitcond777.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header485:                             ; preds = %init_array.exit, %polly.loop_exit493
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit493 ], [ 0, %init_array.exit ]
  %polly.indvar488 = phi i64 [ %polly.indvar_next489, %polly.loop_exit493 ], [ 1, %init_array.exit ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar488, 9600
  %scevgep497 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check919 = icmp ult i64 %126, 4
  br i1 %min.iters.check919, label %polly.loop_header491.preheader, label %vector.ph920

vector.ph920:                                     ; preds = %polly.loop_header485
  %n.vec922 = and i64 %126, -4
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next924, %vector.body918 ]
  %128 = shl nuw nsw i64 %index923, 3
  %129 = getelementptr i8, i8* %scevgep497, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load927 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !80, !noalias !82
  %131 = fmul fast <4 x double> %wide.load927, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !80, !noalias !82
  %index.next924 = add i64 %index923, 4
  %133 = icmp eq i64 %index.next924, %n.vec922
  br i1 %133, label %middle.block916, label %vector.body918, !llvm.loop !85

middle.block916:                                  ; preds = %vector.body918
  %cmp.n926 = icmp eq i64 %126, %n.vec922
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
  %134 = shl nuw nsw i64 %polly.indvar494, 3
  %scevgep498 = getelementptr i8, i8* %scevgep497, i64 %134
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_500, 1.200000e+00
  store double %p_mul.i, double* %scevgep498499, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next495, %polly.indvar488
  br i1 %exitcond794.not, label %polly.loop_exit493, label %polly.loop_header491, !llvm.loop !86

polly.loop_header501:                             ; preds = %polly.loop_exit493, %polly.loop_exit509
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_exit509 ], [ 0, %polly.loop_exit493 ]
  %135 = mul nuw nsw i64 %polly.indvar504, 80
  br label %polly.loop_header507

polly.loop_exit509:                               ; preds = %polly.loop_exit515
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next505, 15
  br i1 %exitcond793.not, label %kernel_syr2k.exit, label %polly.loop_header501

polly.loop_header507:                             ; preds = %polly.loop_exit515, %polly.loop_header501
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit515 ], [ 0, %polly.loop_header501 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ %polly.indvar504, %polly.loop_header501 ]
  %136 = mul nuw nsw i64 %polly.indvar510, 80
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 80
  %exitcond792.not = icmp eq i64 %polly.indvar_next511, 15
  br i1 %exitcond792.not, label %polly.loop_exit509, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit521 ]
  %137 = shl nuw nsw i64 %polly.indvar516, 3
  %scevgep531 = getelementptr i8, i8* %call1, i64 %137
  %scevgep535 = getelementptr i8, i8* %call2, i64 %137
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next517, 1000
  br i1 %exitcond791.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header513
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit527 ], [ %indvars.iv784, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ 0, %polly.loop_header513 ]
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv786, i64 79)
  %138 = add nuw nsw i64 %polly.indvar522, %136
  %139 = mul nuw nsw i64 %138, 8000
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %139
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !84, !noalias !87
  %scevgep544 = getelementptr i8, i8* %scevgep531, i64 %139
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !83, !noalias !88
  %140 = mul nuw nsw i64 %138, 9600
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_header525
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next523, 80
  br i1 %exitcond790.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_header525, %polly.loop_header519
  %polly.indvar528 = phi i64 [ 0, %polly.loop_header519 ], [ %polly.indvar_next529, %polly.loop_header525 ]
  %141 = add nuw nsw i64 %polly.indvar528, %135
  %142 = mul nuw nsw i64 %141, 8000
  %scevgep532 = getelementptr i8, i8* %scevgep531, i64 %142
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i = fmul fast double %_p_scalar_538, %_p_scalar_534
  %scevgep540 = getelementptr i8, i8* %scevgep535, i64 %142
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i = fmul fast double %_p_scalar_546, %_p_scalar_542
  %143 = shl i64 %141, 3
  %144 = add nuw nsw i64 %143, %140
  %scevgep547 = getelementptr i8, i8* %call, i64 %144
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_549
  store double %p_add42.i, double* %scevgep547548, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %exitcond789.not = icmp eq i64 %polly.indvar528, %smin788
  br i1 %exitcond789.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit684 ], [ 0, %entry ]
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 -1168)
  %145 = shl nsw i64 %polly.indvar679, 5
  %146 = add nsw i64 %smin822, 1199
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_exit690
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond825.not = icmp eq i64 %polly.indvar_next680, 38
  br i1 %exitcond825.not, label %polly.loop_header703, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_exit690, %polly.loop_header676
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %polly.loop_header676 ]
  %147 = mul nsw i64 %polly.indvar685, -32
  %smin857 = call i64 @llvm.smin.i64(i64 %147, i64 -1168)
  %148 = add nsw i64 %smin857, 1200
  %smin818 = call i64 @llvm.smin.i64(i64 %indvars.iv816, i64 -1168)
  %149 = shl nsw i64 %polly.indvar685, 5
  %150 = add nsw i64 %smin818, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond824.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %polly.indvar691 = phi i64 [ 0, %polly.loop_header682 ], [ %polly.indvar_next692, %polly.loop_exit696 ]
  %151 = add nuw nsw i64 %polly.indvar691, %145
  %152 = trunc i64 %151 to i32
  %153 = mul nuw nsw i64 %151, 9600
  %min.iters.check = icmp eq i64 %148, 0
  br i1 %min.iters.check, label %polly.loop_header694, label %vector.ph858

vector.ph858:                                     ; preds = %polly.loop_header688
  %broadcast.splatinsert865 = insertelement <4 x i64> poison, i64 %149, i32 0
  %broadcast.splat866 = shufflevector <4 x i64> %broadcast.splatinsert865, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat868 = shufflevector <4 x i32> %broadcast.splatinsert867, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body856

vector.body856:                                   ; preds = %vector.body856, %vector.ph858
  %index859 = phi i64 [ 0, %vector.ph858 ], [ %index.next860, %vector.body856 ]
  %vec.ind863 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph858 ], [ %vec.ind.next864, %vector.body856 ]
  %154 = add nuw nsw <4 x i64> %vec.ind863, %broadcast.splat866
  %155 = trunc <4 x i64> %154 to <4 x i32>
  %156 = mul <4 x i32> %broadcast.splat868, %155
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 1200, i32 1200, i32 1200, i32 1200>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %161 = extractelement <4 x i64> %154, i32 0
  %162 = shl i64 %161, 3
  %163 = add nuw nsw i64 %162, %153
  %164 = getelementptr i8, i8* %call, i64 %163
  %165 = bitcast i8* %164 to <4 x double>*
  store <4 x double> %160, <4 x double>* %165, align 8, !alias.scope !89, !noalias !91
  %index.next860 = add i64 %index859, 4
  %vec.ind.next864 = add <4 x i64> %vec.ind863, <i64 4, i64 4, i64 4, i64 4>
  %166 = icmp eq i64 %index.next860, %148
  br i1 %166, label %polly.loop_exit696, label %vector.body856, !llvm.loop !94

polly.loop_exit696:                               ; preds = %vector.body856, %polly.loop_header694
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %exitcond823.not = icmp eq i64 %polly.indvar691, %146
  br i1 %exitcond823.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_header688, %polly.loop_header694
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_header694 ], [ 0, %polly.loop_header688 ]
  %167 = add nuw nsw i64 %polly.indvar697, %149
  %168 = trunc i64 %167 to i32
  %169 = mul i32 %168, %152
  %170 = add i32 %169, 3
  %171 = urem i32 %170, 1200
  %p_conv31.i = sitofp i32 %171 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %172 = shl i64 %167, 3
  %173 = add nuw nsw i64 %172, %153
  %scevgep700 = getelementptr i8, i8* %call, i64 %173
  %scevgep700701 = bitcast i8* %scevgep700 to double*
  store double %p_div33.i, double* %scevgep700701, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond819.not = icmp eq i64 %polly.indvar697, %150
  br i1 %exitcond819.not, label %polly.loop_exit696, label %polly.loop_header694, !llvm.loop !95

polly.loop_header703:                             ; preds = %polly.loop_exit684, %polly.loop_exit711
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 -1168)
  %174 = shl nsw i64 %polly.indvar706, 5
  %175 = add nsw i64 %smin812, 1199
  br label %polly.loop_header709

polly.loop_exit711:                               ; preds = %polly.loop_exit717
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -32
  %exitcond815.not = icmp eq i64 %polly.indvar_next707, 38
  br i1 %exitcond815.not, label %polly.loop_header729, label %polly.loop_header703

polly.loop_header709:                             ; preds = %polly.loop_exit717, %polly.loop_header703
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_header703 ]
  %176 = mul nsw i64 %polly.indvar712, -32
  %smin872 = call i64 @llvm.smin.i64(i64 %176, i64 -968)
  %177 = add nsw i64 %smin872, 1000
  %smin808 = call i64 @llvm.smin.i64(i64 %indvars.iv806, i64 -968)
  %178 = shl nsw i64 %polly.indvar712, 5
  %179 = add nsw i64 %smin808, 999
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, -32
  %exitcond814.not = icmp eq i64 %polly.indvar_next713, 32
  br i1 %exitcond814.not, label %polly.loop_exit711, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %polly.indvar718 = phi i64 [ 0, %polly.loop_header709 ], [ %polly.indvar_next719, %polly.loop_exit723 ]
  %180 = add nuw nsw i64 %polly.indvar718, %174
  %181 = trunc i64 %180 to i32
  %182 = mul nuw nsw i64 %180, 8000
  %min.iters.check873 = icmp eq i64 %177, 0
  br i1 %min.iters.check873, label %polly.loop_header721, label %vector.ph874

vector.ph874:                                     ; preds = %polly.loop_header715
  %broadcast.splatinsert883 = insertelement <4 x i64> poison, i64 %178, i32 0
  %broadcast.splat884 = shufflevector <4 x i64> %broadcast.splatinsert883, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %181, i32 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next878, %vector.body871 ]
  %vec.ind881 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph874 ], [ %vec.ind.next882, %vector.body871 ]
  %183 = add nuw nsw <4 x i64> %vec.ind881, %broadcast.splat884
  %184 = trunc <4 x i64> %183 to <4 x i32>
  %185 = mul <4 x i32> %broadcast.splat886, %184
  %186 = add <4 x i32> %185, <i32 2, i32 2, i32 2, i32 2>
  %187 = urem <4 x i32> %186, <i32 1000, i32 1000, i32 1000, i32 1000>
  %188 = sitofp <4 x i32> %187 to <4 x double>
  %189 = fmul fast <4 x double> %188, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %190 = extractelement <4 x i64> %183, i32 0
  %191 = shl i64 %190, 3
  %192 = add nuw nsw i64 %191, %182
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %189, <4 x double>* %194, align 8, !alias.scope !93, !noalias !96
  %index.next878 = add i64 %index877, 4
  %vec.ind.next882 = add <4 x i64> %vec.ind881, <i64 4, i64 4, i64 4, i64 4>
  %195 = icmp eq i64 %index.next878, %177
  br i1 %195, label %polly.loop_exit723, label %vector.body871, !llvm.loop !97

polly.loop_exit723:                               ; preds = %vector.body871, %polly.loop_header721
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %exitcond813.not = icmp eq i64 %polly.indvar718, %175
  br i1 %exitcond813.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_header715, %polly.loop_header721
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_header721 ], [ 0, %polly.loop_header715 ]
  %196 = add nuw nsw i64 %polly.indvar724, %178
  %197 = trunc i64 %196 to i32
  %198 = mul i32 %197, %181
  %199 = add i32 %198, 2
  %200 = urem i32 %199, 1000
  %p_conv10.i = sitofp i32 %200 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %201 = shl i64 %196, 3
  %202 = add nuw nsw i64 %201, %182
  %scevgep727 = getelementptr i8, i8* %call2, i64 %202
  %scevgep727728 = bitcast i8* %scevgep727 to double*
  store double %p_div12.i, double* %scevgep727728, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond809.not = icmp eq i64 %polly.indvar724, %179
  br i1 %exitcond809.not, label %polly.loop_exit723, label %polly.loop_header721, !llvm.loop !98

polly.loop_header729:                             ; preds = %polly.loop_exit711, %polly.loop_exit737
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711 ]
  %smin802 = call i64 @llvm.smin.i64(i64 %indvars.iv800, i64 -1168)
  %203 = shl nsw i64 %polly.indvar732, 5
  %204 = add nsw i64 %smin802, 1199
  br label %polly.loop_header735

polly.loop_exit737:                               ; preds = %polly.loop_exit743
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, -32
  %exitcond805.not = icmp eq i64 %polly.indvar_next733, 38
  br i1 %exitcond805.not, label %init_array.exit, label %polly.loop_header729

polly.loop_header735:                             ; preds = %polly.loop_exit743, %polly.loop_header729
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header729 ]
  %205 = mul nsw i64 %polly.indvar738, -32
  %smin890 = call i64 @llvm.smin.i64(i64 %205, i64 -968)
  %206 = add nsw i64 %smin890, 1000
  %smin798 = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 -968)
  %207 = shl nsw i64 %polly.indvar738, 5
  %208 = add nsw i64 %smin798, 999
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, -32
  %exitcond804.not = icmp eq i64 %polly.indvar_next739, 32
  br i1 %exitcond804.not, label %polly.loop_exit737, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_exit749 ]
  %209 = add nuw nsw i64 %polly.indvar744, %203
  %210 = trunc i64 %209 to i32
  %211 = mul nuw nsw i64 %209, 8000
  %min.iters.check891 = icmp eq i64 %206, 0
  br i1 %min.iters.check891, label %polly.loop_header747, label %vector.ph892

vector.ph892:                                     ; preds = %polly.loop_header741
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %207, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %210, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph892
  %index895 = phi i64 [ 0, %vector.ph892 ], [ %index.next896, %vector.body889 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph892 ], [ %vec.ind.next900, %vector.body889 ]
  %212 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %213 = trunc <4 x i64> %212 to <4 x i32>
  %214 = mul <4 x i32> %broadcast.splat904, %213
  %215 = add <4 x i32> %214, <i32 1, i32 1, i32 1, i32 1>
  %216 = urem <4 x i32> %215, <i32 1200, i32 1200, i32 1200, i32 1200>
  %217 = sitofp <4 x i32> %216 to <4 x double>
  %218 = fmul fast <4 x double> %217, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %219 = extractelement <4 x i64> %212, i32 0
  %220 = shl i64 %219, 3
  %221 = add nuw nsw i64 %220, %211
  %222 = getelementptr i8, i8* %call1, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %218, <4 x double>* %223, align 8, !alias.scope !92, !noalias !99
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %224 = icmp eq i64 %index.next896, %206
  br i1 %224, label %polly.loop_exit749, label %vector.body889, !llvm.loop !100

polly.loop_exit749:                               ; preds = %vector.body889, %polly.loop_header747
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond803.not = icmp eq i64 %polly.indvar744, %204
  br i1 %exitcond803.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_header741, %polly.loop_header747
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_header747 ], [ 0, %polly.loop_header741 ]
  %225 = add nuw nsw i64 %polly.indvar750, %207
  %226 = trunc i64 %225 to i32
  %227 = mul i32 %226, %210
  %228 = add i32 %227, 1
  %229 = urem i32 %228, 1200
  %p_conv.i = sitofp i32 %229 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %230 = shl i64 %225, 3
  %231 = add nuw nsw i64 %230, %211
  %scevgep754 = getelementptr i8, i8* %call1, i64 %231
  %scevgep754755 = bitcast i8* %scevgep754 to double*
  store double %p_div.i, double* %scevgep754755, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond799.not = icmp eq i64 %polly.indvar750, %208
  br i1 %exitcond799.not, label %polly.loop_exit749, label %polly.loop_header747, !llvm.loop !101
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
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !22, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.interchange.enable", i1 true}
!48 = !{!"llvm.loop.interchange.depth", i32 5}
!49 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !22, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !68, !13}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!61, !64}
!70 = !{!61, !65}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !74}
!79 = !{!71, !75}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !83}
!88 = !{!80, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !68, !13}
!96 = !{!92, !89}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !68, !13}
!99 = !{!93, !89}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !68, !13}
