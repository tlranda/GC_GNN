; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8128.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8128.c"
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit513
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
  br i1 %57, label %middle.block937, label %vector.body939, !llvm.loop !53

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360
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
  br i1 %68, label %middle.block963, label %vector.body965, !llvm.loop !55

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load988 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load988, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next985 = add i64 %index984, 4
  %95 = icmp eq i64 %index.next985, %n.vec983
  br i1 %95, label %middle.block975, label %vector.body977, !llvm.loop !66

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
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond777.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next203, 125
  br i1 %exitcond776.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %98 = shl nuw nsw i64 %polly.indvar208, 5
  %99 = shl nsw i64 %polly.indvar208, 8
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond775.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %98, %polly.loop_header205 ]
  %100 = shl nsw i64 %polly.indvar214, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 255)
  %101 = mul nsw i64 %polly.indvar214, 64000
  %102 = mul nsw i64 %polly.indvar214, 76800
  %indvars.iv.next771 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771, i64 255)
  %103 = or i64 %100, 1
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  %indvars.iv.next771.1 = add nuw nsw i64 %indvars.iv.next771, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.1, i64 255)
  %106 = or i64 %100, 2
  %107 = mul nuw nsw i64 %106, 8000
  %108 = mul nuw nsw i64 %106, 9600
  %indvars.iv.next771.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.2, i64 255)
  %109 = or i64 %100, 3
  %110 = mul nuw nsw i64 %109, 8000
  %111 = mul nuw nsw i64 %109, 9600
  %indvars.iv.next771.3 = add nuw nsw i64 %indvars.iv.next771.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.3, i64 255)
  %112 = or i64 %100, 4
  %113 = mul nuw nsw i64 %112, 8000
  %114 = mul nuw nsw i64 %112, 9600
  %indvars.iv.next771.4 = add nuw nsw i64 %indvars.iv.next771.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.4, i64 255)
  %115 = or i64 %100, 5
  %116 = mul nuw nsw i64 %115, 8000
  %117 = mul nuw nsw i64 %115, 9600
  %indvars.iv.next771.5 = add nuw nsw i64 %indvars.iv.next771.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.5, i64 255)
  %118 = or i64 %100, 6
  %119 = mul nuw nsw i64 %118, 8000
  %120 = mul nuw nsw i64 %118, 9600
  %indvars.iv.next771.6 = or i64 %indvars.iv, 7
  %smin.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.6, i64 255)
  %121 = or i64 %100, 7
  %122 = mul nuw nsw i64 %121, 8000
  %123 = mul nuw nsw i64 %121, 9600
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit231.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond774.not = icmp eq i64 %polly.indvar_next215, 150
  br i1 %exitcond774.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit231.7, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit231.7 ]
  %124 = add nuw nsw i64 %polly.indvar220, %97
  %125 = shl i64 %124, 3
  %126 = add nuw nsw i64 %101, %125
  %scevgep238 = getelementptr i8, i8* %call2, i64 %126
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !65, !noalias !69
  %scevgep244 = getelementptr i8, i8* %call1, i64 %126
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_header229
  %127 = add nuw nsw i64 %104, %125
  %scevgep238.1 = getelementptr i8, i8* %call2, i64 %127
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !65, !noalias !69
  %scevgep244.1 = getelementptr i8, i8* %call1, i64 %127
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.1

polly.loop_header229:                             ; preds = %polly.loop_header229, %polly.loop_header217
  %polly.indvar232 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next233, %polly.loop_header229 ]
  %128 = add nuw nsw i64 %polly.indvar232, %99
  %129 = mul nuw nsw i64 %128, 8000
  %130 = add nuw nsw i64 %129, %125
  %scevgep235 = getelementptr i8, i8* %call1, i64 %130
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %scevgep241 = getelementptr i8, i8* %call2, i64 %130
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_243
  %131 = shl i64 %128, 3
  %132 = add nuw nsw i64 %131, %102
  %scevgep247 = getelementptr i8, i8* %call, i64 %132
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %exitcond.not = icmp eq i64 %polly.indvar232, %smin
  br i1 %exitcond.not, label %polly.loop_exit231, label %polly.loop_header229

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar952 = phi i64 [ %indvar.next953, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %133 = add i64 %indvar952, 1
  %134 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %134
  %min.iters.check954 = icmp ult i64 %133, 4
  br i1 %min.iters.check954, label %polly.loop_header342.preheader, label %vector.ph955

vector.ph955:                                     ; preds = %polly.loop_header336
  %n.vec957 = and i64 %133, -4
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph955
  %index958 = phi i64 [ 0, %vector.ph955 ], [ %index.next959, %vector.body951 ]
  %135 = shl nuw nsw i64 %index958, 3
  %136 = getelementptr i8, i8* %scevgep348, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load962 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !71, !noalias !73
  %138 = fmul fast <4 x double> %wide.load962, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %139 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !71, !noalias !73
  %index.next959 = add i64 %index958, 4
  %140 = icmp eq i64 %index.next959, %n.vec957
  br i1 %140, label %middle.block949, label %vector.body951, !llvm.loop !76

middle.block949:                                  ; preds = %vector.body951
  %cmp.n961 = icmp eq i64 %133, %n.vec957
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
  %141 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %141
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond790.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !77

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %142 = shl nsw i64 %polly.indvar355, 3
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next356, 125
  br i1 %exitcond789.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit366 ]
  %143 = shl nuw nsw i64 %polly.indvar361, 5
  %144 = shl nsw i64 %polly.indvar361, 8
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next362, 5
  br i1 %exitcond788.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ %143, %polly.loop_header358 ]
  %145 = shl nsw i64 %polly.indvar367, 3
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 255)
  %146 = mul nsw i64 %polly.indvar367, 64000
  %147 = mul nsw i64 %polly.indvar367, 76800
  %indvars.iv.next782 = or i64 %indvars.iv779, 1
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782, i64 255)
  %148 = or i64 %145, 1
  %149 = mul nuw nsw i64 %148, 8000
  %150 = mul nuw nsw i64 %148, 9600
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv.next782, 1
  %smin783.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.1, i64 255)
  %151 = or i64 %145, 2
  %152 = mul nuw nsw i64 %151, 8000
  %153 = mul nuw nsw i64 %151, 9600
  %indvars.iv.next782.2 = or i64 %indvars.iv779, 3
  %smin783.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.2, i64 255)
  %154 = or i64 %145, 3
  %155 = mul nuw nsw i64 %154, 8000
  %156 = mul nuw nsw i64 %154, 9600
  %indvars.iv.next782.3 = add nuw nsw i64 %indvars.iv.next782.2, 1
  %smin783.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.3, i64 255)
  %157 = or i64 %145, 4
  %158 = mul nuw nsw i64 %157, 8000
  %159 = mul nuw nsw i64 %157, 9600
  %indvars.iv.next782.4 = add nuw nsw i64 %indvars.iv.next782.2, 2
  %smin783.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.4, i64 255)
  %160 = or i64 %145, 5
  %161 = mul nuw nsw i64 %160, 8000
  %162 = mul nuw nsw i64 %160, 9600
  %indvars.iv.next782.5 = add nuw nsw i64 %indvars.iv.next782.2, 3
  %smin783.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.5, i64 255)
  %163 = or i64 %145, 6
  %164 = mul nuw nsw i64 %163, 8000
  %165 = mul nuw nsw i64 %163, 9600
  %indvars.iv.next782.6 = or i64 %indvars.iv779, 7
  %smin783.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.6, i64 255)
  %166 = or i64 %145, 7
  %167 = mul nuw nsw i64 %166, 8000
  %168 = mul nuw nsw i64 %166, 9600
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit384.7
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 8
  %exitcond787.not = icmp eq i64 %polly.indvar_next368, 150
  br i1 %exitcond787.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit384.7, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_exit384.7 ]
  %169 = add nuw nsw i64 %polly.indvar373, %142
  %170 = shl i64 %169, 3
  %171 = add nuw nsw i64 %146, %170
  %scevgep391 = getelementptr i8, i8* %call2, i64 %171
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !75, !noalias !78
  %scevgep397 = getelementptr i8, i8* %call1, i64 %171
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %172 = add nuw nsw i64 %149, %170
  %scevgep391.1 = getelementptr i8, i8* %call2, i64 %172
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !75, !noalias !78
  %scevgep397.1 = getelementptr i8, i8* %call1, i64 %172
  %scevgep397398.1 = bitcast i8* %scevgep397.1 to double*
  %_p_scalar_399.1 = load double, double* %scevgep397398.1, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.1

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header370
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %173 = add nuw nsw i64 %polly.indvar385, %144
  %174 = mul nuw nsw i64 %173, 8000
  %175 = add nuw nsw i64 %174, %170
  %scevgep388 = getelementptr i8, i8* %call1, i64 %175
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73 = fmul fast double %_p_scalar_393, %_p_scalar_390
  %scevgep394 = getelementptr i8, i8* %call2, i64 %175
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %176 = shl i64 %173, 3
  %177 = add nuw nsw i64 %176, %147
  %scevgep400 = getelementptr i8, i8* %call, i64 %177
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_402
  store double %p_add42.i79, double* %scevgep400401, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond784.not = icmp eq i64 %polly.indvar385, %smin783
  br i1 %exitcond784.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header489:                             ; preds = %init_array.exit, %polly.loop_exit497
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit497 ], [ 0, %init_array.exit ]
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_exit497 ], [ 1, %init_array.exit ]
  %178 = add i64 %indvar, 1
  %179 = mul nuw nsw i64 %polly.indvar492, 9600
  %scevgep501 = getelementptr i8, i8* %call, i64 %179
  %min.iters.check928 = icmp ult i64 %178, 4
  br i1 %min.iters.check928, label %polly.loop_header495.preheader, label %vector.ph929

