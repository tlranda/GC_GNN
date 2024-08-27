; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9425.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9425.c"
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
  %call706 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1567 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1567, %call2
  %polly.access.call2587 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2587, %call1
  %2 = or i1 %0, %1
  %polly.access.call607 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call607, %call2
  %4 = icmp ule i8* %polly.access.call2587, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call607, %call1
  %8 = icmp ule i8* %polly.access.call1567, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header680, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep872 = getelementptr i8, i8* %call2, i64 %12
  %scevgep871 = getelementptr i8, i8* %call2, i64 %11
  %scevgep870 = getelementptr i8, i8* %call1, i64 %12
  %scevgep869 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep869, %scevgep872
  %bound1 = icmp ult i8* %scevgep871, %scevgep870
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
  br i1 %exitcond18.not.i, label %vector.ph876, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph876:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert883 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat884 = shufflevector <4 x i64> %broadcast.splatinsert883, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body875

vector.body875:                                   ; preds = %vector.body875, %vector.ph876
  %index877 = phi i64 [ 0, %vector.ph876 ], [ %index.next878, %vector.body875 ]
  %vec.ind881 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph876 ], [ %vec.ind.next882, %vector.body875 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind881, %broadcast.splat884
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv7.i, i64 %index877
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next878 = add i64 %index877, 4
  %vec.ind.next882 = add <4 x i64> %vec.ind881, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next878, 1200
  br i1 %40, label %for.inc41.i, label %vector.body875, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body875
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph876, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit741
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header487, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check939 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check939, label %for.body3.i46.preheader1016, label %vector.ph940

vector.ph940:                                     ; preds = %for.body3.i46.preheader
  %n.vec942 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next944, %vector.body938 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %index943
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next944 = add i64 %index943, 4
  %46 = icmp eq i64 %index.next944, %n.vec942
  br i1 %46, label %middle.block936, label %vector.body938, !llvm.loop !18

middle.block936:                                  ; preds = %vector.body938
  %cmp.n946 = icmp eq i64 %indvars.iv21.i, %n.vec942
  br i1 %cmp.n946, label %for.inc6.i, label %for.body3.i46.preheader1016

for.body3.i46.preheader1016:                      ; preds = %for.body3.i46.preheader, %middle.block936
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec942, %middle.block936 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1016, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1016 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block936, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check962 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check962, label %for.body3.i60.preheader1014, label %vector.ph963

vector.ph963:                                     ; preds = %for.body3.i60.preheader
  %n.vec965 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %vector.ph963
  %index966 = phi i64 [ 0, %vector.ph963 ], [ %index.next967, %vector.body961 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %index966
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load970 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load970, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next967 = add i64 %index966, 4
  %57 = icmp eq i64 %index.next967, %n.vec965
  br i1 %57, label %middle.block959, label %vector.body961, !llvm.loop !50

middle.block959:                                  ; preds = %vector.body961
  %cmp.n969 = icmp eq i64 %indvars.iv21.i52, %n.vec965
  br i1 %cmp.n969, label %for.inc6.i63, label %for.body3.i60.preheader1014

for.body3.i60.preheader1014:                      ; preds = %for.body3.i60.preheader, %middle.block959
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec965, %middle.block959 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1014, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1014 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block959, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check988 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check988, label %for.body3.i99.preheader1012, label %vector.ph989

vector.ph989:                                     ; preds = %for.body3.i99.preheader
  %n.vec991 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph989
  %index992 = phi i64 [ 0, %vector.ph989 ], [ %index.next993, %vector.body987 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %index992
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load996 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load996, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next993 = add i64 %index992, 4
  %68 = icmp eq i64 %index.next993, %n.vec991
  br i1 %68, label %middle.block985, label %vector.body987, !llvm.loop !52

middle.block985:                                  ; preds = %vector.body987
  %cmp.n995 = icmp eq i64 %indvars.iv21.i91, %n.vec991
  br i1 %cmp.n995, label %for.inc6.i102, label %for.body3.i99.preheader1012

for.body3.i99.preheader1012:                      ; preds = %for.body3.i99.preheader, %middle.block985
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec991, %middle.block985 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1012, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1012 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block985, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1000 = phi i64 [ %indvar.next1001, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1000, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1002 = icmp ult i64 %88, 4
  br i1 %min.iters.check1002, label %polly.loop_header191.preheader, label %vector.ph1003

vector.ph1003:                                    ; preds = %polly.loop_header
  %n.vec1005 = and i64 %88, -4
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body999 ]
  %90 = shl nuw nsw i64 %index1006, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1010 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1010, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1007 = add i64 %index1006, 4
  %95 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %95, label %middle.block997, label %vector.body999, !llvm.loop !63

middle.block997:                                  ; preds = %vector.body999
  %cmp.n1009 = icmp eq i64 %88, %n.vec1005
  br i1 %cmp.n1009, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block997
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1005, %middle.block997 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block997
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1001 = add i64 %indvar1000, 1
  br i1 %exitcond782.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond781.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, 32000
  %99 = mul nsw i64 %polly.indvar202, 38400
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 8000
  %102 = mul nuw nsw i64 %100, 9600
  %103 = or i64 %97, 2
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  %106 = or i64 %97, 3
  %107 = mul nuw nsw i64 %106, 8000
  %108 = mul nuw nsw i64 %106, 9600
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit219.3
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond780.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit219.3, %polly.loop_header199
  %indvars.iv771 = phi i64 [ %indvars.iv.next772, %polly.loop_exit219.3 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit219.3 ], [ 0, %polly.loop_header199 ]
  %109 = shl nsw i64 %polly.indvar208, 2
  %110 = sub nsw i64 %97, %109
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv771, i64 3)
  %polly.loop_guard849 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard849, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header205, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header205 ]
  %111 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep229.us = getelementptr i8, i8* %call1, i64 %111
  %scevgep233.us = getelementptr i8, i8* %call2, i64 %111
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %98
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us = getelementptr i8, i8* %scevgep229.us, i64 %98
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_header223.us ]
  %112 = add nuw nsw i64 %polly.indvar226.us, %109
  %113 = mul nuw nsw i64 %112, 8000
  %scevgep230.us = getelementptr i8, i8* %scevgep229.us, i64 %113
  %scevgep230231.us = bitcast i8* %scevgep230.us to double*
  %_p_scalar_232.us = load double, double* %scevgep230231.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_236.us, %_p_scalar_232.us
  %scevgep238.us = getelementptr i8, i8* %scevgep233.us, i64 %113
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_244.us, %_p_scalar_240.us
  %114 = shl i64 %112, 3
  %115 = add nuw nsw i64 %114, %99
  %scevgep245.us = getelementptr i8, i8* %call, i64 %115
  %scevgep245246.us = bitcast i8* %scevgep245.us to double*
  %_p_scalar_247.us = load double, double* %scevgep245246.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_247.us
  store double %p_add42.i118.us, double* %scevgep245246.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar226.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond775.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header205
  %indvars.iv.next774 = or i64 %indvars.iv771, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774, i64 3)
  %polly.loop_guard.1850 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.1850, label %polly.loop_header217.us.1, label %polly.loop_exit219.1

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar974 = phi i64 [ %indvar.next975, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %116 = add i64 %indvar974, 1
  %117 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check976 = icmp ult i64 %116, 4
  br i1 %min.iters.check976, label %polly.loop_header340.preheader, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header334
  %n.vec979 = and i64 %116, -4
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body973 ]
  %118 = shl nuw nsw i64 %index980, 3
  %119 = getelementptr i8, i8* %scevgep346, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load984 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !68, !noalias !70
  %121 = fmul fast <4 x double> %wide.load984, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !68, !noalias !70
  %index.next981 = add i64 %index980, 4
  %123 = icmp eq i64 %index.next981, %n.vec979
  br i1 %123, label %middle.block971, label %vector.body973, !llvm.loop !73

