; ModuleID = 'syr2k_exhaustive/mmp_all_XL_10160.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_10160.c"
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
  %scevgep868 = getelementptr i8, i8* %call2, i64 %12
  %scevgep867 = getelementptr i8, i8* %call2, i64 %11
  %scevgep866 = getelementptr i8, i8* %call1, i64 %12
  %scevgep865 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep865, %scevgep868
  %bound1 = icmp ult i8* %scevgep867, %scevgep866
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
  br i1 %exitcond18.not.i, label %vector.ph872, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph872:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert879 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat880 = shufflevector <4 x i64> %broadcast.splatinsert879, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph872
  %index873 = phi i64 [ 0, %vector.ph872 ], [ %index.next874, %vector.body871 ]
  %vec.ind877 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph872 ], [ %vec.ind.next878, %vector.body871 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind877, %broadcast.splat880
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv7.i, i64 %index873
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next874 = add i64 %index873, 4
  %vec.ind.next878 = add <4 x i64> %vec.ind877, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next874, 1200
  br i1 %40, label %for.inc41.i, label %vector.body871, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body871
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph872, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit743
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header488, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check935 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check935, label %for.body3.i46.preheader1012, label %vector.ph936

vector.ph936:                                     ; preds = %for.body3.i46.preheader
  %n.vec938 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph936
  %index939 = phi i64 [ 0, %vector.ph936 ], [ %index.next940, %vector.body934 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %index939
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next940 = add i64 %index939, 4
  %46 = icmp eq i64 %index.next940, %n.vec938
  br i1 %46, label %middle.block932, label %vector.body934, !llvm.loop !18

middle.block932:                                  ; preds = %vector.body934
  %cmp.n942 = icmp eq i64 %indvars.iv21.i, %n.vec938
  br i1 %cmp.n942, label %for.inc6.i, label %for.body3.i46.preheader1012

for.body3.i46.preheader1012:                      ; preds = %for.body3.i46.preheader, %middle.block932
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec938, %middle.block932 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1012, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1012 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block932, %for.cond1.preheader.i45
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
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check958 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check958, label %for.body3.i60.preheader1010, label %vector.ph959

vector.ph959:                                     ; preds = %for.body3.i60.preheader
  %n.vec961 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next963, %vector.body957 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %index962
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load966 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load966, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next963 = add i64 %index962, 4
  %57 = icmp eq i64 %index.next963, %n.vec961
  br i1 %57, label %middle.block955, label %vector.body957, !llvm.loop !51

middle.block955:                                  ; preds = %vector.body957
  %cmp.n965 = icmp eq i64 %indvars.iv21.i52, %n.vec961
  br i1 %cmp.n965, label %for.inc6.i63, label %for.body3.i60.preheader1010

for.body3.i60.preheader1010:                      ; preds = %for.body3.i60.preheader, %middle.block955
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec961, %middle.block955 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1010, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1010 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block955, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit359
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check984 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check984, label %for.body3.i99.preheader1008, label %vector.ph985

vector.ph985:                                     ; preds = %for.body3.i99.preheader
  %n.vec987 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body983 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %index988
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load992 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load992, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next989 = add i64 %index988, 4
  %68 = icmp eq i64 %index.next989, %n.vec987
  br i1 %68, label %middle.block981, label %vector.body983, !llvm.loop !53

middle.block981:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %indvars.iv21.i91, %n.vec987
  br i1 %cmp.n991, label %for.inc6.i102, label %for.body3.i99.preheader1008

for.body3.i99.preheader1008:                      ; preds = %for.body3.i99.preheader, %middle.block981
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec987, %middle.block981 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1008, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1008 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block981, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call708, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar996 = phi i64 [ %indvar.next997, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar996, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check998 = icmp ult i64 %88, 4
  br i1 %min.iters.check998, label %polly.loop_header191.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %polly.loop_header
  %n.vec1001 = and i64 %88, -4
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body995 ]
  %90 = shl nuw nsw i64 %index1002, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1006 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1006, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1003 = add i64 %index1002, 4
  %95 = icmp eq i64 %index.next1003, %n.vec1001
  br i1 %95, label %middle.block993, label %vector.body995, !llvm.loop !64

middle.block993:                                  ; preds = %vector.body995
  %cmp.n1005 = icmp eq i64 %88, %n.vec1001
  br i1 %cmp.n1005, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block993
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1001, %middle.block993 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block993
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next997 = add i64 %indvar996, 1
  br i1 %exitcond785.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond784.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 1
  %smin780 = call i64 @llvm.smin.i64(i64 %indvars.iv778, i64 -1136)
  %98 = shl nsw i64 %polly.indvar202, 6
  %99 = add nsw i64 %smin780, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next779 = add nsw i64 %indvars.iv778, -64
  %exitcond783.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond783.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %100 = shl nsw i64 %polly.indvar208, 7
  %101 = sub nsw i64 %98, %100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next774 = add nsw i64 %indvars.iv773, -128
  %exitcond782.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond782.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %polly.loop_exit219 ], [ %indvars.iv773, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv775, i64 127)
  %102 = add nsw i64 %polly.indvar214, %101
  %polly.loop_guard854 = icmp sgt i64 %102, -1
  %103 = add nuw nsw i64 %polly.indvar214, %98
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  br i1 %polly.loop_guard854, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header211 ]
  %106 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep229.us = getelementptr i8, i8* %call1, i64 %106
  %scevgep233.us = getelementptr i8, i8* %call2, i64 %106
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %104
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !63, !noalias !67
  %scevgep242.us = getelementptr i8, i8* %scevgep229.us, i64 %104
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_header223.us ]
  %107 = add nuw nsw i64 %polly.indvar226.us, %100
  %108 = mul nuw nsw i64 %107, 8000
  %scevgep230.us = getelementptr i8, i8* %scevgep229.us, i64 %108
  %scevgep230231.us = bitcast i8* %scevgep230.us to double*
  %_p_scalar_232.us = load double, double* %scevgep230231.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_236.us, %_p_scalar_232.us
  %scevgep238.us = getelementptr i8, i8* %scevgep233.us, i64 %108
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_244.us, %_p_scalar_240.us
  %109 = shl i64 %107, 3
  %110 = add nuw nsw i64 %109, %105
  %scevgep245.us = getelementptr i8, i8* %call, i64 %110
  %scevgep245246.us = bitcast i8* %scevgep245.us to double*
  %_p_scalar_247.us = load double, double* %scevgep245246.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_247.us
  store double %p_add42.i118.us, double* %scevgep245246.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar226.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_header223.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond777.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next776 = add nsw i64 %indvars.iv775, 1
  %exitcond781.not = icmp eq i64 %polly.indvar214, %99
  br i1 %exitcond781.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar970 = phi i64 [ %indvar.next971, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %111 = add i64 %indvar970, 1
  %112 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %112
  %min.iters.check972 = icmp ult i64 %111, 4
  br i1 %min.iters.check972, label %polly.loop_header340.preheader, label %vector.ph973

vector.ph973:                                     ; preds = %polly.loop_header334
  %n.vec975 = and i64 %111, -4
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next977, %vector.body969 ]
  %113 = shl nuw nsw i64 %index976, 3
  %114 = getelementptr i8, i8* %scevgep346, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.load980 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !69, !noalias !71
  %116 = fmul fast <4 x double> %wide.load980, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !69, !noalias !71
  %index.next977 = add i64 %index976, 4
  %118 = icmp eq i64 %index.next977, %n.vec975
  br i1 %118, label %middle.block967, label %vector.body969, !llvm.loop !74