vector.ph929:                                     ; preds = %polly.loop_header489
  %n.vec931 = and i64 %178, -4
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph929
  %index932 = phi i64 [ 0, %vector.ph929 ], [ %index.next933, %vector.body927 ]
  %180 = shl nuw nsw i64 %index932, 3
  %181 = getelementptr i8, i8* %scevgep501, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  %wide.load936 = load <4 x double>, <4 x double>* %182, align 8, !alias.scope !80, !noalias !82
  %183 = fmul fast <4 x double> %wide.load936, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %184 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %183, <4 x double>* %184, align 8, !alias.scope !80, !noalias !82
  %index.next933 = add i64 %index932, 4
  %185 = icmp eq i64 %index.next933, %n.vec931
  br i1 %185, label %middle.block925, label %vector.body927, !llvm.loop !85

middle.block925:                                  ; preds = %vector.body927
  %cmp.n935 = icmp eq i64 %178, %n.vec931
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
  %186 = shl nuw nsw i64 %polly.indvar498, 3
  %scevgep502 = getelementptr i8, i8* %scevgep501, i64 %186
  %scevgep502503 = bitcast i8* %scevgep502 to double*
  %_p_scalar_504 = load double, double* %scevgep502503, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_504, 1.200000e+00
  store double %p_mul.i, double* %scevgep502503, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next499, %polly.indvar492
  br i1 %exitcond803.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !86

polly.loop_header505:                             ; preds = %polly.loop_exit497, %polly.loop_exit513
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_exit497 ]
  %187 = shl nsw i64 %polly.indvar508, 3
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next509, 125
  br i1 %exitcond802.not, label %kernel_syr2k.exit, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %polly.indvar514 = phi i64 [ 0, %polly.loop_header505 ], [ %polly.indvar_next515, %polly.loop_exit519 ]
  %188 = shl nuw nsw i64 %polly.indvar514, 5
  %189 = shl nsw i64 %polly.indvar514, 8
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next515, 5
  br i1 %exitcond801.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ %188, %polly.loop_header511 ]
  %190 = shl nsw i64 %polly.indvar520, 3
  %smin796 = call i64 @llvm.smin.i64(i64 %indvars.iv792, i64 255)
  %191 = mul nsw i64 %polly.indvar520, 64000
  %192 = mul nsw i64 %polly.indvar520, 76800
  %indvars.iv.next795 = or i64 %indvars.iv792, 1
  %smin796.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795, i64 255)
  %193 = or i64 %190, 1
  %194 = mul nuw nsw i64 %193, 8000
  %195 = mul nuw nsw i64 %193, 9600
  %indvars.iv.next795.1 = add nuw nsw i64 %indvars.iv.next795, 1
  %smin796.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.1, i64 255)
  %196 = or i64 %190, 2
  %197 = mul nuw nsw i64 %196, 8000
  %198 = mul nuw nsw i64 %196, 9600
  %indvars.iv.next795.2 = or i64 %indvars.iv792, 3
  %smin796.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.2, i64 255)
  %199 = or i64 %190, 3
  %200 = mul nuw nsw i64 %199, 8000
  %201 = mul nuw nsw i64 %199, 9600
  %indvars.iv.next795.3 = add nuw nsw i64 %indvars.iv.next795.2, 1
  %smin796.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.3, i64 255)
  %202 = or i64 %190, 4
  %203 = mul nuw nsw i64 %202, 8000
  %204 = mul nuw nsw i64 %202, 9600
  %indvars.iv.next795.4 = add nuw nsw i64 %indvars.iv.next795.2, 2
  %smin796.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.4, i64 255)
  %205 = or i64 %190, 5
  %206 = mul nuw nsw i64 %205, 8000
  %207 = mul nuw nsw i64 %205, 9600
  %indvars.iv.next795.5 = add nuw nsw i64 %indvars.iv.next795.2, 3
  %smin796.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.5, i64 255)
  %208 = or i64 %190, 6
  %209 = mul nuw nsw i64 %208, 8000
  %210 = mul nuw nsw i64 %208, 9600
  %indvars.iv.next795.6 = or i64 %indvars.iv792, 7
  %smin796.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.6, i64 255)
  %211 = or i64 %190, 7
  %212 = mul nuw nsw i64 %211, 8000
  %213 = mul nuw nsw i64 %211, 9600
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit537.7
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 8
  %exitcond800.not = icmp eq i64 %polly.indvar_next521, 150
  br i1 %exitcond800.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit537.7, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_exit537.7 ]
  %214 = add nuw nsw i64 %polly.indvar526, %187
  %215 = shl i64 %214, 3
  %216 = add nuw nsw i64 %191, %215
  %scevgep544 = getelementptr i8, i8* %call2, i64 %216
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !87
  %scevgep550 = getelementptr i8, i8* %call1, i64 %216
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535
  %217 = add nuw nsw i64 %194, %215
  %scevgep544.1 = getelementptr i8, i8* %call2, i64 %217
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !84, !noalias !87
  %scevgep550.1 = getelementptr i8, i8* %call1, i64 %217
  %scevgep550551.1 = bitcast i8* %scevgep550.1 to double*
  %_p_scalar_552.1 = load double, double* %scevgep550551.1, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.1

polly.loop_header535:                             ; preds = %polly.loop_header535, %polly.loop_header523
  %polly.indvar538 = phi i64 [ 0, %polly.loop_header523 ], [ %polly.indvar_next539, %polly.loop_header535 ]
  %218 = add nuw nsw i64 %polly.indvar538, %189
  %219 = mul nuw nsw i64 %218, 8000
  %220 = add nuw nsw i64 %219, %215
  %scevgep541 = getelementptr i8, i8* %call1, i64 %220
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i = fmul fast double %_p_scalar_546, %_p_scalar_543
  %scevgep547 = getelementptr i8, i8* %call2, i64 %220
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i = fmul fast double %_p_scalar_552, %_p_scalar_549
  %221 = shl i64 %218, 3
  %222 = add nuw nsw i64 %221, %192
  %scevgep553 = getelementptr i8, i8* %call, i64 %222
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_555
  store double %p_add42.i, double* %scevgep553554, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond797.not = icmp eq i64 %polly.indvar538, %smin796
  br i1 %exitcond797.not, label %polly.loop_exit537, label %polly.loop_header535

polly.loop_header682:                             ; preds = %entry, %polly.loop_exit690
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit690 ], [ 0, %entry ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %entry ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -1168)
  %223 = shl nsw i64 %polly.indvar685, 5
  %224 = add nsw i64 %smin831, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond834.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond834.not, label %polly.loop_header709, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %225 = mul nsw i64 %polly.indvar691, -32
  %smin866 = call i64 @llvm.smin.i64(i64 %225, i64 -1168)
  %226 = add nsw i64 %smin866, 1200
  %smin827 = call i64 @llvm.smin.i64(i64 %indvars.iv825, i64 -1168)
  %227 = shl nsw i64 %polly.indvar691, 5
  %228 = add nsw i64 %smin827, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond833.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %polly.indvar697 = phi i64 [ 0, %polly.loop_header688 ], [ %polly.indvar_next698, %polly.loop_exit702 ]
  %229 = add nuw nsw i64 %polly.indvar697, %223
  %230 = trunc i64 %229 to i32
  %231 = mul nuw nsw i64 %229, 9600
  %min.iters.check = icmp eq i64 %226, 0
  br i1 %min.iters.check, label %polly.loop_header700, label %vector.ph867

