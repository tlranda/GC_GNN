; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8210.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8210.c"
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
  %scevgep859 = getelementptr i8, i8* %call2, i64 %12
  %scevgep858 = getelementptr i8, i8* %call2, i64 %11
  %scevgep857 = getelementptr i8, i8* %call1, i64 %12
  %scevgep856 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep856, %scevgep859
  %bound1 = icmp ult i8* %scevgep858, %scevgep857
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
  br i1 %exitcond18.not.i, label %vector.ph863, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph863:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert870 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat871 = shufflevector <4 x i64> %broadcast.splatinsert870, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body862

vector.body862:                                   ; preds = %vector.body862, %vector.ph863
  %index864 = phi i64 [ 0, %vector.ph863 ], [ %index.next865, %vector.body862 ]
  %vec.ind868 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph863 ], [ %vec.ind.next869, %vector.body862 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind868, %broadcast.splat871
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv7.i, i64 %index864
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next865 = add i64 %index864, 4
  %vec.ind.next869 = add <4 x i64> %vec.ind868, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next865, 1200
  br i1 %40, label %for.inc41.i, label %vector.body862, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body862
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph863, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit743
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header489, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check926 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check926, label %for.body3.i46.preheader1003, label %vector.ph927

vector.ph927:                                     ; preds = %for.body3.i46.preheader
  %n.vec929 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph927
  %index930 = phi i64 [ 0, %vector.ph927 ], [ %index.next931, %vector.body925 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %index930
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next931 = add i64 %index930, 4
  %46 = icmp eq i64 %index.next931, %n.vec929
  br i1 %46, label %middle.block923, label %vector.body925, !llvm.loop !18

middle.block923:                                  ; preds = %vector.body925
  %cmp.n933 = icmp eq i64 %indvars.iv21.i, %n.vec929
  br i1 %cmp.n933, label %for.inc6.i, label %for.body3.i46.preheader1003

for.body3.i46.preheader1003:                      ; preds = %for.body3.i46.preheader, %middle.block923
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec929, %middle.block923 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1003, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1003 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block923, %for.cond1.preheader.i45
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
  %min.iters.check949 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check949, label %for.body3.i60.preheader1001, label %vector.ph950

vector.ph950:                                     ; preds = %for.body3.i60.preheader
  %n.vec952 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next954, %vector.body948 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %index953
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load957 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load957, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next954 = add i64 %index953, 4
  %57 = icmp eq i64 %index.next954, %n.vec952
  br i1 %57, label %middle.block946, label %vector.body948, !llvm.loop !54

middle.block946:                                  ; preds = %vector.body948
  %cmp.n956 = icmp eq i64 %indvars.iv21.i52, %n.vec952
  br i1 %cmp.n956, label %for.inc6.i63, label %for.body3.i60.preheader1001

for.body3.i60.preheader1001:                      ; preds = %for.body3.i60.preheader, %middle.block946
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec952, %middle.block946 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1001, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1001 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block946, %for.cond1.preheader.i54
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
  %min.iters.check975 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check975, label %for.body3.i99.preheader999, label %vector.ph976

vector.ph976:                                     ; preds = %for.body3.i99.preheader
  %n.vec978 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next980, %vector.body974 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %index979
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load983 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load983, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next980 = add i64 %index979, 4
  %68 = icmp eq i64 %index.next980, %n.vec978
  br i1 %68, label %middle.block972, label %vector.body974, !llvm.loop !56

middle.block972:                                  ; preds = %vector.body974
  %cmp.n982 = icmp eq i64 %indvars.iv21.i91, %n.vec978
  br i1 %cmp.n982, label %for.inc6.i102, label %for.body3.i99.preheader999

for.body3.i99.preheader999:                       ; preds = %for.body3.i99.preheader, %middle.block972
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec978, %middle.block972 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader999, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader999 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block972, %for.cond1.preheader.i93
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
  %indvar987 = phi i64 [ %indvar.next988, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar987, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check989 = icmp ult i64 %88, 4
  br i1 %min.iters.check989, label %polly.loop_header191.preheader, label %vector.ph990

vector.ph990:                                     ; preds = %polly.loop_header
  %n.vec992 = and i64 %88, -4
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next994, %vector.body986 ]
  %90 = shl nuw nsw i64 %index993, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load997 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load997, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next994 = add i64 %index993, 4
  %95 = icmp eq i64 %index.next994, %n.vec992
  br i1 %95, label %middle.block984, label %vector.body986, !llvm.loop !67

middle.block984:                                  ; preds = %vector.body986
  %cmp.n996 = icmp eq i64 %88, %n.vec992
  br i1 %cmp.n996, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block984
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec992, %middle.block984 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block984
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond781.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next988 = add i64 %indvar987, 1
  br i1 %exitcond781.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond780.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin775 = call i64 @llvm.smin.i64(i64 %indvars.iv773, i64 -872)
  %97 = shl nsw i64 %polly.indvar202, 7
  %98 = add nsw i64 %smin775, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next774 = add nsw i64 %indvars.iv773, -128
  %exitcond779.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond779.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %99 = shl nuw nsw i64 %polly.indvar208, 3
  %100 = shl nsw i64 %polly.indvar208, 6
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond778.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %99, %polly.loop_header205 ]
  %101 = shl nsw i64 %polly.indvar214, 3
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %102 = mul nsw i64 %polly.indvar214, 64000
  %103 = mul nsw i64 %polly.indvar214, 76800
  %indvars.iv.next771 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771, i64 63)
  %104 = or i64 %101, 1
  %105 = mul nuw nsw i64 %104, 8000
  %106 = mul nuw nsw i64 %104, 9600
  %indvars.iv.next771.1 = add nuw nsw i64 %indvars.iv.next771, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.1, i64 63)
  %107 = or i64 %101, 2
  %108 = mul nuw nsw i64 %107, 8000
  %109 = mul nuw nsw i64 %107, 9600
  %indvars.iv.next771.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.2, i64 63)
  %110 = or i64 %101, 3
  %111 = mul nuw nsw i64 %110, 8000
  %112 = mul nuw nsw i64 %110, 9600
  %indvars.iv.next771.3 = add nuw nsw i64 %indvars.iv.next771.2, 1
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.3, i64 63)
  %113 = or i64 %101, 4
  %114 = mul nuw nsw i64 %113, 8000
  %115 = mul nuw nsw i64 %113, 9600
  %indvars.iv.next771.4 = add nuw nsw i64 %indvars.iv.next771.2, 2
  %smin.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.4, i64 63)
  %116 = or i64 %101, 5
  %117 = mul nuw nsw i64 %116, 8000
  %118 = mul nuw nsw i64 %116, 9600
  %indvars.iv.next771.5 = add nuw nsw i64 %indvars.iv.next771.2, 3
  %smin.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.5, i64 63)
  %119 = or i64 %101, 6
  %120 = mul nuw nsw i64 %119, 8000
  %121 = mul nuw nsw i64 %119, 9600
  %indvars.iv.next771.6 = or i64 %indvars.iv, 7
  %smin.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.6, i64 63)
  %122 = or i64 %101, 7
  %123 = mul nuw nsw i64 %122, 8000
  %124 = mul nuw nsw i64 %122, 9600
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit231.7
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond777.not = icmp eq i64 %polly.indvar_next215, 150
  br i1 %exitcond777.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit231.7, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit231.7 ]
  %125 = add nuw nsw i64 %polly.indvar220, %97
  %126 = shl i64 %125, 3
  %127 = add nuw nsw i64 %102, %126
  %scevgep238 = getelementptr i8, i8* %call2, i64 %127
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %call1, i64 %127
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_header229
  %128 = add nuw nsw i64 %105, %126
  %scevgep238.1 = getelementptr i8, i8* %call2, i64 %128
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %call1, i64 %128
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.1

polly.loop_header229:                             ; preds = %polly.loop_header229, %polly.loop_header217
  %polly.indvar232 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next233, %polly.loop_header229 ]
  %129 = add nuw nsw i64 %polly.indvar232, %100
  %130 = mul nuw nsw i64 %129, 8000
  %131 = add nuw nsw i64 %130, %126
  %scevgep235 = getelementptr i8, i8* %call1, i64 %131
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %scevgep241 = getelementptr i8, i8* %call2, i64 %131
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_243
  %132 = shl i64 %129, 3
  %133 = add nuw nsw i64 %132, %103
  %scevgep247 = getelementptr i8, i8* %call, i64 %133
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
  %indvar961 = phi i64 [ %indvar.next962, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %134 = add i64 %indvar961, 1
  %135 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check963 = icmp ult i64 %134, 4
  br i1 %min.iters.check963, label %polly.loop_header342.preheader, label %vector.ph964

vector.ph964:                                     ; preds = %polly.loop_header336
  %n.vec966 = and i64 %134, -4
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next968, %vector.body960 ]
  %136 = shl nuw nsw i64 %index967, 3
  %137 = getelementptr i8, i8* %scevgep348, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load971 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !72, !noalias !74
  %139 = fmul fast <4 x double> %wide.load971, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !72, !noalias !74
  %index.next968 = add i64 %index967, 4
  %141 = icmp eq i64 %index.next968, %n.vec966
  br i1 %141, label %middle.block958, label %vector.body960, !llvm.loop !77

