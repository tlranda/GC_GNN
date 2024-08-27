; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8271.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8271.c"
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
  %call708 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1569 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1569, %call2
  %polly.access.call2589 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2589, %call1
  %2 = or i1 %0, %1
  %polly.access.call609 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call609, %call2
  %4 = icmp ule i8* %polly.access.call2589, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call609, %call1
  %8 = icmp ule i8* %polly.access.call1569, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header682, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep850 = getelementptr i8, i8* %call2, i64 %12
  %scevgep849 = getelementptr i8, i8* %call2, i64 %11
  %scevgep848 = getelementptr i8, i8* %call1, i64 %12
  %scevgep847 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep847, %scevgep850
  %bound1 = icmp ult i8* %scevgep849, %scevgep848
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
  br i1 %exitcond18.not.i, label %vector.ph854, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph854:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert861 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat862 = shufflevector <4 x i64> %broadcast.splatinsert861, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853, %vector.ph854
  %index855 = phi i64 [ 0, %vector.ph854 ], [ %index.next856, %vector.body853 ]
  %vec.ind859 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph854 ], [ %vec.ind.next860, %vector.body853 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind859, %broadcast.splat862
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv7.i, i64 %index855
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next856 = add i64 %index855, 4
  %vec.ind.next860 = add <4 x i64> %vec.ind859, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next856, 1200
  br i1 %40, label %for.inc41.i, label %vector.body853, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body853
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph854, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit743
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header489, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check917 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check917, label %for.body3.i46.preheader994, label %vector.ph918

vector.ph918:                                     ; preds = %for.body3.i46.preheader
  %n.vec920 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph918
  %index921 = phi i64 [ 0, %vector.ph918 ], [ %index.next922, %vector.body916 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %index921
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next922 = add i64 %index921, 4
  %46 = icmp eq i64 %index.next922, %n.vec920
  br i1 %46, label %middle.block914, label %vector.body916, !llvm.loop !18

middle.block914:                                  ; preds = %vector.body916
  %cmp.n924 = icmp eq i64 %indvars.iv21.i, %n.vec920
  br i1 %cmp.n924, label %for.inc6.i, label %for.body3.i46.preheader994

for.body3.i46.preheader994:                       ; preds = %for.body3.i46.preheader, %middle.block914
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec920, %middle.block914 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader994, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader994 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block914, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check940 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check940, label %for.body3.i60.preheader992, label %vector.ph941

vector.ph941:                                     ; preds = %for.body3.i60.preheader
  %n.vec943 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %vector.ph941
  %index944 = phi i64 [ 0, %vector.ph941 ], [ %index.next945, %vector.body939 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %index944
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load948 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load948, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next945 = add i64 %index944, 4
  %57 = icmp eq i64 %index.next945, %n.vec943
  br i1 %57, label %middle.block937, label %vector.body939, !llvm.loop !54

middle.block937:                                  ; preds = %vector.body939
  %cmp.n947 = icmp eq i64 %indvars.iv21.i52, %n.vec943
  br i1 %cmp.n947, label %for.inc6.i63, label %for.body3.i60.preheader992

for.body3.i60.preheader992:                       ; preds = %for.body3.i60.preheader, %middle.block937
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec943, %middle.block937 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader992, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader992 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block937, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit366.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check966 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check966, label %for.body3.i99.preheader990, label %vector.ph967

vector.ph967:                                     ; preds = %for.body3.i99.preheader
  %n.vec969 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph967
  %index970 = phi i64 [ 0, %vector.ph967 ], [ %index.next971, %vector.body965 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %index970
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load974 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load974, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next971 = add i64 %index970, 4
  %68 = icmp eq i64 %index.next971, %n.vec969
  br i1 %68, label %middle.block963, label %vector.body965, !llvm.loop !56

middle.block963:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %indvars.iv21.i91, %n.vec969
  br i1 %cmp.n973, label %for.inc6.i102, label %for.body3.i99.preheader990

for.body3.i99.preheader990:                       ; preds = %for.body3.i99.preheader, %middle.block963
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec969, %middle.block963 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader990, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader990 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block963, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.4
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar978 = phi i64 [ %indvar.next979, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar978, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check980 = icmp ult i64 %88, 4
  br i1 %min.iters.check980, label %polly.loop_header191.preheader, label %vector.ph981

vector.ph981:                                     ; preds = %polly.loop_header
  %n.vec983 = and i64 %88, -4
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph981
  %index984 = phi i64 [ 0, %vector.ph981 ], [ %index.next985, %vector.body977 ]
  %90 = shl nuw nsw i64 %index984, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load988 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load988, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next985 = add i64 %index984, 4
  %95 = icmp eq i64 %index.next985, %n.vec983
  br i1 %95, label %middle.block975, label %vector.body977, !llvm.loop !67

middle.block975:                                  ; preds = %vector.body977
  %cmp.n987 = icmp eq i64 %88, %n.vec983
  br i1 %cmp.n987, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block975
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec983, %middle.block975 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block975
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next979 = add i64 %indvar978, 1
  br i1 %exitcond778.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond777.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.4
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar214, 4
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %exitcond774.not = icmp eq i64 %polly.indvar_next215, 75
  br i1 %exitcond774.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %99 = add nuw nsw i64 %polly.indvar220, %97
  %100 = shl i64 %99, 3
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_exit231
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond773.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond773.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_exit231, %polly.loop_header217
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %polly.loop_exit231 ], [ %indvars.iv, %polly.loop_header217 ]
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_exit231 ], [ 0, %polly.loop_header217 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv770, i64 255)
  %101 = add nuw nsw i64 %polly.indvar226, %98
  %102 = mul nuw nsw i64 %101, 8000
  %103 = add nuw nsw i64 %102, %100
  %scevgep238 = getelementptr i8, i8* %call2, i64 %103
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %call1, i64 %103
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  %104 = mul nuw nsw i64 %101, 9600
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_header229
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1
  %exitcond772.not = icmp eq i64 %polly.indvar_next227, 16
  br i1 %exitcond772.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header229:                             ; preds = %polly.loop_header229, %polly.loop_header223
  %polly.indvar232 = phi i64 [ 0, %polly.loop_header223 ], [ %polly.indvar_next233, %polly.loop_header229 ]
  %105 = mul nuw nsw i64 %polly.indvar232, 8000
  %106 = add nuw nsw i64 %105, %100
  %scevgep235 = getelementptr i8, i8* %call1, i64 %106
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %scevgep241 = getelementptr i8, i8* %call2, i64 %106
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_243
  %107 = shl i64 %polly.indvar232, 3
  %108 = add nuw nsw i64 %107, %104
  %scevgep247 = getelementptr i8, i8* %call, i64 %108
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %exitcond.not = icmp eq i64 %polly.indvar232, %smin
  br i1 %exitcond.not, label %polly.loop_exit231, label %polly.loop_header229

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar952 = phi i64 [ %indvar.next953, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %109 = add i64 %indvar952, 1
  %110 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check954 = icmp ult i64 %109, 4
  br i1 %min.iters.check954, label %polly.loop_header342.preheader, label %vector.ph955

vector.ph955:                                     ; preds = %polly.loop_header336
  %n.vec957 = and i64 %109, -4
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph955
  %index958 = phi i64 [ 0, %vector.ph955 ], [ %index.next959, %vector.body951 ]
  %111 = shl nuw nsw i64 %index958, 3
  %112 = getelementptr i8, i8* %scevgep348, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load962 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %114 = fmul fast <4 x double> %wide.load962, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !72, !noalias !74
  %index.next959 = add i64 %index958, 4
  %116 = icmp eq i64 %index.next959, %n.vec957
  br i1 %116, label %middle.block949, label %vector.body951, !llvm.loop !77

middle.block949:                                  ; preds = %vector.body951
  %cmp.n961 = icmp eq i64 %109, %n.vec957
  br i1 %cmp.n961, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block949
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec957, %middle.block949 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block949
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next953 = add i64 %indvar952, 1
  br i1 %exitcond791.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %117
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond790.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit366.4
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit366.4 ], [ 0, %polly.loop_exit344 ]
  %118 = mul nuw nsw i64 %polly.indvar355, 20
  br label %polly.loop_header364

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header352
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %119 = shl nsw i64 %polly.indvar367, 4
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit378
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 16
  %exitcond787.not = icmp eq i64 %polly.indvar_next368, 75
  br i1 %exitcond787.not, label %polly.loop_header364.1, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit378, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_exit378 ]
  %120 = add nuw nsw i64 %polly.indvar373, %118
  %121 = shl i64 %120, 3
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next374, 20
  br i1 %exitcond786.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit384 ], [ %indvars.iv779, %polly.loop_header370 ]
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit384 ], [ 0, %polly.loop_header370 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 255)
  %122 = add nuw nsw i64 %polly.indvar379, %119
  %123 = mul nuw nsw i64 %122, 8000
  %124 = add nuw nsw i64 %123, %121
  %scevgep391 = getelementptr i8, i8* %call2, i64 %124
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !76, !noalias !79
  %scevgep397 = getelementptr i8, i8* %call1, i64 %124
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !75, !noalias !80
  %125 = mul nuw nsw i64 %122, 9600
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next380, 16
  br i1 %exitcond785.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %126 = mul nuw nsw i64 %polly.indvar385, 8000
  %127 = add nuw nsw i64 %126, %121
  %scevgep388 = getelementptr i8, i8* %call1, i64 %127
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_393, %_p_scalar_390
  %scevgep394 = getelementptr i8, i8* %call2, i64 %127
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %128 = shl i64 %polly.indvar385, 3
  %129 = add nuw nsw i64 %128, %125
  %scevgep400 = getelementptr i8, i8* %call, i64 %129
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_402
  store double %p_add42.i79, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond784.not = icmp eq i64 %polly.indvar385, %smin783
  br i1 %exitcond784.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header489:                             ; preds = %init_array.exit, %polly.loop_exit497
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit497 ], [ 0, %init_array.exit ]
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_exit497 ], [ 1, %init_array.exit ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar492, 9600
  %scevgep501 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check928 = icmp ult i64 %130, 4
  br i1 %min.iters.check928, label %polly.loop_header495.preheader, label %vector.ph929

vector.ph929:                                     ; preds = %polly.loop_header489
  %n.vec931 = and i64 %130, -4
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph929
  %index932 = phi i64 [ 0, %vector.ph929 ], [ %index.next933, %vector.body927 ]
  %132 = shl nuw nsw i64 %index932, 3
  %133 = getelementptr i8, i8* %scevgep501, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load936 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !81, !noalias !83
  %135 = fmul fast <4 x double> %wide.load936, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !81, !noalias !83
  %index.next933 = add i64 %index932, 4
  %137 = icmp eq i64 %index.next933, %n.vec931
  br i1 %137, label %middle.block925, label %vector.body927, !llvm.loop !86

middle.block925:                                  ; preds = %vector.body927
  %cmp.n935 = icmp eq i64 %130, %n.vec931
  br i1 %cmp.n935, label %polly.loop_exit497, label %polly.loop_header495.preheader

polly.loop_header495.preheader:                   ; preds = %polly.loop_header489, %middle.block925
  %polly.indvar498.ph = phi i64 [ 0, %polly.loop_header489 ], [ %n.vec931, %middle.block925 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block925
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next493, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond804.not, label %polly.loop_header505, label %polly.loop_header489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader, %polly.loop_header495
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_header495 ], [ %polly.indvar498.ph, %polly.loop_header495.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar498, 3
  %scevgep502 = getelementptr i8, i8* %scevgep501, i64 %138
  %scevgep502503 = bitcast i8* %scevgep502 to double*
  %_p_scalar_504 = load double, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_504, 1.200000e+00
  store double %p_mul.i, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next499, %polly.indvar492
  br i1 %exitcond803.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !87

polly.loop_header505:                             ; preds = %polly.loop_exit497, %polly.loop_exit519.4
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit519.4 ], [ 0, %polly.loop_exit497 ]
  %139 = mul nuw nsw i64 %polly.indvar508, 20
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header505
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit525 ], [ 0, %polly.loop_header505 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header505 ]
  %140 = shl nsw i64 %polly.indvar520, 4
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit531
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 16
  %exitcond800.not = icmp eq i64 %polly.indvar_next521, 75
  br i1 %exitcond800.not, label %polly.loop_header517.1, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit531, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_exit531 ]
  %141 = add nuw nsw i64 %polly.indvar526, %139
  %142 = shl i64 %141, 3
  br label %polly.loop_header529