middle.block971:                                  ; preds = %vector.body973
  %cmp.n983 = icmp eq i64 %116, %n.vec979
  br i1 %cmp.n983, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block971
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec979, %middle.block971 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block971
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next338, 1200
  %indvar.next975 = add i64 %indvar974, 1
  br i1 %exitcond798.not, label %polly.loop_header350, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %124
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond797.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !74

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit358
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit358 ], [ 1, %polly.loop_exit342 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit358 ], [ 0, %polly.loop_exit342 ]
  %125 = shl nsw i64 %polly.indvar353, 2
  %126 = mul nsw i64 %polly.indvar353, 32000
  %127 = mul nsw i64 %polly.indvar353, 38400
  %128 = or i64 %125, 1
  %129 = mul nuw nsw i64 %128, 8000
  %130 = mul nuw nsw i64 %128, 9600
  %131 = or i64 %125, 2
  %132 = mul nuw nsw i64 %131, 8000
  %133 = mul nuw nsw i64 %131, 9600
  %134 = or i64 %125, 3
  %135 = mul nuw nsw i64 %134, 8000
  %136 = mul nuw nsw i64 %134, 9600
  br label %polly.loop_header356

polly.loop_exit358:                               ; preds = %polly.loop_exit370.3
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 4
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next354, 300
  br i1 %exitcond796.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header356:                             ; preds = %polly.loop_exit370.3, %polly.loop_header350
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit370.3 ], [ %indvars.iv783, %polly.loop_header350 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit370.3 ], [ 0, %polly.loop_header350 ]
  %137 = shl nsw i64 %polly.indvar359, 2
  %138 = sub nsw i64 %125, %137
  %smin789 = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 3)
  %polly.loop_guard378853 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378853, label %polly.loop_header368.us, label %polly.loop_exit370

polly.loop_header368.us:                          ; preds = %polly.loop_header356, %polly.loop_exit377.loopexit.us
  %polly.indvar371.us = phi i64 [ %polly.indvar_next372.us, %polly.loop_exit377.loopexit.us ], [ 0, %polly.loop_header356 ]
  %139 = shl nuw nsw i64 %polly.indvar371.us, 3
  %scevgep382.us = getelementptr i8, i8* %call1, i64 %139
  %scevgep386.us = getelementptr i8, i8* %call2, i64 %139
  %scevgep387.us = getelementptr i8, i8* %scevgep386.us, i64 %126
  %scevgep387388.us = bitcast i8* %scevgep387.us to double*
  %_p_scalar_389.us = load double, double* %scevgep387388.us, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us = getelementptr i8, i8* %scevgep382.us, i64 %126
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us

polly.loop_header375.us:                          ; preds = %polly.loop_header375.us, %polly.loop_header368.us
  %polly.indvar379.us = phi i64 [ 0, %polly.loop_header368.us ], [ %polly.indvar_next380.us, %polly.loop_header375.us ]
  %140 = add nuw nsw i64 %polly.indvar379.us, %137
  %141 = mul nuw nsw i64 %140, 8000
  %scevgep383.us = getelementptr i8, i8* %scevgep382.us, i64 %141
  %scevgep383384.us = bitcast i8* %scevgep383.us to double*
  %_p_scalar_385.us = load double, double* %scevgep383384.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_389.us, %_p_scalar_385.us
  %scevgep391.us = getelementptr i8, i8* %scevgep386.us, i64 %141
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_397.us, %_p_scalar_393.us
  %142 = shl i64 %140, 3
  %143 = add nuw nsw i64 %142, %127
  %scevgep398.us = getelementptr i8, i8* %call, i64 %143
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_400.us
  store double %p_add42.i79.us, double* %scevgep398399.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond790.not = icmp eq i64 %polly.indvar379.us, %smin789
  br i1 %exitcond790.not, label %polly.loop_exit377.loopexit.us, label %polly.loop_header375.us

polly.loop_exit377.loopexit.us:                   ; preds = %polly.loop_header375.us
  %polly.indvar_next372.us = add nuw nsw i64 %polly.indvar371.us, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next372.us, 1000
  br i1 %exitcond791.not, label %polly.loop_exit370, label %polly.loop_header368.us

polly.loop_exit370:                               ; preds = %polly.loop_exit377.loopexit.us, %polly.loop_header356
  %indvars.iv.next788 = or i64 %indvars.iv785, 1
  %smin789.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788, i64 3)
  %polly.loop_guard378.1854 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.1854, label %polly.loop_header368.us.1, label %polly.loop_exit370.1

polly.loop_header487:                             ; preds = %init_array.exit, %polly.loop_exit495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit495 ], [ 0, %init_array.exit ]
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_exit495 ], [ 1, %init_array.exit ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar490, 9600
  %scevgep499 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check950 = icmp ult i64 %144, 4
  br i1 %min.iters.check950, label %polly.loop_header493.preheader, label %vector.ph951

vector.ph951:                                     ; preds = %polly.loop_header487
  %n.vec953 = and i64 %144, -4
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %vector.ph951
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next955, %vector.body949 ]
  %146 = shl nuw nsw i64 %index954, 3
  %147 = getelementptr i8, i8* %scevgep499, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load958 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !77, !noalias !79
  %149 = fmul fast <4 x double> %wide.load958, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !77, !noalias !79
  %index.next955 = add i64 %index954, 4
  %151 = icmp eq i64 %index.next955, %n.vec953
  br i1 %151, label %middle.block947, label %vector.body949, !llvm.loop !82

middle.block947:                                  ; preds = %vector.body949
  %cmp.n957 = icmp eq i64 %144, %n.vec953
  br i1 %cmp.n957, label %polly.loop_exit495, label %polly.loop_header493.preheader

polly.loop_header493.preheader:                   ; preds = %polly.loop_header487, %middle.block947
  %polly.indvar496.ph = phi i64 [ 0, %polly.loop_header487 ], [ %n.vec953, %middle.block947 ]
  br label %polly.loop_header493

polly.loop_exit495:                               ; preds = %polly.loop_header493, %middle.block947
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next491, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond814.not, label %polly.loop_header503, label %polly.loop_header487