middle.block967:                                  ; preds = %vector.body969
  %cmp.n979 = icmp eq i64 %111, %n.vec975
  br i1 %cmp.n979, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block967
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec975, %middle.block967 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block967
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next338, 1200
  %indvar.next971 = add i64 %indvar970, 1
  br i1 %exitcond802.not, label %polly.loop_header350, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %119
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond801.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !75

polly.loop_header350:                             ; preds = %polly.loop_exit342, %polly.loop_exit359
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit359 ], [ 0, %polly.loop_exit342 ]
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit359 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar353 = phi i64 [ %polly.indvar_next354, %polly.loop_exit359 ], [ 0, %polly.loop_exit342 ]
  %120 = lshr i64 %polly.indvar353, 1
  %smin797 = call i64 @llvm.smin.i64(i64 %indvars.iv795, i64 -1136)
  %121 = shl nsw i64 %polly.indvar353, 6
  %122 = add nsw i64 %smin797, 1199
  br label %polly.loop_header357

polly.loop_exit359:                               ; preds = %polly.loop_exit365
  %polly.indvar_next354 = add nuw nsw i64 %polly.indvar353, 1
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 64
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -64
  %exitcond800.not = icmp eq i64 %polly.indvar_next354, 19
  br i1 %exitcond800.not, label %kernel_syr2k.exit90, label %polly.loop_header350