middle.block958:                                  ; preds = %vector.body960
  %cmp.n970 = icmp eq i64 %134, %n.vec966
  br i1 %cmp.n970, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block958
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec966, %middle.block958 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block958
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next962 = add i64 %indvar961, 1
  br i1 %exitcond797.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %142
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond796.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %smin791 = call i64 @llvm.smin.i64(i64 %indvars.iv789, i64 -872)
  %143 = shl nsw i64 %polly.indvar355, 7
  %144 = add nsw i64 %smin791, 999
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -128
  %exitcond795.not = icmp eq i64 %polly.indvar_next356, 8
  br i1 %exitcond795.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit366 ]
  %145 = shl nuw nsw i64 %polly.indvar361, 3
  %146 = shl nsw i64 %polly.indvar361, 6
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next362, 19
  br i1 %exitcond794.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ %145, %polly.loop_header358 ]
  %147 = shl nsw i64 %polly.indvar367, 3
  %smin786 = call i64 @llvm.smin.i64(i64 %indvars.iv782, i64 63)
  %148 = mul nsw i64 %polly.indvar367, 64000
  %149 = mul nsw i64 %polly.indvar367, 76800
  %indvars.iv.next785 = or i64 %indvars.iv782, 1
  %smin786.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785, i64 63)
  %150 = or i64 %147, 1
  %151 = mul nuw nsw i64 %150, 8000
  %152 = mul nuw nsw i64 %150, 9600
  %indvars.iv.next785.1 = add nuw nsw i64 %indvars.iv.next785, 1
  %smin786.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.1, i64 63)
  %153 = or i64 %147, 2
  %154 = mul nuw nsw i64 %153, 8000
  %155 = mul nuw nsw i64 %153, 9600
  %indvars.iv.next785.2 = or i64 %indvars.iv782, 3
  %smin786.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.2, i64 63)
  %156 = or i64 %147, 3
  %157 = mul nuw nsw i64 %156, 8000
  %158 = mul nuw nsw i64 %156, 9600
  %indvars.iv.next785.3 = add nuw nsw i64 %indvars.iv.next785.2, 1
  %smin786.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.3, i64 63)
  %159 = or i64 %147, 4
  %160 = mul nuw nsw i64 %159, 8000
  %161 = mul nuw nsw i64 %159, 9600
  %indvars.iv.next785.4 = add nuw nsw i64 %indvars.iv.next785.2, 2
  %smin786.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.4, i64 63)
  %162 = or i64 %147, 5
  %163 = mul nuw nsw i64 %162, 8000
  %164 = mul nuw nsw i64 %162, 9600
  %indvars.iv.next785.5 = add nuw nsw i64 %indvars.iv.next785.2, 3
  %smin786.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.5, i64 63)
  %165 = or i64 %147, 6
  %166 = mul nuw nsw i64 %165, 8000
  %167 = mul nuw nsw i64 %165, 9600
  %indvars.iv.next785.6 = or i64 %indvars.iv782, 7
  %smin786.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next785.6, i64 63)
  %168 = or i64 %147, 7
  %169 = mul nuw nsw i64 %168, 8000
  %170 = mul nuw nsw i64 %168, 9600
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit384.7
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 8
  %exitcond793.not = icmp eq i64 %polly.indvar_next368, 150
  br i1 %exitcond793.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit384.7, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_exit384.7 ]
  %171 = add nuw nsw i64 %polly.indvar373, %143
  %172 = shl i64 %171, 3
  %173 = add nuw nsw i64 %148, %172
  %scevgep391 = getelementptr i8, i8* %call2, i64 %173
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !76, !noalias !79
  %scevgep397 = getelementptr i8, i8* %call1, i64 %173
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %174 = add nuw nsw i64 %151, %172
  %scevgep391.1 = getelementptr i8, i8* %call2, i64 %174
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep397398.1 = bitcast i8* %scevgep397.1 to double*
  %_p_scalar_399.1 = load double, double* %scevgep397398.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.1

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header370
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %175 = add nuw nsw i64 %polly.indvar385, %146
  %176 = mul nuw nsw i64 %175, 8000
  %177 = add nuw nsw i64 %176, %172
  %scevgep388 = getelementptr i8, i8* %call1, i64 %177
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_393, %_p_scalar_390
  %scevgep394 = getelementptr i8, i8* %call2, i64 %177
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %178 = shl i64 %175, 3
  %179 = add nuw nsw i64 %178, %149
  %scevgep400 = getelementptr i8, i8* %call, i64 %179
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_402
  store double %p_add42.i79, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond787.not = icmp eq i64 %polly.indvar385, %smin786
  br i1 %exitcond787.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header489:                             ; preds = %init_array.exit, %polly.loop_exit497
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit497 ], [ 0, %init_array.exit ]
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_exit497 ], [ 1, %init_array.exit ]
  %180 = add i64 %indvar, 1
  %181 = mul nuw nsw i64 %polly.indvar492, 9600
  %scevgep501 = getelementptr i8, i8* %call, i64 %181
  %min.iters.check937 = icmp ult i64 %180, 4
  br i1 %min.iters.check937, label %polly.loop_header495.preheader, label %vector.ph938

vector.ph938:                                     ; preds = %polly.loop_header489
  %n.vec940 = and i64 %180, -4
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph938
  %index941 = phi i64 [ 0, %vector.ph938 ], [ %index.next942, %vector.body936 ]
  %182 = shl nuw nsw i64 %index941, 3
  %183 = getelementptr i8, i8* %scevgep501, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load945 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !81, !noalias !83
  %185 = fmul fast <4 x double> %wide.load945, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %186 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !81, !noalias !83
  %index.next942 = add i64 %index941, 4
  %187 = icmp eq i64 %index.next942, %n.vec940
  br i1 %187, label %middle.block934, label %vector.body936, !llvm.loop !86

middle.block934:                                  ; preds = %vector.body936
  %cmp.n944 = icmp eq i64 %180, %n.vec940
  br i1 %cmp.n944, label %polly.loop_exit497, label %polly.loop_header495.preheader

polly.loop_header495.preheader:                   ; preds = %polly.loop_header489, %middle.block934
  %polly.indvar498.ph = phi i64 [ 0, %polly.loop_header489 ], [ %n.vec940, %middle.block934 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block934
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next493, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond813.not, label %polly.loop_header505, label %polly.loop_header489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader, %polly.loop_header495
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_header495 ], [ %polly.indvar498.ph, %polly.loop_header495.preheader ]
  %188 = shl nuw nsw i64 %polly.indvar498, 3
  %scevgep502 = getelementptr i8, i8* %scevgep501, i64 %188
  %scevgep502503 = bitcast i8* %scevgep502 to double*
  %_p_scalar_504 = load double, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_504, 1.200000e+00
  store double %p_mul.i, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next499, %polly.indvar492
  br i1 %exitcond812.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !87