vector.ph867:                                     ; preds = %polly.loop_header694
  %broadcast.splatinsert874 = insertelement <4 x i64> poison, i64 %227, i32 0
  %broadcast.splat875 = shufflevector <4 x i64> %broadcast.splatinsert874, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert876 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat877 = shufflevector <4 x i32> %broadcast.splatinsert876, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body865

vector.body865:                                   ; preds = %vector.body865, %vector.ph867
  %index868 = phi i64 [ 0, %vector.ph867 ], [ %index.next869, %vector.body865 ]
  %vec.ind872 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph867 ], [ %vec.ind.next873, %vector.body865 ]
  %232 = add nuw nsw <4 x i64> %vec.ind872, %broadcast.splat875
  %233 = trunc <4 x i64> %232 to <4 x i32>
  %234 = mul <4 x i32> %broadcast.splat877, %233
  %235 = add <4 x i32> %234, <i32 3, i32 3, i32 3, i32 3>
  %236 = urem <4 x i32> %235, <i32 1200, i32 1200, i32 1200, i32 1200>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %239 = extractelement <4 x i64> %232, i32 0
  %240 = shl i64 %239, 3
  %241 = add nuw nsw i64 %240, %231
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %238, <4 x double>* %243, align 8, !alias.scope !89, !noalias !91
  %index.next869 = add i64 %index868, 4
  %vec.ind.next873 = add <4 x i64> %vec.ind872, <i64 4, i64 4, i64 4, i64 4>
  %244 = icmp eq i64 %index.next869, %226
  br i1 %244, label %polly.loop_exit702, label %vector.body865, !llvm.loop !94

polly.loop_exit702:                               ; preds = %vector.body865, %polly.loop_header700
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond832.not = icmp eq i64 %polly.indvar697, %224
  br i1 %exitcond832.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_header694, %polly.loop_header700
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_header700 ], [ 0, %polly.loop_header694 ]
  %245 = add nuw nsw i64 %polly.indvar703, %227
  %246 = trunc i64 %245 to i32
  %247 = mul i32 %246, %230
  %248 = add i32 %247, 3
  %249 = urem i32 %248, 1200
  %p_conv31.i = sitofp i32 %249 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %250 = shl i64 %245, 3
  %251 = add nuw nsw i64 %250, %231
  %scevgep706 = getelementptr i8, i8* %call, i64 %251
  %scevgep706707 = bitcast i8* %scevgep706 to double*
  store double %p_div33.i, double* %scevgep706707, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond828.not = icmp eq i64 %polly.indvar703, %228
  br i1 %exitcond828.not, label %polly.loop_exit702, label %polly.loop_header700, !llvm.loop !95

polly.loop_header709:                             ; preds = %polly.loop_exit690, %polly.loop_exit717
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 -1168)
  %252 = shl nsw i64 %polly.indvar712, 5
  %253 = add nsw i64 %smin821, 1199
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next713, 38
  br i1 %exitcond824.not, label %polly.loop_header735, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %254 = mul nsw i64 %polly.indvar718, -32
  %smin881 = call i64 @llvm.smin.i64(i64 %254, i64 -968)
  %255 = add nsw i64 %smin881, 1000
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 -968)
  %256 = shl nsw i64 %polly.indvar718, 5
  %257 = add nsw i64 %smin817, 999
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -32
  %exitcond823.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond823.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %polly.indvar724 = phi i64 [ 0, %polly.loop_header715 ], [ %polly.indvar_next725, %polly.loop_exit729 ]
  %258 = add nuw nsw i64 %polly.indvar724, %252
  %259 = trunc i64 %258 to i32
  %260 = mul nuw nsw i64 %258, 8000
  %min.iters.check882 = icmp eq i64 %255, 0
  br i1 %min.iters.check882, label %polly.loop_header727, label %vector.ph883

vector.ph883:                                     ; preds = %polly.loop_header721
  %broadcast.splatinsert892 = insertelement <4 x i64> poison, i64 %256, i32 0
  %broadcast.splat893 = shufflevector <4 x i64> %broadcast.splatinsert892, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert894 = insertelement <4 x i32> poison, i32 %259, i32 0
  %broadcast.splat895 = shufflevector <4 x i32> %broadcast.splatinsert894, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph883
  %index886 = phi i64 [ 0, %vector.ph883 ], [ %index.next887, %vector.body880 ]
  %vec.ind890 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph883 ], [ %vec.ind.next891, %vector.body880 ]
  %261 = add nuw nsw <4 x i64> %vec.ind890, %broadcast.splat893
  %262 = trunc <4 x i64> %261 to <4 x i32>
  %263 = mul <4 x i32> %broadcast.splat895, %262
  %264 = add <4 x i32> %263, <i32 2, i32 2, i32 2, i32 2>
  %265 = urem <4 x i32> %264, <i32 1000, i32 1000, i32 1000, i32 1000>
  %266 = sitofp <4 x i32> %265 to <4 x double>
  %267 = fmul fast <4 x double> %266, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %268 = extractelement <4 x i64> %261, i32 0
  %269 = shl i64 %268, 3
  %270 = add nuw nsw i64 %269, %260
  %271 = getelementptr i8, i8* %call2, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %267, <4 x double>* %272, align 8, !alias.scope !93, !noalias !96
  %index.next887 = add i64 %index886, 4
  %vec.ind.next891 = add <4 x i64> %vec.ind890, <i64 4, i64 4, i64 4, i64 4>
  %273 = icmp eq i64 %index.next887, %255
  br i1 %273, label %polly.loop_exit729, label %vector.body880, !llvm.loop !97

polly.loop_exit729:                               ; preds = %vector.body880, %polly.loop_header727
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond822.not = icmp eq i64 %polly.indvar724, %253
  br i1 %exitcond822.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_header721, %polly.loop_header727
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_header727 ], [ 0, %polly.loop_header721 ]
  %274 = add nuw nsw i64 %polly.indvar730, %256
  %275 = trunc i64 %274 to i32
  %276 = mul i32 %275, %259
  %277 = add i32 %276, 2
  %278 = urem i32 %277, 1000
  %p_conv10.i = sitofp i32 %278 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %279 = shl i64 %274, 3
  %280 = add nuw nsw i64 %279, %260
  %scevgep733 = getelementptr i8, i8* %call2, i64 %280
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  store double %p_div12.i, double* %scevgep733734, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond818.not = icmp eq i64 %polly.indvar730, %257
  br i1 %exitcond818.not, label %polly.loop_exit729, label %polly.loop_header727, !llvm.loop !98

polly.loop_header735:                             ; preds = %polly.loop_exit717, %polly.loop_exit743
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv809, i64 -1168)
  %281 = shl nsw i64 %polly.indvar738, 5
  %282 = add nsw i64 %smin811, 1199
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -32
  %exitcond814.not = icmp eq i64 %polly.indvar_next739, 38
  br i1 %exitcond814.not, label %init_array.exit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %283 = mul nsw i64 %polly.indvar744, -32
  %smin899 = call i64 @llvm.smin.i64(i64 %283, i64 -968)
  %284 = add nsw i64 %smin899, 1000
  %smin807 = call i64 @llvm.smin.i64(i64 %indvars.iv805, i64 -968)
  %285 = shl nsw i64 %polly.indvar744, 5
  %286 = add nsw i64 %smin807, 999
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -32
  %exitcond813.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond813.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %polly.indvar750 = phi i64 [ 0, %polly.loop_header741 ], [ %polly.indvar_next751, %polly.loop_exit755 ]
  %287 = add nuw nsw i64 %polly.indvar750, %281
  %288 = trunc i64 %287 to i32
  %289 = mul nuw nsw i64 %287, 8000
  %min.iters.check900 = icmp eq i64 %284, 0
  br i1 %min.iters.check900, label %polly.loop_header753, label %vector.ph901

vector.ph901:                                     ; preds = %polly.loop_header747
  %broadcast.splatinsert910 = insertelement <4 x i64> poison, i64 %285, i32 0
  %broadcast.splat911 = shufflevector <4 x i64> %broadcast.splatinsert910, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert912 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat913 = shufflevector <4 x i32> %broadcast.splatinsert912, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph901
  %index904 = phi i64 [ 0, %vector.ph901 ], [ %index.next905, %vector.body898 ]
  %vec.ind908 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph901 ], [ %vec.ind.next909, %vector.body898 ]
  %290 = add nuw nsw <4 x i64> %vec.ind908, %broadcast.splat911
  %291 = trunc <4 x i64> %290 to <4 x i32>
  %292 = mul <4 x i32> %broadcast.splat913, %291
  %293 = add <4 x i32> %292, <i32 1, i32 1, i32 1, i32 1>
  %294 = urem <4 x i32> %293, <i32 1200, i32 1200, i32 1200, i32 1200>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %297 = extractelement <4 x i64> %290, i32 0
  %298 = shl i64 %297, 3
  %299 = add nuw nsw i64 %298, %289
  %300 = getelementptr i8, i8* %call1, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %296, <4 x double>* %301, align 8, !alias.scope !92, !noalias !99
  %index.next905 = add i64 %index904, 4
  %vec.ind.next909 = add <4 x i64> %vec.ind908, <i64 4, i64 4, i64 4, i64 4>
  %302 = icmp eq i64 %index.next905, %284
  br i1 %302, label %polly.loop_exit755, label %vector.body898, !llvm.loop !100