polly.loop_exit531:                               ; preds = %polly.loop_exit537
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next527, 20
  br i1 %exitcond799.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.loop_header523
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit537 ], [ %indvars.iv792, %polly.loop_header523 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 0, %polly.loop_header523 ]
  %smin796 = call i64 @llvm.smin.i64(i64 %indvars.iv794, i64 255)
  %143 = add nuw nsw i64 %polly.indvar532, %140
  %144 = mul nuw nsw i64 %143, 8000
  %145 = add nuw nsw i64 %144, %142
  %scevgep544 = getelementptr i8, i8* %call2, i64 %145
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !85, !noalias !88
  %scevgep550 = getelementptr i8, i8* %call1, i64 %145
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !84, !noalias !89
  %146 = mul nuw nsw i64 %143, 9600
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next533, 16
  br i1 %exitcond798.not, label %polly.loop_exit531, label %polly.loop_header529

polly.loop_header535:                             ; preds = %polly.loop_header535, %polly.loop_header529
  %polly.indvar538 = phi i64 [ 0, %polly.loop_header529 ], [ %polly.indvar_next539, %polly.loop_header535 ]
  %147 = mul nuw nsw i64 %polly.indvar538, 8000
  %148 = add nuw nsw i64 %147, %142
  %scevgep541 = getelementptr i8, i8* %call1, i64 %148
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_546, %_p_scalar_543
  %scevgep547 = getelementptr i8, i8* %call2, i64 %148
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_552, %_p_scalar_549
  %149 = shl i64 %polly.indvar538, 3
  %150 = add nuw nsw i64 %149, %146
  %scevgep553 = getelementptr i8, i8* %call, i64 %150
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_555
  store double %p_add42.i, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond797.not = icmp eq i64 %polly.indvar538, %smin796
  br i1 %exitcond797.not, label %polly.loop_exit537, label %polly.loop_header535

polly.loop_header682:                             ; preds = %entry, %polly.loop_exit690
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit690 ], [ 0, %entry ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %entry ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -1168)
  %151 = shl nsw i64 %polly.indvar685, 5
  %152 = add nsw i64 %smin831, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond834.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond834.not, label %polly.loop_header709, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %153 = mul nsw i64 %polly.indvar691, -32
  %smin866 = call i64 @llvm.smin.i64(i64 %153, i64 -1168)
  %154 = add nsw i64 %smin866, 1200
  %smin827 = call i64 @llvm.smin.i64(i64 %indvars.iv825, i64 -1168)
  %155 = shl nsw i64 %polly.indvar691, 5
  %156 = add nsw i64 %smin827, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond833.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %polly.indvar697 = phi i64 [ 0, %polly.loop_header688 ], [ %polly.indvar_next698, %polly.loop_exit702 ]
  %157 = add nuw nsw i64 %polly.indvar697, %151
  %158 = trunc i64 %157 to i32
  %159 = mul nuw nsw i64 %157, 9600
  %min.iters.check = icmp eq i64 %154, 0
  br i1 %min.iters.check, label %polly.loop_header700, label %vector.ph867

vector.ph867:                                     ; preds = %polly.loop_header694
  %broadcast.splatinsert874 = insertelement <4 x i64> poison, i64 %155, i32 0
  %broadcast.splat875 = shufflevector <4 x i64> %broadcast.splatinsert874, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert876 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat877 = shufflevector <4 x i32> %broadcast.splatinsert876, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body865

vector.body865:                                   ; preds = %vector.body865, %vector.ph867
  %index868 = phi i64 [ 0, %vector.ph867 ], [ %index.next869, %vector.body865 ]
  %vec.ind872 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph867 ], [ %vec.ind.next873, %vector.body865 ]
  %160 = add nuw nsw <4 x i64> %vec.ind872, %broadcast.splat875
  %161 = trunc <4 x i64> %160 to <4 x i32>
  %162 = mul <4 x i32> %broadcast.splat877, %161
  %163 = add <4 x i32> %162, <i32 3, i32 3, i32 3, i32 3>
  %164 = urem <4 x i32> %163, <i32 1200, i32 1200, i32 1200, i32 1200>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %167 = extractelement <4 x i64> %160, i32 0
  %168 = shl i64 %167, 3
  %169 = add nuw nsw i64 %168, %159
  %170 = getelementptr i8, i8* %call, i64 %169
  %171 = bitcast i8* %170 to <4 x double>*
  store <4 x double> %166, <4 x double>* %171, align 8, !alias.scope !90, !noalias !92
  %index.next869 = add i64 %index868, 4
  %vec.ind.next873 = add <4 x i64> %vec.ind872, <i64 4, i64 4, i64 4, i64 4>
  %172 = icmp eq i64 %index.next869, %154
  br i1 %172, label %polly.loop_exit702, label %vector.body865, !llvm.loop !95

polly.loop_exit702:                               ; preds = %vector.body865, %polly.loop_header700
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond832.not = icmp eq i64 %polly.indvar697, %152
  br i1 %exitcond832.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_header694, %polly.loop_header700
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_header700 ], [ 0, %polly.loop_header694 ]
  %173 = add nuw nsw i64 %polly.indvar703, %155
  %174 = trunc i64 %173 to i32
  %175 = mul i32 %174, %158
  %176 = add i32 %175, 3
  %177 = urem i32 %176, 1200
  %p_conv31.i = sitofp i32 %177 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %178 = shl i64 %173, 3
  %179 = add nuw nsw i64 %178, %159
  %scevgep706 = getelementptr i8, i8* %call, i64 %179
  %scevgep706707 = bitcast i8* %scevgep706 to double*
  store double %p_div33.i, double* %scevgep706707, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond828.not = icmp eq i64 %polly.indvar703, %156
  br i1 %exitcond828.not, label %polly.loop_exit702, label %polly.loop_header700, !llvm.loop !96