polly.loop_header505:                             ; preds = %polly.loop_exit497, %polly.loop_exit513
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit513 ], [ 0, %polly.loop_exit497 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_exit497 ]
  %smin807 = call i64 @llvm.smin.i64(i64 %indvars.iv805, i64 -872)
  %189 = shl nsw i64 %polly.indvar508, 7
  %190 = add nsw i64 %smin807, 999
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -128
  %exitcond811.not = icmp eq i64 %polly.indvar_next509, 8
  br i1 %exitcond811.not, label %kernel_syr2k.exit, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %polly.indvar514 = phi i64 [ 0, %polly.loop_header505 ], [ %polly.indvar_next515, %polly.loop_exit519 ]
  %191 = shl nuw nsw i64 %polly.indvar514, 3
  %192 = shl nsw i64 %polly.indvar514, 6
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next515, 19
  br i1 %exitcond810.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ %191, %polly.loop_header511 ]
  %193 = shl nsw i64 %polly.indvar520, 3
  %smin802 = call i64 @llvm.smin.i64(i64 %indvars.iv798, i64 63)
  %194 = mul nsw i64 %polly.indvar520, 64000
  %195 = mul nsw i64 %polly.indvar520, 76800
  %indvars.iv.next801 = or i64 %indvars.iv798, 1
  %smin802.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801, i64 63)
  %196 = or i64 %193, 1
  %197 = mul nuw nsw i64 %196, 8000
  %198 = mul nuw nsw i64 %196, 9600
  %indvars.iv.next801.1 = add nuw nsw i64 %indvars.iv.next801, 1
  %smin802.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.1, i64 63)
  %199 = or i64 %193, 2
  %200 = mul nuw nsw i64 %199, 8000
  %201 = mul nuw nsw i64 %199, 9600
  %indvars.iv.next801.2 = or i64 %indvars.iv798, 3
  %smin802.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.2, i64 63)
  %202 = or i64 %193, 3
  %203 = mul nuw nsw i64 %202, 8000
  %204 = mul nuw nsw i64 %202, 9600
  %indvars.iv.next801.3 = add nuw nsw i64 %indvars.iv.next801.2, 1
  %smin802.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.3, i64 63)
  %205 = or i64 %193, 4
  %206 = mul nuw nsw i64 %205, 8000
  %207 = mul nuw nsw i64 %205, 9600
  %indvars.iv.next801.4 = add nuw nsw i64 %indvars.iv.next801.2, 2
  %smin802.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.4, i64 63)
  %208 = or i64 %193, 5
  %209 = mul nuw nsw i64 %208, 8000
  %210 = mul nuw nsw i64 %208, 9600
  %indvars.iv.next801.5 = add nuw nsw i64 %indvars.iv.next801.2, 3
  %smin802.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.5, i64 63)
  %211 = or i64 %193, 6
  %212 = mul nuw nsw i64 %211, 8000
  %213 = mul nuw nsw i64 %211, 9600
  %indvars.iv.next801.6 = or i64 %indvars.iv798, 7
  %smin802.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next801.6, i64 63)
  %214 = or i64 %193, 7
  %215 = mul nuw nsw i64 %214, 8000
  %216 = mul nuw nsw i64 %214, 9600
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit537.7
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 8
  %exitcond809.not = icmp eq i64 %polly.indvar_next521, 150
  br i1 %exitcond809.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit537.7, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_exit537.7 ]
  %217 = add nuw nsw i64 %polly.indvar526, %189
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %194, %218
  %scevgep544 = getelementptr i8, i8* %call2, i64 %219
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !85, !noalias !88
  %scevgep550 = getelementptr i8, i8* %call1, i64 %219
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535
  %220 = add nuw nsw i64 %197, %218
  %scevgep544.1 = getelementptr i8, i8* %call2, i64 %220
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.1 = getelementptr i8, i8* %call1, i64 %220
  %scevgep550551.1 = bitcast i8* %scevgep550.1 to double*
  %_p_scalar_552.1 = load double, double* %scevgep550551.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.1

polly.loop_header535:                             ; preds = %polly.loop_header535, %polly.loop_header523
  %polly.indvar538 = phi i64 [ 0, %polly.loop_header523 ], [ %polly.indvar_next539, %polly.loop_header535 ]
  %221 = add nuw nsw i64 %polly.indvar538, %192
  %222 = mul nuw nsw i64 %221, 8000
  %223 = add nuw nsw i64 %222, %218
  %scevgep541 = getelementptr i8, i8* %call1, i64 %223
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_546, %_p_scalar_543
  %scevgep547 = getelementptr i8, i8* %call2, i64 %223
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_552, %_p_scalar_549
  %224 = shl i64 %221, 3
  %225 = add nuw nsw i64 %224, %195
  %scevgep553 = getelementptr i8, i8* %call, i64 %225
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_555
  store double %p_add42.i, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond803.not = icmp eq i64 %polly.indvar538, %smin802
  br i1 %exitcond803.not, label %polly.loop_exit537, label %polly.loop_header535

polly.loop_header682:                             ; preds = %entry, %polly.loop_exit690
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit690 ], [ 0, %entry ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %entry ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -1168)
  %226 = shl nsw i64 %polly.indvar685, 5
  %227 = add nsw i64 %smin840, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond843.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond843.not, label %polly.loop_header709, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %228 = mul nsw i64 %polly.indvar691, -32
  %smin875 = call i64 @llvm.smin.i64(i64 %228, i64 -1168)
  %229 = add nsw i64 %smin875, 1200
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -1168)
  %230 = shl nsw i64 %polly.indvar691, 5
  %231 = add nsw i64 %smin836, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond842.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond842.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %polly.indvar697 = phi i64 [ 0, %polly.loop_header688 ], [ %polly.indvar_next698, %polly.loop_exit702 ]
  %232 = add nuw nsw i64 %polly.indvar697, %226
  %233 = trunc i64 %232 to i32
  %234 = mul nuw nsw i64 %232, 9600
  %min.iters.check = icmp eq i64 %229, 0
  br i1 %min.iters.check, label %polly.loop_header700, label %vector.ph876

vector.ph876:                                     ; preds = %polly.loop_header694
  %broadcast.splatinsert883 = insertelement <4 x i64> poison, i64 %230, i32 0
  %broadcast.splat884 = shufflevector <4 x i64> %broadcast.splatinsert883, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body874

vector.body874:                                   ; preds = %vector.body874, %vector.ph876
  %index877 = phi i64 [ 0, %vector.ph876 ], [ %index.next878, %vector.body874 ]
  %vec.ind881 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph876 ], [ %vec.ind.next882, %vector.body874 ]
  %235 = add nuw nsw <4 x i64> %vec.ind881, %broadcast.splat884
  %236 = trunc <4 x i64> %235 to <4 x i32>
  %237 = mul <4 x i32> %broadcast.splat886, %236
  %238 = add <4 x i32> %237, <i32 3, i32 3, i32 3, i32 3>
  %239 = urem <4 x i32> %238, <i32 1200, i32 1200, i32 1200, i32 1200>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %242 = extractelement <4 x i64> %235, i32 0
  %243 = shl i64 %242, 3
  %244 = add nuw nsw i64 %243, %234
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %241, <4 x double>* %246, align 8, !alias.scope !90, !noalias !92
  %index.next878 = add i64 %index877, 4
  %vec.ind.next882 = add <4 x i64> %vec.ind881, <i64 4, i64 4, i64 4, i64 4>
  %247 = icmp eq i64 %index.next878, %229
  br i1 %247, label %polly.loop_exit702, label %vector.body874, !llvm.loop !95

polly.loop_exit702:                               ; preds = %vector.body874, %polly.loop_header700
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond841.not = icmp eq i64 %polly.indvar697, %227
  br i1 %exitcond841.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_header694, %polly.loop_header700
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_header700 ], [ 0, %polly.loop_header694 ]
  %248 = add nuw nsw i64 %polly.indvar703, %230
  %249 = trunc i64 %248 to i32
  %250 = mul i32 %249, %233
  %251 = add i32 %250, 3
  %252 = urem i32 %251, 1200
  %p_conv31.i = sitofp i32 %252 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %253 = shl i64 %248, 3
  %254 = add nuw nsw i64 %253, %234
  %scevgep706 = getelementptr i8, i8* %call, i64 %254
  %scevgep706707 = bitcast i8* %scevgep706 to double*
  store double %p_div33.i, double* %scevgep706707, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond837.not = icmp eq i64 %polly.indvar703, %231
  br i1 %exitcond837.not, label %polly.loop_exit702, label %polly.loop_header700, !llvm.loop !96

polly.loop_header709:                             ; preds = %polly.loop_exit690, %polly.loop_exit717
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %smin830 = call i64 @llvm.smin.i64(i64 %indvars.iv828, i64 -1168)
  %255 = shl nsw i64 %polly.indvar712, 5
  %256 = add nsw i64 %smin830, 1199
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next713, 38
  br i1 %exitcond833.not, label %polly.loop_header735, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %257 = mul nsw i64 %polly.indvar718, -32
  %smin890 = call i64 @llvm.smin.i64(i64 %257, i64 -968)
  %258 = add nsw i64 %smin890, 1000
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -968)
  %259 = shl nsw i64 %polly.indvar718, 5
  %260 = add nsw i64 %smin826, 999
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond832.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond832.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %polly.indvar724 = phi i64 [ 0, %polly.loop_header715 ], [ %polly.indvar_next725, %polly.loop_exit729 ]
  %261 = add nuw nsw i64 %polly.indvar724, %255
  %262 = trunc i64 %261 to i32
  %263 = mul nuw nsw i64 %261, 8000
  %min.iters.check891 = icmp eq i64 %258, 0
  br i1 %min.iters.check891, label %polly.loop_header727, label %vector.ph892

vector.ph892:                                     ; preds = %polly.loop_header721
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %259, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body889

vector.body889:                                   ; preds = %vector.body889, %vector.ph892
  %index895 = phi i64 [ 0, %vector.ph892 ], [ %index.next896, %vector.body889 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph892 ], [ %vec.ind.next900, %vector.body889 ]
  %264 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat904, %265
  %267 = add <4 x i32> %266, <i32 2, i32 2, i32 2, i32 2>
  %268 = urem <4 x i32> %267, <i32 1000, i32 1000, i32 1000, i32 1000>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add nuw nsw i64 %272, %263
  %274 = getelementptr i8, i8* %call2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !94, !noalias !97
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next896, %258
  br i1 %276, label %polly.loop_exit729, label %vector.body889, !llvm.loop !98