polly.loop_exit755:                               ; preds = %vector.body898, %polly.loop_header753
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond812.not = icmp eq i64 %polly.indvar750, %282
  br i1 %exitcond812.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_header747, %polly.loop_header753
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_header753 ], [ 0, %polly.loop_header747 ]
  %303 = add nuw nsw i64 %polly.indvar756, %285
  %304 = trunc i64 %303 to i32
  %305 = mul i32 %304, %288
  %306 = add i32 %305, 1
  %307 = urem i32 %306, 1200
  %p_conv.i = sitofp i32 %307 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %308 = shl i64 %303, 3
  %309 = add nuw nsw i64 %308, %289
  %scevgep760 = getelementptr i8, i8* %call1, i64 %309
  %scevgep760761 = bitcast i8* %scevgep760 to double*
  store double %p_div.i, double* %scevgep760761, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond808.not = icmp eq i64 %polly.indvar756, %286
  br i1 %exitcond808.not, label %polly.loop_exit755, label %polly.loop_header753, !llvm.loop !101

polly.loop_header229.1:                           ; preds = %polly.loop_header229.1, %polly.loop_exit231
  %polly.indvar232.1 = phi i64 [ 0, %polly.loop_exit231 ], [ %polly.indvar_next233.1, %polly.loop_header229.1 ]
  %310 = add nuw nsw i64 %polly.indvar232.1, %99
  %311 = mul nuw nsw i64 %310, 8000
  %312 = add nuw nsw i64 %311, %125
  %scevgep235.1 = getelementptr i8, i8* %call1, i64 %312
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %scevgep241.1 = getelementptr i8, i8* %call2, i64 %312
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_243.1
  %313 = shl i64 %310, 3
  %314 = add nuw nsw i64 %313, %105
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %314
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.1 = add nuw nsw i64 %polly.indvar232.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.1, label %polly.loop_header229.1

polly.loop_exit231.1:                             ; preds = %polly.loop_header229.1
  %315 = add nuw nsw i64 %107, %125
  %scevgep238.2 = getelementptr i8, i8* %call2, i64 %315
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !65, !noalias !69
  %scevgep244.2 = getelementptr i8, i8* %call1, i64 %315
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.2

polly.loop_header229.2:                           ; preds = %polly.loop_header229.2, %polly.loop_exit231.1
  %polly.indvar232.2 = phi i64 [ 0, %polly.loop_exit231.1 ], [ %polly.indvar_next233.2, %polly.loop_header229.2 ]
  %316 = add nuw nsw i64 %polly.indvar232.2, %99
  %317 = mul nuw nsw i64 %316, 8000
  %318 = add nuw nsw i64 %317, %125
  %scevgep235.2 = getelementptr i8, i8* %call1, i64 %318
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %scevgep241.2 = getelementptr i8, i8* %call2, i64 %318
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_243.2
  %319 = shl i64 %316, 3
  %320 = add nuw nsw i64 %319, %108
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %320
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_249.2
  store double %p_add42.i118.2, double* %scevgep247248.2, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.2 = add nuw nsw i64 %polly.indvar232.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.2, label %polly.loop_header229.2

polly.loop_exit231.2:                             ; preds = %polly.loop_header229.2
  %321 = add nuw nsw i64 %110, %125
  %scevgep238.3 = getelementptr i8, i8* %call2, i64 %321
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !65, !noalias !69
  %scevgep244.3 = getelementptr i8, i8* %call1, i64 %321
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.3

polly.loop_header229.3:                           ; preds = %polly.loop_header229.3, %polly.loop_exit231.2
  %polly.indvar232.3 = phi i64 [ 0, %polly.loop_exit231.2 ], [ %polly.indvar_next233.3, %polly.loop_header229.3 ]
  %322 = add nuw nsw i64 %polly.indvar232.3, %99
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %125
  %scevgep235.3 = getelementptr i8, i8* %call1, i64 %324
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %scevgep241.3 = getelementptr i8, i8* %call2, i64 %324
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_243.3
  %325 = shl i64 %322, 3
  %326 = add nuw nsw i64 %325, %111
  %scevgep247.3 = getelementptr i8, i8* %call, i64 %326
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_249.3
  store double %p_add42.i118.3, double* %scevgep247248.3, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.3 = add nuw nsw i64 %polly.indvar232.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.3, label %polly.loop_header229.3

polly.loop_exit231.3:                             ; preds = %polly.loop_header229.3
  %327 = add nuw nsw i64 %113, %125
  %scevgep238.4 = getelementptr i8, i8* %call2, i64 %327
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !65, !noalias !69
  %scevgep244.4 = getelementptr i8, i8* %call1, i64 %327
  %scevgep244245.4 = bitcast i8* %scevgep244.4 to double*
  %_p_scalar_246.4 = load double, double* %scevgep244245.4, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.4

polly.loop_header229.4:                           ; preds = %polly.loop_header229.4, %polly.loop_exit231.3
  %polly.indvar232.4 = phi i64 [ 0, %polly.loop_exit231.3 ], [ %polly.indvar_next233.4, %polly.loop_header229.4 ]
  %328 = add nuw nsw i64 %polly.indvar232.4, %99
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %125
  %scevgep235.4 = getelementptr i8, i8* %call1, i64 %330
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %scevgep241.4 = getelementptr i8, i8* %call2, i64 %330
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.4 = fmul fast double %_p_scalar_246.4, %_p_scalar_243.4
  %331 = shl i64 %328, 3
  %332 = add nuw nsw i64 %331, %114
  %scevgep247.4 = getelementptr i8, i8* %call, i64 %332
  %scevgep247248.4 = bitcast i8* %scevgep247.4 to double*
  %_p_scalar_249.4 = load double, double* %scevgep247248.4, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_249.4
  store double %p_add42.i118.4, double* %scevgep247248.4, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.4 = add nuw nsw i64 %polly.indvar232.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar232.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit231.4, label %polly.loop_header229.4

polly.loop_exit231.4:                             ; preds = %polly.loop_header229.4
  %333 = add nuw nsw i64 %116, %125
  %scevgep238.5 = getelementptr i8, i8* %call2, i64 %333
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !65, !noalias !69
  %scevgep244.5 = getelementptr i8, i8* %call1, i64 %333
  %scevgep244245.5 = bitcast i8* %scevgep244.5 to double*
  %_p_scalar_246.5 = load double, double* %scevgep244245.5, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.5

polly.loop_header229.5:                           ; preds = %polly.loop_header229.5, %polly.loop_exit231.4
  %polly.indvar232.5 = phi i64 [ 0, %polly.loop_exit231.4 ], [ %polly.indvar_next233.5, %polly.loop_header229.5 ]
  %334 = add nuw nsw i64 %polly.indvar232.5, %99
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %125
  %scevgep235.5 = getelementptr i8, i8* %call1, i64 %336
  %scevgep235236.5 = bitcast i8* %scevgep235.5 to double*
  %_p_scalar_237.5 = load double, double* %scevgep235236.5, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.5 = fmul fast double %_p_scalar_240.5, %_p_scalar_237.5
  %scevgep241.5 = getelementptr i8, i8* %call2, i64 %336
  %scevgep241242.5 = bitcast i8* %scevgep241.5 to double*
  %_p_scalar_243.5 = load double, double* %scevgep241242.5, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.5 = fmul fast double %_p_scalar_246.5, %_p_scalar_243.5
  %337 = shl i64 %334, 3
  %338 = add nuw nsw i64 %337, %117
  %scevgep247.5 = getelementptr i8, i8* %call, i64 %338
  %scevgep247248.5 = bitcast i8* %scevgep247.5 to double*
  %_p_scalar_249.5 = load double, double* %scevgep247248.5, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_249.5
  store double %p_add42.i118.5, double* %scevgep247248.5, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.5 = add nuw nsw i64 %polly.indvar232.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar232.5, %smin.5
  br i1 %exitcond.5.not, label %polly.loop_exit231.5, label %polly.loop_header229.5