polly.loop_header493:                             ; preds = %polly.loop_header493.preheader, %polly.loop_header493
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_header493 ], [ %polly.indvar496.ph, %polly.loop_header493.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar496, 3
  %scevgep500 = getelementptr i8, i8* %scevgep499, i64 %152
  %scevgep500501 = bitcast i8* %scevgep500 to double*
  %_p_scalar_502 = load double, double* %scevgep500501, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_502, 1.200000e+00
  store double %p_mul.i, double* %scevgep500501, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next497, %polly.indvar490
  br i1 %exitcond813.not, label %polly.loop_exit495, label %polly.loop_header493, !llvm.loop !83

polly.loop_header503:                             ; preds = %polly.loop_exit495, %polly.loop_exit511
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit511 ], [ 1, %polly.loop_exit495 ]
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit511 ], [ 0, %polly.loop_exit495 ]
  %polly.indvar506 = phi i64 [ %polly.indvar_next507, %polly.loop_exit511 ], [ 0, %polly.loop_exit495 ]
  %153 = shl nsw i64 %polly.indvar506, 2
  %154 = mul nsw i64 %polly.indvar506, 32000
  %155 = mul nsw i64 %polly.indvar506, 38400
  %156 = or i64 %153, 1
  %157 = mul nuw nsw i64 %156, 8000
  %158 = mul nuw nsw i64 %156, 9600
  %159 = or i64 %153, 2
  %160 = mul nuw nsw i64 %159, 8000
  %161 = mul nuw nsw i64 %159, 9600
  %162 = or i64 %153, 3
  %163 = mul nuw nsw i64 %162, 8000
  %164 = mul nuw nsw i64 %162, 9600
  br label %polly.loop_header509

polly.loop_exit511:                               ; preds = %polly.loop_exit523.3
  %polly.indvar_next507 = add nuw nsw i64 %polly.indvar506, 1
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 4
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next507, 300
  br i1 %exitcond812.not, label %kernel_syr2k.exit, label %polly.loop_header503

polly.loop_header509:                             ; preds = %polly.loop_exit523.3, %polly.loop_header503
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit523.3 ], [ %indvars.iv799, %polly.loop_header503 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit523.3 ], [ 0, %polly.loop_header503 ]
  %165 = shl nsw i64 %polly.indvar512, 2
  %166 = sub nsw i64 %153, %165
  %smin805 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 3)
  %polly.loop_guard531857 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531857, label %polly.loop_header521.us, label %polly.loop_exit523

polly.loop_header521.us:                          ; preds = %polly.loop_header509, %polly.loop_exit530.loopexit.us
  %polly.indvar524.us = phi i64 [ %polly.indvar_next525.us, %polly.loop_exit530.loopexit.us ], [ 0, %polly.loop_header509 ]
  %167 = shl nuw nsw i64 %polly.indvar524.us, 3
  %scevgep535.us = getelementptr i8, i8* %call1, i64 %167
  %scevgep539.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep540.us = getelementptr i8, i8* %scevgep539.us, i64 %154
  %scevgep540541.us = bitcast i8* %scevgep540.us to double*
  %_p_scalar_542.us = load double, double* %scevgep540541.us, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us = getelementptr i8, i8* %scevgep535.us, i64 %154
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us

polly.loop_header528.us:                          ; preds = %polly.loop_header528.us, %polly.loop_header521.us
  %polly.indvar532.us = phi i64 [ 0, %polly.loop_header521.us ], [ %polly.indvar_next533.us, %polly.loop_header528.us ]
  %168 = add nuw nsw i64 %polly.indvar532.us, %165
  %169 = mul nuw nsw i64 %168, 8000
  %scevgep536.us = getelementptr i8, i8* %scevgep535.us, i64 %169
  %scevgep536537.us = bitcast i8* %scevgep536.us to double*
  %_p_scalar_538.us = load double, double* %scevgep536537.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_542.us, %_p_scalar_538.us
  %scevgep544.us = getelementptr i8, i8* %scevgep539.us, i64 %169
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %170 = shl i64 %168, 3
  %171 = add nuw nsw i64 %170, %155
  %scevgep551.us = getelementptr i8, i8* %call, i64 %171
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_553.us
  store double %p_add42.i.us, double* %scevgep551552.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %exitcond806.not = icmp eq i64 %polly.indvar532.us, %smin805
  br i1 %exitcond806.not, label %polly.loop_exit530.loopexit.us, label %polly.loop_header528.us

polly.loop_exit530.loopexit.us:                   ; preds = %polly.loop_header528.us
  %polly.indvar_next525.us = add nuw nsw i64 %polly.indvar524.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next525.us, 1000
  br i1 %exitcond807.not, label %polly.loop_exit523, label %polly.loop_header521.us

polly.loop_exit523:                               ; preds = %polly.loop_exit530.loopexit.us, %polly.loop_header509
  %indvars.iv.next804 = or i64 %indvars.iv801, 1
  %smin805.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804, i64 3)
  %polly.loop_guard531.1858 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.1858, label %polly.loop_header521.us.1, label %polly.loop_exit523.1

polly.loop_header680:                             ; preds = %entry, %polly.loop_exit688
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit688 ], [ 0, %entry ]
  %polly.indvar683 = phi i64 [ %polly.indvar_next684, %polly.loop_exit688 ], [ 0, %entry ]
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -1168)
  %172 = shl nsw i64 %polly.indvar683, 5
  %173 = add nsw i64 %smin841, 1199
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit694
  %polly.indvar_next684 = add nuw nsw i64 %polly.indvar683, 1
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -32
  %exitcond844.not = icmp eq i64 %polly.indvar_next684, 38
  br i1 %exitcond844.not, label %polly.loop_header707, label %polly.loop_header680

polly.loop_header686:                             ; preds = %polly.loop_exit694, %polly.loop_header680
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %174 = mul nsw i64 %polly.indvar689, -32
  %smin888 = call i64 @llvm.smin.i64(i64 %174, i64 -1168)
  %175 = add nsw i64 %smin888, 1200
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 -1168)
  %176 = shl nsw i64 %polly.indvar689, 5
  %177 = add nsw i64 %smin837, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -32
  %exitcond843.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond843.not, label %polly.loop_exit688, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %polly.indvar695 = phi i64 [ 0, %polly.loop_header686 ], [ %polly.indvar_next696, %polly.loop_exit700 ]
  %178 = add nuw nsw i64 %polly.indvar695, %172
  %179 = trunc i64 %178 to i32
  %180 = mul nuw nsw i64 %178, 9600
  %min.iters.check = icmp eq i64 %175, 0
  br i1 %min.iters.check, label %polly.loop_header698, label %vector.ph889