polly.loop_header709:                             ; preds = %polly.loop_exit690, %polly.loop_exit717
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 -1168)
  %180 = shl nsw i64 %polly.indvar712, 5
  %181 = add nsw i64 %smin821, 1199
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next713, 38
  br i1 %exitcond824.not, label %polly.loop_header735, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %182 = mul nsw i64 %polly.indvar718, -32
  %smin881 = call i64 @llvm.smin.i64(i64 %182, i64 -968)
  %183 = add nsw i64 %smin881, 1000
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 -968)
  %184 = shl nsw i64 %polly.indvar718, 5
  %185 = add nsw i64 %smin817, 999
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -32
  %exitcond823.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond823.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %polly.indvar724 = phi i64 [ 0, %polly.loop_header715 ], [ %polly.indvar_next725, %polly.loop_exit729 ]
  %186 = add nuw nsw i64 %polly.indvar724, %180
  %187 = trunc i64 %186 to i32
  %188 = mul nuw nsw i64 %186, 8000
  %min.iters.check882 = icmp eq i64 %183, 0
  br i1 %min.iters.check882, label %polly.loop_header727, label %vector.ph883

vector.ph883:                                     ; preds = %polly.loop_header721
  %broadcast.splatinsert892 = insertelement <4 x i64> poison, i64 %184, i32 0
  %broadcast.splat893 = shufflevector <4 x i64> %broadcast.splatinsert892, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert894 = insertelement <4 x i32> poison, i32 %187, i32 0
  %broadcast.splat895 = shufflevector <4 x i32> %broadcast.splatinsert894, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph883
  %index886 = phi i64 [ 0, %vector.ph883 ], [ %index.next887, %vector.body880 ]
  %vec.ind890 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph883 ], [ %vec.ind.next891, %vector.body880 ]
  %189 = add nuw nsw <4 x i64> %vec.ind890, %broadcast.splat893
  %190 = trunc <4 x i64> %189 to <4 x i32>
  %191 = mul <4 x i32> %broadcast.splat895, %190
  %192 = add <4 x i32> %191, <i32 2, i32 2, i32 2, i32 2>
  %193 = urem <4 x i32> %192, <i32 1000, i32 1000, i32 1000, i32 1000>
  %194 = sitofp <4 x i32> %193 to <4 x double>
  %195 = fmul fast <4 x double> %194, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %196 = extractelement <4 x i64> %189, i32 0
  %197 = shl i64 %196, 3
  %198 = add nuw nsw i64 %197, %188
  %199 = getelementptr i8, i8* %call2, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %195, <4 x double>* %200, align 8, !alias.scope !94, !noalias !97
  %index.next887 = add i64 %index886, 4
  %vec.ind.next891 = add <4 x i64> %vec.ind890, <i64 4, i64 4, i64 4, i64 4>
  %201 = icmp eq i64 %index.next887, %183
  br i1 %201, label %polly.loop_exit729, label %vector.body880, !llvm.loop !98

polly.loop_exit729:                               ; preds = %vector.body880, %polly.loop_header727
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond822.not = icmp eq i64 %polly.indvar724, %181
  br i1 %exitcond822.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_header721, %polly.loop_header727
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_header727 ], [ 0, %polly.loop_header721 ]
  %202 = add nuw nsw i64 %polly.indvar730, %184
  %203 = trunc i64 %202 to i32
  %204 = mul i32 %203, %187
  %205 = add i32 %204, 2
  %206 = urem i32 %205, 1000
  %p_conv10.i = sitofp i32 %206 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %207 = shl i64 %202, 3
  %208 = add nuw nsw i64 %207, %188
  %scevgep733 = getelementptr i8, i8* %call2, i64 %208
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  store double %p_div12.i, double* %scevgep733734, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond818.not = icmp eq i64 %polly.indvar730, %185
  br i1 %exitcond818.not, label %polly.loop_exit729, label %polly.loop_header727, !llvm.loop !99

polly.loop_header735:                             ; preds = %polly.loop_exit717, %polly.loop_exit743
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv809, i64 -1168)
  %209 = shl nsw i64 %polly.indvar738, 5
  %210 = add nsw i64 %smin811, 1199
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -32
  %exitcond814.not = icmp eq i64 %polly.indvar_next739, 38
  br i1 %exitcond814.not, label %init_array.exit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %211 = mul nsw i64 %polly.indvar744, -32
  %smin899 = call i64 @llvm.smin.i64(i64 %211, i64 -968)
  %212 = add nsw i64 %smin899, 1000
  %smin807 = call i64 @llvm.smin.i64(i64 %indvars.iv805, i64 -968)
  %213 = shl nsw i64 %polly.indvar744, 5
  %214 = add nsw i64 %smin807, 999
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -32
  %exitcond813.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond813.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %polly.indvar750 = phi i64 [ 0, %polly.loop_header741 ], [ %polly.indvar_next751, %polly.loop_exit755 ]
  %215 = add nuw nsw i64 %polly.indvar750, %209
  %216 = trunc i64 %215 to i32
  %217 = mul nuw nsw i64 %215, 8000
  %min.iters.check900 = icmp eq i64 %212, 0
  br i1 %min.iters.check900, label %polly.loop_header753, label %vector.ph901

vector.ph901:                                     ; preds = %polly.loop_header747
  %broadcast.splatinsert910 = insertelement <4 x i64> poison, i64 %213, i32 0
  %broadcast.splat911 = shufflevector <4 x i64> %broadcast.splatinsert910, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert912 = insertelement <4 x i32> poison, i32 %216, i32 0
  %broadcast.splat913 = shufflevector <4 x i32> %broadcast.splatinsert912, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph901
  %index904 = phi i64 [ 0, %vector.ph901 ], [ %index.next905, %vector.body898 ]
  %vec.ind908 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph901 ], [ %vec.ind.next909, %vector.body898 ]
  %218 = add nuw nsw <4 x i64> %vec.ind908, %broadcast.splat911
  %219 = trunc <4 x i64> %218 to <4 x i32>
  %220 = mul <4 x i32> %broadcast.splat913, %219
  %221 = add <4 x i32> %220, <i32 1, i32 1, i32 1, i32 1>
  %222 = urem <4 x i32> %221, <i32 1200, i32 1200, i32 1200, i32 1200>
  %223 = sitofp <4 x i32> %222 to <4 x double>
  %224 = fmul fast <4 x double> %223, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %225 = extractelement <4 x i64> %218, i32 0
  %226 = shl i64 %225, 3
  %227 = add nuw nsw i64 %226, %217
  %228 = getelementptr i8, i8* %call1, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %224, <4 x double>* %229, align 8, !alias.scope !93, !noalias !100
  %index.next905 = add i64 %index904, 4
  %vec.ind.next909 = add <4 x i64> %vec.ind908, <i64 4, i64 4, i64 4, i64 4>
  %230 = icmp eq i64 %index.next905, %212
  br i1 %230, label %polly.loop_exit755, label %vector.body898, !llvm.loop !101

polly.loop_exit755:                               ; preds = %vector.body898, %polly.loop_header753
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond812.not = icmp eq i64 %polly.indvar750, %210
  br i1 %exitcond812.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_header747, %polly.loop_header753
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_header753 ], [ 0, %polly.loop_header747 ]
  %231 = add nuw nsw i64 %polly.indvar756, %213
  %232 = trunc i64 %231 to i32
  %233 = mul i32 %232, %216
  %234 = add i32 %233, 1
  %235 = urem i32 %234, 1200
  %p_conv.i = sitofp i32 %235 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %236 = shl i64 %231, 3
  %237 = add nuw nsw i64 %236, %217
  %scevgep760 = getelementptr i8, i8* %call1, i64 %237
  %scevgep760761 = bitcast i8* %scevgep760 to double*
  store double %p_div.i, double* %scevgep760761, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond808.not = icmp eq i64 %polly.indvar756, %214
  br i1 %exitcond808.not, label %polly.loop_exit755, label %polly.loop_header753, !llvm.loop !102

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 16, %polly.loop_exit219 ]
  %238 = shl nsw i64 %polly.indvar214.1, 4
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %239 = add nuw nsw i64 %polly.indvar220.1, %97
  %240 = shl i64 %239, 3
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_exit231.1, %polly.loop_header217.1
  %indvars.iv770.1 = phi i64 [ %indvars.iv.next771.1, %polly.loop_exit231.1 ], [ %indvars.iv.1, %polly.loop_header217.1 ]
  %polly.indvar226.1 = phi i64 [ %polly.indvar_next227.1, %polly.loop_exit231.1 ], [ 0, %polly.loop_header217.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv770.1, i64 255)
  %241 = add nuw nsw i64 %polly.indvar226.1, %238
  %242 = mul nuw nsw i64 %241, 8000
  %243 = add nuw nsw i64 %242, %240
  %scevgep238.1 = getelementptr i8, i8* %call2, i64 %243
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %call1, i64 %243
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  %244 = mul nuw nsw i64 %241, 9600
  br label %polly.loop_header229.1