polly.loop_exit231.5:                             ; preds = %polly.loop_header229.5
  %339 = add nuw nsw i64 %119, %125
  %scevgep238.6 = getelementptr i8, i8* %call2, i64 %339
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !65, !noalias !69
  %scevgep244.6 = getelementptr i8, i8* %call1, i64 %339
  %scevgep244245.6 = bitcast i8* %scevgep244.6 to double*
  %_p_scalar_246.6 = load double, double* %scevgep244245.6, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.6

polly.loop_header229.6:                           ; preds = %polly.loop_header229.6, %polly.loop_exit231.5
  %polly.indvar232.6 = phi i64 [ 0, %polly.loop_exit231.5 ], [ %polly.indvar_next233.6, %polly.loop_header229.6 ]
  %340 = add nuw nsw i64 %polly.indvar232.6, %99
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %125
  %scevgep235.6 = getelementptr i8, i8* %call1, i64 %342
  %scevgep235236.6 = bitcast i8* %scevgep235.6 to double*
  %_p_scalar_237.6 = load double, double* %scevgep235236.6, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.6 = fmul fast double %_p_scalar_240.6, %_p_scalar_237.6
  %scevgep241.6 = getelementptr i8, i8* %call2, i64 %342
  %scevgep241242.6 = bitcast i8* %scevgep241.6 to double*
  %_p_scalar_243.6 = load double, double* %scevgep241242.6, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.6 = fmul fast double %_p_scalar_246.6, %_p_scalar_243.6
  %343 = shl i64 %340, 3
  %344 = add nuw nsw i64 %343, %120
  %scevgep247.6 = getelementptr i8, i8* %call, i64 %344
  %scevgep247248.6 = bitcast i8* %scevgep247.6 to double*
  %_p_scalar_249.6 = load double, double* %scevgep247248.6, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_249.6
  store double %p_add42.i118.6, double* %scevgep247248.6, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.6 = add nuw nsw i64 %polly.indvar232.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar232.6, %smin.6
  br i1 %exitcond.6.not, label %polly.loop_exit231.6, label %polly.loop_header229.6

polly.loop_exit231.6:                             ; preds = %polly.loop_header229.6
  %345 = add nuw nsw i64 %122, %125
  %scevgep238.7 = getelementptr i8, i8* %call2, i64 %345
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !65, !noalias !69
  %scevgep244.7 = getelementptr i8, i8* %call1, i64 %345
  %scevgep244245.7 = bitcast i8* %scevgep244.7 to double*
  %_p_scalar_246.7 = load double, double* %scevgep244245.7, align 8, !alias.scope !64, !noalias !70
  br label %polly.loop_header229.7

polly.loop_header229.7:                           ; preds = %polly.loop_header229.7, %polly.loop_exit231.6
  %polly.indvar232.7 = phi i64 [ 0, %polly.loop_exit231.6 ], [ %polly.indvar_next233.7, %polly.loop_header229.7 ]
  %346 = add nuw nsw i64 %polly.indvar232.7, %99
  %347 = mul nuw nsw i64 %346, 8000
  %348 = add nuw nsw i64 %347, %125
  %scevgep235.7 = getelementptr i8, i8* %call1, i64 %348
  %scevgep235236.7 = bitcast i8* %scevgep235.7 to double*
  %_p_scalar_237.7 = load double, double* %scevgep235236.7, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.7 = fmul fast double %_p_scalar_240.7, %_p_scalar_237.7
  %scevgep241.7 = getelementptr i8, i8* %call2, i64 %348
  %scevgep241242.7 = bitcast i8* %scevgep241.7 to double*
  %_p_scalar_243.7 = load double, double* %scevgep241242.7, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.7 = fmul fast double %_p_scalar_246.7, %_p_scalar_243.7
  %349 = shl i64 %346, 3
  %350 = add nuw nsw i64 %349, %123
  %scevgep247.7 = getelementptr i8, i8* %call, i64 %350
  %scevgep247248.7 = bitcast i8* %scevgep247.7 to double*
  %_p_scalar_249.7 = load double, double* %scevgep247248.7, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_249.7
  store double %p_add42.i118.7, double* %scevgep247248.7, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.7 = add nuw nsw i64 %polly.indvar232.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar232.7, %smin.7
  br i1 %exitcond.7.not, label %polly.loop_exit231.7, label %polly.loop_header229.7

polly.loop_exit231.7:                             ; preds = %polly.loop_header229.7
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond773.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond773.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header382.1:                           ; preds = %polly.loop_header382.1, %polly.loop_exit384
  %polly.indvar385.1 = phi i64 [ 0, %polly.loop_exit384 ], [ %polly.indvar_next386.1, %polly.loop_header382.1 ]
  %351 = add nuw nsw i64 %polly.indvar385.1, %144
  %352 = mul nuw nsw i64 %351, 8000
  %353 = add nuw nsw i64 %352, %170
  %scevgep388.1 = getelementptr i8, i8* %call1, i64 %353
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.1 = fmul fast double %_p_scalar_393.1, %_p_scalar_390.1
  %scevgep394.1 = getelementptr i8, i8* %call2, i64 %353
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.1 = fmul fast double %_p_scalar_399.1, %_p_scalar_396.1
  %354 = shl i64 %351, 3
  %355 = add nuw nsw i64 %354, %150
  %scevgep400.1 = getelementptr i8, i8* %call, i64 %355
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_402.1
  store double %p_add42.i79.1, double* %scevgep400401.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.1 = add nuw nsw i64 %polly.indvar385.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar385.1, %smin783.1
  br i1 %exitcond784.1.not, label %polly.loop_exit384.1, label %polly.loop_header382.1

polly.loop_exit384.1:                             ; preds = %polly.loop_header382.1
  %356 = add nuw nsw i64 %152, %170
  %scevgep391.2 = getelementptr i8, i8* %call2, i64 %356
  %scevgep391392.2 = bitcast i8* %scevgep391.2 to double*
  %_p_scalar_393.2 = load double, double* %scevgep391392.2, align 8, !alias.scope !75, !noalias !78
  %scevgep397.2 = getelementptr i8, i8* %call1, i64 %356
  %scevgep397398.2 = bitcast i8* %scevgep397.2 to double*
  %_p_scalar_399.2 = load double, double* %scevgep397398.2, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.2

polly.loop_header382.2:                           ; preds = %polly.loop_header382.2, %polly.loop_exit384.1
  %polly.indvar385.2 = phi i64 [ 0, %polly.loop_exit384.1 ], [ %polly.indvar_next386.2, %polly.loop_header382.2 ]
  %357 = add nuw nsw i64 %polly.indvar385.2, %144
  %358 = mul nuw nsw i64 %357, 8000
  %359 = add nuw nsw i64 %358, %170
  %scevgep388.2 = getelementptr i8, i8* %call1, i64 %359
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.2 = fmul fast double %_p_scalar_393.2, %_p_scalar_390.2
  %scevgep394.2 = getelementptr i8, i8* %call2, i64 %359
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.2 = fmul fast double %_p_scalar_399.2, %_p_scalar_396.2
  %360 = shl i64 %357, 3
  %361 = add nuw nsw i64 %360, %153
  %scevgep400.2 = getelementptr i8, i8* %call, i64 %361
  %scevgep400401.2 = bitcast i8* %scevgep400.2 to double*
  %_p_scalar_402.2 = load double, double* %scevgep400401.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_402.2
  store double %p_add42.i79.2, double* %scevgep400401.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.2 = add nuw nsw i64 %polly.indvar385.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar385.2, %smin783.2
  br i1 %exitcond784.2.not, label %polly.loop_exit384.2, label %polly.loop_header382.2

polly.loop_exit384.2:                             ; preds = %polly.loop_header382.2
  %362 = add nuw nsw i64 %155, %170
  %scevgep391.3 = getelementptr i8, i8* %call2, i64 %362
  %scevgep391392.3 = bitcast i8* %scevgep391.3 to double*
  %_p_scalar_393.3 = load double, double* %scevgep391392.3, align 8, !alias.scope !75, !noalias !78
  %scevgep397.3 = getelementptr i8, i8* %call1, i64 %362
  %scevgep397398.3 = bitcast i8* %scevgep397.3 to double*
  %_p_scalar_399.3 = load double, double* %scevgep397398.3, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.3