vector.ph889:                                     ; preds = %polly.loop_header692
  %broadcast.splatinsert896 = insertelement <4 x i64> poison, i64 %176, i32 0
  %broadcast.splat897 = shufflevector <4 x i64> %broadcast.splatinsert896, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert898 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat899 = shufflevector <4 x i32> %broadcast.splatinsert898, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph889
  %index890 = phi i64 [ 0, %vector.ph889 ], [ %index.next891, %vector.body887 ]
  %vec.ind894 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph889 ], [ %vec.ind.next895, %vector.body887 ]
  %181 = add nuw nsw <4 x i64> %vec.ind894, %broadcast.splat897
  %182 = trunc <4 x i64> %181 to <4 x i32>
  %183 = mul <4 x i32> %broadcast.splat899, %182
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 1200, i32 1200, i32 1200, i32 1200>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %188 = extractelement <4 x i64> %181, i32 0
  %189 = shl i64 %188, 3
  %190 = add nuw nsw i64 %189, %180
  %191 = getelementptr i8, i8* %call, i64 %190
  %192 = bitcast i8* %191 to <4 x double>*
  store <4 x double> %187, <4 x double>* %192, align 8, !alias.scope !86, !noalias !88
  %index.next891 = add i64 %index890, 4
  %vec.ind.next895 = add <4 x i64> %vec.ind894, <i64 4, i64 4, i64 4, i64 4>
  %193 = icmp eq i64 %index.next891, %175
  br i1 %193, label %polly.loop_exit700, label %vector.body887, !llvm.loop !91

polly.loop_exit700:                               ; preds = %vector.body887, %polly.loop_header698
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %exitcond842.not = icmp eq i64 %polly.indvar695, %173
  br i1 %exitcond842.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_header692, %polly.loop_header698
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_header698 ], [ 0, %polly.loop_header692 ]
  %194 = add nuw nsw i64 %polly.indvar701, %176
  %195 = trunc i64 %194 to i32
  %196 = mul i32 %195, %179
  %197 = add i32 %196, 3
  %198 = urem i32 %197, 1200
  %p_conv31.i = sitofp i32 %198 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %199 = shl i64 %194, 3
  %200 = add nuw nsw i64 %199, %180
  %scevgep704 = getelementptr i8, i8* %call, i64 %200
  %scevgep704705 = bitcast i8* %scevgep704 to double*
  store double %p_div33.i, double* %scevgep704705, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond838.not = icmp eq i64 %polly.indvar701, %177
  br i1 %exitcond838.not, label %polly.loop_exit700, label %polly.loop_header698, !llvm.loop !92

polly.loop_header707:                             ; preds = %polly.loop_exit688, %polly.loop_exit715
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %polly.indvar710 = phi i64 [ %polly.indvar_next711, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -1168)
  %201 = shl nsw i64 %polly.indvar710, 5
  %202 = add nsw i64 %smin831, 1199
  br label %polly.loop_header713

polly.loop_exit715:                               ; preds = %polly.loop_exit721
  %polly.indvar_next711 = add nuw nsw i64 %polly.indvar710, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond834.not = icmp eq i64 %polly.indvar_next711, 38
  br i1 %exitcond834.not, label %polly.loop_header733, label %polly.loop_header707

polly.loop_header713:                             ; preds = %polly.loop_exit721, %polly.loop_header707
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %203 = mul nsw i64 %polly.indvar716, -32
  %smin903 = call i64 @llvm.smin.i64(i64 %203, i64 -968)
  %204 = add nsw i64 %smin903, 1000
  %smin827 = call i64 @llvm.smin.i64(i64 %indvars.iv825, i64 -968)
  %205 = shl nsw i64 %polly.indvar716, 5
  %206 = add nsw i64 %smin827, 999
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next717, 32
  br i1 %exitcond833.not, label %polly.loop_exit715, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %polly.indvar722 = phi i64 [ 0, %polly.loop_header713 ], [ %polly.indvar_next723, %polly.loop_exit727 ]
  %207 = add nuw nsw i64 %polly.indvar722, %201
  %208 = trunc i64 %207 to i32
  %209 = mul nuw nsw i64 %207, 8000
  %min.iters.check904 = icmp eq i64 %204, 0
  br i1 %min.iters.check904, label %polly.loop_header725, label %vector.ph905

vector.ph905:                                     ; preds = %polly.loop_header719
  %broadcast.splatinsert914 = insertelement <4 x i64> poison, i64 %205, i32 0
  %broadcast.splat915 = shufflevector <4 x i64> %broadcast.splatinsert914, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert916 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat917 = shufflevector <4 x i32> %broadcast.splatinsert916, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph905
  %index908 = phi i64 [ 0, %vector.ph905 ], [ %index.next909, %vector.body902 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph905 ], [ %vec.ind.next913, %vector.body902 ]
  %210 = add nuw nsw <4 x i64> %vec.ind912, %broadcast.splat915
  %211 = trunc <4 x i64> %210 to <4 x i32>
  %212 = mul <4 x i32> %broadcast.splat917, %211
  %213 = add <4 x i32> %212, <i32 2, i32 2, i32 2, i32 2>
  %214 = urem <4 x i32> %213, <i32 1000, i32 1000, i32 1000, i32 1000>
  %215 = sitofp <4 x i32> %214 to <4 x double>
  %216 = fmul fast <4 x double> %215, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %217 = extractelement <4 x i64> %210, i32 0
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %209
  %220 = getelementptr i8, i8* %call2, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %216, <4 x double>* %221, align 8, !alias.scope !90, !noalias !93
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %222 = icmp eq i64 %index.next909, %204
  br i1 %222, label %polly.loop_exit727, label %vector.body902, !llvm.loop !94

polly.loop_exit727:                               ; preds = %vector.body902, %polly.loop_header725
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %exitcond832.not = icmp eq i64 %polly.indvar722, %202
  br i1 %exitcond832.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_header719, %polly.loop_header725
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_header725 ], [ 0, %polly.loop_header719 ]
  %223 = add nuw nsw i64 %polly.indvar728, %205
  %224 = trunc i64 %223 to i32
  %225 = mul i32 %224, %208
  %226 = add i32 %225, 2
  %227 = urem i32 %226, 1000
  %p_conv10.i = sitofp i32 %227 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %228 = shl i64 %223, 3
  %229 = add nuw nsw i64 %228, %209
  %scevgep731 = getelementptr i8, i8* %call2, i64 %229
  %scevgep731732 = bitcast i8* %scevgep731 to double*
  store double %p_div12.i, double* %scevgep731732, align 8, !alias.scope !90, !noalias !93
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond828.not = icmp eq i64 %polly.indvar728, %206
  br i1 %exitcond828.not, label %polly.loop_exit727, label %polly.loop_header725, !llvm.loop !95

polly.loop_header733:                             ; preds = %polly.loop_exit715, %polly.loop_exit741
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %smin821 = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 -1168)
  %230 = shl nsw i64 %polly.indvar736, 5
  %231 = add nsw i64 %smin821, 1199
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -32
  %exitcond824.not = icmp eq i64 %polly.indvar_next737, 38
  br i1 %exitcond824.not, label %init_array.exit, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %232 = mul nsw i64 %polly.indvar742, -32
  %smin921 = call i64 @llvm.smin.i64(i64 %232, i64 -968)
  %233 = add nsw i64 %smin921, 1000
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 -968)
  %234 = shl nsw i64 %polly.indvar742, 5
  %235 = add nsw i64 %smin817, 999
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -32
  %exitcond823.not = icmp eq i64 %polly.indvar_next743, 32
  br i1 %exitcond823.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %polly.indvar748 = phi i64 [ 0, %polly.loop_header739 ], [ %polly.indvar_next749, %polly.loop_exit753 ]
  %236 = add nuw nsw i64 %polly.indvar748, %230
  %237 = trunc i64 %236 to i32
  %238 = mul nuw nsw i64 %236, 8000
  %min.iters.check922 = icmp eq i64 %233, 0
  br i1 %min.iters.check922, label %polly.loop_header751, label %vector.ph923