polly.loop_header229.1:                           ; preds = %polly.loop_header229.1, %polly.loop_header223.1
  %polly.indvar232.1 = phi i64 [ 0, %polly.loop_header223.1 ], [ %polly.indvar_next233.1, %polly.loop_header229.1 ]
  %245 = add nuw nsw i64 %polly.indvar232.1, 256
  %246 = mul nuw nsw i64 %245, 8000
  %247 = add nuw nsw i64 %246, %240
  %scevgep235.1 = getelementptr i8, i8* %call1, i64 %247
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %scevgep241.1 = getelementptr i8, i8* %call2, i64 %247
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_243.1
  %248 = shl i64 %245, 3
  %249 = add nuw nsw i64 %248, %244
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %249
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.1 = add nuw nsw i64 %polly.indvar232.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.1, label %polly.loop_header229.1

polly.loop_exit231.1:                             ; preds = %polly.loop_header229.1
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %indvars.iv.next771.1 = add nuw nsw i64 %indvars.iv770.1, 1
  %exitcond772.1.not = icmp eq i64 %polly.indvar_next227.1, 16
  br i1 %exitcond772.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond773.1.not = icmp eq i64 %polly.indvar_next221.1, 20
  br i1 %exitcond773.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 16
  %exitcond774.1.not = icmp eq i64 %polly.indvar_next215.1, 75
  br i1 %exitcond774.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 32, %polly.loop_exit219.1 ]
  %250 = shl nsw i64 %polly.indvar214.2, 4
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %251 = add nuw nsw i64 %polly.indvar220.2, %97
  %252 = shl i64 %251, 3
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_exit231.2, %polly.loop_header217.2
  %indvars.iv770.2 = phi i64 [ %indvars.iv.next771.2, %polly.loop_exit231.2 ], [ %indvars.iv.2, %polly.loop_header217.2 ]
  %polly.indvar226.2 = phi i64 [ %polly.indvar_next227.2, %polly.loop_exit231.2 ], [ 0, %polly.loop_header217.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv770.2, i64 255)
  %253 = add nuw nsw i64 %polly.indvar226.2, %250
  %254 = mul nuw nsw i64 %253, 8000
  %255 = add nuw nsw i64 %254, %252
  %scevgep238.2 = getelementptr i8, i8* %call2, i64 %255
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2 = getelementptr i8, i8* %call1, i64 %255
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !65, !noalias !71
  %256 = mul nuw nsw i64 %253, 9600
  br label %polly.loop_header229.2

polly.loop_header229.2:                           ; preds = %polly.loop_header229.2, %polly.loop_header223.2
  %polly.indvar232.2 = phi i64 [ 0, %polly.loop_header223.2 ], [ %polly.indvar_next233.2, %polly.loop_header229.2 ]
  %257 = add nuw nsw i64 %polly.indvar232.2, 512
  %258 = mul nuw nsw i64 %257, 8000
  %259 = add nuw nsw i64 %258, %252
  %scevgep235.2 = getelementptr i8, i8* %call1, i64 %259
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %scevgep241.2 = getelementptr i8, i8* %call2, i64 %259
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_243.2
  %260 = shl i64 %257, 3
  %261 = add nuw nsw i64 %260, %256
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %261
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_249.2
  store double %p_add42.i118.2, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.2 = add nuw nsw i64 %polly.indvar232.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.2, label %polly.loop_header229.2

polly.loop_exit231.2:                             ; preds = %polly.loop_header229.2
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %indvars.iv.next771.2 = add nuw nsw i64 %indvars.iv770.2, 1
  %exitcond772.2.not = icmp eq i64 %polly.indvar_next227.2, 16
  br i1 %exitcond772.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit231.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond773.2.not = icmp eq i64 %polly.indvar_next221.2, 20
  br i1 %exitcond773.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 16
  %exitcond774.2.not = icmp eq i64 %polly.indvar_next215.2, 75
  br i1 %exitcond774.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 48, %polly.loop_exit219.2 ]
  %262 = shl nsw i64 %polly.indvar214.3, 4
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_exit225.3 ]
  %263 = add nuw nsw i64 %polly.indvar220.3, %97
  %264 = shl i64 %263, 3
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_exit231.3, %polly.loop_header217.3
  %indvars.iv770.3 = phi i64 [ %indvars.iv.next771.3, %polly.loop_exit231.3 ], [ %indvars.iv.3, %polly.loop_header217.3 ]
  %polly.indvar226.3 = phi i64 [ %polly.indvar_next227.3, %polly.loop_exit231.3 ], [ 0, %polly.loop_header217.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv770.3, i64 255)
  %265 = add nuw nsw i64 %polly.indvar226.3, %262
  %266 = mul nuw nsw i64 %265, 8000
  %267 = add nuw nsw i64 %266, %264
  %scevgep238.3 = getelementptr i8, i8* %call2, i64 %267
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %scevgep244.3 = getelementptr i8, i8* %call1, i64 %267
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !65, !noalias !71
  %268 = mul nuw nsw i64 %265, 9600
  br label %polly.loop_header229.3

polly.loop_header229.3:                           ; preds = %polly.loop_header229.3, %polly.loop_header223.3
  %polly.indvar232.3 = phi i64 [ 0, %polly.loop_header223.3 ], [ %polly.indvar_next233.3, %polly.loop_header229.3 ]
  %269 = add nuw nsw i64 %polly.indvar232.3, 768
  %270 = mul nuw nsw i64 %269, 8000
  %271 = add nuw nsw i64 %270, %264
  %scevgep235.3 = getelementptr i8, i8* %call1, i64 %271
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %scevgep241.3 = getelementptr i8, i8* %call2, i64 %271
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_243.3
  %272 = shl i64 %269, 3
  %273 = add nuw nsw i64 %272, %268
  %scevgep247.3 = getelementptr i8, i8* %call, i64 %273
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_249.3
  store double %p_add42.i118.3, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.3 = add nuw nsw i64 %polly.indvar232.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.3, label %polly.loop_header229.3

polly.loop_exit231.3:                             ; preds = %polly.loop_header229.3
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %indvars.iv.next771.3 = add nuw nsw i64 %indvars.iv770.3, 1
  %exitcond772.3.not = icmp eq i64 %polly.indvar_next227.3, 16
  br i1 %exitcond772.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond773.3.not = icmp eq i64 %polly.indvar_next221.3, 20
  br i1 %exitcond773.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 16
  %exitcond774.3.not = icmp eq i64 %polly.indvar_next215.3, 75
  br i1 %exitcond774.3.not, label %polly.loop_header211.4, label %polly.loop_header211.3

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit219.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit219.4 ], [ 0, %polly.loop_exit219.3 ]
  %polly.indvar214.4 = phi i64 [ %polly.indvar_next215.4, %polly.loop_exit219.4 ], [ 64, %polly.loop_exit219.3 ]
  %274 = shl nsw i64 %polly.indvar214.4, 4
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.4, %polly.loop_header211.4
  %polly.indvar220.4 = phi i64 [ 0, %polly.loop_header211.4 ], [ %polly.indvar_next221.4, %polly.loop_exit225.4 ]
  %275 = add nuw nsw i64 %polly.indvar220.4, %97
  %276 = shl i64 %275, 3
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_exit231.4, %polly.loop_header217.4
  %indvars.iv770.4 = phi i64 [ %indvars.iv.next771.4, %polly.loop_exit231.4 ], [ %indvars.iv.4, %polly.loop_header217.4 ]
  %polly.indvar226.4 = phi i64 [ %polly.indvar_next227.4, %polly.loop_exit231.4 ], [ 0, %polly.loop_header217.4 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv770.4, i64 255)
  %277 = add nuw nsw i64 %polly.indvar226.4, %274
  %278 = mul nuw nsw i64 %277, 8000
  %279 = add nuw nsw i64 %278, %276
  %scevgep238.4 = getelementptr i8, i8* %call2, i64 %279
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !66, !noalias !70
  %scevgep244.4 = getelementptr i8, i8* %call1, i64 %279
  %scevgep244245.4 = bitcast i8* %scevgep244.4 to double*
  %_p_scalar_246.4 = load double, double* %scevgep244245.4, align 8, !alias.scope !65, !noalias !71
  %280 = mul nuw nsw i64 %277, 9600
  br label %polly.loop_header229.4