polly.loop_exit729:                               ; preds = %vector.body889, %polly.loop_header727
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond831.not = icmp eq i64 %polly.indvar724, %256
  br i1 %exitcond831.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_header721, %polly.loop_header727
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_header727 ], [ 0, %polly.loop_header721 ]
  %277 = add nuw nsw i64 %polly.indvar730, %259
  %278 = trunc i64 %277 to i32
  %279 = mul i32 %278, %262
  %280 = add i32 %279, 2
  %281 = urem i32 %280, 1000
  %p_conv10.i = sitofp i32 %281 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %282 = shl i64 %277, 3
  %283 = add nuw nsw i64 %282, %263
  %scevgep733 = getelementptr i8, i8* %call2, i64 %283
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  store double %p_div12.i, double* %scevgep733734, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond827.not = icmp eq i64 %polly.indvar730, %260
  br i1 %exitcond827.not, label %polly.loop_exit729, label %polly.loop_header727, !llvm.loop !99

polly.loop_header735:                             ; preds = %polly.loop_exit717, %polly.loop_exit743
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 -1168)
  %284 = shl nsw i64 %polly.indvar738, 5
  %285 = add nsw i64 %smin820, 1199
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -32
  %exitcond823.not = icmp eq i64 %polly.indvar_next739, 38
  br i1 %exitcond823.not, label %init_array.exit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %286 = mul nsw i64 %polly.indvar744, -32
  %smin908 = call i64 @llvm.smin.i64(i64 %286, i64 -968)
  %287 = add nsw i64 %smin908, 1000
  %smin816 = call i64 @llvm.smin.i64(i64 %indvars.iv814, i64 -968)
  %288 = shl nsw i64 %polly.indvar744, 5
  %289 = add nsw i64 %smin816, 999
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, -32
  %exitcond822.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond822.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %polly.indvar750 = phi i64 [ 0, %polly.loop_header741 ], [ %polly.indvar_next751, %polly.loop_exit755 ]
  %290 = add nuw nsw i64 %polly.indvar750, %284
  %291 = trunc i64 %290 to i32
  %292 = mul nuw nsw i64 %290, 8000
  %min.iters.check909 = icmp eq i64 %287, 0
  br i1 %min.iters.check909, label %polly.loop_header753, label %vector.ph910

vector.ph910:                                     ; preds = %polly.loop_header747
  %broadcast.splatinsert919 = insertelement <4 x i64> poison, i64 %288, i32 0
  %broadcast.splat920 = shufflevector <4 x i64> %broadcast.splatinsert919, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert921 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat922 = shufflevector <4 x i32> %broadcast.splatinsert921, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph910
  %index913 = phi i64 [ 0, %vector.ph910 ], [ %index.next914, %vector.body907 ]
  %vec.ind917 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph910 ], [ %vec.ind.next918, %vector.body907 ]
  %293 = add nuw nsw <4 x i64> %vec.ind917, %broadcast.splat920
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat922, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 1200, i32 1200, i32 1200, i32 1200>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add nuw nsw i64 %301, %292
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !93, !noalias !100
  %index.next914 = add i64 %index913, 4
  %vec.ind.next918 = add <4 x i64> %vec.ind917, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next914, %287
  br i1 %305, label %polly.loop_exit755, label %vector.body907, !llvm.loop !101

polly.loop_exit755:                               ; preds = %vector.body907, %polly.loop_header753
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond821.not = icmp eq i64 %polly.indvar750, %285
  br i1 %exitcond821.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_header747, %polly.loop_header753
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_header753 ], [ 0, %polly.loop_header747 ]
  %306 = add nuw nsw i64 %polly.indvar756, %288
  %307 = trunc i64 %306 to i32
  %308 = mul i32 %307, %291
  %309 = add i32 %308, 1
  %310 = urem i32 %309, 1200
  %p_conv.i = sitofp i32 %310 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %311 = shl i64 %306, 3
  %312 = add nuw nsw i64 %311, %292
  %scevgep760 = getelementptr i8, i8* %call1, i64 %312
  %scevgep760761 = bitcast i8* %scevgep760 to double*
  store double %p_div.i, double* %scevgep760761, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond817.not = icmp eq i64 %polly.indvar756, %289
  br i1 %exitcond817.not, label %polly.loop_exit755, label %polly.loop_header753, !llvm.loop !102

polly.loop_header229.1:                           ; preds = %polly.loop_header229.1, %polly.loop_exit231
  %polly.indvar232.1 = phi i64 [ 0, %polly.loop_exit231 ], [ %polly.indvar_next233.1, %polly.loop_header229.1 ]
  %313 = add nuw nsw i64 %polly.indvar232.1, %100
  %314 = mul nuw nsw i64 %313, 8000
  %315 = add nuw nsw i64 %314, %126
  %scevgep235.1 = getelementptr i8, i8* %call1, i64 %315
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %scevgep241.1 = getelementptr i8, i8* %call2, i64 %315
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_243.1
  %316 = shl i64 %313, 3
  %317 = add nuw nsw i64 %316, %106
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %317
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
  %318 = add nuw nsw i64 %108, %126
  %scevgep238.2 = getelementptr i8, i8* %call2, i64 %318
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2 = getelementptr i8, i8* %call1, i64 %318
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.2

polly.loop_header229.2:                           ; preds = %polly.loop_header229.2, %polly.loop_exit231.1
  %polly.indvar232.2 = phi i64 [ 0, %polly.loop_exit231.1 ], [ %polly.indvar_next233.2, %polly.loop_header229.2 ]
  %319 = add nuw nsw i64 %polly.indvar232.2, %100
  %320 = mul nuw nsw i64 %319, 8000
  %321 = add nuw nsw i64 %320, %126
  %scevgep235.2 = getelementptr i8, i8* %call1, i64 %321
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %scevgep241.2 = getelementptr i8, i8* %call2, i64 %321
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_243.2
  %322 = shl i64 %319, 3
  %323 = add nuw nsw i64 %322, %109
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %323
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
  %324 = add nuw nsw i64 %111, %126
  %scevgep238.3 = getelementptr i8, i8* %call2, i64 %324
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %scevgep244.3 = getelementptr i8, i8* %call1, i64 %324
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.3

polly.loop_header229.3:                           ; preds = %polly.loop_header229.3, %polly.loop_exit231.2
  %polly.indvar232.3 = phi i64 [ 0, %polly.loop_exit231.2 ], [ %polly.indvar_next233.3, %polly.loop_header229.3 ]
  %325 = add nuw nsw i64 %polly.indvar232.3, %100
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %126
  %scevgep235.3 = getelementptr i8, i8* %call1, i64 %327
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %scevgep241.3 = getelementptr i8, i8* %call2, i64 %327
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_243.3
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %112
  %scevgep247.3 = getelementptr i8, i8* %call, i64 %329
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
  %330 = add nuw nsw i64 %114, %126
  %scevgep238.4 = getelementptr i8, i8* %call2, i64 %330
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !66, !noalias !70
  %scevgep244.4 = getelementptr i8, i8* %call1, i64 %330
  %scevgep244245.4 = bitcast i8* %scevgep244.4 to double*
  %_p_scalar_246.4 = load double, double* %scevgep244245.4, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.4

polly.loop_header229.4:                           ; preds = %polly.loop_header229.4, %polly.loop_exit231.3
  %polly.indvar232.4 = phi i64 [ 0, %polly.loop_exit231.3 ], [ %polly.indvar_next233.4, %polly.loop_header229.4 ]
  %331 = add nuw nsw i64 %polly.indvar232.4, %100
  %332 = mul nuw nsw i64 %331, 8000
  %333 = add nuw nsw i64 %332, %126
  %scevgep235.4 = getelementptr i8, i8* %call1, i64 %333
  %scevgep235236.4 = bitcast i8* %scevgep235.4 to double*
  %_p_scalar_237.4 = load double, double* %scevgep235236.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_240.4, %_p_scalar_237.4
  %scevgep241.4 = getelementptr i8, i8* %call2, i64 %333
  %scevgep241242.4 = bitcast i8* %scevgep241.4 to double*
  %_p_scalar_243.4 = load double, double* %scevgep241242.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_246.4, %_p_scalar_243.4
  %334 = shl i64 %331, 3
  %335 = add nuw nsw i64 %334, %115
  %scevgep247.4 = getelementptr i8, i8* %call, i64 %335
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
  %336 = add nuw nsw i64 %117, %126
  %scevgep238.5 = getelementptr i8, i8* %call2, i64 %336
  %scevgep238239.5 = bitcast i8* %scevgep238.5 to double*
  %_p_scalar_240.5 = load double, double* %scevgep238239.5, align 8, !alias.scope !66, !noalias !70
  %scevgep244.5 = getelementptr i8, i8* %call1, i64 %336
  %scevgep244245.5 = bitcast i8* %scevgep244.5 to double*
  %_p_scalar_246.5 = load double, double* %scevgep244245.5, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.5