polly.loop_header357:                             ; preds = %polly.loop_exit365, %polly.loop_header350
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit365 ], [ %indvars.iv786, %polly.loop_header350 ]
  %polly.indvar360 = phi i64 [ %polly.indvar_next361, %polly.loop_exit365 ], [ 0, %polly.loop_header350 ]
  %123 = shl nsw i64 %polly.indvar360, 7
  %124 = sub nsw i64 %121, %123
  br label %polly.loop_header363

polly.loop_exit365:                               ; preds = %polly.loop_exit371
  %polly.indvar_next361 = add nuw nsw i64 %polly.indvar360, 1
  %indvars.iv.next789 = add nsw i64 %indvars.iv788, -128
  %exitcond799.not = icmp eq i64 %polly.indvar360, %120
  br i1 %exitcond799.not, label %polly.loop_exit359, label %polly.loop_header357

polly.loop_header363:                             ; preds = %polly.loop_exit371, %polly.loop_header357
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit371 ], [ %indvars.iv788, %polly.loop_header357 ]
  %polly.indvar366 = phi i64 [ %polly.indvar_next367, %polly.loop_exit371 ], [ 0, %polly.loop_header357 ]
  %smin792 = call i64 @llvm.smin.i64(i64 %indvars.iv790, i64 127)
  %125 = add nsw i64 %polly.indvar366, %124
  %polly.loop_guard379855 = icmp sgt i64 %125, -1
  %126 = add nuw nsw i64 %polly.indvar366, %121
  %127 = mul nuw nsw i64 %126, 8000
  %128 = mul nuw nsw i64 %126, 9600
  br i1 %polly.loop_guard379855, label %polly.loop_header369.us, label %polly.loop_exit371

polly.loop_header369.us:                          ; preds = %polly.loop_header363, %polly.loop_exit378.loopexit.us
  %polly.indvar372.us = phi i64 [ %polly.indvar_next373.us, %polly.loop_exit378.loopexit.us ], [ 0, %polly.loop_header363 ]
  %129 = shl nuw nsw i64 %polly.indvar372.us, 3
  %scevgep383.us = getelementptr i8, i8* %call1, i64 %129
  %scevgep387.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep388.us = getelementptr i8, i8* %scevgep387.us, i64 %127
  %scevgep388389.us = bitcast i8* %scevgep388.us to double*
  %_p_scalar_390.us = load double, double* %scevgep388389.us, align 8, !alias.scope !73, !noalias !76
  %scevgep396.us = getelementptr i8, i8* %scevgep383.us, i64 %127
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header376.us

polly.loop_header376.us:                          ; preds = %polly.loop_header376.us, %polly.loop_header369.us
  %polly.indvar380.us = phi i64 [ 0, %polly.loop_header369.us ], [ %polly.indvar_next381.us, %polly.loop_header376.us ]
  %130 = add nuw nsw i64 %polly.indvar380.us, %123
  %131 = mul nuw nsw i64 %130, 8000
  %scevgep384.us = getelementptr i8, i8* %scevgep383.us, i64 %131
  %scevgep384385.us = bitcast i8* %scevgep384.us to double*
  %_p_scalar_386.us = load double, double* %scevgep384385.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_390.us, %_p_scalar_386.us
  %scevgep392.us = getelementptr i8, i8* %scevgep387.us, i64 %131
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_398.us, %_p_scalar_394.us
  %132 = shl i64 %130, 3
  %133 = add nuw nsw i64 %132, %128
  %scevgep399.us = getelementptr i8, i8* %call, i64 %133
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_401.us
  store double %p_add42.i79.us, double* %scevgep399400.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond793.not = icmp eq i64 %polly.indvar380.us, %smin792
  br i1 %exitcond793.not, label %polly.loop_exit378.loopexit.us, label %polly.loop_header376.us