polly.loop_header229.4:                           ; preds = %polly.loop_header229.4, %polly.loop_header223.4
  %polly.indvar232.4 = phi i64 [ 0, %polly.loop_header223.4 ], [ %polly.indvar_next233.4, %polly.loop_header229.4 ]
  %281 = add nuw nsw i64 %polly.indvar232.4, 1024
  %282 = mul nuw nsw i64 %281, 8000
  %283 = add nuw nsw i64 %282, %276
  %scevgep235.4 = getelementptr i8, i8* %call1, i64 %283
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %scevgep241.4 = getelementptr i8, i8* %call2, i64 %283
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_246.4, %_p_scalar_243.4
  %284 = shl i64 %281, 3
  %285 = add nuw nsw i64 %284, %280
  %scevgep247.4 = getelementptr i8, i8* %call, i64 %285
  %scevgep247248.4 = bitcast i8* %scevgep247.4 to double*
  %_p_scalar_249.4 = load double, double* %scevgep247248.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_249.4
  store double %p_add42.i118.4, double* %scevgep247248.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.4 = add nuw nsw i64 %polly.indvar232.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar232.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit231.4, label %polly.loop_header229.4

polly.loop_exit231.4:                             ; preds = %polly.loop_header229.4
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %indvars.iv.next771.4 = add nuw nsw i64 %indvars.iv770.4, 1
  %exitcond772.4.not = icmp eq i64 %polly.indvar_next227.4, 16
  br i1 %exitcond772.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_exit231.4
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %exitcond773.4.not = icmp eq i64 %polly.indvar_next221.4, 20
  br i1 %exitcond773.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 16
  %exitcond774.4.not = icmp eq i64 %polly.indvar_next215.4, 75
  br i1 %exitcond774.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next203, 50
  br i1 %exitcond776.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header364.1:                           ; preds = %polly.loop_exit372, %polly.loop_exit372.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_exit372 ]
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 16, %polly.loop_exit372 ]
  %286 = shl nsw i64 %polly.indvar367.1, 4
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_exit378.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_exit378.1 ]
  %287 = add nuw nsw i64 %polly.indvar373.1, %118
  %288 = shl i64 %287, 3
  br label %polly.loop_header376.1

polly.loop_header376.1:                           ; preds = %polly.loop_exit384.1, %polly.loop_header370.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit384.1 ], [ %indvars.iv779.1, %polly.loop_header370.1 ]
  %polly.indvar379.1 = phi i64 [ %polly.indvar_next380.1, %polly.loop_exit384.1 ], [ 0, %polly.loop_header370.1 ]
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 255)
  %289 = add nuw nsw i64 %polly.indvar379.1, %286
  %290 = mul nuw nsw i64 %289, 8000
  %291 = add nuw nsw i64 %290, %288
  %scevgep391.1 = getelementptr i8, i8* %call2, i64 %291
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.1 = getelementptr i8, i8* %call1, i64 %291
  %scevgep397398.1 = bitcast i8* %scevgep397.1 to double*
  %_p_scalar_399.1 = load double, double* %scevgep397398.1, align 8, !alias.scope !75, !noalias !80
  %292 = mul nuw nsw i64 %289, 9600
  br label %polly.loop_header382.1

polly.loop_header382.1:                           ; preds = %polly.loop_header382.1, %polly.loop_header376.1
  %polly.indvar385.1 = phi i64 [ 0, %polly.loop_header376.1 ], [ %polly.indvar_next386.1, %polly.loop_header382.1 ]
  %293 = add nuw nsw i64 %polly.indvar385.1, 256
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %288
  %scevgep388.1 = getelementptr i8, i8* %call1, i64 %295
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_393.1, %_p_scalar_390.1
  %scevgep394.1 = getelementptr i8, i8* %call2, i64 %295
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_399.1, %_p_scalar_396.1
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %292
  %scevgep400.1 = getelementptr i8, i8* %call, i64 %297
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_402.1
  store double %p_add42.i79.1, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.1 = add nuw nsw i64 %polly.indvar385.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar385.1, %smin783.1
  br i1 %exitcond784.1.not, label %polly.loop_exit384.1, label %polly.loop_header382.1

polly.loop_exit384.1:                             ; preds = %polly.loop_header382.1
  %polly.indvar_next380.1 = add nuw nsw i64 %polly.indvar379.1, 1
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next380.1, 16
  br i1 %exitcond785.1.not, label %polly.loop_exit378.1, label %polly.loop_header376.1

polly.loop_exit378.1:                             ; preds = %polly.loop_exit384.1
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond786.1.not = icmp eq i64 %polly.indvar_next374.1, 20
  br i1 %exitcond786.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_exit378.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv779.1, 16
  %exitcond787.1.not = icmp eq i64 %polly.indvar_next368.1, 75
  br i1 %exitcond787.1.not, label %polly.loop_header364.2, label %polly.loop_header364.1

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.1, %polly.loop_exit372.2
  %indvars.iv779.2 = phi i64 [ %indvars.iv.next780.2, %polly.loop_exit372.2 ], [ 0, %polly.loop_exit372.1 ]
  %polly.indvar367.2 = phi i64 [ %polly.indvar_next368.2, %polly.loop_exit372.2 ], [ 32, %polly.loop_exit372.1 ]
  %298 = shl nsw i64 %polly.indvar367.2, 4
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_exit378.2, %polly.loop_header364.2
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_header364.2 ], [ %polly.indvar_next374.2, %polly.loop_exit378.2 ]
  %299 = add nuw nsw i64 %polly.indvar373.2, %118
  %300 = shl i64 %299, 3
  br label %polly.loop_header376.2

polly.loop_header376.2:                           ; preds = %polly.loop_exit384.2, %polly.loop_header370.2
  %indvars.iv781.2 = phi i64 [ %indvars.iv.next782.2, %polly.loop_exit384.2 ], [ %indvars.iv779.2, %polly.loop_header370.2 ]
  %polly.indvar379.2 = phi i64 [ %polly.indvar_next380.2, %polly.loop_exit384.2 ], [ 0, %polly.loop_header370.2 ]
  %smin783.2 = call i64 @llvm.smin.i64(i64 %indvars.iv781.2, i64 255)
  %301 = add nuw nsw i64 %polly.indvar379.2, %298
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %300
  %scevgep391.2 = getelementptr i8, i8* %call2, i64 %303
  %scevgep391392.2 = bitcast i8* %scevgep391.2 to double*
  %_p_scalar_393.2 = load double, double* %scevgep391392.2, align 8, !alias.scope !76, !noalias !79
  %scevgep397.2 = getelementptr i8, i8* %call1, i64 %303
  %scevgep397398.2 = bitcast i8* %scevgep397.2 to double*
  %_p_scalar_399.2 = load double, double* %scevgep397398.2, align 8, !alias.scope !75, !noalias !80
  %304 = mul nuw nsw i64 %301, 9600
  br label %polly.loop_header382.2

polly.loop_header382.2:                           ; preds = %polly.loop_header382.2, %polly.loop_header376.2
  %polly.indvar385.2 = phi i64 [ 0, %polly.loop_header376.2 ], [ %polly.indvar_next386.2, %polly.loop_header382.2 ]
  %305 = add nuw nsw i64 %polly.indvar385.2, 512
  %306 = mul nuw nsw i64 %305, 8000
  %307 = add nuw nsw i64 %306, %300
  %scevgep388.2 = getelementptr i8, i8* %call1, i64 %307
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_393.2, %_p_scalar_390.2
  %scevgep394.2 = getelementptr i8, i8* %call2, i64 %307
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_399.2, %_p_scalar_396.2
  %308 = shl i64 %305, 3
  %309 = add nuw nsw i64 %308, %304
  %scevgep400.2 = getelementptr i8, i8* %call, i64 %309
  %scevgep400401.2 = bitcast i8* %scevgep400.2 to double*
  %_p_scalar_402.2 = load double, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_402.2
  store double %p_add42.i79.2, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.2 = add nuw nsw i64 %polly.indvar385.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar385.2, %smin783.2
  br i1 %exitcond784.2.not, label %polly.loop_exit384.2, label %polly.loop_header382.2

polly.loop_exit384.2:                             ; preds = %polly.loop_header382.2
  %polly.indvar_next380.2 = add nuw nsw i64 %polly.indvar379.2, 1
  %indvars.iv.next782.2 = add nuw nsw i64 %indvars.iv781.2, 1
  %exitcond785.2.not = icmp eq i64 %polly.indvar_next380.2, 16
  br i1 %exitcond785.2.not, label %polly.loop_exit378.2, label %polly.loop_header376.2

polly.loop_exit378.2:                             ; preds = %polly.loop_exit384.2
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %exitcond786.2.not = icmp eq i64 %polly.indvar_next374.2, 20
  br i1 %exitcond786.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_exit378.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %indvars.iv.next780.2 = add nuw nsw i64 %indvars.iv779.2, 16
  %exitcond787.2.not = icmp eq i64 %polly.indvar_next368.2, 75
  br i1 %exitcond787.2.not, label %polly.loop_header364.3, label %polly.loop_header364.2

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.2, %polly.loop_exit372.3
  %indvars.iv779.3 = phi i64 [ %indvars.iv.next780.3, %polly.loop_exit372.3 ], [ 0, %polly.loop_exit372.2 ]
  %polly.indvar367.3 = phi i64 [ %polly.indvar_next368.3, %polly.loop_exit372.3 ], [ 48, %polly.loop_exit372.2 ]
  %310 = shl nsw i64 %polly.indvar367.3, 4
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_exit378.3, %polly.loop_header364.3
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_header364.3 ], [ %polly.indvar_next374.3, %polly.loop_exit378.3 ]
  %311 = add nuw nsw i64 %polly.indvar373.3, %118
  %312 = shl i64 %311, 3
  br label %polly.loop_header376.3