polly.loop_header229.5:                           ; preds = %polly.loop_header229.5, %polly.loop_exit231.4
  %polly.indvar232.5 = phi i64 [ 0, %polly.loop_exit231.4 ], [ %polly.indvar_next233.5, %polly.loop_header229.5 ]
  %337 = add nuw nsw i64 %polly.indvar232.5, %100
  %338 = mul nuw nsw i64 %337, 8000
  %339 = add nuw nsw i64 %338, %126
  %scevgep235.5 = getelementptr i8, i8* %call1, i64 %339
  %scevgep235236.5 = bitcast i8* %scevgep235.5 to double*
  %_p_scalar_237.5 = load double, double* %scevgep235236.5, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.5 = fmul fast double %_p_scalar_240.5, %_p_scalar_237.5
  %scevgep241.5 = getelementptr i8, i8* %call2, i64 %339
  %scevgep241242.5 = bitcast i8* %scevgep241.5 to double*
  %_p_scalar_243.5 = load double, double* %scevgep241242.5, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.5 = fmul fast double %_p_scalar_246.5, %_p_scalar_243.5
  %340 = shl i64 %337, 3
  %341 = add nuw nsw i64 %340, %118
  %scevgep247.5 = getelementptr i8, i8* %call, i64 %341
  %scevgep247248.5 = bitcast i8* %scevgep247.5 to double*
  %_p_scalar_249.5 = load double, double* %scevgep247248.5, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_249.5
  store double %p_add42.i118.5, double* %scevgep247248.5, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.5 = add nuw nsw i64 %polly.indvar232.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar232.5, %smin.5
  br i1 %exitcond.5.not, label %polly.loop_exit231.5, label %polly.loop_header229.5

polly.loop_exit231.5:                             ; preds = %polly.loop_header229.5
  %342 = add nuw nsw i64 %120, %126
  %scevgep238.6 = getelementptr i8, i8* %call2, i64 %342
  %scevgep238239.6 = bitcast i8* %scevgep238.6 to double*
  %_p_scalar_240.6 = load double, double* %scevgep238239.6, align 8, !alias.scope !66, !noalias !70
  %scevgep244.6 = getelementptr i8, i8* %call1, i64 %342
  %scevgep244245.6 = bitcast i8* %scevgep244.6 to double*
  %_p_scalar_246.6 = load double, double* %scevgep244245.6, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.6

polly.loop_header229.6:                           ; preds = %polly.loop_header229.6, %polly.loop_exit231.5
  %polly.indvar232.6 = phi i64 [ 0, %polly.loop_exit231.5 ], [ %polly.indvar_next233.6, %polly.loop_header229.6 ]
  %343 = add nuw nsw i64 %polly.indvar232.6, %100
  %344 = mul nuw nsw i64 %343, 8000
  %345 = add nuw nsw i64 %344, %126
  %scevgep235.6 = getelementptr i8, i8* %call1, i64 %345
  %scevgep235236.6 = bitcast i8* %scevgep235.6 to double*
  %_p_scalar_237.6 = load double, double* %scevgep235236.6, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.6 = fmul fast double %_p_scalar_240.6, %_p_scalar_237.6
  %scevgep241.6 = getelementptr i8, i8* %call2, i64 %345
  %scevgep241242.6 = bitcast i8* %scevgep241.6 to double*
  %_p_scalar_243.6 = load double, double* %scevgep241242.6, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.6 = fmul fast double %_p_scalar_246.6, %_p_scalar_243.6
  %346 = shl i64 %343, 3
  %347 = add nuw nsw i64 %346, %121
  %scevgep247.6 = getelementptr i8, i8* %call, i64 %347
  %scevgep247248.6 = bitcast i8* %scevgep247.6 to double*
  %_p_scalar_249.6 = load double, double* %scevgep247248.6, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_249.6
  store double %p_add42.i118.6, double* %scevgep247248.6, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.6 = add nuw nsw i64 %polly.indvar232.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar232.6, %smin.6
  br i1 %exitcond.6.not, label %polly.loop_exit231.6, label %polly.loop_header229.6

polly.loop_exit231.6:                             ; preds = %polly.loop_header229.6
  %348 = add nuw nsw i64 %123, %126
  %scevgep238.7 = getelementptr i8, i8* %call2, i64 %348
  %scevgep238239.7 = bitcast i8* %scevgep238.7 to double*
  %_p_scalar_240.7 = load double, double* %scevgep238239.7, align 8, !alias.scope !66, !noalias !70
  %scevgep244.7 = getelementptr i8, i8* %call1, i64 %348
  %scevgep244245.7 = bitcast i8* %scevgep244.7 to double*
  %_p_scalar_246.7 = load double, double* %scevgep244245.7, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.7

polly.loop_header229.7:                           ; preds = %polly.loop_header229.7, %polly.loop_exit231.6
  %polly.indvar232.7 = phi i64 [ 0, %polly.loop_exit231.6 ], [ %polly.indvar_next233.7, %polly.loop_header229.7 ]
  %349 = add nuw nsw i64 %polly.indvar232.7, %100
  %350 = mul nuw nsw i64 %349, 8000
  %351 = add nuw nsw i64 %350, %126
  %scevgep235.7 = getelementptr i8, i8* %call1, i64 %351
  %scevgep235236.7 = bitcast i8* %scevgep235.7 to double*
  %_p_scalar_237.7 = load double, double* %scevgep235236.7, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.7 = fmul fast double %_p_scalar_240.7, %_p_scalar_237.7
  %scevgep241.7 = getelementptr i8, i8* %call2, i64 %351
  %scevgep241242.7 = bitcast i8* %scevgep241.7 to double*
  %_p_scalar_243.7 = load double, double* %scevgep241242.7, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.7 = fmul fast double %_p_scalar_246.7, %_p_scalar_243.7
  %352 = shl i64 %349, 3
  %353 = add nuw nsw i64 %352, %124
  %scevgep247.7 = getelementptr i8, i8* %call, i64 %353
  %scevgep247248.7 = bitcast i8* %scevgep247.7 to double*
  %_p_scalar_249.7 = load double, double* %scevgep247248.7, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_249.7
  store double %p_add42.i118.7, double* %scevgep247248.7, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.7 = add nuw nsw i64 %polly.indvar232.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar232.7, %smin.7
  br i1 %exitcond.7.not, label %polly.loop_exit231.7, label %polly.loop_header229.7

polly.loop_exit231.7:                             ; preds = %polly.loop_header229.7
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond776.not = icmp eq i64 %polly.indvar220, %98
  br i1 %exitcond776.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header382.1:                           ; preds = %polly.loop_header382.1, %polly.loop_exit384
  %polly.indvar385.1 = phi i64 [ 0, %polly.loop_exit384 ], [ %polly.indvar_next386.1, %polly.loop_header382.1 ]
  %354 = add nuw nsw i64 %polly.indvar385.1, %146
  %355 = mul nuw nsw i64 %354, 8000
  %356 = add nuw nsw i64 %355, %172
  %scevgep388.1 = getelementptr i8, i8* %call1, i64 %356
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_393.1, %_p_scalar_390.1
  %scevgep394.1 = getelementptr i8, i8* %call2, i64 %356
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_399.1, %_p_scalar_396.1
  %357 = shl i64 %354, 3
  %358 = add nuw nsw i64 %357, %152
  %scevgep400.1 = getelementptr i8, i8* %call, i64 %358
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_402.1
  store double %p_add42.i79.1, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.1 = add nuw nsw i64 %polly.indvar385.1, 1
  %exitcond787.1.not = icmp eq i64 %polly.indvar385.1, %smin786.1
  br i1 %exitcond787.1.not, label %polly.loop_exit384.1, label %polly.loop_header382.1

polly.loop_exit384.1:                             ; preds = %polly.loop_header382.1
  %359 = add nuw nsw i64 %154, %172
  %scevgep391.2 = getelementptr i8, i8* %call2, i64 %359
  %scevgep391392.2 = bitcast i8* %scevgep391.2 to double*
  %_p_scalar_393.2 = load double, double* %scevgep391392.2, align 8, !alias.scope !76, !noalias !79
  %scevgep397.2 = getelementptr i8, i8* %call1, i64 %359
  %scevgep397398.2 = bitcast i8* %scevgep397.2 to double*
  %_p_scalar_399.2 = load double, double* %scevgep397398.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.2

polly.loop_header382.2:                           ; preds = %polly.loop_header382.2, %polly.loop_exit384.1
  %polly.indvar385.2 = phi i64 [ 0, %polly.loop_exit384.1 ], [ %polly.indvar_next386.2, %polly.loop_header382.2 ]
  %360 = add nuw nsw i64 %polly.indvar385.2, %146
  %361 = mul nuw nsw i64 %360, 8000
  %362 = add nuw nsw i64 %361, %172
  %scevgep388.2 = getelementptr i8, i8* %call1, i64 %362
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_393.2, %_p_scalar_390.2
  %scevgep394.2 = getelementptr i8, i8* %call2, i64 %362
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_399.2, %_p_scalar_396.2
  %363 = shl i64 %360, 3
  %364 = add nuw nsw i64 %363, %155
  %scevgep400.2 = getelementptr i8, i8* %call, i64 %364
  %scevgep400401.2 = bitcast i8* %scevgep400.2 to double*
  %_p_scalar_402.2 = load double, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_402.2
  store double %p_add42.i79.2, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.2 = add nuw nsw i64 %polly.indvar385.2, 1
  %exitcond787.2.not = icmp eq i64 %polly.indvar385.2, %smin786.2
  br i1 %exitcond787.2.not, label %polly.loop_exit384.2, label %polly.loop_header382.2