polly.loop_exit378.loopexit.us:                   ; preds = %polly.loop_header376.us
  %polly.indvar_next373.us = add nuw nsw i64 %polly.indvar372.us, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next373.us, 1000
  br i1 %exitcond794.not, label %polly.loop_exit371, label %polly.loop_header369.us

polly.loop_exit371:                               ; preds = %polly.loop_exit378.loopexit.us, %polly.loop_header363
  %polly.indvar_next367 = add nuw nsw i64 %polly.indvar366, 1
  %indvars.iv.next791 = add nsw i64 %indvars.iv790, 1
  %exitcond798.not = icmp eq i64 %polly.indvar366, %122
  br i1 %exitcond798.not, label %polly.loop_exit365, label %polly.loop_header363

polly.loop_header488:                             ; preds = %init_array.exit, %polly.loop_exit496
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit496 ], [ 0, %init_array.exit ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit496 ], [ 1, %init_array.exit ]
  %134 = add i64 %indvar, 1
  %135 = mul nuw nsw i64 %polly.indvar491, 9600
  %scevgep500 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check946 = icmp ult i64 %134, 4
  br i1 %min.iters.check946, label %polly.loop_header494.preheader, label %vector.ph947

vector.ph947:                                     ; preds = %polly.loop_header488
  %n.vec949 = and i64 %134, -4
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph947
  %index950 = phi i64 [ 0, %vector.ph947 ], [ %index.next951, %vector.body945 ]
  %136 = shl nuw nsw i64 %index950, 3
  %137 = getelementptr i8, i8* %scevgep500, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load954 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !78, !noalias !80
  %139 = fmul fast <4 x double> %wide.load954, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !78, !noalias !80
  %index.next951 = add i64 %index950, 4
  %141 = icmp eq i64 %index.next951, %n.vec949
  br i1 %141, label %middle.block943, label %vector.body945, !llvm.loop !83

middle.block943:                                  ; preds = %vector.body945
  %cmp.n953 = icmp eq i64 %134, %n.vec949
  br i1 %cmp.n953, label %polly.loop_exit496, label %polly.loop_header494.preheader

polly.loop_header494.preheader:                   ; preds = %polly.loop_header488, %middle.block943
  %polly.indvar497.ph = phi i64 [ 0, %polly.loop_header488 ], [ %n.vec949, %middle.block943 ]
  br label %polly.loop_header494

polly.loop_exit496:                               ; preds = %polly.loop_header494, %middle.block943
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next492, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond819.not, label %polly.loop_header504, label %polly.loop_header488

polly.loop_header494:                             ; preds = %polly.loop_header494.preheader, %polly.loop_header494
  %polly.indvar497 = phi i64 [ %polly.indvar_next498, %polly.loop_header494 ], [ %polly.indvar497.ph, %polly.loop_header494.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar497, 3
  %scevgep501 = getelementptr i8, i8* %scevgep500, i64 %142
  %scevgep501502 = bitcast i8* %scevgep501 to double*
  %_p_scalar_503 = load double, double* %scevgep501502, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_503, 1.200000e+00
  store double %p_mul.i, double* %scevgep501502, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next498 = add nuw nsw i64 %polly.indvar497, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next498, %polly.indvar491
  br i1 %exitcond818.not, label %polly.loop_exit496, label %polly.loop_header494, !llvm.loop !84

polly.loop_header504:                             ; preds = %polly.loop_exit496, %polly.loop_exit513
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit513 ], [ 0, %polly.loop_exit496 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit513 ], [ 0, %polly.loop_exit496 ]
  %polly.indvar507 = phi i64 [ %polly.indvar_next508, %polly.loop_exit513 ], [ 0, %polly.loop_exit496 ]
  %143 = lshr i64 %polly.indvar507, 1
  %smin814 = call i64 @llvm.smin.i64(i64 %indvars.iv812, i64 -1136)
  %144 = shl nsw i64 %polly.indvar507, 6
  %145 = add nsw i64 %smin814, 1199
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next508 = add nuw nsw i64 %polly.indvar507, 1
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 64
  %indvars.iv.next813 = add nsw i64 %indvars.iv812, -64
  %exitcond817.not = icmp eq i64 %polly.indvar_next508, 19
  br i1 %exitcond817.not, label %kernel_syr2k.exit, label %polly.loop_header504

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header504
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit519 ], [ %indvars.iv803, %polly.loop_header504 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_header504 ]
  %146 = shl nsw i64 %polly.indvar514, 7
  %147 = sub nsw i64 %144, %146
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, -128
  %exitcond816.not = icmp eq i64 %polly.indvar514, %143
  br i1 %exitcond816.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit525 ], [ %indvars.iv805, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 127)
  %148 = add nsw i64 %polly.indvar520, %147
  %polly.loop_guard533856 = icmp sgt i64 %148, -1
  %149 = add nuw nsw i64 %polly.indvar520, %144
  %150 = mul nuw nsw i64 %149, 8000
  %151 = mul nuw nsw i64 %149, 9600
  br i1 %polly.loop_guard533856, label %polly.loop_header523.us, label %polly.loop_exit525