polly.loop_header376.3:                           ; preds = %polly.loop_exit384.3, %polly.loop_header370.3
  %indvars.iv781.3 = phi i64 [ %indvars.iv.next782.3, %polly.loop_exit384.3 ], [ %indvars.iv779.3, %polly.loop_header370.3 ]
  %polly.indvar379.3 = phi i64 [ %polly.indvar_next380.3, %polly.loop_exit384.3 ], [ 0, %polly.loop_header370.3 ]
  %smin783.3 = call i64 @llvm.smin.i64(i64 %indvars.iv781.3, i64 255)
  %313 = add nuw nsw i64 %polly.indvar379.3, %310
  %314 = mul nuw nsw i64 %313, 8000
  %315 = add nuw nsw i64 %314, %312
  %scevgep391.3 = getelementptr i8, i8* %call2, i64 %315
  %scevgep391392.3 = bitcast i8* %scevgep391.3 to double*
  %_p_scalar_393.3 = load double, double* %scevgep391392.3, align 8, !alias.scope !76, !noalias !79
  %scevgep397.3 = getelementptr i8, i8* %call1, i64 %315
  %scevgep397398.3 = bitcast i8* %scevgep397.3 to double*
  %_p_scalar_399.3 = load double, double* %scevgep397398.3, align 8, !alias.scope !75, !noalias !80
  %316 = mul nuw nsw i64 %313, 9600
  br label %polly.loop_header382.3

polly.loop_header382.3:                           ; preds = %polly.loop_header382.3, %polly.loop_header376.3
  %polly.indvar385.3 = phi i64 [ 0, %polly.loop_header376.3 ], [ %polly.indvar_next386.3, %polly.loop_header382.3 ]
  %317 = add nuw nsw i64 %polly.indvar385.3, 768
  %318 = mul nuw nsw i64 %317, 8000
  %319 = add nuw nsw i64 %318, %312
  %scevgep388.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_393.3, %_p_scalar_390.3
  %scevgep394.3 = getelementptr i8, i8* %call2, i64 %319
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_399.3, %_p_scalar_396.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %316
  %scevgep400.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep400401.3 = bitcast i8* %scevgep400.3 to double*
  %_p_scalar_402.3 = load double, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_402.3
  store double %p_add42.i79.3, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.3 = add nuw nsw i64 %polly.indvar385.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar385.3, %smin783.3
  br i1 %exitcond784.3.not, label %polly.loop_exit384.3, label %polly.loop_header382.3

polly.loop_exit384.3:                             ; preds = %polly.loop_header382.3
  %polly.indvar_next380.3 = add nuw nsw i64 %polly.indvar379.3, 1
  %indvars.iv.next782.3 = add nuw nsw i64 %indvars.iv781.3, 1
  %exitcond785.3.not = icmp eq i64 %polly.indvar_next380.3, 16
  br i1 %exitcond785.3.not, label %polly.loop_exit378.3, label %polly.loop_header376.3

polly.loop_exit378.3:                             ; preds = %polly.loop_exit384.3
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %exitcond786.3.not = icmp eq i64 %polly.indvar_next374.3, 20
  br i1 %exitcond786.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_exit378.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %indvars.iv.next780.3 = add nuw nsw i64 %indvars.iv779.3, 16
  %exitcond787.3.not = icmp eq i64 %polly.indvar_next368.3, 75
  br i1 %exitcond787.3.not, label %polly.loop_header364.4, label %polly.loop_header364.3

polly.loop_header364.4:                           ; preds = %polly.loop_exit372.3, %polly.loop_exit372.4
  %indvars.iv779.4 = phi i64 [ %indvars.iv.next780.4, %polly.loop_exit372.4 ], [ 0, %polly.loop_exit372.3 ]
  %polly.indvar367.4 = phi i64 [ %polly.indvar_next368.4, %polly.loop_exit372.4 ], [ 64, %polly.loop_exit372.3 ]
  %322 = shl nsw i64 %polly.indvar367.4, 4
  br label %polly.loop_header370.4

polly.loop_header370.4:                           ; preds = %polly.loop_exit378.4, %polly.loop_header364.4
  %polly.indvar373.4 = phi i64 [ 0, %polly.loop_header364.4 ], [ %polly.indvar_next374.4, %polly.loop_exit378.4 ]
  %323 = add nuw nsw i64 %polly.indvar373.4, %118
  %324 = shl i64 %323, 3
  br label %polly.loop_header376.4

polly.loop_header376.4:                           ; preds = %polly.loop_exit384.4, %polly.loop_header370.4
  %indvars.iv781.4 = phi i64 [ %indvars.iv.next782.4, %polly.loop_exit384.4 ], [ %indvars.iv779.4, %polly.loop_header370.4 ]
  %polly.indvar379.4 = phi i64 [ %polly.indvar_next380.4, %polly.loop_exit384.4 ], [ 0, %polly.loop_header370.4 ]
  %smin783.4 = call i64 @llvm.smin.i64(i64 %indvars.iv781.4, i64 255)
  %325 = add nuw nsw i64 %polly.indvar379.4, %322
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %324
  %scevgep391.4 = getelementptr i8, i8* %call2, i64 %327
  %scevgep391392.4 = bitcast i8* %scevgep391.4 to double*
  %_p_scalar_393.4 = load double, double* %scevgep391392.4, align 8, !alias.scope !76, !noalias !79
  %scevgep397.4 = getelementptr i8, i8* %call1, i64 %327
  %scevgep397398.4 = bitcast i8* %scevgep397.4 to double*
  %_p_scalar_399.4 = load double, double* %scevgep397398.4, align 8, !alias.scope !75, !noalias !80
  %328 = mul nuw nsw i64 %325, 9600
  br label %polly.loop_header382.4

polly.loop_header382.4:                           ; preds = %polly.loop_header382.4, %polly.loop_header376.4
  %polly.indvar385.4 = phi i64 [ 0, %polly.loop_header376.4 ], [ %polly.indvar_next386.4, %polly.loop_header382.4 ]
  %329 = add nuw nsw i64 %polly.indvar385.4, 1024
  %330 = mul nuw nsw i64 %329, 8000
  %331 = add nuw nsw i64 %330, %324
  %scevgep388.4 = getelementptr i8, i8* %call1, i64 %331
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_393.4, %_p_scalar_390.4
  %scevgep394.4 = getelementptr i8, i8* %call2, i64 %331
  %scevgep394395.4 = bitcast i8* %scevgep394.4 to double*
  %_p_scalar_396.4 = load double, double* %scevgep394395.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_399.4, %_p_scalar_396.4
  %332 = shl i64 %329, 3
  %333 = add nuw nsw i64 %332, %328
  %scevgep400.4 = getelementptr i8, i8* %call, i64 %333
  %scevgep400401.4 = bitcast i8* %scevgep400.4 to double*
  %_p_scalar_402.4 = load double, double* %scevgep400401.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_402.4
  store double %p_add42.i79.4, double* %scevgep400401.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.4 = add nuw nsw i64 %polly.indvar385.4, 1
  %exitcond784.4.not = icmp eq i64 %polly.indvar385.4, %smin783.4
  br i1 %exitcond784.4.not, label %polly.loop_exit384.4, label %polly.loop_header382.4

polly.loop_exit384.4:                             ; preds = %polly.loop_header382.4
  %polly.indvar_next380.4 = add nuw nsw i64 %polly.indvar379.4, 1
  %indvars.iv.next782.4 = add nuw nsw i64 %indvars.iv781.4, 1
  %exitcond785.4.not = icmp eq i64 %polly.indvar_next380.4, 16
  br i1 %exitcond785.4.not, label %polly.loop_exit378.4, label %polly.loop_header376.4

polly.loop_exit378.4:                             ; preds = %polly.loop_exit384.4
  %polly.indvar_next374.4 = add nuw nsw i64 %polly.indvar373.4, 1
  %exitcond786.4.not = icmp eq i64 %polly.indvar_next374.4, 20
  br i1 %exitcond786.4.not, label %polly.loop_exit372.4, label %polly.loop_header370.4

polly.loop_exit372.4:                             ; preds = %polly.loop_exit378.4
  %polly.indvar_next368.4 = add nuw nsw i64 %polly.indvar367.4, 1
  %indvars.iv.next780.4 = add nuw nsw i64 %indvars.iv779.4, 16
  %exitcond787.4.not = icmp eq i64 %polly.indvar_next368.4, 75
  br i1 %exitcond787.4.not, label %polly.loop_exit366.4, label %polly.loop_header364.4