polly.loop_exit384.2:                             ; preds = %polly.loop_header382.2
  %365 = add nuw nsw i64 %157, %172
  %scevgep391.3 = getelementptr i8, i8* %call2, i64 %365
  %scevgep391392.3 = bitcast i8* %scevgep391.3 to double*
  %_p_scalar_393.3 = load double, double* %scevgep391392.3, align 8, !alias.scope !76, !noalias !79
  %scevgep397.3 = getelementptr i8, i8* %call1, i64 %365
  %scevgep397398.3 = bitcast i8* %scevgep397.3 to double*
  %_p_scalar_399.3 = load double, double* %scevgep397398.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.3

polly.loop_header382.3:                           ; preds = %polly.loop_header382.3, %polly.loop_exit384.2
  %polly.indvar385.3 = phi i64 [ 0, %polly.loop_exit384.2 ], [ %polly.indvar_next386.3, %polly.loop_header382.3 ]
  %366 = add nuw nsw i64 %polly.indvar385.3, %146
  %367 = mul nuw nsw i64 %366, 8000
  %368 = add nuw nsw i64 %367, %172
  %scevgep388.3 = getelementptr i8, i8* %call1, i64 %368
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_393.3, %_p_scalar_390.3
  %scevgep394.3 = getelementptr i8, i8* %call2, i64 %368
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_399.3, %_p_scalar_396.3
  %369 = shl i64 %366, 3
  %370 = add nuw nsw i64 %369, %158
  %scevgep400.3 = getelementptr i8, i8* %call, i64 %370
  %scevgep400401.3 = bitcast i8* %scevgep400.3 to double*
  %_p_scalar_402.3 = load double, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_402.3
  store double %p_add42.i79.3, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.3 = add nuw nsw i64 %polly.indvar385.3, 1
  %exitcond787.3.not = icmp eq i64 %polly.indvar385.3, %smin786.3
  br i1 %exitcond787.3.not, label %polly.loop_exit384.3, label %polly.loop_header382.3

polly.loop_exit384.3:                             ; preds = %polly.loop_header382.3
  %371 = add nuw nsw i64 %160, %172
  %scevgep391.4 = getelementptr i8, i8* %call2, i64 %371
  %scevgep391392.4 = bitcast i8* %scevgep391.4 to double*
  %_p_scalar_393.4 = load double, double* %scevgep391392.4, align 8, !alias.scope !76, !noalias !79
  %scevgep397.4 = getelementptr i8, i8* %call1, i64 %371
  %scevgep397398.4 = bitcast i8* %scevgep397.4 to double*
  %_p_scalar_399.4 = load double, double* %scevgep397398.4, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.4

polly.loop_header382.4:                           ; preds = %polly.loop_header382.4, %polly.loop_exit384.3
  %polly.indvar385.4 = phi i64 [ 0, %polly.loop_exit384.3 ], [ %polly.indvar_next386.4, %polly.loop_header382.4 ]
  %372 = add nuw nsw i64 %polly.indvar385.4, %146
  %373 = mul nuw nsw i64 %372, 8000
  %374 = add nuw nsw i64 %373, %172
  %scevgep388.4 = getelementptr i8, i8* %call1, i64 %374
  %scevgep388389.4 = bitcast i8* %scevgep388.4 to double*
  %_p_scalar_390.4 = load double, double* %scevgep388389.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_393.4, %_p_scalar_390.4
  %scevgep394.4 = getelementptr i8, i8* %call2, i64 %374
  %scevgep394395.4 = bitcast i8* %scevgep394.4 to double*
  %_p_scalar_396.4 = load double, double* %scevgep394395.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_399.4, %_p_scalar_396.4
  %375 = shl i64 %372, 3
  %376 = add nuw nsw i64 %375, %161
  %scevgep400.4 = getelementptr i8, i8* %call, i64 %376
  %scevgep400401.4 = bitcast i8* %scevgep400.4 to double*
  %_p_scalar_402.4 = load double, double* %scevgep400401.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_402.4
  store double %p_add42.i79.4, double* %scevgep400401.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.4 = add nuw nsw i64 %polly.indvar385.4, 1
  %exitcond787.4.not = icmp eq i64 %polly.indvar385.4, %smin786.4
  br i1 %exitcond787.4.not, label %polly.loop_exit384.4, label %polly.loop_header382.4

polly.loop_exit384.4:                             ; preds = %polly.loop_header382.4
  %377 = add nuw nsw i64 %163, %172
  %scevgep391.5 = getelementptr i8, i8* %call2, i64 %377
  %scevgep391392.5 = bitcast i8* %scevgep391.5 to double*
  %_p_scalar_393.5 = load double, double* %scevgep391392.5, align 8, !alias.scope !76, !noalias !79
  %scevgep397.5 = getelementptr i8, i8* %call1, i64 %377
  %scevgep397398.5 = bitcast i8* %scevgep397.5 to double*
  %_p_scalar_399.5 = load double, double* %scevgep397398.5, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.5

polly.loop_header382.5:                           ; preds = %polly.loop_header382.5, %polly.loop_exit384.4
  %polly.indvar385.5 = phi i64 [ 0, %polly.loop_exit384.4 ], [ %polly.indvar_next386.5, %polly.loop_header382.5 ]
  %378 = add nuw nsw i64 %polly.indvar385.5, %146
  %379 = mul nuw nsw i64 %378, 8000
  %380 = add nuw nsw i64 %379, %172
  %scevgep388.5 = getelementptr i8, i8* %call1, i64 %380
  %scevgep388389.5 = bitcast i8* %scevgep388.5 to double*
  %_p_scalar_390.5 = load double, double* %scevgep388389.5, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.5 = fmul fast double %_p_scalar_393.5, %_p_scalar_390.5
  %scevgep394.5 = getelementptr i8, i8* %call2, i64 %380
  %scevgep394395.5 = bitcast i8* %scevgep394.5 to double*
  %_p_scalar_396.5 = load double, double* %scevgep394395.5, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.5 = fmul fast double %_p_scalar_399.5, %_p_scalar_396.5
  %381 = shl i64 %378, 3
  %382 = add nuw nsw i64 %381, %164
  %scevgep400.5 = getelementptr i8, i8* %call, i64 %382
  %scevgep400401.5 = bitcast i8* %scevgep400.5 to double*
  %_p_scalar_402.5 = load double, double* %scevgep400401.5, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_402.5
  store double %p_add42.i79.5, double* %scevgep400401.5, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.5 = add nuw nsw i64 %polly.indvar385.5, 1
  %exitcond787.5.not = icmp eq i64 %polly.indvar385.5, %smin786.5
  br i1 %exitcond787.5.not, label %polly.loop_exit384.5, label %polly.loop_header382.5

polly.loop_exit384.5:                             ; preds = %polly.loop_header382.5
  %383 = add nuw nsw i64 %166, %172
  %scevgep391.6 = getelementptr i8, i8* %call2, i64 %383
  %scevgep391392.6 = bitcast i8* %scevgep391.6 to double*
  %_p_scalar_393.6 = load double, double* %scevgep391392.6, align 8, !alias.scope !76, !noalias !79
  %scevgep397.6 = getelementptr i8, i8* %call1, i64 %383
  %scevgep397398.6 = bitcast i8* %scevgep397.6 to double*
  %_p_scalar_399.6 = load double, double* %scevgep397398.6, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.6

polly.loop_header382.6:                           ; preds = %polly.loop_header382.6, %polly.loop_exit384.5
  %polly.indvar385.6 = phi i64 [ 0, %polly.loop_exit384.5 ], [ %polly.indvar_next386.6, %polly.loop_header382.6 ]
  %384 = add nuw nsw i64 %polly.indvar385.6, %146
  %385 = mul nuw nsw i64 %384, 8000
  %386 = add nuw nsw i64 %385, %172
  %scevgep388.6 = getelementptr i8, i8* %call1, i64 %386
  %scevgep388389.6 = bitcast i8* %scevgep388.6 to double*
  %_p_scalar_390.6 = load double, double* %scevgep388389.6, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.6 = fmul fast double %_p_scalar_393.6, %_p_scalar_390.6
  %scevgep394.6 = getelementptr i8, i8* %call2, i64 %386
  %scevgep394395.6 = bitcast i8* %scevgep394.6 to double*
  %_p_scalar_396.6 = load double, double* %scevgep394395.6, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.6 = fmul fast double %_p_scalar_399.6, %_p_scalar_396.6
  %387 = shl i64 %384, 3
  %388 = add nuw nsw i64 %387, %167
  %scevgep400.6 = getelementptr i8, i8* %call, i64 %388
  %scevgep400401.6 = bitcast i8* %scevgep400.6 to double*
  %_p_scalar_402.6 = load double, double* %scevgep400401.6, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_402.6
  store double %p_add42.i79.6, double* %scevgep400401.6, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.6 = add nuw nsw i64 %polly.indvar385.6, 1
  %exitcond787.6.not = icmp eq i64 %polly.indvar385.6, %smin786.6
  br i1 %exitcond787.6.not, label %polly.loop_exit384.6, label %polly.loop_header382.6

