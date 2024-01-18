; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10259.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10259.c"
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
  %call712 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header686, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index877
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index943
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index966
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check988 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check988, label %for.body3.i99.preheader1012, label %vector.ph989

vector.ph989:                                     ; preds = %for.body3.i99.preheader
  %n.vec991 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph989
  %index992 = phi i64 [ 0, %vector.ph989 ], [ %index.next993, %vector.body987 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index992
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond789.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1001 = add i64 %indvar1000, 1
  br i1 %exitcond789.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond788.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 80
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond787.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond786.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %99 = mul nuw nsw i64 %polly.indvar214, 80
  %100 = sub nsw i64 %97, %99
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, -80
  %exitcond785.not = icmp eq i64 %polly.indvar_next215, %indvars.iv783
  br i1 %exitcond785.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit225 ], [ %indvars.iv777, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 79)
  %101 = add nsw i64 %polly.indvar220, %100
  %polly.loop_guard858 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar220, %97
  %103 = mul nuw nsw i64 %102, 8000
  %104 = mul nuw nsw i64 %102, 9600
  br i1 %polly.loop_guard858, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header217 ]
  %105 = add nuw nsw i64 %polly.indvar226.us, %98
  %106 = shl i64 %105, 3
  %107 = add nuw nsw i64 %106, %103
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %107
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %107
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %108 = add nuw nsw i64 %polly.indvar232.us, %99
  %109 = mul nuw nsw i64 %108, 8000
  %110 = add nuw nsw i64 %109, %106
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %110
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %110
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %111 = shl i64 %108, 3
  %112 = add nuw nsw i64 %111, %104
  %scevgep247.us = getelementptr i8, i8* %call, i64 %112
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.loopexit.us, label %polly.loop_header229.us

polly.loop_exit231.loopexit.us:                   ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next227.us, 100
  br i1 %exitcond781.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next221, 80
  br i1 %exitcond782.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar974 = phi i64 [ %indvar.next975, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %113 = add i64 %indvar974, 1
  %114 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check976 = icmp ult i64 %113, 4
  br i1 %min.iters.check976, label %polly.loop_header342.preheader, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header336
  %n.vec979 = and i64 %113, -4
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body973 ]
  %115 = shl nuw nsw i64 %index980, 3
  %116 = getelementptr i8, i8* %scevgep348, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load984 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !68, !noalias !70
  %118 = fmul fast <4 x double> %wide.load984, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !68, !noalias !70
  %index.next981 = add i64 %index980, 4
  %120 = icmp eq i64 %index.next981, %n.vec979
  br i1 %120, label %middle.block971, label %vector.body973, !llvm.loop !73

middle.block971:                                  ; preds = %vector.body973
  %cmp.n983 = icmp eq i64 %113, %n.vec979
  br i1 %cmp.n983, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block971
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec979, %middle.block971 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block971
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond806.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next975 = add i64 %indvar974, 1
  br i1 %exitcond806.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %121
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond805.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !74

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit360 ], [ 1, %polly.loop_exit344 ]
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %122 = mul nuw nsw i64 %polly.indvar355, 80
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 80
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next356, 15
  br i1 %exitcond804.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit366 ]
  %123 = mul nuw nsw i64 %polly.indvar361, 100
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next362, 10
  br i1 %exitcond803.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit372 ], [ %indvars.iv790, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %124 = mul nuw nsw i64 %polly.indvar367, 80
  %125 = sub nsw i64 %122, %124
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit378
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, -80
  %exitcond802.not = icmp eq i64 %polly.indvar_next368, %indvars.iv800
  br i1 %exitcond802.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit378, %polly.loop_header364
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit378 ], [ %indvars.iv792, %polly.loop_header364 ]
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header364 ]
  %smin796 = call i64 @llvm.smin.i64(i64 %indvars.iv794, i64 79)
  %126 = add nsw i64 %polly.indvar373, %125
  %polly.loop_guard386859 = icmp sgt i64 %126, -1
  %127 = add nuw nsw i64 %polly.indvar373, %122
  %128 = mul nuw nsw i64 %127, 8000
  %129 = mul nuw nsw i64 %127, 9600
  br i1 %polly.loop_guard386859, label %polly.loop_header376.us, label %polly.loop_exit378

polly.loop_header376.us:                          ; preds = %polly.loop_header370, %polly.loop_exit385.loopexit.us
  %polly.indvar379.us = phi i64 [ %polly.indvar_next380.us, %polly.loop_exit385.loopexit.us ], [ 0, %polly.loop_header370 ]
  %130 = add nuw nsw i64 %polly.indvar379.us, %123
  %131 = shl i64 %130, 3
  %132 = add nuw nsw i64 %131, %128
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %132
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us