polly.loop_exit366.4:                             ; preds = %polly.loop_exit372.4
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next356, 50
  br i1 %exitcond789.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header517.1:                           ; preds = %polly.loop_exit525, %polly.loop_exit525.1
  %indvars.iv792.1 = phi i64 [ %indvars.iv.next793.1, %polly.loop_exit525.1 ], [ 0, %polly.loop_exit525 ]
  %polly.indvar520.1 = phi i64 [ %polly.indvar_next521.1, %polly.loop_exit525.1 ], [ 16, %polly.loop_exit525 ]
  %334 = shl nsw i64 %polly.indvar520.1, 4
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_exit531.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_exit531.1 ]
  %335 = add nuw nsw i64 %polly.indvar526.1, %139
  %336 = shl i64 %335, 3
  br label %polly.loop_header529.1

polly.loop_header529.1:                           ; preds = %polly.loop_exit537.1, %polly.loop_header523.1
  %indvars.iv794.1 = phi i64 [ %indvars.iv.next795.1, %polly.loop_exit537.1 ], [ %indvars.iv792.1, %polly.loop_header523.1 ]
  %polly.indvar532.1 = phi i64 [ %polly.indvar_next533.1, %polly.loop_exit537.1 ], [ 0, %polly.loop_header523.1 ]
  %smin796.1 = call i64 @llvm.smin.i64(i64 %indvars.iv794.1, i64 255)
  %337 = add nuw nsw i64 %polly.indvar532.1, %334
  %338 = mul nuw nsw i64 %337, 8000
  %339 = add nuw nsw i64 %338, %336
  %scevgep544.1 = getelementptr i8, i8* %call2, i64 %339
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.1 = getelementptr i8, i8* %call1, i64 %339
  %scevgep550551.1 = bitcast i8* %scevgep550.1 to double*
  %_p_scalar_552.1 = load double, double* %scevgep550551.1, align 8, !alias.scope !84, !noalias !89
  %340 = mul nuw nsw i64 %337, 9600
  br label %polly.loop_header535.1

polly.loop_header535.1:                           ; preds = %polly.loop_header535.1, %polly.loop_header529.1
  %polly.indvar538.1 = phi i64 [ 0, %polly.loop_header529.1 ], [ %polly.indvar_next539.1, %polly.loop_header535.1 ]
  %341 = add nuw nsw i64 %polly.indvar538.1, 256
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %336
  %scevgep541.1 = getelementptr i8, i8* %call1, i64 %343
  %scevgep541542.1 = bitcast i8* %scevgep541.1 to double*
  %_p_scalar_543.1 = load double, double* %scevgep541542.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_543.1
  %scevgep547.1 = getelementptr i8, i8* %call2, i64 %343
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_552.1, %_p_scalar_549.1
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %340
  %scevgep553.1 = getelementptr i8, i8* %call, i64 %345
  %scevgep553554.1 = bitcast i8* %scevgep553.1 to double*
  %_p_scalar_555.1 = load double, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_555.1
  store double %p_add42.i.1, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1 = add nuw nsw i64 %polly.indvar538.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar538.1, %smin796.1
  br i1 %exitcond797.1.not, label %polly.loop_exit537.1, label %polly.loop_header535.1

polly.loop_exit537.1:                             ; preds = %polly.loop_header535.1
  %polly.indvar_next533.1 = add nuw nsw i64 %polly.indvar532.1, 1
  %indvars.iv.next795.1 = add nuw nsw i64 %indvars.iv794.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next533.1, 16
  br i1 %exitcond798.1.not, label %polly.loop_exit531.1, label %polly.loop_header529.1

polly.loop_exit531.1:                             ; preds = %polly.loop_exit537.1
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond799.1.not = icmp eq i64 %polly.indvar_next527.1, 20
  br i1 %exitcond799.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_exit531.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %indvars.iv.next793.1 = add nuw nsw i64 %indvars.iv792.1, 16
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next521.1, 75
  br i1 %exitcond800.1.not, label %polly.loop_header517.2, label %polly.loop_header517.1

polly.loop_header517.2:                           ; preds = %polly.loop_exit525.1, %polly.loop_exit525.2
  %indvars.iv792.2 = phi i64 [ %indvars.iv.next793.2, %polly.loop_exit525.2 ], [ 0, %polly.loop_exit525.1 ]
  %polly.indvar520.2 = phi i64 [ %polly.indvar_next521.2, %polly.loop_exit525.2 ], [ 32, %polly.loop_exit525.1 ]
  %346 = shl nsw i64 %polly.indvar520.2, 4
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_exit531.2, %polly.loop_header517.2
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_header517.2 ], [ %polly.indvar_next527.2, %polly.loop_exit531.2 ]
  %347 = add nuw nsw i64 %polly.indvar526.2, %139
  %348 = shl i64 %347, 3
  br label %polly.loop_header529.2

polly.loop_header529.2:                           ; preds = %polly.loop_exit537.2, %polly.loop_header523.2
  %indvars.iv794.2 = phi i64 [ %indvars.iv.next795.2, %polly.loop_exit537.2 ], [ %indvars.iv792.2, %polly.loop_header523.2 ]
  %polly.indvar532.2 = phi i64 [ %polly.indvar_next533.2, %polly.loop_exit537.2 ], [ 0, %polly.loop_header523.2 ]
  %smin796.2 = call i64 @llvm.smin.i64(i64 %indvars.iv794.2, i64 255)
  %349 = add nuw nsw i64 %polly.indvar532.2, %346
  %350 = mul nuw nsw i64 %349, 8000
  %351 = add nuw nsw i64 %350, %348
  %scevgep544.2 = getelementptr i8, i8* %call2, i64 %351
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !85, !noalias !88
  %scevgep550.2 = getelementptr i8, i8* %call1, i64 %351
  %scevgep550551.2 = bitcast i8* %scevgep550.2 to double*
  %_p_scalar_552.2 = load double, double* %scevgep550551.2, align 8, !alias.scope !84, !noalias !89
  %352 = mul nuw nsw i64 %349, 9600
  br label %polly.loop_header535.2

polly.loop_header535.2:                           ; preds = %polly.loop_header535.2, %polly.loop_header529.2
  %polly.indvar538.2 = phi i64 [ 0, %polly.loop_header529.2 ], [ %polly.indvar_next539.2, %polly.loop_header535.2 ]
  %353 = add nuw nsw i64 %polly.indvar538.2, 512
  %354 = mul nuw nsw i64 %353, 8000
  %355 = add nuw nsw i64 %354, %348
  %scevgep541.2 = getelementptr i8, i8* %call1, i64 %355
  %scevgep541542.2 = bitcast i8* %scevgep541.2 to double*
  %_p_scalar_543.2 = load double, double* %scevgep541542.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_543.2
  %scevgep547.2 = getelementptr i8, i8* %call2, i64 %355
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_552.2, %_p_scalar_549.2
  %356 = shl i64 %353, 3
  %357 = add nuw nsw i64 %356, %352
  %scevgep553.2 = getelementptr i8, i8* %call, i64 %357
  %scevgep553554.2 = bitcast i8* %scevgep553.2 to double*
  %_p_scalar_555.2 = load double, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_555.2
  store double %p_add42.i.2, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.2 = add nuw nsw i64 %polly.indvar538.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar538.2, %smin796.2
  br i1 %exitcond797.2.not, label %polly.loop_exit537.2, label %polly.loop_header535.2

polly.loop_exit537.2:                             ; preds = %polly.loop_header535.2
  %polly.indvar_next533.2 = add nuw nsw i64 %polly.indvar532.2, 1
  %indvars.iv.next795.2 = add nuw nsw i64 %indvars.iv794.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next533.2, 16
  br i1 %exitcond798.2.not, label %polly.loop_exit531.2, label %polly.loop_header529.2

polly.loop_exit531.2:                             ; preds = %polly.loop_exit537.2
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond799.2.not = icmp eq i64 %polly.indvar_next527.2, 20
  br i1 %exitcond799.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_exit531.2
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %indvars.iv.next793.2 = add nuw nsw i64 %indvars.iv792.2, 16
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next521.2, 75
  br i1 %exitcond800.2.not, label %polly.loop_header517.3, label %polly.loop_header517.2

polly.loop_header517.3:                           ; preds = %polly.loop_exit525.2, %polly.loop_exit525.3
  %indvars.iv792.3 = phi i64 [ %indvars.iv.next793.3, %polly.loop_exit525.3 ], [ 0, %polly.loop_exit525.2 ]
  %polly.indvar520.3 = phi i64 [ %polly.indvar_next521.3, %polly.loop_exit525.3 ], [ 48, %polly.loop_exit525.2 ]
  %358 = shl nsw i64 %polly.indvar520.3, 4
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_exit531.3, %polly.loop_header517.3
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_header517.3 ], [ %polly.indvar_next527.3, %polly.loop_exit531.3 ]
  %359 = add nuw nsw i64 %polly.indvar526.3, %139
  %360 = shl i64 %359, 3
  br label %polly.loop_header529.3