polly.loop_header523.us:                          ; preds = %polly.loop_header517, %polly.loop_exit532.loopexit.us
  %polly.indvar526.us = phi i64 [ %polly.indvar_next527.us, %polly.loop_exit532.loopexit.us ], [ 0, %polly.loop_header517 ]
  %152 = shl nuw nsw i64 %polly.indvar526.us, 3
  %scevgep537.us = getelementptr i8, i8* %call1, i64 %152
  %scevgep541.us = getelementptr i8, i8* %call2, i64 %152
  %scevgep542.us = getelementptr i8, i8* %scevgep541.us, i64 %150
  %scevgep542543.us = bitcast i8* %scevgep542.us to double*
  %_p_scalar_544.us = load double, double* %scevgep542543.us, align 8, !alias.scope !82, !noalias !85
  %scevgep550.us = getelementptr i8, i8* %scevgep537.us, i64 %150
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header530.us

polly.loop_header530.us:                          ; preds = %polly.loop_header530.us, %polly.loop_header523.us
  %polly.indvar534.us = phi i64 [ 0, %polly.loop_header523.us ], [ %polly.indvar_next535.us, %polly.loop_header530.us ]
  %153 = add nuw nsw i64 %polly.indvar534.us, %146
  %154 = mul nuw nsw i64 %153, 8000
  %scevgep538.us = getelementptr i8, i8* %scevgep537.us, i64 %154
  %scevgep538539.us = bitcast i8* %scevgep538.us to double*
  %_p_scalar_540.us = load double, double* %scevgep538539.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_544.us, %_p_scalar_540.us
  %scevgep546.us = getelementptr i8, i8* %scevgep541.us, i64 %154
  %scevgep546547.us = bitcast i8* %scevgep546.us to double*
  %_p_scalar_548.us = load double, double* %scevgep546547.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_552.us, %_p_scalar_548.us
  %155 = shl i64 %153, 3
  %156 = add nuw nsw i64 %155, %151
  %scevgep553.us = getelementptr i8, i8* %call, i64 %156
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_555.us
  store double %p_add42.i.us, double* %scevgep553554.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar534.us, %smin809
  br i1 %exitcond810.not, label %polly.loop_exit532.loopexit.us, label %polly.loop_header530.us

polly.loop_exit532.loopexit.us:                   ; preds = %polly.loop_header530.us
  %polly.indvar_next527.us = add nuw nsw i64 %polly.indvar526.us, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next527.us, 1000
  br i1 %exitcond811.not, label %polly.loop_exit525, label %polly.loop_header523.us