polly.loop_header383.us:                          ; preds = %polly.loop_header376.us, %polly.loop_header383.us
  %polly.indvar387.us = phi i64 [ %polly.indvar_next388.us, %polly.loop_header383.us ], [ 0, %polly.loop_header376.us ]
  %133 = add nuw nsw i64 %polly.indvar387.us, %124
  %134 = mul nuw nsw i64 %133, 8000
  %135 = add nuw nsw i64 %134, %131
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %135
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %135
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %136 = shl i64 %133, 3
  %137 = add nuw nsw i64 %136, %129
  %scevgep402.us = getelementptr i8, i8* %call, i64 %137
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar387.us, %smin796
  br i1 %exitcond797.not, label %polly.loop_exit385.loopexit.us, label %polly.loop_header383.us

polly.loop_exit385.loopexit.us:                   ; preds = %polly.loop_header383.us
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next380.us, 100
  br i1 %exitcond798.not, label %polly.loop_exit378, label %polly.loop_header376.us

polly.loop_exit378:                               ; preds = %polly.loop_exit385.loopexit.us, %polly.loop_header370
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next374, 80
  br i1 %exitcond799.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check950 = icmp ult i64 %138, 4
  br i1 %min.iters.check950, label %polly.loop_header497.preheader, label %vector.ph951

vector.ph951:                                     ; preds = %polly.loop_header491
  %n.vec953 = and i64 %138, -4
  br label %vector.body949

vector.body949:                                   ; preds = %vector.body949, %vector.ph951
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next955, %vector.body949 ]
  %140 = shl nuw nsw i64 %index954, 3
  %141 = getelementptr i8, i8* %scevgep503, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load958 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !77, !noalias !79
  %143 = fmul fast <4 x double> %wide.load958, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !77, !noalias !79
  %index.next955 = add i64 %index954, 4
  %145 = icmp eq i64 %index.next955, %n.vec953
  br i1 %145, label %middle.block947, label %vector.body949, !llvm.loop !82

middle.block947:                                  ; preds = %vector.body949
  %cmp.n957 = icmp eq i64 %138, %n.vec953
  br i1 %cmp.n957, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block947
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec953, %middle.block947 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block947
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond823.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %146
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond822.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !83

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit515 ], [ 1, %polly.loop_exit499 ]
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %147 = mul nuw nsw i64 %polly.indvar510, 80
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 80
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next511, 15
  br i1 %exitcond821.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %polly.indvar516 = phi i64 [ 0, %polly.loop_header507 ], [ %polly.indvar_next517, %polly.loop_exit521 ]
  %148 = mul nuw nsw i64 %polly.indvar516, 100
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next517, 10
  br i1 %exitcond820.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header513
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit527 ], [ %indvars.iv807, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ 0, %polly.loop_header513 ]
  %149 = mul nuw nsw i64 %polly.indvar522, 80
  %150 = sub nsw i64 %147, %149
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit533
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -80
  %exitcond819.not = icmp eq i64 %polly.indvar_next523, %indvars.iv817
  br i1 %exitcond819.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_exit533, %polly.loop_header519
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit533 ], [ %indvars.iv809, %polly.loop_header519 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit533 ], [ 0, %polly.loop_header519 ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 79)
  %151 = add nsw i64 %polly.indvar528, %150
  %polly.loop_guard541860 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar528, %147
  %153 = mul nuw nsw i64 %152, 8000
  %154 = mul nuw nsw i64 %152, 9600
  br i1 %polly.loop_guard541860, label %polly.loop_header531.us, label %polly.loop_exit533

polly.loop_header531.us:                          ; preds = %polly.loop_header525, %polly.loop_exit540.loopexit.us
  %polly.indvar534.us = phi i64 [ %polly.indvar_next535.us, %polly.loop_exit540.loopexit.us ], [ 0, %polly.loop_header525 ]
  %155 = add nuw nsw i64 %polly.indvar534.us, %148
  %156 = shl i64 %155, 3
  %157 = add nuw nsw i64 %156, %153
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us

polly.loop_header538.us:                          ; preds = %polly.loop_header531.us, %polly.loop_header538.us
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_header538.us ], [ 0, %polly.loop_header531.us ]
  %158 = add nuw nsw i64 %polly.indvar542.us, %149
  %159 = mul nuw nsw i64 %158, 8000
  %160 = add nuw nsw i64 %159, %156
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %160
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %161 = shl i64 %158, 3
  %162 = add nuw nsw i64 %161, %154
  %scevgep557.us = getelementptr i8, i8* %call, i64 %162
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond814.not = icmp eq i64 %polly.indvar542.us, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit540.loopexit.us, label %polly.loop_header538.us