vector.ph923:                                     ; preds = %polly.loop_header745
  %broadcast.splatinsert932 = insertelement <4 x i64> poison, i64 %234, i32 0
  %broadcast.splat933 = shufflevector <4 x i64> %broadcast.splatinsert932, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert934 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat935 = shufflevector <4 x i32> %broadcast.splatinsert934, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph923
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next927, %vector.body920 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph923 ], [ %vec.ind.next931, %vector.body920 ]
  %239 = add nuw nsw <4 x i64> %vec.ind930, %broadcast.splat933
  %240 = trunc <4 x i64> %239 to <4 x i32>
  %241 = mul <4 x i32> %broadcast.splat935, %240
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 1200, i32 1200, i32 1200, i32 1200>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %246 = extractelement <4 x i64> %239, i32 0
  %247 = shl i64 %246, 3
  %248 = add nuw nsw i64 %247, %238
  %249 = getelementptr i8, i8* %call1, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %245, <4 x double>* %250, align 8, !alias.scope !89, !noalias !96
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %251 = icmp eq i64 %index.next927, %233
  br i1 %251, label %polly.loop_exit753, label %vector.body920, !llvm.loop !97

polly.loop_exit753:                               ; preds = %vector.body920, %polly.loop_header751
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond822.not = icmp eq i64 %polly.indvar748, %231
  br i1 %exitcond822.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_header745, %polly.loop_header751
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_header751 ], [ 0, %polly.loop_header745 ]
  %252 = add nuw nsw i64 %polly.indvar754, %234
  %253 = trunc i64 %252 to i32
  %254 = mul i32 %253, %237
  %255 = add i32 %254, 1
  %256 = urem i32 %255, 1200
  %p_conv.i = sitofp i32 %256 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %257 = shl i64 %252, 3
  %258 = add nuw nsw i64 %257, %238
  %scevgep758 = getelementptr i8, i8* %call1, i64 %258
  %scevgep758759 = bitcast i8* %scevgep758 to double*
  store double %p_div.i, double* %scevgep758759, align 8, !alias.scope !89, !noalias !96
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond818.not = icmp eq i64 %polly.indvar754, %235
  br i1 %exitcond818.not, label %polly.loop_exit753, label %polly.loop_header751, !llvm.loop !98

polly.loop_header217.us.1:                        ; preds = %polly.loop_exit219, %polly.loop_exit225.loopexit.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit225.loopexit.us.1 ], [ 0, %polly.loop_exit219 ]
  %259 = shl nuw nsw i64 %polly.indvar220.us.1, 3
  %scevgep229.us.1 = getelementptr i8, i8* %call1, i64 %259
  %scevgep233.us.1 = getelementptr i8, i8* %call2, i64 %259
  %scevgep234.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %101
  %scevgep234235.us.1 = bitcast i8* %scevgep234.us.1 to double*
  %_p_scalar_236.us.1 = load double, double* %scevgep234235.us.1, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %101
  %scevgep242243.us.1 = bitcast i8* %scevgep242.us.1 to double*
  %_p_scalar_244.us.1 = load double, double* %scevgep242243.us.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header223.us.1, %polly.loop_header217.us.1
  %polly.indvar226.us.1 = phi i64 [ 0, %polly.loop_header217.us.1 ], [ %polly.indvar_next227.us.1, %polly.loop_header223.us.1 ]
  %260 = add nuw nsw i64 %polly.indvar226.us.1, %109
  %261 = mul nuw nsw i64 %260, 8000
  %scevgep230.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %261
  %scevgep230231.us.1 = bitcast i8* %scevgep230.us.1 to double*
  %_p_scalar_232.us.1 = load double, double* %scevgep230231.us.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_236.us.1, %_p_scalar_232.us.1
  %scevgep238.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %261
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_244.us.1, %_p_scalar_240.us.1
  %262 = shl i64 %260, 3
  %263 = add nuw nsw i64 %262, %102
  %scevgep245.us.1 = getelementptr i8, i8* %call, i64 %263
  %scevgep245246.us.1 = bitcast i8* %scevgep245.us.1 to double*
  %_p_scalar_247.us.1 = load double, double* %scevgep245246.us.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_247.us.1
  store double %p_add42.i118.us.1, double* %scevgep245246.us.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.loopexit.us.1, label %polly.loop_header223.us.1

polly.loop_exit225.loopexit.us.1:                 ; preds = %polly.loop_header223.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar_next221.us.1, 1000
  br i1 %exitcond775.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.us.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.loopexit.us.1, %polly.loop_exit219
  %indvars.iv.next774.1 = add nuw nsw i64 %indvars.iv.next774, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774.1, i64 3)
  %polly.loop_guard.2851 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.2851, label %polly.loop_header217.us.2, label %polly.loop_exit219.2

polly.loop_header217.us.2:                        ; preds = %polly.loop_exit219.1, %polly.loop_exit225.loopexit.us.2
  %polly.indvar220.us.2 = phi i64 [ %polly.indvar_next221.us.2, %polly.loop_exit225.loopexit.us.2 ], [ 0, %polly.loop_exit219.1 ]
  %264 = shl nuw nsw i64 %polly.indvar220.us.2, 3
  %scevgep229.us.2 = getelementptr i8, i8* %call1, i64 %264
  %scevgep233.us.2 = getelementptr i8, i8* %call2, i64 %264
  %scevgep234.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %104
  %scevgep234235.us.2 = bitcast i8* %scevgep234.us.2 to double*
  %_p_scalar_236.us.2 = load double, double* %scevgep234235.us.2, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %104
  %scevgep242243.us.2 = bitcast i8* %scevgep242.us.2 to double*
  %_p_scalar_244.us.2 = load double, double* %scevgep242243.us.2, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_header223.us.2, %polly.loop_header217.us.2
  %polly.indvar226.us.2 = phi i64 [ 0, %polly.loop_header217.us.2 ], [ %polly.indvar_next227.us.2, %polly.loop_header223.us.2 ]
  %265 = add nuw nsw i64 %polly.indvar226.us.2, %109
  %266 = mul nuw nsw i64 %265, 8000
  %scevgep230.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %266
  %scevgep230231.us.2 = bitcast i8* %scevgep230.us.2 to double*
  %_p_scalar_232.us.2 = load double, double* %scevgep230231.us.2, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_236.us.2, %_p_scalar_232.us.2
  %scevgep238.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %266
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_244.us.2, %_p_scalar_240.us.2
  %267 = shl i64 %265, 3
  %268 = add nuw nsw i64 %267, %105
  %scevgep245.us.2 = getelementptr i8, i8* %call, i64 %268
  %scevgep245246.us.2 = bitcast i8* %scevgep245.us.2 to double*
  %_p_scalar_247.us.2 = load double, double* %scevgep245246.us.2, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_247.us.2
  store double %p_add42.i118.us.2, double* %scevgep245246.us.2, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.loopexit.us.2, label %polly.loop_header223.us.2