polly.loop_header529.3:                           ; preds = %polly.loop_exit537.3, %polly.loop_header523.3
  %indvars.iv794.3 = phi i64 [ %indvars.iv.next795.3, %polly.loop_exit537.3 ], [ %indvars.iv792.3, %polly.loop_header523.3 ]
  %polly.indvar532.3 = phi i64 [ %polly.indvar_next533.3, %polly.loop_exit537.3 ], [ 0, %polly.loop_header523.3 ]
  %smin796.3 = call i64 @llvm.smin.i64(i64 %indvars.iv794.3, i64 255)
  %361 = add nuw nsw i64 %polly.indvar532.3, %358
  %362 = mul nuw nsw i64 %361, 8000
  %363 = add nuw nsw i64 %362, %360
  %scevgep544.3 = getelementptr i8, i8* %call2, i64 %363
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !85, !noalias !88
  %scevgep550.3 = getelementptr i8, i8* %call1, i64 %363
  %scevgep550551.3 = bitcast i8* %scevgep550.3 to double*
  %_p_scalar_552.3 = load double, double* %scevgep550551.3, align 8, !alias.scope !84, !noalias !89
  %364 = mul nuw nsw i64 %361, 9600
  br label %polly.loop_header535.3

polly.loop_header535.3:                           ; preds = %polly.loop_header535.3, %polly.loop_header529.3
  %polly.indvar538.3 = phi i64 [ 0, %polly.loop_header529.3 ], [ %polly.indvar_next539.3, %polly.loop_header535.3 ]
  %365 = add nuw nsw i64 %polly.indvar538.3, 768
  %366 = mul nuw nsw i64 %365, 8000
  %367 = add nuw nsw i64 %366, %360
  %scevgep541.3 = getelementptr i8, i8* %call1, i64 %367
  %scevgep541542.3 = bitcast i8* %scevgep541.3 to double*
  %_p_scalar_543.3 = load double, double* %scevgep541542.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_543.3
  %scevgep547.3 = getelementptr i8, i8* %call2, i64 %367
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_552.3, %_p_scalar_549.3
  %368 = shl i64 %365, 3
  %369 = add nuw nsw i64 %368, %364
  %scevgep553.3 = getelementptr i8, i8* %call, i64 %369
  %scevgep553554.3 = bitcast i8* %scevgep553.3 to double*
  %_p_scalar_555.3 = load double, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_555.3
  store double %p_add42.i.3, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.3 = add nuw nsw i64 %polly.indvar538.3, 1
  %exitcond797.3.not = icmp eq i64 %polly.indvar538.3, %smin796.3
  br i1 %exitcond797.3.not, label %polly.loop_exit537.3, label %polly.loop_header535.3

polly.loop_exit537.3:                             ; preds = %polly.loop_header535.3
  %polly.indvar_next533.3 = add nuw nsw i64 %polly.indvar532.3, 1
  %indvars.iv.next795.3 = add nuw nsw i64 %indvars.iv794.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next533.3, 16
  br i1 %exitcond798.3.not, label %polly.loop_exit531.3, label %polly.loop_header529.3

polly.loop_exit531.3:                             ; preds = %polly.loop_exit537.3
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond799.3.not = icmp eq i64 %polly.indvar_next527.3, 20
  br i1 %exitcond799.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_exit531.3
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %indvars.iv.next793.3 = add nuw nsw i64 %indvars.iv792.3, 16
  %exitcond800.3.not = icmp eq i64 %polly.indvar_next521.3, 75
  br i1 %exitcond800.3.not, label %polly.loop_header517.4, label %polly.loop_header517.3

polly.loop_header517.4:                           ; preds = %polly.loop_exit525.3, %polly.loop_exit525.4
  %indvars.iv792.4 = phi i64 [ %indvars.iv.next793.4, %polly.loop_exit525.4 ], [ 0, %polly.loop_exit525.3 ]
  %polly.indvar520.4 = phi i64 [ %polly.indvar_next521.4, %polly.loop_exit525.4 ], [ 64, %polly.loop_exit525.3 ]
  %370 = shl nsw i64 %polly.indvar520.4, 4
  br label %polly.loop_header523.4

polly.loop_header523.4:                           ; preds = %polly.loop_exit531.4, %polly.loop_header517.4
  %polly.indvar526.4 = phi i64 [ 0, %polly.loop_header517.4 ], [ %polly.indvar_next527.4, %polly.loop_exit531.4 ]
  %371 = add nuw nsw i64 %polly.indvar526.4, %139
  %372 = shl i64 %371, 3
  br label %polly.loop_header529.4

polly.loop_header529.4:                           ; preds = %polly.loop_exit537.4, %polly.loop_header523.4
  %indvars.iv794.4 = phi i64 [ %indvars.iv.next795.4, %polly.loop_exit537.4 ], [ %indvars.iv792.4, %polly.loop_header523.4 ]
  %polly.indvar532.4 = phi i64 [ %polly.indvar_next533.4, %polly.loop_exit537.4 ], [ 0, %polly.loop_header523.4 ]
  %smin796.4 = call i64 @llvm.smin.i64(i64 %indvars.iv794.4, i64 255)
  %373 = add nuw nsw i64 %polly.indvar532.4, %370
  %374 = mul nuw nsw i64 %373, 8000
  %375 = add nuw nsw i64 %374, %372
  %scevgep544.4 = getelementptr i8, i8* %call2, i64 %375
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !85, !noalias !88
  %scevgep550.4 = getelementptr i8, i8* %call1, i64 %375
  %scevgep550551.4 = bitcast i8* %scevgep550.4 to double*
  %_p_scalar_552.4 = load double, double* %scevgep550551.4, align 8, !alias.scope !84, !noalias !89
  %376 = mul nuw nsw i64 %373, 9600
  br label %polly.loop_header535.4

polly.loop_header535.4:                           ; preds = %polly.loop_header535.4, %polly.loop_header529.4
  %polly.indvar538.4 = phi i64 [ 0, %polly.loop_header529.4 ], [ %polly.indvar_next539.4, %polly.loop_header535.4 ]
  %377 = add nuw nsw i64 %polly.indvar538.4, 1024
  %378 = mul nuw nsw i64 %377, 8000
  %379 = add nuw nsw i64 %378, %372
  %scevgep541.4 = getelementptr i8, i8* %call1, i64 %379
  %scevgep541542.4 = bitcast i8* %scevgep541.4 to double*
  %_p_scalar_543.4 = load double, double* %scevgep541542.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_546.4, %_p_scalar_543.4
  %scevgep547.4 = getelementptr i8, i8* %call2, i64 %379
  %scevgep547548.4 = bitcast i8* %scevgep547.4 to double*
  %_p_scalar_549.4 = load double, double* %scevgep547548.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_552.4, %_p_scalar_549.4
  %380 = shl i64 %377, 3
  %381 = add nuw nsw i64 %380, %376
  %scevgep553.4 = getelementptr i8, i8* %call, i64 %381
  %scevgep553554.4 = bitcast i8* %scevgep553.4 to double*
  %_p_scalar_555.4 = load double, double* %scevgep553554.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_555.4
  store double %p_add42.i.4, double* %scevgep553554.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.4 = add nuw nsw i64 %polly.indvar538.4, 1
  %exitcond797.4.not = icmp eq i64 %polly.indvar538.4, %smin796.4
  br i1 %exitcond797.4.not, label %polly.loop_exit537.4, label %polly.loop_header535.4

polly.loop_exit537.4:                             ; preds = %polly.loop_header535.4
  %polly.indvar_next533.4 = add nuw nsw i64 %polly.indvar532.4, 1
  %indvars.iv.next795.4 = add nuw nsw i64 %indvars.iv794.4, 1
  %exitcond798.4.not = icmp eq i64 %polly.indvar_next533.4, 16
  br i1 %exitcond798.4.not, label %polly.loop_exit531.4, label %polly.loop_header529.4

polly.loop_exit531.4:                             ; preds = %polly.loop_exit537.4
  %polly.indvar_next527.4 = add nuw nsw i64 %polly.indvar526.4, 1
  %exitcond799.4.not = icmp eq i64 %polly.indvar_next527.4, 20
  br i1 %exitcond799.4.not, label %polly.loop_exit525.4, label %polly.loop_header523.4

polly.loop_exit525.4:                             ; preds = %polly.loop_exit531.4
  %polly.indvar_next521.4 = add nuw nsw i64 %polly.indvar520.4, 1
  %indvars.iv.next793.4 = add nuw nsw i64 %indvars.iv792.4, 16
  %exitcond800.4.not = icmp eq i64 %polly.indvar_next521.4, 75
  br i1 %exitcond800.4.not, label %polly.loop_exit519.4, label %polly.loop_header517.4

polly.loop_exit519.4:                             ; preds = %polly.loop_exit525.4
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next509, 50
  br i1 %exitcond802.not, label %kernel_syr2k.exit, label %polly.loop_header505
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
!33 = !{!"llvm.loop.tile.size", i32 20}
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