polly.loop_exit540.loopexit.us:                   ; preds = %polly.loop_header538.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next535.us, 100
  br i1 %exitcond815.not, label %polly.loop_exit533, label %polly.loop_header531.us

polly.loop_exit533:                               ; preds = %polly.loop_exit540.loopexit.us, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next812 = add nsw i64 %indvars.iv811, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next529, 80
  br i1 %exitcond816.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -1168)
  %163 = shl nsw i64 %polly.indvar689, 5
  %164 = add nsw i64 %smin850, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond853.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond853.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %165 = mul nsw i64 %polly.indvar695, -32
  %smin888 = call i64 @llvm.smin.i64(i64 %165, i64 -1168)
  %166 = add nsw i64 %smin888, 1200
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %167 = shl nsw i64 %polly.indvar695, 5
  %168 = add nsw i64 %smin846, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond852.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %169 = add nuw nsw i64 %polly.indvar701, %163
  %170 = trunc i64 %169 to i32
  %171 = mul nuw nsw i64 %169, 9600
  %min.iters.check = icmp eq i64 %166, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph889

vector.ph889:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert896 = insertelement <4 x i64> poison, i64 %167, i32 0
  %broadcast.splat897 = shufflevector <4 x i64> %broadcast.splatinsert896, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert898 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat899 = shufflevector <4 x i32> %broadcast.splatinsert898, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph889
  %index890 = phi i64 [ 0, %vector.ph889 ], [ %index.next891, %vector.body887 ]
  %vec.ind894 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph889 ], [ %vec.ind.next895, %vector.body887 ]
  %172 = add nuw nsw <4 x i64> %vec.ind894, %broadcast.splat897
  %173 = trunc <4 x i64> %172 to <4 x i32>
  %174 = mul <4 x i32> %broadcast.splat899, %173
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 1200, i32 1200, i32 1200, i32 1200>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %179 = extractelement <4 x i64> %172, i32 0
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %171
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %178, <4 x double>* %183, align 8, !alias.scope !86, !noalias !88
  %index.next891 = add i64 %index890, 4
  %vec.ind.next895 = add <4 x i64> %vec.ind894, <i64 4, i64 4, i64 4, i64 4>
  %184 = icmp eq i64 %index.next891, %166
  br i1 %184, label %polly.loop_exit706, label %vector.body887, !llvm.loop !91

polly.loop_exit706:                               ; preds = %vector.body887, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond851.not = icmp eq i64 %polly.indvar701, %164
  br i1 %exitcond851.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %185 = add nuw nsw i64 %polly.indvar707, %167
  %186 = trunc i64 %185 to i32
  %187 = mul i32 %186, %170
  %188 = add i32 %187, 3
  %189 = urem i32 %188, 1200
  %p_conv31.i = sitofp i32 %189 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %190 = shl i64 %185, 3
  %191 = add nuw nsw i64 %190, %171
  %scevgep710 = getelementptr i8, i8* %call, i64 %191
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond847.not = icmp eq i64 %polly.indvar707, %168
  br i1 %exitcond847.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !92

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -1168)
  %192 = shl nsw i64 %polly.indvar716, 5
  %193 = add nsw i64 %smin840, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond843.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond843.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %194 = mul nsw i64 %polly.indvar722, -32
  %smin903 = call i64 @llvm.smin.i64(i64 %194, i64 -968)
  %195 = add nsw i64 %smin903, 1000
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -968)
  %196 = shl nsw i64 %polly.indvar722, 5
  %197 = add nsw i64 %smin836, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond842.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond842.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %198 = add nuw nsw i64 %polly.indvar728, %192
  %199 = trunc i64 %198 to i32
  %200 = mul nuw nsw i64 %198, 8000
  %min.iters.check904 = icmp eq i64 %195, 0
  br i1 %min.iters.check904, label %polly.loop_header731, label %vector.ph905