polly.loop_exit225.loopexit.us.2:                 ; preds = %polly.loop_header223.us.2
  %polly.indvar_next221.us.2 = add nuw nsw i64 %polly.indvar220.us.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar_next221.us.2, 1000
  br i1 %exitcond775.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.us.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.loopexit.us.2, %polly.loop_exit219.1
  %indvars.iv.next774.2 = or i64 %indvars.iv771, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next774.2, i64 3)
  %polly.loop_guard.3852 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard.3852, label %polly.loop_header217.us.3, label %polly.loop_exit219.3

polly.loop_header217.us.3:                        ; preds = %polly.loop_exit219.2, %polly.loop_exit225.loopexit.us.3
  %polly.indvar220.us.3 = phi i64 [ %polly.indvar_next221.us.3, %polly.loop_exit225.loopexit.us.3 ], [ 0, %polly.loop_exit219.2 ]
  %269 = shl nuw nsw i64 %polly.indvar220.us.3, 3
  %scevgep229.us.3 = getelementptr i8, i8* %call1, i64 %269
  %scevgep233.us.3 = getelementptr i8, i8* %call2, i64 %269
  %scevgep234.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %107
  %scevgep234235.us.3 = bitcast i8* %scevgep234.us.3 to double*
  %_p_scalar_236.us.3 = load double, double* %scevgep234235.us.3, align 8, !alias.scope !62, !noalias !66
  %scevgep242.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %107
  %scevgep242243.us.3 = bitcast i8* %scevgep242.us.3 to double*
  %_p_scalar_244.us.3 = load double, double* %scevgep242243.us.3, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.us.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_header223.us.3, %polly.loop_header217.us.3
  %polly.indvar226.us.3 = phi i64 [ 0, %polly.loop_header217.us.3 ], [ %polly.indvar_next227.us.3, %polly.loop_header223.us.3 ]
  %270 = add nuw nsw i64 %polly.indvar226.us.3, %109
  %271 = mul nuw nsw i64 %270, 8000
  %scevgep230.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %271
  %scevgep230231.us.3 = bitcast i8* %scevgep230.us.3 to double*
  %_p_scalar_232.us.3 = load double, double* %scevgep230231.us.3, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_236.us.3, %_p_scalar_232.us.3
  %scevgep238.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %271
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_244.us.3, %_p_scalar_240.us.3
  %272 = shl i64 %270, 3
  %273 = add nuw nsw i64 %272, %108
  %scevgep245.us.3 = getelementptr i8, i8* %call, i64 %273
  %scevgep245246.us.3 = bitcast i8* %scevgep245.us.3 to double*
  %_p_scalar_247.us.3 = load double, double* %scevgep245246.us.3, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_247.us.3
  store double %p_add42.i118.us.3, double* %scevgep245246.us.3, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.loopexit.us.3, label %polly.loop_header223.us.3

polly.loop_exit225.loopexit.us.3:                 ; preds = %polly.loop_header223.us.3
  %polly.indvar_next221.us.3 = add nuw nsw i64 %polly.indvar220.us.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar_next221.us.3, 1000
  br i1 %exitcond775.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.us.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.loopexit.us.3, %polly.loop_exit219.2
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next772 = add nsw i64 %indvars.iv771, -4
  %exitcond779.not = icmp eq i64 %polly.indvar_next209, %indvars.iv777
  br i1 %exitcond779.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header368.us.1:                        ; preds = %polly.loop_exit370, %polly.loop_exit377.loopexit.us.1
  %polly.indvar371.us.1 = phi i64 [ %polly.indvar_next372.us.1, %polly.loop_exit377.loopexit.us.1 ], [ 0, %polly.loop_exit370 ]
  %274 = shl nuw nsw i64 %polly.indvar371.us.1, 3
  %scevgep382.us.1 = getelementptr i8, i8* %call1, i64 %274
  %scevgep386.us.1 = getelementptr i8, i8* %call2, i64 %274
  %scevgep387.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %129
  %scevgep387388.us.1 = bitcast i8* %scevgep387.us.1 to double*
  %_p_scalar_389.us.1 = load double, double* %scevgep387388.us.1, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %129
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.1

polly.loop_header375.us.1:                        ; preds = %polly.loop_header375.us.1, %polly.loop_header368.us.1
  %polly.indvar379.us.1 = phi i64 [ 0, %polly.loop_header368.us.1 ], [ %polly.indvar_next380.us.1, %polly.loop_header375.us.1 ]
  %275 = add nuw nsw i64 %polly.indvar379.us.1, %137
  %276 = mul nuw nsw i64 %275, 8000
  %scevgep383.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %276
  %scevgep383384.us.1 = bitcast i8* %scevgep383.us.1 to double*
  %_p_scalar_385.us.1 = load double, double* %scevgep383384.us.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_389.us.1, %_p_scalar_385.us.1
  %scevgep391.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %276
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_397.us.1, %_p_scalar_393.us.1
  %277 = shl i64 %275, 3
  %278 = add nuw nsw i64 %277, %130
  %scevgep398.us.1 = getelementptr i8, i8* %call, i64 %278
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_400.us.1
  store double %p_add42.i79.us.1, double* %scevgep398399.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.1 = add nuw nsw i64 %polly.indvar379.us.1, 1
  %exitcond790.1.not = icmp eq i64 %polly.indvar379.us.1, %smin789.1
  br i1 %exitcond790.1.not, label %polly.loop_exit377.loopexit.us.1, label %polly.loop_header375.us.1

polly.loop_exit377.loopexit.us.1:                 ; preds = %polly.loop_header375.us.1
  %polly.indvar_next372.us.1 = add nuw nsw i64 %polly.indvar371.us.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next372.us.1, 1000
  br i1 %exitcond791.1.not, label %polly.loop_exit370.1, label %polly.loop_header368.us.1

polly.loop_exit370.1:                             ; preds = %polly.loop_exit377.loopexit.us.1, %polly.loop_exit370
  %indvars.iv.next788.1 = add nuw nsw i64 %indvars.iv.next788, 1
  %smin789.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788.1, i64 3)
  %polly.loop_guard378.2855 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.2855, label %polly.loop_header368.us.2, label %polly.loop_exit370.2

polly.loop_header368.us.2:                        ; preds = %polly.loop_exit370.1, %polly.loop_exit377.loopexit.us.2
  %polly.indvar371.us.2 = phi i64 [ %polly.indvar_next372.us.2, %polly.loop_exit377.loopexit.us.2 ], [ 0, %polly.loop_exit370.1 ]
  %279 = shl nuw nsw i64 %polly.indvar371.us.2, 3
  %scevgep382.us.2 = getelementptr i8, i8* %call1, i64 %279
  %scevgep386.us.2 = getelementptr i8, i8* %call2, i64 %279
  %scevgep387.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %132
  %scevgep387388.us.2 = bitcast i8* %scevgep387.us.2 to double*
  %_p_scalar_389.us.2 = load double, double* %scevgep387388.us.2, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %132
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.2