polly.loop_header382.3:                           ; preds = %polly.loop_header382.3, %polly.loop_exit384.2
  %polly.indvar385.3 = phi i64 [ 0, %polly.loop_exit384.2 ], [ %polly.indvar_next386.3, %polly.loop_header382.3 ]
  %363 = add nuw nsw i64 %polly.indvar385.3, %144
  %364 = mul nuw nsw i64 %363, 8000
  %365 = add nuw nsw i64 %364, %170
  %scevgep388.3 = getelementptr i8, i8* %call1, i64 %365
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.3 = fmul fast double %_p_scalar_393.3, %_p_scalar_390.3
  %scevgep394.3 = getelementptr i8, i8* %call2, i64 %365
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.3 = fmul fast double %_p_scalar_399.3, %_p_scalar_396.3
  %366 = shl i64 %363, 3
  %367 = add nuw nsw i64 %366, %156
  %scevgep400.3 = getelementptr i8, i8* %call, i64 %367
  %scevgep400401.3 = bitcast i8* %scevgep400.3 to double*
  %_p_scalar_402.3 = load double, double* %scevgep400401.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_402.3
  store double %p_add42.i79.3, double* %scevgep400401.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.3 = add nuw nsw i64 %polly.indvar385.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar385.3, %smin783.3
  br i1 %exitcond784.3.not, label %polly.loop_exit384.3, label %polly.loop_header382.3

polly.loop_exit384.3:                             ; preds = %polly.loop_header382.3
  %368 = add nuw nsw i64 %158, %170
  %scevgep391.4 = getelementptr i8, i8* %call2, i64 %368
  %scevgep391392.4 = bitcast i8* %scevgep391.4 to double*
  %_p_scalar_393.4 = load double, double* %scevgep391392.4, align 8, !alias.scope !75, !noalias !78
  %scevgep397.4 = getelementptr i8, i8* %call1, i64 %368
  %scevgep397398.4 = bitcast i8* %scevgep397.4 to double*
  %_p_scalar_399.4 = load double, double* %scevgep397398.4, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.4

polly.loop_header382.4:                           ; preds = %polly.loop_header382.4, %polly.loop_exit384.3
  %polly.indvar385.4 = phi i64 [ 0, %polly.loop_exit384.3 ], [ %polly.indvar_next386.4, %polly.loop_header382.4 ]
  %369 = add nuw nsw i64 %polly.indvar385.4, %144
  %370 = mul nuw nsw i64 %369, 8000
  %371 = add nuw nsw i64 %370, %170
  %scevgep388.4 = getelementptr i8, i8* %call1, i64 %371
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.4 = fmul fast double %_p_scalar_393.4, %_p_scalar_390.4
  %scevgep394.4 = getelementptr i8, i8* %call2, i64 %371
  %scevgep394395.4 = bitcast i8* %scevgep394.4 to double*
  %_p_scalar_396.4 = load double, double* %scevgep394395.4, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.4 = fmul fast double %_p_scalar_399.4, %_p_scalar_396.4
  %372 = shl i64 %369, 3
  %373 = add nuw nsw i64 %372, %159
  %scevgep400.4 = getelementptr i8, i8* %call, i64 %373
  %scevgep400401.4 = bitcast i8* %scevgep400.4 to double*
  %_p_scalar_402.4 = load double, double* %scevgep400401.4, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_402.4
  store double %p_add42.i79.4, double* %scevgep400401.4, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.4 = add nuw nsw i64 %polly.indvar385.4, 1
  %exitcond784.4.not = icmp eq i64 %polly.indvar385.4, %smin783.4
  br i1 %exitcond784.4.not, label %polly.loop_exit384.4, label %polly.loop_header382.4

polly.loop_exit384.4:                             ; preds = %polly.loop_header382.4
  %374 = add nuw nsw i64 %161, %170
  %scevgep391.5 = getelementptr i8, i8* %call2, i64 %374
  %scevgep391392.5 = bitcast i8* %scevgep391.5 to double*
  %_p_scalar_393.5 = load double, double* %scevgep391392.5, align 8, !alias.scope !75, !noalias !78
  %scevgep397.5 = getelementptr i8, i8* %call1, i64 %374
  %scevgep397398.5 = bitcast i8* %scevgep397.5 to double*
  %_p_scalar_399.5 = load double, double* %scevgep397398.5, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.5

polly.loop_header382.5:                           ; preds = %polly.loop_header382.5, %polly.loop_exit384.4
  %polly.indvar385.5 = phi i64 [ 0, %polly.loop_exit384.4 ], [ %polly.indvar_next386.5, %polly.loop_header382.5 ]
  %375 = add nuw nsw i64 %polly.indvar385.5, %144
  %376 = mul nuw nsw i64 %375, 8000
  %377 = add nuw nsw i64 %376, %170
  %scevgep388.5 = getelementptr i8, i8* %call1, i64 %377
  %scevgep388389.5 = bitcast i8* %scevgep388.5 to double*
  %_p_scalar_390.5 = load double, double* %scevgep388389.5, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.5 = fmul fast double %_p_scalar_393.5, %_p_scalar_390.5
  %scevgep394.5 = getelementptr i8, i8* %call2, i64 %377
  %scevgep394395.5 = bitcast i8* %scevgep394.5 to double*
  %_p_scalar_396.5 = load double, double* %scevgep394395.5, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.5 = fmul fast double %_p_scalar_399.5, %_p_scalar_396.5
  %378 = shl i64 %375, 3
  %379 = add nuw nsw i64 %378, %162
  %scevgep400.5 = getelementptr i8, i8* %call, i64 %379
  %scevgep400401.5 = bitcast i8* %scevgep400.5 to double*
  %_p_scalar_402.5 = load double, double* %scevgep400401.5, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_402.5
  store double %p_add42.i79.5, double* %scevgep400401.5, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.5 = add nuw nsw i64 %polly.indvar385.5, 1
  %exitcond784.5.not = icmp eq i64 %polly.indvar385.5, %smin783.5
  br i1 %exitcond784.5.not, label %polly.loop_exit384.5, label %polly.loop_header382.5

polly.loop_exit384.5:                             ; preds = %polly.loop_header382.5
  %380 = add nuw nsw i64 %164, %170
  %scevgep391.6 = getelementptr i8, i8* %call2, i64 %380
  %scevgep391392.6 = bitcast i8* %scevgep391.6 to double*
  %_p_scalar_393.6 = load double, double* %scevgep391392.6, align 8, !alias.scope !75, !noalias !78
  %scevgep397.6 = getelementptr i8, i8* %call1, i64 %380
  %scevgep397398.6 = bitcast i8* %scevgep397.6 to double*
  %_p_scalar_399.6 = load double, double* %scevgep397398.6, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.6

polly.loop_header382.6:                           ; preds = %polly.loop_header382.6, %polly.loop_exit384.5
  %polly.indvar385.6 = phi i64 [ 0, %polly.loop_exit384.5 ], [ %polly.indvar_next386.6, %polly.loop_header382.6 ]
  %381 = add nuw nsw i64 %polly.indvar385.6, %144
  %382 = mul nuw nsw i64 %381, 8000
  %383 = add nuw nsw i64 %382, %170
  %scevgep388.6 = getelementptr i8, i8* %call1, i64 %383
  %scevgep388389.6 = bitcast i8* %scevgep388.6 to double*
  %_p_scalar_390.6 = load double, double* %scevgep388389.6, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.6 = fmul fast double %_p_scalar_393.6, %_p_scalar_390.6
  %scevgep394.6 = getelementptr i8, i8* %call2, i64 %383
  %scevgep394395.6 = bitcast i8* %scevgep394.6 to double*
  %_p_scalar_396.6 = load double, double* %scevgep394395.6, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.6 = fmul fast double %_p_scalar_399.6, %_p_scalar_396.6
  %384 = shl i64 %381, 3
  %385 = add nuw nsw i64 %384, %165
  %scevgep400.6 = getelementptr i8, i8* %call, i64 %385
  %scevgep400401.6 = bitcast i8* %scevgep400.6 to double*
  %_p_scalar_402.6 = load double, double* %scevgep400401.6, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_402.6
  store double %p_add42.i79.6, double* %scevgep400401.6, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.6 = add nuw nsw i64 %polly.indvar385.6, 1
  %exitcond784.6.not = icmp eq i64 %polly.indvar385.6, %smin783.6
  br i1 %exitcond784.6.not, label %polly.loop_exit384.6, label %polly.loop_header382.6

polly.loop_exit384.6:                             ; preds = %polly.loop_header382.6
  %386 = add nuw nsw i64 %167, %170
  %scevgep391.7 = getelementptr i8, i8* %call2, i64 %386
  %scevgep391392.7 = bitcast i8* %scevgep391.7 to double*
  %_p_scalar_393.7 = load double, double* %scevgep391392.7, align 8, !alias.scope !75, !noalias !78
  %scevgep397.7 = getelementptr i8, i8* %call1, i64 %386
  %scevgep397398.7 = bitcast i8* %scevgep397.7 to double*
  %_p_scalar_399.7 = load double, double* %scevgep397398.7, align 8, !alias.scope !74, !noalias !79
  br label %polly.loop_header382.7