vector.ph905:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert914 = insertelement <4 x i64> poison, i64 %196, i32 0
  %broadcast.splat915 = shufflevector <4 x i64> %broadcast.splatinsert914, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert916 = insertelement <4 x i32> poison, i32 %199, i32 0
  %broadcast.splat917 = shufflevector <4 x i32> %broadcast.splatinsert916, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph905
  %index908 = phi i64 [ 0, %vector.ph905 ], [ %index.next909, %vector.body902 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph905 ], [ %vec.ind.next913, %vector.body902 ]
  %201 = add nuw nsw <4 x i64> %vec.ind912, %broadcast.splat915
  %202 = trunc <4 x i64> %201 to <4 x i32>
  %203 = mul <4 x i32> %broadcast.splat917, %202
  %204 = add <4 x i32> %203, <i32 2, i32 2, i32 2, i32 2>
  %205 = urem <4 x i32> %204, <i32 1000, i32 1000, i32 1000, i32 1000>
  %206 = sitofp <4 x i32> %205 to <4 x double>
  %207 = fmul fast <4 x double> %206, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %208 = extractelement <4 x i64> %201, i32 0
  %209 = shl i64 %208, 3
  %210 = add nuw nsw i64 %209, %200
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %207, <4 x double>* %212, align 8, !alias.scope !90, !noalias !93
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %213 = icmp eq i64 %index.next909, %195
  br i1 %213, label %polly.loop_exit733, label %vector.body902, !llvm.loop !94

polly.loop_exit733:                               ; preds = %vector.body902, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond841.not = icmp eq i64 %polly.indvar728, %193
  br i1 %exitcond841.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %214 = add nuw nsw i64 %polly.indvar734, %196
  %215 = trunc i64 %214 to i32
  %216 = mul i32 %215, %199
  %217 = add i32 %216, 2
  %218 = urem i32 %217, 1000
  %p_conv10.i = sitofp i32 %218 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %219 = shl i64 %214, 3
  %220 = add nuw nsw i64 %219, %200
  %scevgep737 = getelementptr i8, i8* %call2, i64 %220
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !90, !noalias !93
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond837.not = icmp eq i64 %polly.indvar734, %197
  br i1 %exitcond837.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !95

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin830 = call i64 @llvm.smin.i64(i64 %indvars.iv828, i64 -1168)
  %221 = shl nsw i64 %polly.indvar742, 5
  %222 = add nsw i64 %smin830, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond833.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %223 = mul nsw i64 %polly.indvar748, -32
  %smin921 = call i64 @llvm.smin.i64(i64 %223, i64 -968)
  %224 = add nsw i64 %smin921, 1000
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -968)
  %225 = shl nsw i64 %polly.indvar748, 5
  %226 = add nsw i64 %smin826, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond832.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond832.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %227 = add nuw nsw i64 %polly.indvar754, %221
  %228 = trunc i64 %227 to i32
  %229 = mul nuw nsw i64 %227, 8000
  %min.iters.check922 = icmp eq i64 %224, 0
  br i1 %min.iters.check922, label %polly.loop_header757, label %vector.ph923

vector.ph923:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert932 = insertelement <4 x i64> poison, i64 %225, i32 0
  %broadcast.splat933 = shufflevector <4 x i64> %broadcast.splatinsert932, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert934 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat935 = shufflevector <4 x i32> %broadcast.splatinsert934, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph923
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next927, %vector.body920 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph923 ], [ %vec.ind.next931, %vector.body920 ]
  %230 = add nuw nsw <4 x i64> %vec.ind930, %broadcast.splat933
  %231 = trunc <4 x i64> %230 to <4 x i32>
  %232 = mul <4 x i32> %broadcast.splat935, %231
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 1200, i32 1200, i32 1200, i32 1200>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %237 = extractelement <4 x i64> %230, i32 0
  %238 = shl i64 %237, 3
  %239 = add nuw nsw i64 %238, %229
  %240 = getelementptr i8, i8* %call1, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %236, <4 x double>* %241, align 8, !alias.scope !89, !noalias !96
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %242 = icmp eq i64 %index.next927, %224
  br i1 %242, label %polly.loop_exit759, label %vector.body920, !llvm.loop !97

polly.loop_exit759:                               ; preds = %vector.body920, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond831.not = icmp eq i64 %polly.indvar754, %222
  br i1 %exitcond831.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %243 = add nuw nsw i64 %polly.indvar760, %225
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, %228
  %246 = add i32 %245, 1
  %247 = urem i32 %246, 1200
  %p_conv.i = sitofp i32 %247 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %248 = shl i64 %243, 3
  %249 = add nuw nsw i64 %248, %229
  %scevgep764 = getelementptr i8, i8* %call1, i64 %249
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !89, !noalias !96
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond827.not = icmp eq i64 %polly.indvar760, %226
  br i1 %exitcond827.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !98
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
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 100}
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