polly.loop_exit525:                               ; preds = %polly.loop_exit532.loopexit.us, %polly.loop_header517
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, 1
  %exitcond815.not = icmp eq i64 %polly.indvar520, %145
  br i1 %exitcond815.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header682:                             ; preds = %entry, %polly.loop_exit690
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit690 ], [ 0, %entry ]
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_exit690 ], [ 0, %entry ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %157 = shl nsw i64 %polly.indvar685, 5
  %158 = add nsw i64 %smin846, 1199
  br label %polly.loop_header688

polly.loop_exit690:                               ; preds = %polly.loop_exit696
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next686, 38
  br i1 %exitcond849.not, label %polly.loop_header709, label %polly.loop_header682

polly.loop_header688:                             ; preds = %polly.loop_exit696, %polly.loop_header682
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %polly.loop_header682 ]
  %159 = mul nsw i64 %polly.indvar691, -32
  %smin884 = call i64 @llvm.smin.i64(i64 %159, i64 -1168)
  %160 = add nsw i64 %smin884, 1200
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -1168)
  %161 = shl nsw i64 %polly.indvar691, 5
  %162 = add nsw i64 %smin842, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond848.not, label %polly.loop_exit690, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %polly.indvar697 = phi i64 [ 0, %polly.loop_header688 ], [ %polly.indvar_next698, %polly.loop_exit702 ]
  %163 = add nuw nsw i64 %polly.indvar697, %157
  %164 = trunc i64 %163 to i32
  %165 = mul nuw nsw i64 %163, 9600
  %min.iters.check = icmp eq i64 %160, 0
  br i1 %min.iters.check, label %polly.loop_header700, label %vector.ph885

vector.ph885:                                     ; preds = %polly.loop_header694
  %broadcast.splatinsert892 = insertelement <4 x i64> poison, i64 %161, i32 0
  %broadcast.splat893 = shufflevector <4 x i64> %broadcast.splatinsert892, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert894 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat895 = shufflevector <4 x i32> %broadcast.splatinsert894, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body883

vector.body883:                                   ; preds = %vector.body883, %vector.ph885
  %index886 = phi i64 [ 0, %vector.ph885 ], [ %index.next887, %vector.body883 ]
  %vec.ind890 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph885 ], [ %vec.ind.next891, %vector.body883 ]
  %166 = add nuw nsw <4 x i64> %vec.ind890, %broadcast.splat893
  %167 = trunc <4 x i64> %166 to <4 x i32>
  %168 = mul <4 x i32> %broadcast.splat895, %167
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 1200, i32 1200, i32 1200, i32 1200>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %173 = extractelement <4 x i64> %166, i32 0
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %165
  %176 = getelementptr i8, i8* %call, i64 %175
  %177 = bitcast i8* %176 to <4 x double>*
  store <4 x double> %172, <4 x double>* %177, align 8, !alias.scope !87, !noalias !89
  %index.next887 = add i64 %index886, 4
  %vec.ind.next891 = add <4 x i64> %vec.ind890, <i64 4, i64 4, i64 4, i64 4>
  %178 = icmp eq i64 %index.next887, %160
  br i1 %178, label %polly.loop_exit702, label %vector.body883, !llvm.loop !92

polly.loop_exit702:                               ; preds = %vector.body883, %polly.loop_header700
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond847.not = icmp eq i64 %polly.indvar697, %158
  br i1 %exitcond847.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_header694, %polly.loop_header700
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_header700 ], [ 0, %polly.loop_header694 ]
  %179 = add nuw nsw i64 %polly.indvar703, %161
  %180 = trunc i64 %179 to i32
  %181 = mul i32 %180, %164
  %182 = add i32 %181, 3
  %183 = urem i32 %182, 1200
  %p_conv31.i = sitofp i32 %183 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %184 = shl i64 %179, 3
  %185 = add nuw nsw i64 %184, %165
  %scevgep706 = getelementptr i8, i8* %call, i64 %185
  %scevgep706707 = bitcast i8* %scevgep706 to double*
  store double %p_div33.i, double* %scevgep706707, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond843.not = icmp eq i64 %polly.indvar703, %162
  br i1 %exitcond843.not, label %polly.loop_exit702, label %polly.loop_header700, !llvm.loop !93

polly.loop_header709:                             ; preds = %polly.loop_exit690, %polly.loop_exit717
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %polly.indvar712 = phi i64 [ %polly.indvar_next713, %polly.loop_exit717 ], [ 0, %polly.loop_exit690 ]
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -1168)
  %186 = shl nsw i64 %polly.indvar712, 5
  %187 = add nsw i64 %smin836, 1199
  br label %polly.loop_header715