polly.loop_header382.7:                           ; preds = %polly.loop_header382.7, %polly.loop_exit384.6
  %polly.indvar385.7 = phi i64 [ 0, %polly.loop_exit384.6 ], [ %polly.indvar_next386.7, %polly.loop_header382.7 ]
  %387 = add nuw nsw i64 %polly.indvar385.7, %144
  %388 = mul nuw nsw i64 %387, 8000
  %389 = add nuw nsw i64 %388, %170
  %scevgep388.7 = getelementptr i8, i8* %call1, i64 %389
  %scevgep388389.7 = bitcast i8* %scevgep388.7 to double*
  %_p_scalar_390.7 = load double, double* %scevgep388389.7, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.7 = fmul fast double %_p_scalar_393.7, %_p_scalar_390.7
  %scevgep394.7 = getelementptr i8, i8* %call2, i64 %389
  %scevgep394395.7 = bitcast i8* %scevgep394.7 to double*
  %_p_scalar_396.7 = load double, double* %scevgep394395.7, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.7 = fmul fast double %_p_scalar_399.7, %_p_scalar_396.7
  %390 = shl i64 %387, 3
  %391 = add nuw nsw i64 %390, %168
  %scevgep400.7 = getelementptr i8, i8* %call, i64 %391
  %scevgep400401.7 = bitcast i8* %scevgep400.7 to double*
  %_p_scalar_402.7 = load double, double* %scevgep400401.7, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_402.7
  store double %p_add42.i79.7, double* %scevgep400401.7, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next386.7 = add nuw nsw i64 %polly.indvar385.7, 1
  %exitcond784.7.not = icmp eq i64 %polly.indvar385.7, %smin783.7
  br i1 %exitcond784.7.not, label %polly.loop_exit384.7, label %polly.loop_header382.7

polly.loop_exit384.7:                             ; preds = %polly.loop_header382.7
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next374, 8
  br i1 %exitcond786.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header535.1:                           ; preds = %polly.loop_header535.1, %polly.loop_exit537
  %polly.indvar538.1 = phi i64 [ 0, %polly.loop_exit537 ], [ %polly.indvar_next539.1, %polly.loop_header535.1 ]
  %392 = add nuw nsw i64 %polly.indvar538.1, %189
  %393 = mul nuw nsw i64 %392, 8000
  %394 = add nuw nsw i64 %393, %215
  %scevgep541.1 = getelementptr i8, i8* %call1, i64 %394
  %scevgep541542.1 = bitcast i8* %scevgep541.1 to double*
  %_p_scalar_543.1 = load double, double* %scevgep541542.1, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_543.1
  %scevgep547.1 = getelementptr i8, i8* %call2, i64 %394
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.1 = fmul fast double %_p_scalar_552.1, %_p_scalar_549.1
  %395 = shl i64 %392, 3
  %396 = add nuw nsw i64 %395, %195
  %scevgep553.1 = getelementptr i8, i8* %call, i64 %396
  %scevgep553554.1 = bitcast i8* %scevgep553.1 to double*
  %_p_scalar_555.1 = load double, double* %scevgep553554.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_555.1
  store double %p_add42.i.1, double* %scevgep553554.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.1 = add nuw nsw i64 %polly.indvar538.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar538.1, %smin796.1
  br i1 %exitcond797.1.not, label %polly.loop_exit537.1, label %polly.loop_header535.1

polly.loop_exit537.1:                             ; preds = %polly.loop_header535.1
  %397 = add nuw nsw i64 %197, %215
  %scevgep544.2 = getelementptr i8, i8* %call2, i64 %397
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !84, !noalias !87
  %scevgep550.2 = getelementptr i8, i8* %call1, i64 %397
  %scevgep550551.2 = bitcast i8* %scevgep550.2 to double*
  %_p_scalar_552.2 = load double, double* %scevgep550551.2, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.2

polly.loop_header535.2:                           ; preds = %polly.loop_header535.2, %polly.loop_exit537.1
  %polly.indvar538.2 = phi i64 [ 0, %polly.loop_exit537.1 ], [ %polly.indvar_next539.2, %polly.loop_header535.2 ]
  %398 = add nuw nsw i64 %polly.indvar538.2, %189
  %399 = mul nuw nsw i64 %398, 8000
  %400 = add nuw nsw i64 %399, %215
  %scevgep541.2 = getelementptr i8, i8* %call1, i64 %400
  %scevgep541542.2 = bitcast i8* %scevgep541.2 to double*
  %_p_scalar_543.2 = load double, double* %scevgep541542.2, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_543.2
  %scevgep547.2 = getelementptr i8, i8* %call2, i64 %400
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.2 = fmul fast double %_p_scalar_552.2, %_p_scalar_549.2
  %401 = shl i64 %398, 3
  %402 = add nuw nsw i64 %401, %198
  %scevgep553.2 = getelementptr i8, i8* %call, i64 %402
  %scevgep553554.2 = bitcast i8* %scevgep553.2 to double*
  %_p_scalar_555.2 = load double, double* %scevgep553554.2, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_555.2
  store double %p_add42.i.2, double* %scevgep553554.2, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.2 = add nuw nsw i64 %polly.indvar538.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar538.2, %smin796.2
  br i1 %exitcond797.2.not, label %polly.loop_exit537.2, label %polly.loop_header535.2

polly.loop_exit537.2:                             ; preds = %polly.loop_header535.2
  %403 = add nuw nsw i64 %200, %215
  %scevgep544.3 = getelementptr i8, i8* %call2, i64 %403
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !84, !noalias !87
  %scevgep550.3 = getelementptr i8, i8* %call1, i64 %403
  %scevgep550551.3 = bitcast i8* %scevgep550.3 to double*
  %_p_scalar_552.3 = load double, double* %scevgep550551.3, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.3

polly.loop_header535.3:                           ; preds = %polly.loop_header535.3, %polly.loop_exit537.2
  %polly.indvar538.3 = phi i64 [ 0, %polly.loop_exit537.2 ], [ %polly.indvar_next539.3, %polly.loop_header535.3 ]
  %404 = add nuw nsw i64 %polly.indvar538.3, %189
  %405 = mul nuw nsw i64 %404, 8000
  %406 = add nuw nsw i64 %405, %215
  %scevgep541.3 = getelementptr i8, i8* %call1, i64 %406
  %scevgep541542.3 = bitcast i8* %scevgep541.3 to double*
  %_p_scalar_543.3 = load double, double* %scevgep541542.3, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_543.3
  %scevgep547.3 = getelementptr i8, i8* %call2, i64 %406
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.3 = fmul fast double %_p_scalar_552.3, %_p_scalar_549.3
  %407 = shl i64 %404, 3
  %408 = add nuw nsw i64 %407, %201
  %scevgep553.3 = getelementptr i8, i8* %call, i64 %408
  %scevgep553554.3 = bitcast i8* %scevgep553.3 to double*
  %_p_scalar_555.3 = load double, double* %scevgep553554.3, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_555.3
  store double %p_add42.i.3, double* %scevgep553554.3, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.3 = add nuw nsw i64 %polly.indvar538.3, 1
  %exitcond797.3.not = icmp eq i64 %polly.indvar538.3, %smin796.3
  br i1 %exitcond797.3.not, label %polly.loop_exit537.3, label %polly.loop_header535.3

polly.loop_exit537.3:                             ; preds = %polly.loop_header535.3
  %409 = add nuw nsw i64 %203, %215
  %scevgep544.4 = getelementptr i8, i8* %call2, i64 %409
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !84, !noalias !87
  %scevgep550.4 = getelementptr i8, i8* %call1, i64 %409
  %scevgep550551.4 = bitcast i8* %scevgep550.4 to double*
  %_p_scalar_552.4 = load double, double* %scevgep550551.4, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.4