polly.loop_header375.us.2:                        ; preds = %polly.loop_header375.us.2, %polly.loop_header368.us.2
  %polly.indvar379.us.2 = phi i64 [ 0, %polly.loop_header368.us.2 ], [ %polly.indvar_next380.us.2, %polly.loop_header375.us.2 ]
  %280 = add nuw nsw i64 %polly.indvar379.us.2, %137
  %281 = mul nuw nsw i64 %280, 8000
  %scevgep383.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %281
  %scevgep383384.us.2 = bitcast i8* %scevgep383.us.2 to double*
  %_p_scalar_385.us.2 = load double, double* %scevgep383384.us.2, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_389.us.2, %_p_scalar_385.us.2
  %scevgep391.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %281
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_397.us.2, %_p_scalar_393.us.2
  %282 = shl i64 %280, 3
  %283 = add nuw nsw i64 %282, %133
  %scevgep398.us.2 = getelementptr i8, i8* %call, i64 %283
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_400.us.2
  store double %p_add42.i79.us.2, double* %scevgep398399.us.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.2 = add nuw nsw i64 %polly.indvar379.us.2, 1
  %exitcond790.2.not = icmp eq i64 %polly.indvar379.us.2, %smin789.2
  br i1 %exitcond790.2.not, label %polly.loop_exit377.loopexit.us.2, label %polly.loop_header375.us.2

polly.loop_exit377.loopexit.us.2:                 ; preds = %polly.loop_header375.us.2
  %polly.indvar_next372.us.2 = add nuw nsw i64 %polly.indvar371.us.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next372.us.2, 1000
  br i1 %exitcond791.2.not, label %polly.loop_exit370.2, label %polly.loop_header368.us.2

polly.loop_exit370.2:                             ; preds = %polly.loop_exit377.loopexit.us.2, %polly.loop_exit370.1
  %indvars.iv.next788.2 = or i64 %indvars.iv785, 3
  %smin789.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next788.2, i64 3)
  %polly.loop_guard378.3856 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard378.3856, label %polly.loop_header368.us.3, label %polly.loop_exit370.3

polly.loop_header368.us.3:                        ; preds = %polly.loop_exit370.2, %polly.loop_exit377.loopexit.us.3
  %polly.indvar371.us.3 = phi i64 [ %polly.indvar_next372.us.3, %polly.loop_exit377.loopexit.us.3 ], [ 0, %polly.loop_exit370.2 ]
  %284 = shl nuw nsw i64 %polly.indvar371.us.3, 3
  %scevgep382.us.3 = getelementptr i8, i8* %call1, i64 %284
  %scevgep386.us.3 = getelementptr i8, i8* %call2, i64 %284
  %scevgep387.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %135
  %scevgep387388.us.3 = bitcast i8* %scevgep387.us.3 to double*
  %_p_scalar_389.us.3 = load double, double* %scevgep387388.us.3, align 8, !alias.scope !72, !noalias !75
  %scevgep395.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %135
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header375.us.3

polly.loop_header375.us.3:                        ; preds = %polly.loop_header375.us.3, %polly.loop_header368.us.3
  %polly.indvar379.us.3 = phi i64 [ 0, %polly.loop_header368.us.3 ], [ %polly.indvar_next380.us.3, %polly.loop_header375.us.3 ]
  %285 = add nuw nsw i64 %polly.indvar379.us.3, %137
  %286 = mul nuw nsw i64 %285, 8000
  %scevgep383.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %286
  %scevgep383384.us.3 = bitcast i8* %scevgep383.us.3 to double*
  %_p_scalar_385.us.3 = load double, double* %scevgep383384.us.3, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_389.us.3, %_p_scalar_385.us.3
  %scevgep391.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %286
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_397.us.3, %_p_scalar_393.us.3
  %287 = shl i64 %285, 3
  %288 = add nuw nsw i64 %287, %136
  %scevgep398.us.3 = getelementptr i8, i8* %call, i64 %288
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_400.us.3
  store double %p_add42.i79.us.3, double* %scevgep398399.us.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next380.us.3 = add nuw nsw i64 %polly.indvar379.us.3, 1
  %exitcond790.3.not = icmp eq i64 %polly.indvar379.us.3, %smin789.3
  br i1 %exitcond790.3.not, label %polly.loop_exit377.loopexit.us.3, label %polly.loop_header375.us.3

polly.loop_exit377.loopexit.us.3:                 ; preds = %polly.loop_header375.us.3
  %polly.indvar_next372.us.3 = add nuw nsw i64 %polly.indvar371.us.3, 1
  %exitcond791.3.not = icmp eq i64 %polly.indvar_next372.us.3, 1000
  br i1 %exitcond791.3.not, label %polly.loop_exit370.3, label %polly.loop_header368.us.3

polly.loop_exit370.3:                             ; preds = %polly.loop_exit377.loopexit.us.3, %polly.loop_exit370.2
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -4
  %exitcond795.not = icmp eq i64 %polly.indvar_next360, %indvars.iv793
  br i1 %exitcond795.not, label %polly.loop_exit358, label %polly.loop_header356

polly.loop_header521.us.1:                        ; preds = %polly.loop_exit523, %polly.loop_exit530.loopexit.us.1
  %polly.indvar524.us.1 = phi i64 [ %polly.indvar_next525.us.1, %polly.loop_exit530.loopexit.us.1 ], [ 0, %polly.loop_exit523 ]
  %289 = shl nuw nsw i64 %polly.indvar524.us.1, 3
  %scevgep535.us.1 = getelementptr i8, i8* %call1, i64 %289
  %scevgep539.us.1 = getelementptr i8, i8* %call2, i64 %289
  %scevgep540.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %157
  %scevgep540541.us.1 = bitcast i8* %scevgep540.us.1 to double*
  %_p_scalar_542.us.1 = load double, double* %scevgep540541.us.1, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %157
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.1

polly.loop_header528.us.1:                        ; preds = %polly.loop_header528.us.1, %polly.loop_header521.us.1
  %polly.indvar532.us.1 = phi i64 [ 0, %polly.loop_header521.us.1 ], [ %polly.indvar_next533.us.1, %polly.loop_header528.us.1 ]
  %290 = add nuw nsw i64 %polly.indvar532.us.1, %165
  %291 = mul nuw nsw i64 %290, 8000
  %scevgep536.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %291
  %scevgep536537.us.1 = bitcast i8* %scevgep536.us.1 to double*
  %_p_scalar_538.us.1 = load double, double* %scevgep536537.us.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_542.us.1, %_p_scalar_538.us.1
  %scevgep544.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %291
  %scevgep544545.us.1 = bitcast i8* %scevgep544.us.1 to double*
  %_p_scalar_546.us.1 = load double, double* %scevgep544545.us.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_546.us.1
  %292 = shl i64 %290, 3
  %293 = add nuw nsw i64 %292, %158
  %scevgep551.us.1 = getelementptr i8, i8* %call, i64 %293
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_553.us.1
  store double %p_add42.i.us.1, double* %scevgep551552.us.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.1 = add nuw nsw i64 %polly.indvar532.us.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar532.us.1, %smin805.1
  br i1 %exitcond806.1.not, label %polly.loop_exit530.loopexit.us.1, label %polly.loop_header528.us.1