polly.loop_exit717:                               ; preds = %polly.loop_exit723
  %polly.indvar_next713 = add nuw nsw i64 %polly.indvar712, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond839.not = icmp eq i64 %polly.indvar_next713, 38
  br i1 %exitcond839.not, label %polly.loop_header735, label %polly.loop_header709

polly.loop_header715:                             ; preds = %polly.loop_exit723, %polly.loop_header709
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_header709 ]
  %188 = mul nsw i64 %polly.indvar718, -32
  %smin899 = call i64 @llvm.smin.i64(i64 %188, i64 -968)
  %189 = add nsw i64 %smin899, 1000
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 -968)
  %190 = shl nsw i64 %polly.indvar718, 5
  %191 = add nsw i64 %smin832, 999
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, -32
  %exitcond838.not = icmp eq i64 %polly.indvar_next719, 32
  br i1 %exitcond838.not, label %polly.loop_exit717, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %polly.indvar724 = phi i64 [ 0, %polly.loop_header715 ], [ %polly.indvar_next725, %polly.loop_exit729 ]
  %192 = add nuw nsw i64 %polly.indvar724, %186
  %193 = trunc i64 %192 to i32
  %194 = mul nuw nsw i64 %192, 8000
  %min.iters.check900 = icmp eq i64 %189, 0
  br i1 %min.iters.check900, label %polly.loop_header727, label %vector.ph901

vector.ph901:                                     ; preds = %polly.loop_header721
  %broadcast.splatinsert910 = insertelement <4 x i64> poison, i64 %190, i32 0
  %broadcast.splat911 = shufflevector <4 x i64> %broadcast.splatinsert910, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert912 = insertelement <4 x i32> poison, i32 %193, i32 0
  %broadcast.splat913 = shufflevector <4 x i32> %broadcast.splatinsert912, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph901
  %index904 = phi i64 [ 0, %vector.ph901 ], [ %index.next905, %vector.body898 ]
  %vec.ind908 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph901 ], [ %vec.ind.next909, %vector.body898 ]
  %195 = add nuw nsw <4 x i64> %vec.ind908, %broadcast.splat911
  %196 = trunc <4 x i64> %195 to <4 x i32>
  %197 = mul <4 x i32> %broadcast.splat913, %196
  %198 = add <4 x i32> %197, <i32 2, i32 2, i32 2, i32 2>
  %199 = urem <4 x i32> %198, <i32 1000, i32 1000, i32 1000, i32 1000>
  %200 = sitofp <4 x i32> %199 to <4 x double>
  %201 = fmul fast <4 x double> %200, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %202 = extractelement <4 x i64> %195, i32 0
  %203 = shl i64 %202, 3
  %204 = add nuw nsw i64 %203, %194
  %205 = getelementptr i8, i8* %call2, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %201, <4 x double>* %206, align 8, !alias.scope !91, !noalias !94
  %index.next905 = add i64 %index904, 4
  %vec.ind.next909 = add <4 x i64> %vec.ind908, <i64 4, i64 4, i64 4, i64 4>
  %207 = icmp eq i64 %index.next905, %189
  br i1 %207, label %polly.loop_exit729, label %vector.body898, !llvm.loop !95

polly.loop_exit729:                               ; preds = %vector.body898, %polly.loop_header727
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond837.not = icmp eq i64 %polly.indvar724, %187
  br i1 %exitcond837.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_header721, %polly.loop_header727
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_header727 ], [ 0, %polly.loop_header721 ]
  %208 = add nuw nsw i64 %polly.indvar730, %190
  %209 = trunc i64 %208 to i32
  %210 = mul i32 %209, %193
  %211 = add i32 %210, 2
  %212 = urem i32 %211, 1000
  %p_conv10.i = sitofp i32 %212 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %213 = shl i64 %208, 3
  %214 = add nuw nsw i64 %213, %194
  %scevgep733 = getelementptr i8, i8* %call2, i64 %214
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  store double %p_div12.i, double* %scevgep733734, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond833.not = icmp eq i64 %polly.indvar730, %191
  br i1 %exitcond833.not, label %polly.loop_exit729, label %polly.loop_header727, !llvm.loop !96