polly.loop_header535.4:                           ; preds = %polly.loop_header535.4, %polly.loop_exit537.3
  %polly.indvar538.4 = phi i64 [ 0, %polly.loop_exit537.3 ], [ %polly.indvar_next539.4, %polly.loop_header535.4 ]
  %410 = add nuw nsw i64 %polly.indvar538.4, %189
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %215
  %scevgep541.4 = getelementptr i8, i8* %call1, i64 %412
  %scevgep541542.4 = bitcast i8* %scevgep541.4 to double*
  %_p_scalar_543.4 = load double, double* %scevgep541542.4, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.4 = fmul fast double %_p_scalar_546.4, %_p_scalar_543.4
  %scevgep547.4 = getelementptr i8, i8* %call2, i64 %412
  %scevgep547548.4 = bitcast i8* %scevgep547.4 to double*
  %_p_scalar_549.4 = load double, double* %scevgep547548.4, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.4 = fmul fast double %_p_scalar_552.4, %_p_scalar_549.4
  %413 = shl i64 %410, 3
  %414 = add nuw nsw i64 %413, %204
  %scevgep553.4 = getelementptr i8, i8* %call, i64 %414
  %scevgep553554.4 = bitcast i8* %scevgep553.4 to double*
  %_p_scalar_555.4 = load double, double* %scevgep553554.4, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_555.4
  store double %p_add42.i.4, double* %scevgep553554.4, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.4 = add nuw nsw i64 %polly.indvar538.4, 1
  %exitcond797.4.not = icmp eq i64 %polly.indvar538.4, %smin796.4
  br i1 %exitcond797.4.not, label %polly.loop_exit537.4, label %polly.loop_header535.4

polly.loop_exit537.4:                             ; preds = %polly.loop_header535.4
  %415 = add nuw nsw i64 %206, %215
  %scevgep544.5 = getelementptr i8, i8* %call2, i64 %415
  %scevgep544545.5 = bitcast i8* %scevgep544.5 to double*
  %_p_scalar_546.5 = load double, double* %scevgep544545.5, align 8, !alias.scope !84, !noalias !87
  %scevgep550.5 = getelementptr i8, i8* %call1, i64 %415
  %scevgep550551.5 = bitcast i8* %scevgep550.5 to double*
  %_p_scalar_552.5 = load double, double* %scevgep550551.5, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.5

polly.loop_header535.5:                           ; preds = %polly.loop_header535.5, %polly.loop_exit537.4
  %polly.indvar538.5 = phi i64 [ 0, %polly.loop_exit537.4 ], [ %polly.indvar_next539.5, %polly.loop_header535.5 ]
  %416 = add nuw nsw i64 %polly.indvar538.5, %189
  %417 = mul nuw nsw i64 %416, 8000
  %418 = add nuw nsw i64 %417, %215
  %scevgep541.5 = getelementptr i8, i8* %call1, i64 %418
  %scevgep541542.5 = bitcast i8* %scevgep541.5 to double*
  %_p_scalar_543.5 = load double, double* %scevgep541542.5, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.5 = fmul fast double %_p_scalar_546.5, %_p_scalar_543.5
  %scevgep547.5 = getelementptr i8, i8* %call2, i64 %418
  %scevgep547548.5 = bitcast i8* %scevgep547.5 to double*
  %_p_scalar_549.5 = load double, double* %scevgep547548.5, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.5 = fmul fast double %_p_scalar_552.5, %_p_scalar_549.5
  %419 = shl i64 %416, 3
  %420 = add nuw nsw i64 %419, %207
  %scevgep553.5 = getelementptr i8, i8* %call, i64 %420
  %scevgep553554.5 = bitcast i8* %scevgep553.5 to double*
  %_p_scalar_555.5 = load double, double* %scevgep553554.5, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_555.5
  store double %p_add42.i.5, double* %scevgep553554.5, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.5 = add nuw nsw i64 %polly.indvar538.5, 1
  %exitcond797.5.not = icmp eq i64 %polly.indvar538.5, %smin796.5
  br i1 %exitcond797.5.not, label %polly.loop_exit537.5, label %polly.loop_header535.5

polly.loop_exit537.5:                             ; preds = %polly.loop_header535.5
  %421 = add nuw nsw i64 %209, %215
  %scevgep544.6 = getelementptr i8, i8* %call2, i64 %421
  %scevgep544545.6 = bitcast i8* %scevgep544.6 to double*
  %_p_scalar_546.6 = load double, double* %scevgep544545.6, align 8, !alias.scope !84, !noalias !87
  %scevgep550.6 = getelementptr i8, i8* %call1, i64 %421
  %scevgep550551.6 = bitcast i8* %scevgep550.6 to double*
  %_p_scalar_552.6 = load double, double* %scevgep550551.6, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.6

polly.loop_header535.6:                           ; preds = %polly.loop_header535.6, %polly.loop_exit537.5
  %polly.indvar538.6 = phi i64 [ 0, %polly.loop_exit537.5 ], [ %polly.indvar_next539.6, %polly.loop_header535.6 ]
  %422 = add nuw nsw i64 %polly.indvar538.6, %189
  %423 = mul nuw nsw i64 %422, 8000
  %424 = add nuw nsw i64 %423, %215
  %scevgep541.6 = getelementptr i8, i8* %call1, i64 %424
  %scevgep541542.6 = bitcast i8* %scevgep541.6 to double*
  %_p_scalar_543.6 = load double, double* %scevgep541542.6, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.6 = fmul fast double %_p_scalar_546.6, %_p_scalar_543.6
  %scevgep547.6 = getelementptr i8, i8* %call2, i64 %424
  %scevgep547548.6 = bitcast i8* %scevgep547.6 to double*
  %_p_scalar_549.6 = load double, double* %scevgep547548.6, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.6 = fmul fast double %_p_scalar_552.6, %_p_scalar_549.6
  %425 = shl i64 %422, 3
  %426 = add nuw nsw i64 %425, %210
  %scevgep553.6 = getelementptr i8, i8* %call, i64 %426
  %scevgep553554.6 = bitcast i8* %scevgep553.6 to double*
  %_p_scalar_555.6 = load double, double* %scevgep553554.6, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_555.6
  store double %p_add42.i.6, double* %scevgep553554.6, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.6 = add nuw nsw i64 %polly.indvar538.6, 1
  %exitcond797.6.not = icmp eq i64 %polly.indvar538.6, %smin796.6
  br i1 %exitcond797.6.not, label %polly.loop_exit537.6, label %polly.loop_header535.6

polly.loop_exit537.6:                             ; preds = %polly.loop_header535.6
  %427 = add nuw nsw i64 %212, %215
  %scevgep544.7 = getelementptr i8, i8* %call2, i64 %427
  %scevgep544545.7 = bitcast i8* %scevgep544.7 to double*
  %_p_scalar_546.7 = load double, double* %scevgep544545.7, align 8, !alias.scope !84, !noalias !87
  %scevgep550.7 = getelementptr i8, i8* %call1, i64 %427
  %scevgep550551.7 = bitcast i8* %scevgep550.7 to double*
  %_p_scalar_552.7 = load double, double* %scevgep550551.7, align 8, !alias.scope !83, !noalias !88
  br label %polly.loop_header535.7

polly.loop_header535.7:                           ; preds = %polly.loop_header535.7, %polly.loop_exit537.6
  %polly.indvar538.7 = phi i64 [ 0, %polly.loop_exit537.6 ], [ %polly.indvar_next539.7, %polly.loop_header535.7 ]
  %428 = add nuw nsw i64 %polly.indvar538.7, %189
  %429 = mul nuw nsw i64 %428, 8000
  %430 = add nuw nsw i64 %429, %215
  %scevgep541.7 = getelementptr i8, i8* %call1, i64 %430
  %scevgep541542.7 = bitcast i8* %scevgep541.7 to double*
  %_p_scalar_543.7 = load double, double* %scevgep541542.7, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.7 = fmul fast double %_p_scalar_546.7, %_p_scalar_543.7
  %scevgep547.7 = getelementptr i8, i8* %call2, i64 %430
  %scevgep547548.7 = bitcast i8* %scevgep547.7 to double*
  %_p_scalar_549.7 = load double, double* %scevgep547548.7, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.7 = fmul fast double %_p_scalar_552.7, %_p_scalar_549.7
  %431 = shl i64 %428, 3
  %432 = add nuw nsw i64 %431, %213
  %scevgep553.7 = getelementptr i8, i8* %call, i64 %432
  %scevgep553554.7 = bitcast i8* %scevgep553.7 to double*
  %_p_scalar_555.7 = load double, double* %scevgep553554.7, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_555.7
  store double %p_add42.i.7, double* %scevgep553554.7, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next539.7 = add nuw nsw i64 %polly.indvar538.7, 1
  %exitcond797.7.not = icmp eq i64 %polly.indvar538.7, %smin796.7
  br i1 %exitcond797.7.not, label %polly.loop_exit537.7, label %polly.loop_header535.7

polly.loop_exit537.7:                             ; preds = %polly.loop_header535.7
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next527, 8
  br i1 %exitcond799.not, label %polly.loop_exit525, label %polly.loop_header523
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
!33 = !{!"llvm.loop.tile.size", i32 8}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !50}
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