polly.loop_exit384.6:                             ; preds = %polly.loop_header382.6
  %389 = add nuw nsw i64 %169, %172
  %scevgep391.7 = getelementptr i8, i8* %call2, i64 %389
  %scevgep391392.7 = bitcast i8* %scevgep391.7 to double*
  %_p_scalar_393.7 = load double, double* %scevgep391392.7, align 8, !alias.scope !76, !noalias !79
  %scevgep397.7 = getelementptr i8, i8* %call1, i64 %389
  %scevgep397398.7 = bitcast i8* %scevgep397.7 to double*
  %_p_scalar_399.7 = load double, double* %scevgep397398.7, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.7

polly.loop_header382.7:                           ; preds = %polly.loop_header382.7, %polly.loop_exit384.6
  %polly.indvar385.7 = phi i64 [ 0, %polly.loop_exit384.6 ], [ %polly.indvar_next386.7, %polly.loop_header382.7 ]
  %390 = add nuw nsw i64 %polly.indvar385.7, %146
  %391 = mul nuw nsw i64 %390, 8000
  %392 = add nuw nsw i64 %391, %172
  %scevgep388.7 = getelementptr i8, i8* %call1, i64 %392
  %scevgep388389.7 = bitcast i8* %scevgep388.7 to double*
  %_p_scalar_390.7 = load double, double* %scevgep388389.7, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.7 = fmul fast double %_p_scalar_393.7, %_p_scalar_390.7
  %scevgep394.7 = getelementptr i8, i8* %call2, i64 %392
  %scevgep394395.7 = bitcast i8* %scevgep394.7 to double*
  %_p_scalar_396.7 = load double, double* %scevgep394395.7, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.7 = fmul fast double %_p_scalar_399.7, %_p_scalar_396.7
  %393 = shl i64 %390, 3
  %394 = add nuw nsw i64 %393, %170
  %scevgep400.7 = getelementptr i8, i8* %call, i64 %394
  %scevgep400401.7 = bitcast i8* %scevgep400.7 to double*
  %_p_scalar_402.7 = load double, double* %scevgep400401.7, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_402.7
  store double %p_add42.i79.7, double* %scevgep400401.7, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.7 = add nuw nsw i64 %polly.indvar385.7, 1
  %exitcond787.7.not = icmp eq i64 %polly.indvar385.7, %smin786.7
  br i1 %exitcond787.7.not, label %polly.loop_exit384.7, label %polly.loop_header382.7

polly.loop_exit384.7:                             ; preds = %polly.loop_header382.7
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond792.not = icmp eq i64 %polly.indvar373, %144
  br i1 %exitcond792.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header535.1:                           ; preds = %polly.loop_header535.1, %polly.loop_exit537
  %polly.indvar538.1 = phi i64 [ 0, %polly.loop_exit537 ], [ %polly.indvar_next539.1, %polly.loop_header535.1 ]
  %395 = add nuw nsw i64 %polly.indvar538.1, %192
  %396 = mul nuw nsw i64 %395, 8000
  %397 = add nuw nsw i64 %396, %218
  %scevgep541.1 = getelementptr i8, i8* %call1, i64 %397
  %scevgep541542.1 = bitcast i8* %scevgep541.1 to double*
  %_p_scalar_543.1 = load double, double* %scevgep541542.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_543.1
  %scevgep547.1 = getelementptr i8, i8* %call2, i64 %397
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_552.1, %_p_scalar_549.1
  %398 = shl i64 %395, 3
  %399 = add nuw nsw i64 %398, %198
  %scevgep553.1 = getelementptr i8, i8* %call, i64 %399
  %scevgep553554.1 = bitcast i8* %scevgep553.1 to double*
  %_p_scalar_555.1 = load double, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_555.1
  store double %p_add42.i.1, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1 = add nuw nsw i64 %polly.indvar538.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar538.1, %smin802.1
  br i1 %exitcond803.1.not, label %polly.loop_exit537.1, label %polly.loop_header535.1

polly.loop_exit537.1:                             ; preds = %polly.loop_header535.1
  %400 = add nuw nsw i64 %200, %218
  %scevgep544.2 = getelementptr i8, i8* %call2, i64 %400
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !85, !noalias !88
  %scevgep550.2 = getelementptr i8, i8* %call1, i64 %400
  %scevgep550551.2 = bitcast i8* %scevgep550.2 to double*
  %_p_scalar_552.2 = load double, double* %scevgep550551.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.2

polly.loop_header535.2:                           ; preds = %polly.loop_header535.2, %polly.loop_exit537.1
  %polly.indvar538.2 = phi i64 [ 0, %polly.loop_exit537.1 ], [ %polly.indvar_next539.2, %polly.loop_header535.2 ]
  %401 = add nuw nsw i64 %polly.indvar538.2, %192
  %402 = mul nuw nsw i64 %401, 8000
  %403 = add nuw nsw i64 %402, %218
  %scevgep541.2 = getelementptr i8, i8* %call1, i64 %403
  %scevgep541542.2 = bitcast i8* %scevgep541.2 to double*
  %_p_scalar_543.2 = load double, double* %scevgep541542.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_543.2
  %scevgep547.2 = getelementptr i8, i8* %call2, i64 %403
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_552.2, %_p_scalar_549.2
  %404 = shl i64 %401, 3
  %405 = add nuw nsw i64 %404, %201
  %scevgep553.2 = getelementptr i8, i8* %call, i64 %405
  %scevgep553554.2 = bitcast i8* %scevgep553.2 to double*
  %_p_scalar_555.2 = load double, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_555.2
  store double %p_add42.i.2, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.2 = add nuw nsw i64 %polly.indvar538.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar538.2, %smin802.2
  br i1 %exitcond803.2.not, label %polly.loop_exit537.2, label %polly.loop_header535.2

polly.loop_exit537.2:                             ; preds = %polly.loop_header535.2
  %406 = add nuw nsw i64 %203, %218
  %scevgep544.3 = getelementptr i8, i8* %call2, i64 %406
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !85, !noalias !88
  %scevgep550.3 = getelementptr i8, i8* %call1, i64 %406
  %scevgep550551.3 = bitcast i8* %scevgep550.3 to double*
  %_p_scalar_552.3 = load double, double* %scevgep550551.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.3

polly.loop_header535.3:                           ; preds = %polly.loop_header535.3, %polly.loop_exit537.2
  %polly.indvar538.3 = phi i64 [ 0, %polly.loop_exit537.2 ], [ %polly.indvar_next539.3, %polly.loop_header535.3 ]
  %407 = add nuw nsw i64 %polly.indvar538.3, %192
  %408 = mul nuw nsw i64 %407, 8000
  %409 = add nuw nsw i64 %408, %218
  %scevgep541.3 = getelementptr i8, i8* %call1, i64 %409
  %scevgep541542.3 = bitcast i8* %scevgep541.3 to double*
  %_p_scalar_543.3 = load double, double* %scevgep541542.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_543.3
  %scevgep547.3 = getelementptr i8, i8* %call2, i64 %409
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_552.3, %_p_scalar_549.3
  %410 = shl i64 %407, 3
  %411 = add nuw nsw i64 %410, %204
  %scevgep553.3 = getelementptr i8, i8* %call, i64 %411
  %scevgep553554.3 = bitcast i8* %scevgep553.3 to double*
  %_p_scalar_555.3 = load double, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_555.3
  store double %p_add42.i.3, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.3 = add nuw nsw i64 %polly.indvar538.3, 1
  %exitcond803.3.not = icmp eq i64 %polly.indvar538.3, %smin802.3
  br i1 %exitcond803.3.not, label %polly.loop_exit537.3, label %polly.loop_header535.3

polly.loop_exit537.3:                             ; preds = %polly.loop_header535.3
  %412 = add nuw nsw i64 %206, %218
  %scevgep544.4 = getelementptr i8, i8* %call2, i64 %412
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !85, !noalias !88
  %scevgep550.4 = getelementptr i8, i8* %call1, i64 %412
  %scevgep550551.4 = bitcast i8* %scevgep550.4 to double*
  %_p_scalar_552.4 = load double, double* %scevgep550551.4, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.4