polly.loop_header735:                             ; preds = %polly.loop_exit717, %polly.loop_exit743
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_exit717 ]
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -1168)
  %215 = shl nsw i64 %polly.indvar738, 5
  %216 = add nsw i64 %smin826, 1199
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_exit749
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond829.not = icmp eq i64 %polly.indvar_next739, 38
  br i1 %exitcond829.not, label %init_array.exit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_exit749, %polly.loop_header735
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_header735 ]
  %217 = mul nsw i64 %polly.indvar744, -32
  %smin917 = call i64 @llvm.smin.i64(i64 %217, i64 -968)
  %218 = add nsw i64 %smin917, 1000
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 -968)
  %219 = shl nsw i64 %polly.indvar744, 5
  %220 = add nsw i64 %smin822, 999
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond828.not = icmp eq i64 %polly.indvar_next745, 32
  br i1 %exitcond828.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %polly.indvar750 = phi i64 [ 0, %polly.loop_header741 ], [ %polly.indvar_next751, %polly.loop_exit755 ]
  %221 = add nuw nsw i64 %polly.indvar750, %215
  %222 = trunc i64 %221 to i32
  %223 = mul nuw nsw i64 %221, 8000
  %min.iters.check918 = icmp eq i64 %218, 0
  br i1 %min.iters.check918, label %polly.loop_header753, label %vector.ph919

vector.ph919:                                     ; preds = %polly.loop_header747
  %broadcast.splatinsert928 = insertelement <4 x i64> poison, i64 %219, i32 0
  %broadcast.splat929 = shufflevector <4 x i64> %broadcast.splatinsert928, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert930 = insertelement <4 x i32> poison, i32 %222, i32 0
  %broadcast.splat931 = shufflevector <4 x i32> %broadcast.splatinsert930, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph919
  %index922 = phi i64 [ 0, %vector.ph919 ], [ %index.next923, %vector.body916 ]
  %vec.ind926 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph919 ], [ %vec.ind.next927, %vector.body916 ]
  %224 = add nuw nsw <4 x i64> %vec.ind926, %broadcast.splat929
  %225 = trunc <4 x i64> %224 to <4 x i32>
  %226 = mul <4 x i32> %broadcast.splat931, %225
  %227 = add <4 x i32> %226, <i32 1, i32 1, i32 1, i32 1>
  %228 = urem <4 x i32> %227, <i32 1200, i32 1200, i32 1200, i32 1200>
  %229 = sitofp <4 x i32> %228 to <4 x double>
  %230 = fmul fast <4 x double> %229, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %231 = extractelement <4 x i64> %224, i32 0
  %232 = shl i64 %231, 3
  %233 = add nuw nsw i64 %232, %223
  %234 = getelementptr i8, i8* %call1, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %230, <4 x double>* %235, align 8, !alias.scope !90, !noalias !97
  %index.next923 = add i64 %index922, 4
  %vec.ind.next927 = add <4 x i64> %vec.ind926, <i64 4, i64 4, i64 4, i64 4>
  %236 = icmp eq i64 %index.next923, %218
  br i1 %236, label %polly.loop_exit755, label %vector.body916, !llvm.loop !98

polly.loop_exit755:                               ; preds = %vector.body916, %polly.loop_header753
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond827.not = icmp eq i64 %polly.indvar750, %216
  br i1 %exitcond827.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_header747, %polly.loop_header753
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_header753 ], [ 0, %polly.loop_header747 ]
  %237 = add nuw nsw i64 %polly.indvar756, %219
  %238 = trunc i64 %237 to i32
  %239 = mul i32 %238, %222
  %240 = add i32 %239, 1
  %241 = urem i32 %240, 1200
  %p_conv.i = sitofp i32 %241 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %242 = shl i64 %237, 3
  %243 = add nuw nsw i64 %242, %223
  %scevgep760 = getelementptr i8, i8* %call1, i64 %243
  %scevgep760761 = bitcast i8* %scevgep760 to double*
  store double %p_div.i, double* %scevgep760761, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond823.not = icmp eq i64 %polly.indvar756, %220
  br i1 %exitcond823.not, label %polly.loop_exit755, label %polly.loop_header753, !llvm.loop !99
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
!24 = !{!"llvm.loop.tile.size", i32 128}
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
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 64}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !66, !13}
!94 = !{!90, !87}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !66, !13}
!97 = !{!91, !87}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !66, !13}