polly.loop_exit530.loopexit.us.1:                 ; preds = %polly.loop_header528.us.1
  %polly.indvar_next525.us.1 = add nuw nsw i64 %polly.indvar524.us.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next525.us.1, 1000
  br i1 %exitcond807.1.not, label %polly.loop_exit523.1, label %polly.loop_header521.us.1

polly.loop_exit523.1:                             ; preds = %polly.loop_exit530.loopexit.us.1, %polly.loop_exit523
  %indvars.iv.next804.1 = add nuw nsw i64 %indvars.iv.next804, 1
  %smin805.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804.1, i64 3)
  %polly.loop_guard531.2859 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.2859, label %polly.loop_header521.us.2, label %polly.loop_exit523.2

polly.loop_header521.us.2:                        ; preds = %polly.loop_exit523.1, %polly.loop_exit530.loopexit.us.2
  %polly.indvar524.us.2 = phi i64 [ %polly.indvar_next525.us.2, %polly.loop_exit530.loopexit.us.2 ], [ 0, %polly.loop_exit523.1 ]
  %294 = shl nuw nsw i64 %polly.indvar524.us.2, 3
  %scevgep535.us.2 = getelementptr i8, i8* %call1, i64 %294
  %scevgep539.us.2 = getelementptr i8, i8* %call2, i64 %294
  %scevgep540.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %160
  %scevgep540541.us.2 = bitcast i8* %scevgep540.us.2 to double*
  %_p_scalar_542.us.2 = load double, double* %scevgep540541.us.2, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %160
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.2

polly.loop_header528.us.2:                        ; preds = %polly.loop_header528.us.2, %polly.loop_header521.us.2
  %polly.indvar532.us.2 = phi i64 [ 0, %polly.loop_header521.us.2 ], [ %polly.indvar_next533.us.2, %polly.loop_header528.us.2 ]
  %295 = add nuw nsw i64 %polly.indvar532.us.2, %165
  %296 = mul nuw nsw i64 %295, 8000
  %scevgep536.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %296
  %scevgep536537.us.2 = bitcast i8* %scevgep536.us.2 to double*
  %_p_scalar_538.us.2 = load double, double* %scevgep536537.us.2, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_542.us.2, %_p_scalar_538.us.2
  %scevgep544.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %296
  %scevgep544545.us.2 = bitcast i8* %scevgep544.us.2 to double*
  %_p_scalar_546.us.2 = load double, double* %scevgep544545.us.2, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_546.us.2
  %297 = shl i64 %295, 3
  %298 = add nuw nsw i64 %297, %161
  %scevgep551.us.2 = getelementptr i8, i8* %call, i64 %298
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_553.us.2
  store double %p_add42.i.us.2, double* %scevgep551552.us.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.2 = add nuw nsw i64 %polly.indvar532.us.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar532.us.2, %smin805.2
  br i1 %exitcond806.2.not, label %polly.loop_exit530.loopexit.us.2, label %polly.loop_header528.us.2

polly.loop_exit530.loopexit.us.2:                 ; preds = %polly.loop_header528.us.2
  %polly.indvar_next525.us.2 = add nuw nsw i64 %polly.indvar524.us.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar_next525.us.2, 1000
  br i1 %exitcond807.2.not, label %polly.loop_exit523.2, label %polly.loop_header521.us.2

polly.loop_exit523.2:                             ; preds = %polly.loop_exit530.loopexit.us.2, %polly.loop_exit523.1
  %indvars.iv.next804.2 = or i64 %indvars.iv801, 3
  %smin805.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next804.2, i64 3)
  %polly.loop_guard531.3860 = icmp sgt i64 %166, -1
  br i1 %polly.loop_guard531.3860, label %polly.loop_header521.us.3, label %polly.loop_exit523.3

polly.loop_header521.us.3:                        ; preds = %polly.loop_exit523.2, %polly.loop_exit530.loopexit.us.3
  %polly.indvar524.us.3 = phi i64 [ %polly.indvar_next525.us.3, %polly.loop_exit530.loopexit.us.3 ], [ 0, %polly.loop_exit523.2 ]
  %299 = shl nuw nsw i64 %polly.indvar524.us.3, 3
  %scevgep535.us.3 = getelementptr i8, i8* %call1, i64 %299
  %scevgep539.us.3 = getelementptr i8, i8* %call2, i64 %299
  %scevgep540.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %163
  %scevgep540541.us.3 = bitcast i8* %scevgep540.us.3 to double*
  %_p_scalar_542.us.3 = load double, double* %scevgep540541.us.3, align 8, !alias.scope !81, !noalias !84
  %scevgep548.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %163
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header528.us.3

polly.loop_header528.us.3:                        ; preds = %polly.loop_header528.us.3, %polly.loop_header521.us.3
  %polly.indvar532.us.3 = phi i64 [ 0, %polly.loop_header521.us.3 ], [ %polly.indvar_next533.us.3, %polly.loop_header528.us.3 ]
  %300 = add nuw nsw i64 %polly.indvar532.us.3, %165
  %301 = mul nuw nsw i64 %300, 8000
  %scevgep536.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %301
  %scevgep536537.us.3 = bitcast i8* %scevgep536.us.3 to double*
  %_p_scalar_538.us.3 = load double, double* %scevgep536537.us.3, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_542.us.3, %_p_scalar_538.us.3
  %scevgep544.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %301
  %scevgep544545.us.3 = bitcast i8* %scevgep544.us.3 to double*
  %_p_scalar_546.us.3 = load double, double* %scevgep544545.us.3, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_546.us.3
  %302 = shl i64 %300, 3
  %303 = add nuw nsw i64 %302, %164
  %scevgep551.us.3 = getelementptr i8, i8* %call, i64 %303
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_553.us.3
  store double %p_add42.i.us.3, double* %scevgep551552.us.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next533.us.3 = add nuw nsw i64 %polly.indvar532.us.3, 1
  %exitcond806.3.not = icmp eq i64 %polly.indvar532.us.3, %smin805.3
  br i1 %exitcond806.3.not, label %polly.loop_exit530.loopexit.us.3, label %polly.loop_header528.us.3

polly.loop_exit530.loopexit.us.3:                 ; preds = %polly.loop_header528.us.3
  %polly.indvar_next525.us.3 = add nuw nsw i64 %polly.indvar524.us.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar_next525.us.3, 1000
  br i1 %exitcond807.3.not, label %polly.loop_exit523.3, label %polly.loop_header521.us.3

polly.loop_exit523.3:                             ; preds = %polly.loop_exit530.loopexit.us.3, %polly.loop_exit523.2
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -4
  %exitcond811.not = icmp eq i64 %polly.indvar_next513, %indvars.iv809
  br i1 %exitcond811.not, label %polly.loop_exit511, label %polly.loop_header509
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
!24 = !{!"llvm.loop.tile.size", i32 4}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !47}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !65, !13}
!93 = !{!89, !86}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !65, !13}
!96 = !{!90, !86}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !65, !13}