polly.loop_header535.4:                           ; preds = %polly.loop_header535.4, %polly.loop_exit537.3
  %polly.indvar538.4 = phi i64 [ 0, %polly.loop_exit537.3 ], [ %polly.indvar_next539.4, %polly.loop_header535.4 ]
  %413 = add nuw nsw i64 %polly.indvar538.4, %192
  %414 = mul nuw nsw i64 %413, 8000
  %415 = add nuw nsw i64 %414, %218
  %scevgep541.4 = getelementptr i8, i8* %call1, i64 %415
  %scevgep541542.4 = bitcast i8* %scevgep541.4 to double*
  %_p_scalar_543.4 = load double, double* %scevgep541542.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_546.4, %_p_scalar_543.4
  %scevgep547.4 = getelementptr i8, i8* %call2, i64 %415
  %scevgep547548.4 = bitcast i8* %scevgep547.4 to double*
  %_p_scalar_549.4 = load double, double* %scevgep547548.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_552.4, %_p_scalar_549.4
  %416 = shl i64 %413, 3
  %417 = add nuw nsw i64 %416, %207
  %scevgep553.4 = getelementptr i8, i8* %call, i64 %417
  %scevgep553554.4 = bitcast i8* %scevgep553.4 to double*
  %_p_scalar_555.4 = load double, double* %scevgep553554.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_555.4
  store double %p_add42.i.4, double* %scevgep553554.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.4 = add nuw nsw i64 %polly.indvar538.4, 1
  %exitcond803.4.not = icmp eq i64 %polly.indvar538.4, %smin802.4
  br i1 %exitcond803.4.not, label %polly.loop_exit537.4, label %polly.loop_header535.4

polly.loop_exit537.4:                             ; preds = %polly.loop_header535.4
  %418 = add nuw nsw i64 %209, %218
  %scevgep544.5 = getelementptr i8, i8* %call2, i64 %418
  %scevgep544545.5 = bitcast i8* %scevgep544.5 to double*
  %_p_scalar_546.5 = load double, double* %scevgep544545.5, align 8, !alias.scope !85, !noalias !88
  %scevgep550.5 = getelementptr i8, i8* %call1, i64 %418
  %scevgep550551.5 = bitcast i8* %scevgep550.5 to double*
  %_p_scalar_552.5 = load double, double* %scevgep550551.5, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.5

polly.loop_header535.5:                           ; preds = %polly.loop_header535.5, %polly.loop_exit537.4
  %polly.indvar538.5 = phi i64 [ 0, %polly.loop_exit537.4 ], [ %polly.indvar_next539.5, %polly.loop_header535.5 ]
  %419 = add nuw nsw i64 %polly.indvar538.5, %192
  %420 = mul nuw nsw i64 %419, 8000
  %421 = add nuw nsw i64 %420, %218
  %scevgep541.5 = getelementptr i8, i8* %call1, i64 %421
  %scevgep541542.5 = bitcast i8* %scevgep541.5 to double*
  %_p_scalar_543.5 = load double, double* %scevgep541542.5, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.5 = fmul fast double %_p_scalar_546.5, %_p_scalar_543.5
  %scevgep547.5 = getelementptr i8, i8* %call2, i64 %421
  %scevgep547548.5 = bitcast i8* %scevgep547.5 to double*
  %_p_scalar_549.5 = load double, double* %scevgep547548.5, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.5 = fmul fast double %_p_scalar_552.5, %_p_scalar_549.5
  %422 = shl i64 %419, 3
  %423 = add nuw nsw i64 %422, %210
  %scevgep553.5 = getelementptr i8, i8* %call, i64 %423
  %scevgep553554.5 = bitcast i8* %scevgep553.5 to double*
  %_p_scalar_555.5 = load double, double* %scevgep553554.5, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_555.5
  store double %p_add42.i.5, double* %scevgep553554.5, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.5 = add nuw nsw i64 %polly.indvar538.5, 1
  %exitcond803.5.not = icmp eq i64 %polly.indvar538.5, %smin802.5
  br i1 %exitcond803.5.not, label %polly.loop_exit537.5, label %polly.loop_header535.5

polly.loop_exit537.5:                             ; preds = %polly.loop_header535.5
  %424 = add nuw nsw i64 %212, %218
  %scevgep544.6 = getelementptr i8, i8* %call2, i64 %424
  %scevgep544545.6 = bitcast i8* %scevgep544.6 to double*
  %_p_scalar_546.6 = load double, double* %scevgep544545.6, align 8, !alias.scope !85, !noalias !88
  %scevgep550.6 = getelementptr i8, i8* %call1, i64 %424
  %scevgep550551.6 = bitcast i8* %scevgep550.6 to double*
  %_p_scalar_552.6 = load double, double* %scevgep550551.6, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.6

polly.loop_header535.6:                           ; preds = %polly.loop_header535.6, %polly.loop_exit537.5
  %polly.indvar538.6 = phi i64 [ 0, %polly.loop_exit537.5 ], [ %polly.indvar_next539.6, %polly.loop_header535.6 ]
  %425 = add nuw nsw i64 %polly.indvar538.6, %192
  %426 = mul nuw nsw i64 %425, 8000
  %427 = add nuw nsw i64 %426, %218
  %scevgep541.6 = getelementptr i8, i8* %call1, i64 %427
  %scevgep541542.6 = bitcast i8* %scevgep541.6 to double*
  %_p_scalar_543.6 = load double, double* %scevgep541542.6, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.6 = fmul fast double %_p_scalar_546.6, %_p_scalar_543.6
  %scevgep547.6 = getelementptr i8, i8* %call2, i64 %427
  %scevgep547548.6 = bitcast i8* %scevgep547.6 to double*
  %_p_scalar_549.6 = load double, double* %scevgep547548.6, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.6 = fmul fast double %_p_scalar_552.6, %_p_scalar_549.6
  %428 = shl i64 %425, 3
  %429 = add nuw nsw i64 %428, %213
  %scevgep553.6 = getelementptr i8, i8* %call, i64 %429
  %scevgep553554.6 = bitcast i8* %scevgep553.6 to double*
  %_p_scalar_555.6 = load double, double* %scevgep553554.6, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_555.6
  store double %p_add42.i.6, double* %scevgep553554.6, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.6 = add nuw nsw i64 %polly.indvar538.6, 1
  %exitcond803.6.not = icmp eq i64 %polly.indvar538.6, %smin802.6
  br i1 %exitcond803.6.not, label %polly.loop_exit537.6, label %polly.loop_header535.6

polly.loop_exit537.6:                             ; preds = %polly.loop_header535.6
  %430 = add nuw nsw i64 %215, %218
  %scevgep544.7 = getelementptr i8, i8* %call2, i64 %430
  %scevgep544545.7 = bitcast i8* %scevgep544.7 to double*
  %_p_scalar_546.7 = load double, double* %scevgep544545.7, align 8, !alias.scope !85, !noalias !88
  %scevgep550.7 = getelementptr i8, i8* %call1, i64 %430
  %scevgep550551.7 = bitcast i8* %scevgep550.7 to double*
  %_p_scalar_552.7 = load double, double* %scevgep550551.7, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.7

polly.loop_header535.7:                           ; preds = %polly.loop_header535.7, %polly.loop_exit537.6
  %polly.indvar538.7 = phi i64 [ 0, %polly.loop_exit537.6 ], [ %polly.indvar_next539.7, %polly.loop_header535.7 ]
  %431 = add nuw nsw i64 %polly.indvar538.7, %192
  %432 = mul nuw nsw i64 %431, 8000
  %433 = add nuw nsw i64 %432, %218
  %scevgep541.7 = getelementptr i8, i8* %call1, i64 %433
  %scevgep541542.7 = bitcast i8* %scevgep541.7 to double*
  %_p_scalar_543.7 = load double, double* %scevgep541542.7, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.7 = fmul fast double %_p_scalar_546.7, %_p_scalar_543.7
  %scevgep547.7 = getelementptr i8, i8* %call2, i64 %433
  %scevgep547548.7 = bitcast i8* %scevgep547.7 to double*
  %_p_scalar_549.7 = load double, double* %scevgep547548.7, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.7 = fmul fast double %_p_scalar_552.7, %_p_scalar_549.7
  %434 = shl i64 %431, 3
  %435 = add nuw nsw i64 %434, %216
  %scevgep553.7 = getelementptr i8, i8* %call, i64 %435
  %scevgep553554.7 = bitcast i8* %scevgep553.7 to double*
  %_p_scalar_555.7 = load double, double* %scevgep553554.7, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_555.7
  store double %p_add42.i.7, double* %scevgep553554.7, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.7 = add nuw nsw i64 %polly.indvar538.7, 1
  %exitcond803.7.not = icmp eq i64 %polly.indvar538.7, %smin802.7
  br i1 %exitcond803.7.not, label %polly.loop_exit537.7, label %polly.loop_header535.7

polly.loop_exit537.7:                             ; preds = %polly.loop_header535.7
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond808.not = icmp eq i64 %polly.indvar526, %190
  br i1 %exitcond808.not, label %polly.loop_exit525, label %polly.loop_header523
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
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 128}
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
