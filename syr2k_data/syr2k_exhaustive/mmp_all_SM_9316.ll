; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9316.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9316.c"
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
  %scevgep880 = getelementptr i8, i8* %call2, i64 %12
  %scevgep879 = getelementptr i8, i8* %call2, i64 %11
  %scevgep878 = getelementptr i8, i8* %call1, i64 %12
  %scevgep877 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep877, %scevgep880
  %bound1 = icmp ult i8* %scevgep879, %scevgep878
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
  br i1 %exitcond18.not.i, label %vector.ph884, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph884:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert891 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat892 = shufflevector <4 x i64> %broadcast.splatinsert891, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body883

vector.body883:                                   ; preds = %vector.body883, %vector.ph884
  %index885 = phi i64 [ 0, %vector.ph884 ], [ %index.next886, %vector.body883 ]
  %vec.ind889 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph884 ], [ %vec.ind.next890, %vector.body883 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind889, %broadcast.splat892
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv7.i, i64 %index885
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next886 = add i64 %index885, 4
  %vec.ind.next890 = add <4 x i64> %vec.ind889, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next886, 1200
  br i1 %40, label %for.inc41.i, label %vector.body883, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body883
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph884, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit741
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header487, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check947 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check947, label %for.body3.i46.preheader1024, label %vector.ph948

vector.ph948:                                     ; preds = %for.body3.i46.preheader
  %n.vec950 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph948
  %index951 = phi i64 [ 0, %vector.ph948 ], [ %index.next952, %vector.body946 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %index951
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next952 = add i64 %index951, 4
  %46 = icmp eq i64 %index.next952, %n.vec950
  br i1 %46, label %middle.block944, label %vector.body946, !llvm.loop !18

middle.block944:                                  ; preds = %vector.body946
  %cmp.n954 = icmp eq i64 %indvars.iv21.i, %n.vec950
  br i1 %cmp.n954, label %for.inc6.i, label %for.body3.i46.preheader1024

for.body3.i46.preheader1024:                      ; preds = %for.body3.i46.preheader, %middle.block944
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec950, %middle.block944 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1024, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1024 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block944, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check970 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check970, label %for.body3.i60.preheader1022, label %vector.ph971

vector.ph971:                                     ; preds = %for.body3.i60.preheader
  %n.vec973 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph971
  %index974 = phi i64 [ 0, %vector.ph971 ], [ %index.next975, %vector.body969 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %index974
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load978 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load978, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next975 = add i64 %index974, 4
  %57 = icmp eq i64 %index.next975, %n.vec973
  br i1 %57, label %middle.block967, label %vector.body969, !llvm.loop !54

middle.block967:                                  ; preds = %vector.body969
  %cmp.n977 = icmp eq i64 %indvars.iv21.i52, %n.vec973
  br i1 %cmp.n977, label %for.inc6.i63, label %for.body3.i60.preheader1022

for.body3.i60.preheader1022:                      ; preds = %for.body3.i60.preheader, %middle.block967
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec973, %middle.block967 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1022, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1022 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block967, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check996 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check996, label %for.body3.i99.preheader1020, label %vector.ph997

vector.ph997:                                     ; preds = %for.body3.i99.preheader
  %n.vec999 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1001, %vector.body995 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %index1000
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1004 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1004, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1001 = add i64 %index1000, 4
  %68 = icmp eq i64 %index.next1001, %n.vec999
  br i1 %68, label %middle.block993, label %vector.body995, !llvm.loop !56

middle.block993:                                  ; preds = %vector.body995
  %cmp.n1003 = icmp eq i64 %indvars.iv21.i91, %n.vec999
  br i1 %cmp.n1003, label %for.inc6.i102, label %for.body3.i99.preheader1020

for.body3.i99.preheader1020:                      ; preds = %for.body3.i99.preheader, %middle.block993
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec999, %middle.block993 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1020, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1020 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block993, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1008 = phi i64 [ %indvar.next1009, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1008, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1010 = icmp ult i64 %88, 4
  br i1 %min.iters.check1010, label %polly.loop_header191.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %polly.loop_header
  %n.vec1013 = and i64 %88, -4
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1007 ]
  %90 = shl nuw nsw i64 %index1014, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1018 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1018, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1015 = add i64 %index1014, 4
  %95 = icmp eq i64 %index.next1015, %n.vec1013
  br i1 %95, label %middle.block1005, label %vector.body1007, !llvm.loop !67

middle.block1005:                                 ; preds = %vector.body1007
  %cmp.n1017 = icmp eq i64 %88, %n.vec1013
  br i1 %cmp.n1017, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1005
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1013, %middle.block1005 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1005
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1009 = add i64 %indvar1008, 1
  br i1 %exitcond783.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond782.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %smin777 = call i64 @llvm.smin.i64(i64 %indvars.iv775, i64 -1072)
  %97 = add nsw i64 %smin777, 1199
  %smax = call i64 @llvm.smax.i64(i64 %97, i64 0)
  %98 = mul nsw i64 %polly.indvar208, -128
  %polly.loop_guard854 = icmp sgt i64 %98, -1200
  %99 = shl nsw i64 %polly.indvar208, 7
  br i1 %polly.loop_guard854, label %polly.loop_header211.us, label %polly.loop_exit213

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit219.loopexit.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit219.loopexit.us ], [ 0, %polly.loop_header205 ]
  %100 = shl nuw nsw i64 %polly.indvar214.us, 3
  %scevgep229.us = getelementptr i8, i8* %call1, i64 %100
  %scevgep233.us = getelementptr i8, i8* %call2, i64 %100
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_exit225.us, %polly.loop_header211.us
  %indvars.iv771 = phi i64 [ %indvars.iv.next772, %polly.loop_exit225.us ], [ %indvars.iv, %polly.loop_header211.us ]
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.us ], [ 0, %polly.loop_header211.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv771, i64 255)
  %101 = add nuw nsw i64 %polly.indvar220.us, %99
  %102 = mul nuw nsw i64 %101, 8000
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %102
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !66, !noalias !70
  %scevgep242.us = getelementptr i8, i8* %scevgep229.us, i64 %102
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !65, !noalias !71
  %103 = mul nuw nsw i64 %101, 9600
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_header223.us ]
  %104 = mul nuw nsw i64 %polly.indvar226.us, 8000
  %scevgep230.us = getelementptr i8, i8* %scevgep229.us, i64 %104
  %scevgep230231.us = bitcast i8* %scevgep230.us to double*
  %_p_scalar_232.us = load double, double* %scevgep230231.us, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.us = fmul fast double %_p_scalar_236.us, %_p_scalar_232.us
  %scevgep238.us = getelementptr i8, i8* %scevgep233.us, i64 %104
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.us = fmul fast double %_p_scalar_244.us, %_p_scalar_240.us
  %105 = shl i64 %polly.indvar226.us, 3
  %106 = add nuw nsw i64 %105, %103
  %scevgep245.us = getelementptr i8, i8* %call, i64 %106
  %scevgep245246.us = bitcast i8* %scevgep245.us to double*
  %_p_scalar_247.us = load double, double* %scevgep245246.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_247.us
  store double %p_add42.i118.us, double* %scevgep245246.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar226.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1
  %exitcond778.not = icmp eq i64 %polly.indvar220.us, %smax
  br i1 %exitcond778.not, label %polly.loop_exit219.loopexit.us, label %polly.loop_header217.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_exit225.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond779.not, label %polly.loop_exit213, label %polly.loop_header211.us

polly.loop_exit213:                               ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 128
  %indvars.iv.next776 = add nsw i64 %indvars.iv775, -128
  %exitcond780.not = icmp eq i64 %polly.indvar_next209, 10
  br i1 %exitcond780.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar982 = phi i64 [ %indvar.next983, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %107 = add i64 %indvar982, 1
  %108 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check984 = icmp ult i64 %107, 4
  br i1 %min.iters.check984, label %polly.loop_header340.preheader, label %vector.ph985

vector.ph985:                                     ; preds = %polly.loop_header334
  %n.vec987 = and i64 %107, -4
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body981 ]
  %109 = shl nuw nsw i64 %index988, 3
  %110 = getelementptr i8, i8* %scevgep346, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load992 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !72, !noalias !74
  %112 = fmul fast <4 x double> %wide.load992, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !72, !noalias !74
  %index.next989 = add i64 %index988, 4
  %114 = icmp eq i64 %index.next989, %n.vec987
  br i1 %114, label %middle.block979, label %vector.body981, !llvm.loop !77

middle.block979:                                  ; preds = %vector.body981
  %cmp.n991 = icmp eq i64 %107, %n.vec987
  br i1 %cmp.n991, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block979
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec987, %middle.block979 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block979
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next338, 1200
  %indvar.next983 = add i64 %indvar982, 1
  br i1 %exitcond801.not, label %polly.loop_header356, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %115
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond800.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header356:                             ; preds = %polly.loop_exit342, %polly.loop_exit364
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %smin794 = call i64 @llvm.smin.i64(i64 %indvars.iv792, i64 -1072)
  %116 = add nsw i64 %smin794, 1199
  %smax795 = call i64 @llvm.smax.i64(i64 %116, i64 0)
  %117 = mul nsw i64 %polly.indvar359, -128
  %polly.loop_guard372859 = icmp sgt i64 %117, -1200
  %118 = shl nsw i64 %polly.indvar359, 7
  br i1 %polly.loop_guard372859, label %polly.loop_header362.us, label %polly.loop_exit364

polly.loop_header362.us:                          ; preds = %polly.loop_header356, %polly.loop_exit371.loopexit.us
  %polly.indvar365.us = phi i64 [ %polly.indvar_next366.us, %polly.loop_exit371.loopexit.us ], [ 0, %polly.loop_header356 ]
  %119 = shl nuw nsw i64 %polly.indvar365.us, 3
  %scevgep382.us = getelementptr i8, i8* %call1, i64 %119
  %scevgep386.us = getelementptr i8, i8* %call2, i64 %119
  br label %polly.loop_header369.us

polly.loop_header369.us:                          ; preds = %polly.loop_exit378.us, %polly.loop_header362.us
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit378.us ], [ %indvars.iv784, %polly.loop_header362.us ]
  %polly.indvar373.us = phi i64 [ %polly.indvar_next374.us, %polly.loop_exit378.us ], [ 0, %polly.loop_header362.us ]
  %smin788 = call i64 @llvm.smin.i64(i64 %indvars.iv786, i64 255)
  %120 = add nuw nsw i64 %polly.indvar373.us, %118
  %121 = mul nuw nsw i64 %120, 8000
  %scevgep387.us = getelementptr i8, i8* %scevgep386.us, i64 %121
  %scevgep387388.us = bitcast i8* %scevgep387.us to double*
  %_p_scalar_389.us = load double, double* %scevgep387388.us, align 8, !alias.scope !76, !noalias !79
  %scevgep395.us = getelementptr i8, i8* %scevgep382.us, i64 %121
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !75, !noalias !80
  %122 = mul nuw nsw i64 %120, 9600
  br label %polly.loop_header376.us

polly.loop_header376.us:                          ; preds = %polly.loop_header376.us, %polly.loop_header369.us
  %polly.indvar379.us = phi i64 [ 0, %polly.loop_header369.us ], [ %polly.indvar_next380.us, %polly.loop_header376.us ]
  %123 = mul nuw nsw i64 %polly.indvar379.us, 8000
  %scevgep383.us = getelementptr i8, i8* %scevgep382.us, i64 %123
  %scevgep383384.us = bitcast i8* %scevgep383.us to double*
  %_p_scalar_385.us = load double, double* %scevgep383384.us, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.us = fmul fast double %_p_scalar_389.us, %_p_scalar_385.us
  %scevgep391.us = getelementptr i8, i8* %scevgep386.us, i64 %123
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.us = fmul fast double %_p_scalar_397.us, %_p_scalar_393.us
  %124 = shl i64 %polly.indvar379.us, 3
  %125 = add nuw nsw i64 %124, %122
  %scevgep398.us = getelementptr i8, i8* %call, i64 %125
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_400.us
  store double %p_add42.i79.us, double* %scevgep398399.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond789.not = icmp eq i64 %polly.indvar379.us, %smin788
  br i1 %exitcond789.not, label %polly.loop_exit378.us, label %polly.loop_header376.us

polly.loop_exit378.us:                            ; preds = %polly.loop_header376.us
  %polly.indvar_next374.us = add nuw nsw i64 %polly.indvar373.us, 1
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1
  %exitcond796.not = icmp eq i64 %polly.indvar373.us, %smax795
  br i1 %exitcond796.not, label %polly.loop_exit371.loopexit.us, label %polly.loop_header369.us

polly.loop_exit371.loopexit.us:                   ; preds = %polly.loop_exit378.us
  %polly.indvar_next366.us = add nuw nsw i64 %polly.indvar365.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next366.us, 1000
  br i1 %exitcond797.not, label %polly.loop_exit364, label %polly.loop_header362.us

polly.loop_exit364:                               ; preds = %polly.loop_exit371.loopexit.us, %polly.loop_header356
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 128
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, -128
  %exitcond798.not = icmp eq i64 %polly.indvar_next360, 10
  br i1 %exitcond798.not, label %polly.loop_header356.1, label %polly.loop_header356

polly.loop_header487:                             ; preds = %init_array.exit, %polly.loop_exit495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit495 ], [ 0, %init_array.exit ]
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_exit495 ], [ 1, %init_array.exit ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar490, 9600
  %scevgep499 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check958 = icmp ult i64 %126, 4
  br i1 %min.iters.check958, label %polly.loop_header493.preheader, label %vector.ph959

vector.ph959:                                     ; preds = %polly.loop_header487
  %n.vec961 = and i64 %126, -4
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next963, %vector.body957 ]
  %128 = shl nuw nsw i64 %index962, 3
  %129 = getelementptr i8, i8* %scevgep499, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load966 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !81, !noalias !83
  %131 = fmul fast <4 x double> %wide.load966, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !81, !noalias !83
  %index.next963 = add i64 %index962, 4
  %133 = icmp eq i64 %index.next963, %n.vec961
  br i1 %133, label %middle.block955, label %vector.body957, !llvm.loop !86

middle.block955:                                  ; preds = %vector.body957
  %cmp.n965 = icmp eq i64 %126, %n.vec961
  br i1 %cmp.n965, label %polly.loop_exit495, label %polly.loop_header493.preheader

polly.loop_header493.preheader:                   ; preds = %polly.loop_header487, %middle.block955
  %polly.indvar496.ph = phi i64 [ 0, %polly.loop_header487 ], [ %n.vec961, %middle.block955 ]
  br label %polly.loop_header493

polly.loop_exit495:                               ; preds = %polly.loop_header493, %middle.block955
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next491, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond819.not, label %polly.loop_header509, label %polly.loop_header487

polly.loop_header493:                             ; preds = %polly.loop_header493.preheader, %polly.loop_header493
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_header493 ], [ %polly.indvar496.ph, %polly.loop_header493.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar496, 3
  %scevgep500 = getelementptr i8, i8* %scevgep499, i64 %134
  %scevgep500501 = bitcast i8* %scevgep500 to double*
  %_p_scalar_502 = load double, double* %scevgep500501, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_502, 1.200000e+00
  store double %p_mul.i, double* %scevgep500501, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next497, %polly.indvar490
  br i1 %exitcond818.not, label %polly.loop_exit495, label %polly.loop_header493, !llvm.loop !87

polly.loop_header509:                             ; preds = %polly.loop_exit495, %polly.loop_exit517
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 -1072)
  %135 = add nsw i64 %smin812, 1199
  %smax813 = call i64 @llvm.smax.i64(i64 %135, i64 0)
  %136 = mul nsw i64 %polly.indvar512, -128
  %polly.loop_guard525864 = icmp sgt i64 %136, -1200
  %137 = shl nsw i64 %polly.indvar512, 7
  br i1 %polly.loop_guard525864, label %polly.loop_header515.us, label %polly.loop_exit517

polly.loop_header515.us:                          ; preds = %polly.loop_header509, %polly.loop_exit524.loopexit.us
  %polly.indvar518.us = phi i64 [ %polly.indvar_next519.us, %polly.loop_exit524.loopexit.us ], [ 0, %polly.loop_header509 ]
  %138 = shl nuw nsw i64 %polly.indvar518.us, 3
  %scevgep535.us = getelementptr i8, i8* %call1, i64 %138
  %scevgep539.us = getelementptr i8, i8* %call2, i64 %138
  br label %polly.loop_header522.us

polly.loop_header522.us:                          ; preds = %polly.loop_exit531.us, %polly.loop_header515.us
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit531.us ], [ %indvars.iv802, %polly.loop_header515.us ]
  %polly.indvar526.us = phi i64 [ %polly.indvar_next527.us, %polly.loop_exit531.us ], [ 0, %polly.loop_header515.us ]
  %smin806 = call i64 @llvm.smin.i64(i64 %indvars.iv804, i64 255)
  %139 = add nuw nsw i64 %polly.indvar526.us, %137
  %140 = mul nuw nsw i64 %139, 8000
  %scevgep540.us = getelementptr i8, i8* %scevgep539.us, i64 %140
  %scevgep540541.us = bitcast i8* %scevgep540.us to double*
  %_p_scalar_542.us = load double, double* %scevgep540541.us, align 8, !alias.scope !85, !noalias !88
  %scevgep548.us = getelementptr i8, i8* %scevgep535.us, i64 %140
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !84, !noalias !89
  %141 = mul nuw nsw i64 %139, 9600
  br label %polly.loop_header529.us

polly.loop_header529.us:                          ; preds = %polly.loop_header529.us, %polly.loop_header522.us
  %polly.indvar532.us = phi i64 [ 0, %polly.loop_header522.us ], [ %polly.indvar_next533.us, %polly.loop_header529.us ]
  %142 = mul nuw nsw i64 %polly.indvar532.us, 8000
  %scevgep536.us = getelementptr i8, i8* %scevgep535.us, i64 %142
  %scevgep536537.us = bitcast i8* %scevgep536.us to double*
  %_p_scalar_538.us = load double, double* %scevgep536537.us, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.us = fmul fast double %_p_scalar_542.us, %_p_scalar_538.us
  %scevgep544.us = getelementptr i8, i8* %scevgep539.us, i64 %142
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %143 = shl i64 %polly.indvar532.us, 3
  %144 = add nuw nsw i64 %143, %141
  %scevgep551.us = getelementptr i8, i8* %call, i64 %144
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_553.us
  store double %p_add42.i.us, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar532.us, %smin806
  br i1 %exitcond807.not, label %polly.loop_exit531.us, label %polly.loop_header529.us

polly.loop_exit531.us:                            ; preds = %polly.loop_header529.us
  %polly.indvar_next527.us = add nuw nsw i64 %polly.indvar526.us, 1
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %exitcond814.not = icmp eq i64 %polly.indvar526.us, %smax813
  br i1 %exitcond814.not, label %polly.loop_exit524.loopexit.us, label %polly.loop_header522.us

polly.loop_exit524.loopexit.us:                   ; preds = %polly.loop_exit531.us
  %polly.indvar_next519.us = add nuw nsw i64 %polly.indvar518.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next519.us, 1000
  br i1 %exitcond815.not, label %polly.loop_exit517, label %polly.loop_header515.us

polly.loop_exit517:                               ; preds = %polly.loop_exit524.loopexit.us, %polly.loop_header509
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 128
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -128
  %exitcond816.not = icmp eq i64 %polly.indvar_next513, 10
  br i1 %exitcond816.not, label %polly.loop_header509.1, label %polly.loop_header509

polly.loop_header680:                             ; preds = %entry, %polly.loop_exit688
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit688 ], [ 0, %entry ]
  %polly.indvar683 = phi i64 [ %polly.indvar_next684, %polly.loop_exit688 ], [ 0, %entry ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %145 = shl nsw i64 %polly.indvar683, 5
  %146 = add nsw i64 %smin846, 1199
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit694
  %polly.indvar_next684 = add nuw nsw i64 %polly.indvar683, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next684, 38
  br i1 %exitcond849.not, label %polly.loop_header707, label %polly.loop_header680

polly.loop_header686:                             ; preds = %polly.loop_exit694, %polly.loop_header680
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %147 = mul nsw i64 %polly.indvar689, -32
  %smin896 = call i64 @llvm.smin.i64(i64 %147, i64 -1168)
  %148 = add nsw i64 %smin896, 1200
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -1168)
  %149 = shl nsw i64 %polly.indvar689, 5
  %150 = add nsw i64 %smin842, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond848.not, label %polly.loop_exit688, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %polly.indvar695 = phi i64 [ 0, %polly.loop_header686 ], [ %polly.indvar_next696, %polly.loop_exit700 ]
  %151 = add nuw nsw i64 %polly.indvar695, %145
  %152 = trunc i64 %151 to i32
  %153 = mul nuw nsw i64 %151, 9600
  %min.iters.check = icmp eq i64 %148, 0
  br i1 %min.iters.check, label %polly.loop_header698, label %vector.ph897

vector.ph897:                                     ; preds = %polly.loop_header692
  %broadcast.splatinsert904 = insertelement <4 x i64> poison, i64 %149, i32 0
  %broadcast.splat905 = shufflevector <4 x i64> %broadcast.splatinsert904, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert906 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat907 = shufflevector <4 x i32> %broadcast.splatinsert906, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body895

vector.body895:                                   ; preds = %vector.body895, %vector.ph897
  %index898 = phi i64 [ 0, %vector.ph897 ], [ %index.next899, %vector.body895 ]
  %vec.ind902 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph897 ], [ %vec.ind.next903, %vector.body895 ]
  %154 = add nuw nsw <4 x i64> %vec.ind902, %broadcast.splat905
  %155 = trunc <4 x i64> %154 to <4 x i32>
  %156 = mul <4 x i32> %broadcast.splat907, %155
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 1200, i32 1200, i32 1200, i32 1200>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %161 = extractelement <4 x i64> %154, i32 0
  %162 = shl i64 %161, 3
  %163 = add nuw nsw i64 %162, %153
  %164 = getelementptr i8, i8* %call, i64 %163
  %165 = bitcast i8* %164 to <4 x double>*
  store <4 x double> %160, <4 x double>* %165, align 8, !alias.scope !90, !noalias !92
  %index.next899 = add i64 %index898, 4
  %vec.ind.next903 = add <4 x i64> %vec.ind902, <i64 4, i64 4, i64 4, i64 4>
  %166 = icmp eq i64 %index.next899, %148
  br i1 %166, label %polly.loop_exit700, label %vector.body895, !llvm.loop !95

polly.loop_exit700:                               ; preds = %vector.body895, %polly.loop_header698
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %exitcond847.not = icmp eq i64 %polly.indvar695, %146
  br i1 %exitcond847.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_header692, %polly.loop_header698
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_header698 ], [ 0, %polly.loop_header692 ]
  %167 = add nuw nsw i64 %polly.indvar701, %149
  %168 = trunc i64 %167 to i32
  %169 = mul i32 %168, %152
  %170 = add i32 %169, 3
  %171 = urem i32 %170, 1200
  %p_conv31.i = sitofp i32 %171 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %172 = shl i64 %167, 3
  %173 = add nuw nsw i64 %172, %153
  %scevgep704 = getelementptr i8, i8* %call, i64 %173
  %scevgep704705 = bitcast i8* %scevgep704 to double*
  store double %p_div33.i, double* %scevgep704705, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond843.not = icmp eq i64 %polly.indvar701, %150
  br i1 %exitcond843.not, label %polly.loop_exit700, label %polly.loop_header698, !llvm.loop !96

polly.loop_header707:                             ; preds = %polly.loop_exit688, %polly.loop_exit715
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %polly.indvar710 = phi i64 [ %polly.indvar_next711, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -1168)
  %174 = shl nsw i64 %polly.indvar710, 5
  %175 = add nsw i64 %smin836, 1199
  br label %polly.loop_header713

polly.loop_exit715:                               ; preds = %polly.loop_exit721
  %polly.indvar_next711 = add nuw nsw i64 %polly.indvar710, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond839.not = icmp eq i64 %polly.indvar_next711, 38
  br i1 %exitcond839.not, label %polly.loop_header733, label %polly.loop_header707

polly.loop_header713:                             ; preds = %polly.loop_exit721, %polly.loop_header707
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %176 = mul nsw i64 %polly.indvar716, -32
  %smin911 = call i64 @llvm.smin.i64(i64 %176, i64 -968)
  %177 = add nsw i64 %smin911, 1000
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 -968)
  %178 = shl nsw i64 %polly.indvar716, 5
  %179 = add nsw i64 %smin832, 999
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, -32
  %exitcond838.not = icmp eq i64 %polly.indvar_next717, 32
  br i1 %exitcond838.not, label %polly.loop_exit715, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %polly.indvar722 = phi i64 [ 0, %polly.loop_header713 ], [ %polly.indvar_next723, %polly.loop_exit727 ]
  %180 = add nuw nsw i64 %polly.indvar722, %174
  %181 = trunc i64 %180 to i32
  %182 = mul nuw nsw i64 %180, 8000
  %min.iters.check912 = icmp eq i64 %177, 0
  br i1 %min.iters.check912, label %polly.loop_header725, label %vector.ph913

vector.ph913:                                     ; preds = %polly.loop_header719
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %178, i32 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert924 = insertelement <4 x i32> poison, i32 %181, i32 0
  %broadcast.splat925 = shufflevector <4 x i32> %broadcast.splatinsert924, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body910

vector.body910:                                   ; preds = %vector.body910, %vector.ph913
  %index916 = phi i64 [ 0, %vector.ph913 ], [ %index.next917, %vector.body910 ]
  %vec.ind920 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph913 ], [ %vec.ind.next921, %vector.body910 ]
  %183 = add nuw nsw <4 x i64> %vec.ind920, %broadcast.splat923
  %184 = trunc <4 x i64> %183 to <4 x i32>
  %185 = mul <4 x i32> %broadcast.splat925, %184
  %186 = add <4 x i32> %185, <i32 2, i32 2, i32 2, i32 2>
  %187 = urem <4 x i32> %186, <i32 1000, i32 1000, i32 1000, i32 1000>
  %188 = sitofp <4 x i32> %187 to <4 x double>
  %189 = fmul fast <4 x double> %188, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %190 = extractelement <4 x i64> %183, i32 0
  %191 = shl i64 %190, 3
  %192 = add nuw nsw i64 %191, %182
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %189, <4 x double>* %194, align 8, !alias.scope !94, !noalias !97
  %index.next917 = add i64 %index916, 4
  %vec.ind.next921 = add <4 x i64> %vec.ind920, <i64 4, i64 4, i64 4, i64 4>
  %195 = icmp eq i64 %index.next917, %177
  br i1 %195, label %polly.loop_exit727, label %vector.body910, !llvm.loop !98

polly.loop_exit727:                               ; preds = %vector.body910, %polly.loop_header725
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %exitcond837.not = icmp eq i64 %polly.indvar722, %175
  br i1 %exitcond837.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_header719, %polly.loop_header725
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_header725 ], [ 0, %polly.loop_header719 ]
  %196 = add nuw nsw i64 %polly.indvar728, %178
  %197 = trunc i64 %196 to i32
  %198 = mul i32 %197, %181
  %199 = add i32 %198, 2
  %200 = urem i32 %199, 1000
  %p_conv10.i = sitofp i32 %200 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %201 = shl i64 %196, 3
  %202 = add nuw nsw i64 %201, %182
  %scevgep731 = getelementptr i8, i8* %call2, i64 %202
  %scevgep731732 = bitcast i8* %scevgep731 to double*
  store double %p_div12.i, double* %scevgep731732, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond833.not = icmp eq i64 %polly.indvar728, %179
  br i1 %exitcond833.not, label %polly.loop_exit727, label %polly.loop_header725, !llvm.loop !99

polly.loop_header733:                             ; preds = %polly.loop_exit715, %polly.loop_exit741
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -1168)
  %203 = shl nsw i64 %polly.indvar736, 5
  %204 = add nsw i64 %smin826, 1199
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond829.not = icmp eq i64 %polly.indvar_next737, 38
  br i1 %exitcond829.not, label %init_array.exit, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %205 = mul nsw i64 %polly.indvar742, -32
  %smin929 = call i64 @llvm.smin.i64(i64 %205, i64 -968)
  %206 = add nsw i64 %smin929, 1000
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 -968)
  %207 = shl nsw i64 %polly.indvar742, 5
  %208 = add nsw i64 %smin822, 999
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond828.not = icmp eq i64 %polly.indvar_next743, 32
  br i1 %exitcond828.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %polly.indvar748 = phi i64 [ 0, %polly.loop_header739 ], [ %polly.indvar_next749, %polly.loop_exit753 ]
  %209 = add nuw nsw i64 %polly.indvar748, %203
  %210 = trunc i64 %209 to i32
  %211 = mul nuw nsw i64 %209, 8000
  %min.iters.check930 = icmp eq i64 %206, 0
  br i1 %min.iters.check930, label %polly.loop_header751, label %vector.ph931

vector.ph931:                                     ; preds = %polly.loop_header745
  %broadcast.splatinsert940 = insertelement <4 x i64> poison, i64 %207, i32 0
  %broadcast.splat941 = shufflevector <4 x i64> %broadcast.splatinsert940, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %210, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph931
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next935, %vector.body928 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph931 ], [ %vec.ind.next939, %vector.body928 ]
  %212 = add nuw nsw <4 x i64> %vec.ind938, %broadcast.splat941
  %213 = trunc <4 x i64> %212 to <4 x i32>
  %214 = mul <4 x i32> %broadcast.splat943, %213
  %215 = add <4 x i32> %214, <i32 1, i32 1, i32 1, i32 1>
  %216 = urem <4 x i32> %215, <i32 1200, i32 1200, i32 1200, i32 1200>
  %217 = sitofp <4 x i32> %216 to <4 x double>
  %218 = fmul fast <4 x double> %217, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %219 = extractelement <4 x i64> %212, i32 0
  %220 = shl i64 %219, 3
  %221 = add nuw nsw i64 %220, %211
  %222 = getelementptr i8, i8* %call1, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %218, <4 x double>* %223, align 8, !alias.scope !93, !noalias !100
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %224 = icmp eq i64 %index.next935, %206
  br i1 %224, label %polly.loop_exit753, label %vector.body928, !llvm.loop !101

polly.loop_exit753:                               ; preds = %vector.body928, %polly.loop_header751
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond827.not = icmp eq i64 %polly.indvar748, %204
  br i1 %exitcond827.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_header745, %polly.loop_header751
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_header751 ], [ 0, %polly.loop_header745 ]
  %225 = add nuw nsw i64 %polly.indvar754, %207
  %226 = trunc i64 %225 to i32
  %227 = mul i32 %226, %210
  %228 = add i32 %227, 1
  %229 = urem i32 %228, 1200
  %p_conv.i = sitofp i32 %229 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %230 = shl i64 %225, 3
  %231 = add nuw nsw i64 %230, %211
  %scevgep758 = getelementptr i8, i8* %call1, i64 %231
  %scevgep758759 = bitcast i8* %scevgep758 to double*
  store double %p_div.i, double* %scevgep758759, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond823.not = icmp eq i64 %polly.indvar754, %208
  br i1 %exitcond823.not, label %polly.loop_exit753, label %polly.loop_header751, !llvm.loop !102

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv775.1 = phi i64 [ %indvars.iv.next776.1, %polly.loop_exit213.1 ], [ -256, %polly.loop_exit213 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 2, %polly.loop_exit213 ]
  %smin777.1 = call i64 @llvm.smin.i64(i64 %indvars.iv775.1, i64 -1072)
  %232 = add nsw i64 %smin777.1, 1199
  %smax.1 = call i64 @llvm.smax.i64(i64 %232, i64 0)
  %233 = mul nsw i64 %polly.indvar208.1, -128
  %polly.loop_guard.1855 = icmp sgt i64 %233, -1200
  %234 = shl nsw i64 %polly.indvar208.1, 7
  br i1 %polly.loop_guard.1855, label %polly.loop_header211.us.1, label %polly.loop_exit213.1

polly.loop_header211.us.1:                        ; preds = %polly.loop_header205.1, %polly.loop_exit219.loopexit.us.1
  %polly.indvar214.us.1 = phi i64 [ %polly.indvar_next215.us.1, %polly.loop_exit219.loopexit.us.1 ], [ 0, %polly.loop_header205.1 ]
  %235 = shl nuw nsw i64 %polly.indvar214.us.1, 3
  %scevgep229.us.1 = getelementptr i8, i8* %call1, i64 %235
  %scevgep233.us.1 = getelementptr i8, i8* %call2, i64 %235
  br label %polly.loop_header217.us.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_exit225.us.1, %polly.loop_header211.us.1
  %indvars.iv771.1 = phi i64 [ %indvars.iv.next772.1, %polly.loop_exit225.us.1 ], [ %indvars.iv.1, %polly.loop_header211.us.1 ]
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit225.us.1 ], [ 0, %polly.loop_header211.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv771.1, i64 255)
  %236 = add nuw nsw i64 %polly.indvar220.us.1, %234
  %237 = mul nuw nsw i64 %236, 8000
  %scevgep234.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %237
  %scevgep234235.us.1 = bitcast i8* %scevgep234.us.1 to double*
  %_p_scalar_236.us.1 = load double, double* %scevgep234235.us.1, align 8, !alias.scope !66, !noalias !70
  %scevgep242.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %237
  %scevgep242243.us.1 = bitcast i8* %scevgep242.us.1 to double*
  %_p_scalar_244.us.1 = load double, double* %scevgep242243.us.1, align 8, !alias.scope !65, !noalias !71
  %238 = mul nuw nsw i64 %236, 9600
  br label %polly.loop_header223.us.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header223.us.1, %polly.loop_header217.us.1
  %polly.indvar226.us.1 = phi i64 [ 0, %polly.loop_header217.us.1 ], [ %polly.indvar_next227.us.1, %polly.loop_header223.us.1 ]
  %239 = add nuw nsw i64 %polly.indvar226.us.1, 256
  %240 = mul nuw nsw i64 %239, 8000
  %scevgep230.us.1 = getelementptr i8, i8* %scevgep229.us.1, i64 %240
  %scevgep230231.us.1 = bitcast i8* %scevgep230.us.1 to double*
  %_p_scalar_232.us.1 = load double, double* %scevgep230231.us.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_236.us.1, %_p_scalar_232.us.1
  %scevgep238.us.1 = getelementptr i8, i8* %scevgep233.us.1, i64 %240
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_244.us.1, %_p_scalar_240.us.1
  %241 = shl i64 %239, 3
  %242 = add nuw nsw i64 %241, %238
  %scevgep245.us.1 = getelementptr i8, i8* %call, i64 %242
  %scevgep245246.us.1 = bitcast i8* %scevgep245.us.1 to double*
  %_p_scalar_247.us.1 = load double, double* %scevgep245246.us.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_247.us.1
  store double %p_add42.i118.us.1, double* %scevgep245246.us.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.us.1, label %polly.loop_header223.us.1

polly.loop_exit225.us.1:                          ; preds = %polly.loop_header223.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %indvars.iv.next772.1 = add nuw nsw i64 %indvars.iv771.1, 1
  %exitcond778.1.not = icmp eq i64 %polly.indvar220.us.1, %smax.1
  br i1 %exitcond778.1.not, label %polly.loop_exit219.loopexit.us.1, label %polly.loop_header217.us.1

polly.loop_exit219.loopexit.us.1:                 ; preds = %polly.loop_exit225.us.1
  %polly.indvar_next215.us.1 = add nuw nsw i64 %polly.indvar214.us.1, 1
  %exitcond779.1.not = icmp eq i64 %polly.indvar_next215.us.1, 1000
  br i1 %exitcond779.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.us.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.loopexit.us.1, %polly.loop_header205.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 128
  %indvars.iv.next776.1 = add nsw i64 %indvars.iv775.1, -128
  %exitcond780.1.not = icmp eq i64 %polly.indvar_next209.1, 10
  br i1 %exitcond780.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit213.2
  %indvars.iv775.2 = phi i64 [ %indvars.iv.next776.2, %polly.loop_exit213.2 ], [ -512, %polly.loop_exit213.1 ]
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit213.2 ], [ 0, %polly.loop_exit213.1 ]
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit213.2 ], [ 4, %polly.loop_exit213.1 ]
  %smin777.2 = call i64 @llvm.smin.i64(i64 %indvars.iv775.2, i64 -1072)
  %243 = add nsw i64 %smin777.2, 1199
  %smax.2 = call i64 @llvm.smax.i64(i64 %243, i64 0)
  %244 = mul nsw i64 %polly.indvar208.2, -128
  %polly.loop_guard.2856 = icmp sgt i64 %244, -1200
  %245 = shl nsw i64 %polly.indvar208.2, 7
  br i1 %polly.loop_guard.2856, label %polly.loop_header211.us.2, label %polly.loop_exit213.2

polly.loop_header211.us.2:                        ; preds = %polly.loop_header205.2, %polly.loop_exit219.loopexit.us.2
  %polly.indvar214.us.2 = phi i64 [ %polly.indvar_next215.us.2, %polly.loop_exit219.loopexit.us.2 ], [ 0, %polly.loop_header205.2 ]
  %246 = shl nuw nsw i64 %polly.indvar214.us.2, 3
  %scevgep229.us.2 = getelementptr i8, i8* %call1, i64 %246
  %scevgep233.us.2 = getelementptr i8, i8* %call2, i64 %246
  br label %polly.loop_header217.us.2

polly.loop_header217.us.2:                        ; preds = %polly.loop_exit225.us.2, %polly.loop_header211.us.2
  %indvars.iv771.2 = phi i64 [ %indvars.iv.next772.2, %polly.loop_exit225.us.2 ], [ %indvars.iv.2, %polly.loop_header211.us.2 ]
  %polly.indvar220.us.2 = phi i64 [ %polly.indvar_next221.us.2, %polly.loop_exit225.us.2 ], [ 0, %polly.loop_header211.us.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv771.2, i64 255)
  %247 = add nuw nsw i64 %polly.indvar220.us.2, %245
  %248 = mul nuw nsw i64 %247, 8000
  %scevgep234.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %248
  %scevgep234235.us.2 = bitcast i8* %scevgep234.us.2 to double*
  %_p_scalar_236.us.2 = load double, double* %scevgep234235.us.2, align 8, !alias.scope !66, !noalias !70
  %scevgep242.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %248
  %scevgep242243.us.2 = bitcast i8* %scevgep242.us.2 to double*
  %_p_scalar_244.us.2 = load double, double* %scevgep242243.us.2, align 8, !alias.scope !65, !noalias !71
  %249 = mul nuw nsw i64 %247, 9600
  br label %polly.loop_header223.us.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_header223.us.2, %polly.loop_header217.us.2
  %polly.indvar226.us.2 = phi i64 [ 0, %polly.loop_header217.us.2 ], [ %polly.indvar_next227.us.2, %polly.loop_header223.us.2 ]
  %250 = add nuw nsw i64 %polly.indvar226.us.2, 512
  %251 = mul nuw nsw i64 %250, 8000
  %scevgep230.us.2 = getelementptr i8, i8* %scevgep229.us.2, i64 %251
  %scevgep230231.us.2 = bitcast i8* %scevgep230.us.2 to double*
  %_p_scalar_232.us.2 = load double, double* %scevgep230231.us.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_236.us.2, %_p_scalar_232.us.2
  %scevgep238.us.2 = getelementptr i8, i8* %scevgep233.us.2, i64 %251
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_244.us.2, %_p_scalar_240.us.2
  %252 = shl i64 %250, 3
  %253 = add nuw nsw i64 %252, %249
  %scevgep245.us.2 = getelementptr i8, i8* %call, i64 %253
  %scevgep245246.us.2 = bitcast i8* %scevgep245.us.2 to double*
  %_p_scalar_247.us.2 = load double, double* %scevgep245246.us.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_247.us.2
  store double %p_add42.i118.us.2, double* %scevgep245246.us.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.us.2, label %polly.loop_header223.us.2

polly.loop_exit225.us.2:                          ; preds = %polly.loop_header223.us.2
  %polly.indvar_next221.us.2 = add nuw nsw i64 %polly.indvar220.us.2, 1
  %indvars.iv.next772.2 = add nuw nsw i64 %indvars.iv771.2, 1
  %exitcond778.2.not = icmp eq i64 %polly.indvar220.us.2, %smax.2
  br i1 %exitcond778.2.not, label %polly.loop_exit219.loopexit.us.2, label %polly.loop_header217.us.2

polly.loop_exit219.loopexit.us.2:                 ; preds = %polly.loop_exit225.us.2
  %polly.indvar_next215.us.2 = add nuw nsw i64 %polly.indvar214.us.2, 1
  %exitcond779.2.not = icmp eq i64 %polly.indvar_next215.us.2, 1000
  br i1 %exitcond779.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.us.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.loopexit.us.2, %polly.loop_header205.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 128
  %indvars.iv.next776.2 = add nsw i64 %indvars.iv775.2, -128
  %exitcond780.2.not = icmp eq i64 %polly.indvar_next209.2, 10
  br i1 %exitcond780.2.not, label %polly.loop_header205.3, label %polly.loop_header205.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit213.2, %polly.loop_exit213.3
  %indvars.iv775.3 = phi i64 [ %indvars.iv.next776.3, %polly.loop_exit213.3 ], [ -768, %polly.loop_exit213.2 ]
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit213.3 ], [ 0, %polly.loop_exit213.2 ]
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_exit213.3 ], [ 6, %polly.loop_exit213.2 ]
  %smin777.3 = call i64 @llvm.smin.i64(i64 %indvars.iv775.3, i64 -1072)
  %254 = add nsw i64 %smin777.3, 1199
  %smax.3 = call i64 @llvm.smax.i64(i64 %254, i64 0)
  %255 = mul nsw i64 %polly.indvar208.3, -128
  %polly.loop_guard.3857 = icmp sgt i64 %255, -1200
  %256 = shl nsw i64 %polly.indvar208.3, 7
  br i1 %polly.loop_guard.3857, label %polly.loop_header211.us.3, label %polly.loop_exit213.3

polly.loop_header211.us.3:                        ; preds = %polly.loop_header205.3, %polly.loop_exit219.loopexit.us.3
  %polly.indvar214.us.3 = phi i64 [ %polly.indvar_next215.us.3, %polly.loop_exit219.loopexit.us.3 ], [ 0, %polly.loop_header205.3 ]
  %257 = shl nuw nsw i64 %polly.indvar214.us.3, 3
  %scevgep229.us.3 = getelementptr i8, i8* %call1, i64 %257
  %scevgep233.us.3 = getelementptr i8, i8* %call2, i64 %257
  br label %polly.loop_header217.us.3

polly.loop_header217.us.3:                        ; preds = %polly.loop_exit225.us.3, %polly.loop_header211.us.3
  %indvars.iv771.3 = phi i64 [ %indvars.iv.next772.3, %polly.loop_exit225.us.3 ], [ %indvars.iv.3, %polly.loop_header211.us.3 ]
  %polly.indvar220.us.3 = phi i64 [ %polly.indvar_next221.us.3, %polly.loop_exit225.us.3 ], [ 0, %polly.loop_header211.us.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv771.3, i64 255)
  %258 = add nuw nsw i64 %polly.indvar220.us.3, %256
  %259 = mul nuw nsw i64 %258, 8000
  %scevgep234.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %259
  %scevgep234235.us.3 = bitcast i8* %scevgep234.us.3 to double*
  %_p_scalar_236.us.3 = load double, double* %scevgep234235.us.3, align 8, !alias.scope !66, !noalias !70
  %scevgep242.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %259
  %scevgep242243.us.3 = bitcast i8* %scevgep242.us.3 to double*
  %_p_scalar_244.us.3 = load double, double* %scevgep242243.us.3, align 8, !alias.scope !65, !noalias !71
  %260 = mul nuw nsw i64 %258, 9600
  br label %polly.loop_header223.us.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_header223.us.3, %polly.loop_header217.us.3
  %polly.indvar226.us.3 = phi i64 [ 0, %polly.loop_header217.us.3 ], [ %polly.indvar_next227.us.3, %polly.loop_header223.us.3 ]
  %261 = add nuw nsw i64 %polly.indvar226.us.3, 768
  %262 = mul nuw nsw i64 %261, 8000
  %scevgep230.us.3 = getelementptr i8, i8* %scevgep229.us.3, i64 %262
  %scevgep230231.us.3 = bitcast i8* %scevgep230.us.3 to double*
  %_p_scalar_232.us.3 = load double, double* %scevgep230231.us.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_236.us.3, %_p_scalar_232.us.3
  %scevgep238.us.3 = getelementptr i8, i8* %scevgep233.us.3, i64 %262
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_244.us.3, %_p_scalar_240.us.3
  %263 = shl i64 %261, 3
  %264 = add nuw nsw i64 %263, %260
  %scevgep245.us.3 = getelementptr i8, i8* %call, i64 %264
  %scevgep245246.us.3 = bitcast i8* %scevgep245.us.3 to double*
  %_p_scalar_247.us.3 = load double, double* %scevgep245246.us.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_247.us.3
  store double %p_add42.i118.us.3, double* %scevgep245246.us.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.us.3, label %polly.loop_header223.us.3

polly.loop_exit225.us.3:                          ; preds = %polly.loop_header223.us.3
  %polly.indvar_next221.us.3 = add nuw nsw i64 %polly.indvar220.us.3, 1
  %indvars.iv.next772.3 = add nuw nsw i64 %indvars.iv771.3, 1
  %exitcond778.3.not = icmp eq i64 %polly.indvar220.us.3, %smax.3
  br i1 %exitcond778.3.not, label %polly.loop_exit219.loopexit.us.3, label %polly.loop_header217.us.3

polly.loop_exit219.loopexit.us.3:                 ; preds = %polly.loop_exit225.us.3
  %polly.indvar_next215.us.3 = add nuw nsw i64 %polly.indvar214.us.3, 1
  %exitcond779.3.not = icmp eq i64 %polly.indvar_next215.us.3, 1000
  br i1 %exitcond779.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.us.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.loopexit.us.3, %polly.loop_header205.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 128
  %indvars.iv.next776.3 = add nsw i64 %indvars.iv775.3, -128
  %exitcond780.3.not = icmp eq i64 %polly.indvar_next209.3, 10
  br i1 %exitcond780.3.not, label %polly.loop_header205.4, label %polly.loop_header205.3

polly.loop_header205.4:                           ; preds = %polly.loop_exit213.3, %polly.loop_exit213.4
  %indvars.iv775.4 = phi i64 [ %indvars.iv.next776.4, %polly.loop_exit213.4 ], [ -1024, %polly.loop_exit213.3 ]
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit213.3 ]
  %polly.indvar208.4 = phi i64 [ %polly.indvar_next209.4, %polly.loop_exit213.4 ], [ 8, %polly.loop_exit213.3 ]
  %smin777.4 = call i64 @llvm.smin.i64(i64 %indvars.iv775.4, i64 -1072)
  %265 = add nsw i64 %smin777.4, 1199
  %smax.4 = call i64 @llvm.smax.i64(i64 %265, i64 0)
  %266 = mul nsw i64 %polly.indvar208.4, -128
  %polly.loop_guard.4858 = icmp sgt i64 %266, -1200
  %267 = shl nsw i64 %polly.indvar208.4, 7
  br i1 %polly.loop_guard.4858, label %polly.loop_header211.us.4, label %polly.loop_exit213.4

polly.loop_header211.us.4:                        ; preds = %polly.loop_header205.4, %polly.loop_exit219.loopexit.us.4
  %polly.indvar214.us.4 = phi i64 [ %polly.indvar_next215.us.4, %polly.loop_exit219.loopexit.us.4 ], [ 0, %polly.loop_header205.4 ]
  %268 = shl nuw nsw i64 %polly.indvar214.us.4, 3
  %scevgep229.us.4 = getelementptr i8, i8* %call1, i64 %268
  %scevgep233.us.4 = getelementptr i8, i8* %call2, i64 %268
  br label %polly.loop_header217.us.4

polly.loop_header217.us.4:                        ; preds = %polly.loop_exit225.us.4, %polly.loop_header211.us.4
  %indvars.iv771.4 = phi i64 [ %indvars.iv.next772.4, %polly.loop_exit225.us.4 ], [ %indvars.iv.4, %polly.loop_header211.us.4 ]
  %polly.indvar220.us.4 = phi i64 [ %polly.indvar_next221.us.4, %polly.loop_exit225.us.4 ], [ 0, %polly.loop_header211.us.4 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv771.4, i64 255)
  %269 = add nuw nsw i64 %polly.indvar220.us.4, %267
  %270 = mul nuw nsw i64 %269, 8000
  %scevgep234.us.4 = getelementptr i8, i8* %scevgep233.us.4, i64 %270
  %scevgep234235.us.4 = bitcast i8* %scevgep234.us.4 to double*
  %_p_scalar_236.us.4 = load double, double* %scevgep234235.us.4, align 8, !alias.scope !66, !noalias !70
  %scevgep242.us.4 = getelementptr i8, i8* %scevgep229.us.4, i64 %270
  %scevgep242243.us.4 = bitcast i8* %scevgep242.us.4 to double*
  %_p_scalar_244.us.4 = load double, double* %scevgep242243.us.4, align 8, !alias.scope !65, !noalias !71
  %271 = mul nuw nsw i64 %269, 9600
  br label %polly.loop_header223.us.4

polly.loop_header223.us.4:                        ; preds = %polly.loop_header223.us.4, %polly.loop_header217.us.4
  %polly.indvar226.us.4 = phi i64 [ 0, %polly.loop_header217.us.4 ], [ %polly.indvar_next227.us.4, %polly.loop_header223.us.4 ]
  %272 = add nuw nsw i64 %polly.indvar226.us.4, 1024
  %273 = mul nuw nsw i64 %272, 8000
  %scevgep230.us.4 = getelementptr i8, i8* %scevgep229.us.4, i64 %273
  %scevgep230231.us.4 = bitcast i8* %scevgep230.us.4 to double*
  %_p_scalar_232.us.4 = load double, double* %scevgep230231.us.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_236.us.4, %_p_scalar_232.us.4
  %scevgep238.us.4 = getelementptr i8, i8* %scevgep233.us.4, i64 %273
  %scevgep238239.us.4 = bitcast i8* %scevgep238.us.4 to double*
  %_p_scalar_240.us.4 = load double, double* %scevgep238239.us.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_244.us.4, %_p_scalar_240.us.4
  %274 = shl i64 %272, 3
  %275 = add nuw nsw i64 %274, %271
  %scevgep245.us.4 = getelementptr i8, i8* %call, i64 %275
  %scevgep245246.us.4 = bitcast i8* %scevgep245.us.4 to double*
  %_p_scalar_247.us.4 = load double, double* %scevgep245246.us.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us.4 = fadd fast double %p_mul37.i114.us.4, %p_mul27.i112.us.4
  %p_reass.mul.i117.us.4 = fmul fast double %p_reass.add.i116.us.4, 1.500000e+00
  %p_add42.i118.us.4 = fadd fast double %p_reass.mul.i117.us.4, %_p_scalar_247.us.4
  store double %p_add42.i118.us.4, double* %scevgep245246.us.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.us.4 = add nuw nsw i64 %polly.indvar226.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar226.us.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit225.us.4, label %polly.loop_header223.us.4

polly.loop_exit225.us.4:                          ; preds = %polly.loop_header223.us.4
  %polly.indvar_next221.us.4 = add nuw nsw i64 %polly.indvar220.us.4, 1
  %indvars.iv.next772.4 = add nuw nsw i64 %indvars.iv771.4, 1
  %exitcond778.4.not = icmp eq i64 %polly.indvar220.us.4, %smax.4
  br i1 %exitcond778.4.not, label %polly.loop_exit219.loopexit.us.4, label %polly.loop_header217.us.4

polly.loop_exit219.loopexit.us.4:                 ; preds = %polly.loop_exit225.us.4
  %polly.indvar_next215.us.4 = add nuw nsw i64 %polly.indvar214.us.4, 1
  %exitcond779.4.not = icmp eq i64 %polly.indvar_next215.us.4, 1000
  br i1 %exitcond779.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.us.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.loopexit.us.4, %polly.loop_header205.4
  %polly.indvar_next209.4 = add nuw nsw i64 %polly.indvar208.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 128
  %indvars.iv.next776.4 = add nsw i64 %indvars.iv775.4, -128
  %exitcond780.4.not = icmp eq i64 %polly.indvar_next209.4, 10
  br i1 %exitcond780.4.not, label %kernel_syr2k.exit129, label %polly.loop_header205.4

polly.loop_header356.1:                           ; preds = %polly.loop_exit364, %polly.loop_exit364.1
  %indvars.iv792.1 = phi i64 [ %indvars.iv.next793.1, %polly.loop_exit364.1 ], [ -256, %polly.loop_exit364 ]
  %indvars.iv784.1 = phi i64 [ %indvars.iv.next785.1, %polly.loop_exit364.1 ], [ 0, %polly.loop_exit364 ]
  %polly.indvar359.1 = phi i64 [ %polly.indvar_next360.1, %polly.loop_exit364.1 ], [ 2, %polly.loop_exit364 ]
  %smin794.1 = call i64 @llvm.smin.i64(i64 %indvars.iv792.1, i64 -1072)
  %276 = add nsw i64 %smin794.1, 1199
  %smax795.1 = call i64 @llvm.smax.i64(i64 %276, i64 0)
  %277 = mul nsw i64 %polly.indvar359.1, -128
  %polly.loop_guard372.1860 = icmp sgt i64 %277, -1200
  %278 = shl nsw i64 %polly.indvar359.1, 7
  br i1 %polly.loop_guard372.1860, label %polly.loop_header362.us.1, label %polly.loop_exit364.1

polly.loop_header362.us.1:                        ; preds = %polly.loop_header356.1, %polly.loop_exit371.loopexit.us.1
  %polly.indvar365.us.1 = phi i64 [ %polly.indvar_next366.us.1, %polly.loop_exit371.loopexit.us.1 ], [ 0, %polly.loop_header356.1 ]
  %279 = shl nuw nsw i64 %polly.indvar365.us.1, 3
  %scevgep382.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep386.us.1 = getelementptr i8, i8* %call2, i64 %279
  br label %polly.loop_header369.us.1

polly.loop_header369.us.1:                        ; preds = %polly.loop_exit378.us.1, %polly.loop_header362.us.1
  %indvars.iv786.1 = phi i64 [ %indvars.iv.next787.1, %polly.loop_exit378.us.1 ], [ %indvars.iv784.1, %polly.loop_header362.us.1 ]
  %polly.indvar373.us.1 = phi i64 [ %polly.indvar_next374.us.1, %polly.loop_exit378.us.1 ], [ 0, %polly.loop_header362.us.1 ]
  %smin788.1 = call i64 @llvm.smin.i64(i64 %indvars.iv786.1, i64 255)
  %280 = add nuw nsw i64 %polly.indvar373.us.1, %278
  %281 = mul nuw nsw i64 %280, 8000
  %scevgep387.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %281
  %scevgep387388.us.1 = bitcast i8* %scevgep387.us.1 to double*
  %_p_scalar_389.us.1 = load double, double* %scevgep387388.us.1, align 8, !alias.scope !76, !noalias !79
  %scevgep395.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %281
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !75, !noalias !80
  %282 = mul nuw nsw i64 %280, 9600
  br label %polly.loop_header376.us.1

polly.loop_header376.us.1:                        ; preds = %polly.loop_header376.us.1, %polly.loop_header369.us.1
  %polly.indvar379.us.1 = phi i64 [ 0, %polly.loop_header369.us.1 ], [ %polly.indvar_next380.us.1, %polly.loop_header376.us.1 ]
  %283 = add nuw nsw i64 %polly.indvar379.us.1, 256
  %284 = mul nuw nsw i64 %283, 8000
  %scevgep383.us.1 = getelementptr i8, i8* %scevgep382.us.1, i64 %284
  %scevgep383384.us.1 = bitcast i8* %scevgep383.us.1 to double*
  %_p_scalar_385.us.1 = load double, double* %scevgep383384.us.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_389.us.1, %_p_scalar_385.us.1
  %scevgep391.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %284
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_397.us.1, %_p_scalar_393.us.1
  %285 = shl i64 %283, 3
  %286 = add nuw nsw i64 %285, %282
  %scevgep398.us.1 = getelementptr i8, i8* %call, i64 %286
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_400.us.1
  store double %p_add42.i79.us.1, double* %scevgep398399.us.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.us.1 = add nuw nsw i64 %polly.indvar379.us.1, 1
  %exitcond789.1.not = icmp eq i64 %polly.indvar379.us.1, %smin788.1
  br i1 %exitcond789.1.not, label %polly.loop_exit378.us.1, label %polly.loop_header376.us.1

polly.loop_exit378.us.1:                          ; preds = %polly.loop_header376.us.1
  %polly.indvar_next374.us.1 = add nuw nsw i64 %polly.indvar373.us.1, 1
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar373.us.1, %smax795.1
  br i1 %exitcond796.1.not, label %polly.loop_exit371.loopexit.us.1, label %polly.loop_header369.us.1

polly.loop_exit371.loopexit.us.1:                 ; preds = %polly.loop_exit378.us.1
  %polly.indvar_next366.us.1 = add nuw nsw i64 %polly.indvar365.us.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next366.us.1, 1000
  br i1 %exitcond797.1.not, label %polly.loop_exit364.1, label %polly.loop_header362.us.1

polly.loop_exit364.1:                             ; preds = %polly.loop_exit371.loopexit.us.1, %polly.loop_header356.1
  %polly.indvar_next360.1 = add nuw nsw i64 %polly.indvar359.1, 1
  %indvars.iv.next785.1 = add nuw nsw i64 %indvars.iv784.1, 128
  %indvars.iv.next793.1 = add nsw i64 %indvars.iv792.1, -128
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next360.1, 10
  br i1 %exitcond798.1.not, label %polly.loop_header356.2, label %polly.loop_header356.1

polly.loop_header356.2:                           ; preds = %polly.loop_exit364.1, %polly.loop_exit364.2
  %indvars.iv792.2 = phi i64 [ %indvars.iv.next793.2, %polly.loop_exit364.2 ], [ -512, %polly.loop_exit364.1 ]
  %indvars.iv784.2 = phi i64 [ %indvars.iv.next785.2, %polly.loop_exit364.2 ], [ 0, %polly.loop_exit364.1 ]
  %polly.indvar359.2 = phi i64 [ %polly.indvar_next360.2, %polly.loop_exit364.2 ], [ 4, %polly.loop_exit364.1 ]
  %smin794.2 = call i64 @llvm.smin.i64(i64 %indvars.iv792.2, i64 -1072)
  %287 = add nsw i64 %smin794.2, 1199
  %smax795.2 = call i64 @llvm.smax.i64(i64 %287, i64 0)
  %288 = mul nsw i64 %polly.indvar359.2, -128
  %polly.loop_guard372.2861 = icmp sgt i64 %288, -1200
  %289 = shl nsw i64 %polly.indvar359.2, 7
  br i1 %polly.loop_guard372.2861, label %polly.loop_header362.us.2, label %polly.loop_exit364.2

polly.loop_header362.us.2:                        ; preds = %polly.loop_header356.2, %polly.loop_exit371.loopexit.us.2
  %polly.indvar365.us.2 = phi i64 [ %polly.indvar_next366.us.2, %polly.loop_exit371.loopexit.us.2 ], [ 0, %polly.loop_header356.2 ]
  %290 = shl nuw nsw i64 %polly.indvar365.us.2, 3
  %scevgep382.us.2 = getelementptr i8, i8* %call1, i64 %290
  %scevgep386.us.2 = getelementptr i8, i8* %call2, i64 %290
  br label %polly.loop_header369.us.2

polly.loop_header369.us.2:                        ; preds = %polly.loop_exit378.us.2, %polly.loop_header362.us.2
  %indvars.iv786.2 = phi i64 [ %indvars.iv.next787.2, %polly.loop_exit378.us.2 ], [ %indvars.iv784.2, %polly.loop_header362.us.2 ]
  %polly.indvar373.us.2 = phi i64 [ %polly.indvar_next374.us.2, %polly.loop_exit378.us.2 ], [ 0, %polly.loop_header362.us.2 ]
  %smin788.2 = call i64 @llvm.smin.i64(i64 %indvars.iv786.2, i64 255)
  %291 = add nuw nsw i64 %polly.indvar373.us.2, %289
  %292 = mul nuw nsw i64 %291, 8000
  %scevgep387.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %292
  %scevgep387388.us.2 = bitcast i8* %scevgep387.us.2 to double*
  %_p_scalar_389.us.2 = load double, double* %scevgep387388.us.2, align 8, !alias.scope !76, !noalias !79
  %scevgep395.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %292
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !75, !noalias !80
  %293 = mul nuw nsw i64 %291, 9600
  br label %polly.loop_header376.us.2

polly.loop_header376.us.2:                        ; preds = %polly.loop_header376.us.2, %polly.loop_header369.us.2
  %polly.indvar379.us.2 = phi i64 [ 0, %polly.loop_header369.us.2 ], [ %polly.indvar_next380.us.2, %polly.loop_header376.us.2 ]
  %294 = add nuw nsw i64 %polly.indvar379.us.2, 512
  %295 = mul nuw nsw i64 %294, 8000
  %scevgep383.us.2 = getelementptr i8, i8* %scevgep382.us.2, i64 %295
  %scevgep383384.us.2 = bitcast i8* %scevgep383.us.2 to double*
  %_p_scalar_385.us.2 = load double, double* %scevgep383384.us.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_389.us.2, %_p_scalar_385.us.2
  %scevgep391.us.2 = getelementptr i8, i8* %scevgep386.us.2, i64 %295
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_397.us.2, %_p_scalar_393.us.2
  %296 = shl i64 %294, 3
  %297 = add nuw nsw i64 %296, %293
  %scevgep398.us.2 = getelementptr i8, i8* %call, i64 %297
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_400.us.2
  store double %p_add42.i79.us.2, double* %scevgep398399.us.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.us.2 = add nuw nsw i64 %polly.indvar379.us.2, 1
  %exitcond789.2.not = icmp eq i64 %polly.indvar379.us.2, %smin788.2
  br i1 %exitcond789.2.not, label %polly.loop_exit378.us.2, label %polly.loop_header376.us.2

polly.loop_exit378.us.2:                          ; preds = %polly.loop_header376.us.2
  %polly.indvar_next374.us.2 = add nuw nsw i64 %polly.indvar373.us.2, 1
  %indvars.iv.next787.2 = add nuw nsw i64 %indvars.iv786.2, 1
  %exitcond796.2.not = icmp eq i64 %polly.indvar373.us.2, %smax795.2
  br i1 %exitcond796.2.not, label %polly.loop_exit371.loopexit.us.2, label %polly.loop_header369.us.2

polly.loop_exit371.loopexit.us.2:                 ; preds = %polly.loop_exit378.us.2
  %polly.indvar_next366.us.2 = add nuw nsw i64 %polly.indvar365.us.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next366.us.2, 1000
  br i1 %exitcond797.2.not, label %polly.loop_exit364.2, label %polly.loop_header362.us.2

polly.loop_exit364.2:                             ; preds = %polly.loop_exit371.loopexit.us.2, %polly.loop_header356.2
  %polly.indvar_next360.2 = add nuw nsw i64 %polly.indvar359.2, 1
  %indvars.iv.next785.2 = add nuw nsw i64 %indvars.iv784.2, 128
  %indvars.iv.next793.2 = add nsw i64 %indvars.iv792.2, -128
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next360.2, 10
  br i1 %exitcond798.2.not, label %polly.loop_header356.3, label %polly.loop_header356.2

polly.loop_header356.3:                           ; preds = %polly.loop_exit364.2, %polly.loop_exit364.3
  %indvars.iv792.3 = phi i64 [ %indvars.iv.next793.3, %polly.loop_exit364.3 ], [ -768, %polly.loop_exit364.2 ]
  %indvars.iv784.3 = phi i64 [ %indvars.iv.next785.3, %polly.loop_exit364.3 ], [ 0, %polly.loop_exit364.2 ]
  %polly.indvar359.3 = phi i64 [ %polly.indvar_next360.3, %polly.loop_exit364.3 ], [ 6, %polly.loop_exit364.2 ]
  %smin794.3 = call i64 @llvm.smin.i64(i64 %indvars.iv792.3, i64 -1072)
  %298 = add nsw i64 %smin794.3, 1199
  %smax795.3 = call i64 @llvm.smax.i64(i64 %298, i64 0)
  %299 = mul nsw i64 %polly.indvar359.3, -128
  %polly.loop_guard372.3862 = icmp sgt i64 %299, -1200
  %300 = shl nsw i64 %polly.indvar359.3, 7
  br i1 %polly.loop_guard372.3862, label %polly.loop_header362.us.3, label %polly.loop_exit364.3

polly.loop_header362.us.3:                        ; preds = %polly.loop_header356.3, %polly.loop_exit371.loopexit.us.3
  %polly.indvar365.us.3 = phi i64 [ %polly.indvar_next366.us.3, %polly.loop_exit371.loopexit.us.3 ], [ 0, %polly.loop_header356.3 ]
  %301 = shl nuw nsw i64 %polly.indvar365.us.3, 3
  %scevgep382.us.3 = getelementptr i8, i8* %call1, i64 %301
  %scevgep386.us.3 = getelementptr i8, i8* %call2, i64 %301
  br label %polly.loop_header369.us.3

polly.loop_header369.us.3:                        ; preds = %polly.loop_exit378.us.3, %polly.loop_header362.us.3
  %indvars.iv786.3 = phi i64 [ %indvars.iv.next787.3, %polly.loop_exit378.us.3 ], [ %indvars.iv784.3, %polly.loop_header362.us.3 ]
  %polly.indvar373.us.3 = phi i64 [ %polly.indvar_next374.us.3, %polly.loop_exit378.us.3 ], [ 0, %polly.loop_header362.us.3 ]
  %smin788.3 = call i64 @llvm.smin.i64(i64 %indvars.iv786.3, i64 255)
  %302 = add nuw nsw i64 %polly.indvar373.us.3, %300
  %303 = mul nuw nsw i64 %302, 8000
  %scevgep387.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %303
  %scevgep387388.us.3 = bitcast i8* %scevgep387.us.3 to double*
  %_p_scalar_389.us.3 = load double, double* %scevgep387388.us.3, align 8, !alias.scope !76, !noalias !79
  %scevgep395.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %303
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !75, !noalias !80
  %304 = mul nuw nsw i64 %302, 9600
  br label %polly.loop_header376.us.3

polly.loop_header376.us.3:                        ; preds = %polly.loop_header376.us.3, %polly.loop_header369.us.3
  %polly.indvar379.us.3 = phi i64 [ 0, %polly.loop_header369.us.3 ], [ %polly.indvar_next380.us.3, %polly.loop_header376.us.3 ]
  %305 = add nuw nsw i64 %polly.indvar379.us.3, 768
  %306 = mul nuw nsw i64 %305, 8000
  %scevgep383.us.3 = getelementptr i8, i8* %scevgep382.us.3, i64 %306
  %scevgep383384.us.3 = bitcast i8* %scevgep383.us.3 to double*
  %_p_scalar_385.us.3 = load double, double* %scevgep383384.us.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_389.us.3, %_p_scalar_385.us.3
  %scevgep391.us.3 = getelementptr i8, i8* %scevgep386.us.3, i64 %306
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_397.us.3, %_p_scalar_393.us.3
  %307 = shl i64 %305, 3
  %308 = add nuw nsw i64 %307, %304
  %scevgep398.us.3 = getelementptr i8, i8* %call, i64 %308
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_400.us.3
  store double %p_add42.i79.us.3, double* %scevgep398399.us.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.us.3 = add nuw nsw i64 %polly.indvar379.us.3, 1
  %exitcond789.3.not = icmp eq i64 %polly.indvar379.us.3, %smin788.3
  br i1 %exitcond789.3.not, label %polly.loop_exit378.us.3, label %polly.loop_header376.us.3

polly.loop_exit378.us.3:                          ; preds = %polly.loop_header376.us.3
  %polly.indvar_next374.us.3 = add nuw nsw i64 %polly.indvar373.us.3, 1
  %indvars.iv.next787.3 = add nuw nsw i64 %indvars.iv786.3, 1
  %exitcond796.3.not = icmp eq i64 %polly.indvar373.us.3, %smax795.3
  br i1 %exitcond796.3.not, label %polly.loop_exit371.loopexit.us.3, label %polly.loop_header369.us.3

polly.loop_exit371.loopexit.us.3:                 ; preds = %polly.loop_exit378.us.3
  %polly.indvar_next366.us.3 = add nuw nsw i64 %polly.indvar365.us.3, 1
  %exitcond797.3.not = icmp eq i64 %polly.indvar_next366.us.3, 1000
  br i1 %exitcond797.3.not, label %polly.loop_exit364.3, label %polly.loop_header362.us.3

polly.loop_exit364.3:                             ; preds = %polly.loop_exit371.loopexit.us.3, %polly.loop_header356.3
  %polly.indvar_next360.3 = add nuw nsw i64 %polly.indvar359.3, 1
  %indvars.iv.next785.3 = add nuw nsw i64 %indvars.iv784.3, 128
  %indvars.iv.next793.3 = add nsw i64 %indvars.iv792.3, -128
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next360.3, 10
  br i1 %exitcond798.3.not, label %polly.loop_header356.4, label %polly.loop_header356.3

polly.loop_header356.4:                           ; preds = %polly.loop_exit364.3, %polly.loop_exit364.4
  %indvars.iv792.4 = phi i64 [ %indvars.iv.next793.4, %polly.loop_exit364.4 ], [ -1024, %polly.loop_exit364.3 ]
  %indvars.iv784.4 = phi i64 [ %indvars.iv.next785.4, %polly.loop_exit364.4 ], [ 0, %polly.loop_exit364.3 ]
  %polly.indvar359.4 = phi i64 [ %polly.indvar_next360.4, %polly.loop_exit364.4 ], [ 8, %polly.loop_exit364.3 ]
  %smin794.4 = call i64 @llvm.smin.i64(i64 %indvars.iv792.4, i64 -1072)
  %309 = add nsw i64 %smin794.4, 1199
  %smax795.4 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = mul nsw i64 %polly.indvar359.4, -128
  %polly.loop_guard372.4863 = icmp sgt i64 %310, -1200
  %311 = shl nsw i64 %polly.indvar359.4, 7
  br i1 %polly.loop_guard372.4863, label %polly.loop_header362.us.4, label %polly.loop_exit364.4

polly.loop_header362.us.4:                        ; preds = %polly.loop_header356.4, %polly.loop_exit371.loopexit.us.4
  %polly.indvar365.us.4 = phi i64 [ %polly.indvar_next366.us.4, %polly.loop_exit371.loopexit.us.4 ], [ 0, %polly.loop_header356.4 ]
  %312 = shl nuw nsw i64 %polly.indvar365.us.4, 3
  %scevgep382.us.4 = getelementptr i8, i8* %call1, i64 %312
  %scevgep386.us.4 = getelementptr i8, i8* %call2, i64 %312
  br label %polly.loop_header369.us.4

polly.loop_header369.us.4:                        ; preds = %polly.loop_exit378.us.4, %polly.loop_header362.us.4
  %indvars.iv786.4 = phi i64 [ %indvars.iv.next787.4, %polly.loop_exit378.us.4 ], [ %indvars.iv784.4, %polly.loop_header362.us.4 ]
  %polly.indvar373.us.4 = phi i64 [ %polly.indvar_next374.us.4, %polly.loop_exit378.us.4 ], [ 0, %polly.loop_header362.us.4 ]
  %smin788.4 = call i64 @llvm.smin.i64(i64 %indvars.iv786.4, i64 255)
  %313 = add nuw nsw i64 %polly.indvar373.us.4, %311
  %314 = mul nuw nsw i64 %313, 8000
  %scevgep387.us.4 = getelementptr i8, i8* %scevgep386.us.4, i64 %314
  %scevgep387388.us.4 = bitcast i8* %scevgep387.us.4 to double*
  %_p_scalar_389.us.4 = load double, double* %scevgep387388.us.4, align 8, !alias.scope !76, !noalias !79
  %scevgep395.us.4 = getelementptr i8, i8* %scevgep382.us.4, i64 %314
  %scevgep395396.us.4 = bitcast i8* %scevgep395.us.4 to double*
  %_p_scalar_397.us.4 = load double, double* %scevgep395396.us.4, align 8, !alias.scope !75, !noalias !80
  %315 = mul nuw nsw i64 %313, 9600
  br label %polly.loop_header376.us.4

polly.loop_header376.us.4:                        ; preds = %polly.loop_header376.us.4, %polly.loop_header369.us.4
  %polly.indvar379.us.4 = phi i64 [ 0, %polly.loop_header369.us.4 ], [ %polly.indvar_next380.us.4, %polly.loop_header376.us.4 ]
  %316 = add nuw nsw i64 %polly.indvar379.us.4, 1024
  %317 = mul nuw nsw i64 %316, 8000
  %scevgep383.us.4 = getelementptr i8, i8* %scevgep382.us.4, i64 %317
  %scevgep383384.us.4 = bitcast i8* %scevgep383.us.4 to double*
  %_p_scalar_385.us.4 = load double, double* %scevgep383384.us.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_389.us.4, %_p_scalar_385.us.4
  %scevgep391.us.4 = getelementptr i8, i8* %scevgep386.us.4, i64 %317
  %scevgep391392.us.4 = bitcast i8* %scevgep391.us.4 to double*
  %_p_scalar_393.us.4 = load double, double* %scevgep391392.us.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_397.us.4, %_p_scalar_393.us.4
  %318 = shl i64 %316, 3
  %319 = add nuw nsw i64 %318, %315
  %scevgep398.us.4 = getelementptr i8, i8* %call, i64 %319
  %scevgep398399.us.4 = bitcast i8* %scevgep398.us.4 to double*
  %_p_scalar_400.us.4 = load double, double* %scevgep398399.us.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_400.us.4
  store double %p_add42.i79.us.4, double* %scevgep398399.us.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.us.4 = add nuw nsw i64 %polly.indvar379.us.4, 1
  %exitcond789.4.not = icmp eq i64 %polly.indvar379.us.4, %smin788.4
  br i1 %exitcond789.4.not, label %polly.loop_exit378.us.4, label %polly.loop_header376.us.4

polly.loop_exit378.us.4:                          ; preds = %polly.loop_header376.us.4
  %polly.indvar_next374.us.4 = add nuw nsw i64 %polly.indvar373.us.4, 1
  %indvars.iv.next787.4 = add nuw nsw i64 %indvars.iv786.4, 1
  %exitcond796.4.not = icmp eq i64 %polly.indvar373.us.4, %smax795.4
  br i1 %exitcond796.4.not, label %polly.loop_exit371.loopexit.us.4, label %polly.loop_header369.us.4

polly.loop_exit371.loopexit.us.4:                 ; preds = %polly.loop_exit378.us.4
  %polly.indvar_next366.us.4 = add nuw nsw i64 %polly.indvar365.us.4, 1
  %exitcond797.4.not = icmp eq i64 %polly.indvar_next366.us.4, 1000
  br i1 %exitcond797.4.not, label %polly.loop_exit364.4, label %polly.loop_header362.us.4

polly.loop_exit364.4:                             ; preds = %polly.loop_exit371.loopexit.us.4, %polly.loop_header356.4
  %polly.indvar_next360.4 = add nuw nsw i64 %polly.indvar359.4, 1
  %indvars.iv.next785.4 = add nuw nsw i64 %indvars.iv784.4, 128
  %indvars.iv.next793.4 = add nsw i64 %indvars.iv792.4, -128
  %exitcond798.4.not = icmp eq i64 %polly.indvar_next360.4, 10
  br i1 %exitcond798.4.not, label %kernel_syr2k.exit90, label %polly.loop_header356.4

polly.loop_header509.1:                           ; preds = %polly.loop_exit517, %polly.loop_exit517.1
  %indvars.iv810.1 = phi i64 [ %indvars.iv.next811.1, %polly.loop_exit517.1 ], [ -256, %polly.loop_exit517 ]
  %indvars.iv802.1 = phi i64 [ %indvars.iv.next803.1, %polly.loop_exit517.1 ], [ 0, %polly.loop_exit517 ]
  %polly.indvar512.1 = phi i64 [ %polly.indvar_next513.1, %polly.loop_exit517.1 ], [ 2, %polly.loop_exit517 ]
  %smin812.1 = call i64 @llvm.smin.i64(i64 %indvars.iv810.1, i64 -1072)
  %320 = add nsw i64 %smin812.1, 1199
  %smax813.1 = call i64 @llvm.smax.i64(i64 %320, i64 0)
  %321 = mul nsw i64 %polly.indvar512.1, -128
  %polly.loop_guard525.1865 = icmp sgt i64 %321, -1200
  %322 = shl nsw i64 %polly.indvar512.1, 7
  br i1 %polly.loop_guard525.1865, label %polly.loop_header515.us.1, label %polly.loop_exit517.1

polly.loop_header515.us.1:                        ; preds = %polly.loop_header509.1, %polly.loop_exit524.loopexit.us.1
  %polly.indvar518.us.1 = phi i64 [ %polly.indvar_next519.us.1, %polly.loop_exit524.loopexit.us.1 ], [ 0, %polly.loop_header509.1 ]
  %323 = shl nuw nsw i64 %polly.indvar518.us.1, 3
  %scevgep535.us.1 = getelementptr i8, i8* %call1, i64 %323
  %scevgep539.us.1 = getelementptr i8, i8* %call2, i64 %323
  br label %polly.loop_header522.us.1

polly.loop_header522.us.1:                        ; preds = %polly.loop_exit531.us.1, %polly.loop_header515.us.1
  %indvars.iv804.1 = phi i64 [ %indvars.iv.next805.1, %polly.loop_exit531.us.1 ], [ %indvars.iv802.1, %polly.loop_header515.us.1 ]
  %polly.indvar526.us.1 = phi i64 [ %polly.indvar_next527.us.1, %polly.loop_exit531.us.1 ], [ 0, %polly.loop_header515.us.1 ]
  %smin806.1 = call i64 @llvm.smin.i64(i64 %indvars.iv804.1, i64 255)
  %324 = add nuw nsw i64 %polly.indvar526.us.1, %322
  %325 = mul nuw nsw i64 %324, 8000
  %scevgep540.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %325
  %scevgep540541.us.1 = bitcast i8* %scevgep540.us.1 to double*
  %_p_scalar_542.us.1 = load double, double* %scevgep540541.us.1, align 8, !alias.scope !85, !noalias !88
  %scevgep548.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %325
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !84, !noalias !89
  %326 = mul nuw nsw i64 %324, 9600
  br label %polly.loop_header529.us.1

polly.loop_header529.us.1:                        ; preds = %polly.loop_header529.us.1, %polly.loop_header522.us.1
  %polly.indvar532.us.1 = phi i64 [ 0, %polly.loop_header522.us.1 ], [ %polly.indvar_next533.us.1, %polly.loop_header529.us.1 ]
  %327 = add nuw nsw i64 %polly.indvar532.us.1, 256
  %328 = mul nuw nsw i64 %327, 8000
  %scevgep536.us.1 = getelementptr i8, i8* %scevgep535.us.1, i64 %328
  %scevgep536537.us.1 = bitcast i8* %scevgep536.us.1 to double*
  %_p_scalar_538.us.1 = load double, double* %scevgep536537.us.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_542.us.1, %_p_scalar_538.us.1
  %scevgep544.us.1 = getelementptr i8, i8* %scevgep539.us.1, i64 %328
  %scevgep544545.us.1 = bitcast i8* %scevgep544.us.1 to double*
  %_p_scalar_546.us.1 = load double, double* %scevgep544545.us.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_546.us.1
  %329 = shl i64 %327, 3
  %330 = add nuw nsw i64 %329, %326
  %scevgep551.us.1 = getelementptr i8, i8* %call, i64 %330
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_553.us.1
  store double %p_add42.i.us.1, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.us.1 = add nuw nsw i64 %polly.indvar532.us.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar532.us.1, %smin806.1
  br i1 %exitcond807.1.not, label %polly.loop_exit531.us.1, label %polly.loop_header529.us.1

polly.loop_exit531.us.1:                          ; preds = %polly.loop_header529.us.1
  %polly.indvar_next527.us.1 = add nuw nsw i64 %polly.indvar526.us.1, 1
  %indvars.iv.next805.1 = add nuw nsw i64 %indvars.iv804.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar526.us.1, %smax813.1
  br i1 %exitcond814.1.not, label %polly.loop_exit524.loopexit.us.1, label %polly.loop_header522.us.1

polly.loop_exit524.loopexit.us.1:                 ; preds = %polly.loop_exit531.us.1
  %polly.indvar_next519.us.1 = add nuw nsw i64 %polly.indvar518.us.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar_next519.us.1, 1000
  br i1 %exitcond815.1.not, label %polly.loop_exit517.1, label %polly.loop_header515.us.1

polly.loop_exit517.1:                             ; preds = %polly.loop_exit524.loopexit.us.1, %polly.loop_header509.1
  %polly.indvar_next513.1 = add nuw nsw i64 %polly.indvar512.1, 1
  %indvars.iv.next803.1 = add nuw nsw i64 %indvars.iv802.1, 128
  %indvars.iv.next811.1 = add nsw i64 %indvars.iv810.1, -128
  %exitcond816.1.not = icmp eq i64 %polly.indvar_next513.1, 10
  br i1 %exitcond816.1.not, label %polly.loop_header509.2, label %polly.loop_header509.1

polly.loop_header509.2:                           ; preds = %polly.loop_exit517.1, %polly.loop_exit517.2
  %indvars.iv810.2 = phi i64 [ %indvars.iv.next811.2, %polly.loop_exit517.2 ], [ -512, %polly.loop_exit517.1 ]
  %indvars.iv802.2 = phi i64 [ %indvars.iv.next803.2, %polly.loop_exit517.2 ], [ 0, %polly.loop_exit517.1 ]
  %polly.indvar512.2 = phi i64 [ %polly.indvar_next513.2, %polly.loop_exit517.2 ], [ 4, %polly.loop_exit517.1 ]
  %smin812.2 = call i64 @llvm.smin.i64(i64 %indvars.iv810.2, i64 -1072)
  %331 = add nsw i64 %smin812.2, 1199
  %smax813.2 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = mul nsw i64 %polly.indvar512.2, -128
  %polly.loop_guard525.2866 = icmp sgt i64 %332, -1200
  %333 = shl nsw i64 %polly.indvar512.2, 7
  br i1 %polly.loop_guard525.2866, label %polly.loop_header515.us.2, label %polly.loop_exit517.2

polly.loop_header515.us.2:                        ; preds = %polly.loop_header509.2, %polly.loop_exit524.loopexit.us.2
  %polly.indvar518.us.2 = phi i64 [ %polly.indvar_next519.us.2, %polly.loop_exit524.loopexit.us.2 ], [ 0, %polly.loop_header509.2 ]
  %334 = shl nuw nsw i64 %polly.indvar518.us.2, 3
  %scevgep535.us.2 = getelementptr i8, i8* %call1, i64 %334
  %scevgep539.us.2 = getelementptr i8, i8* %call2, i64 %334
  br label %polly.loop_header522.us.2

polly.loop_header522.us.2:                        ; preds = %polly.loop_exit531.us.2, %polly.loop_header515.us.2
  %indvars.iv804.2 = phi i64 [ %indvars.iv.next805.2, %polly.loop_exit531.us.2 ], [ %indvars.iv802.2, %polly.loop_header515.us.2 ]
  %polly.indvar526.us.2 = phi i64 [ %polly.indvar_next527.us.2, %polly.loop_exit531.us.2 ], [ 0, %polly.loop_header515.us.2 ]
  %smin806.2 = call i64 @llvm.smin.i64(i64 %indvars.iv804.2, i64 255)
  %335 = add nuw nsw i64 %polly.indvar526.us.2, %333
  %336 = mul nuw nsw i64 %335, 8000
  %scevgep540.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %336
  %scevgep540541.us.2 = bitcast i8* %scevgep540.us.2 to double*
  %_p_scalar_542.us.2 = load double, double* %scevgep540541.us.2, align 8, !alias.scope !85, !noalias !88
  %scevgep548.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %336
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !84, !noalias !89
  %337 = mul nuw nsw i64 %335, 9600
  br label %polly.loop_header529.us.2

polly.loop_header529.us.2:                        ; preds = %polly.loop_header529.us.2, %polly.loop_header522.us.2
  %polly.indvar532.us.2 = phi i64 [ 0, %polly.loop_header522.us.2 ], [ %polly.indvar_next533.us.2, %polly.loop_header529.us.2 ]
  %338 = add nuw nsw i64 %polly.indvar532.us.2, 512
  %339 = mul nuw nsw i64 %338, 8000
  %scevgep536.us.2 = getelementptr i8, i8* %scevgep535.us.2, i64 %339
  %scevgep536537.us.2 = bitcast i8* %scevgep536.us.2 to double*
  %_p_scalar_538.us.2 = load double, double* %scevgep536537.us.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_542.us.2, %_p_scalar_538.us.2
  %scevgep544.us.2 = getelementptr i8, i8* %scevgep539.us.2, i64 %339
  %scevgep544545.us.2 = bitcast i8* %scevgep544.us.2 to double*
  %_p_scalar_546.us.2 = load double, double* %scevgep544545.us.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_546.us.2
  %340 = shl i64 %338, 3
  %341 = add nuw nsw i64 %340, %337
  %scevgep551.us.2 = getelementptr i8, i8* %call, i64 %341
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_553.us.2
  store double %p_add42.i.us.2, double* %scevgep551552.us.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.us.2 = add nuw nsw i64 %polly.indvar532.us.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar532.us.2, %smin806.2
  br i1 %exitcond807.2.not, label %polly.loop_exit531.us.2, label %polly.loop_header529.us.2

polly.loop_exit531.us.2:                          ; preds = %polly.loop_header529.us.2
  %polly.indvar_next527.us.2 = add nuw nsw i64 %polly.indvar526.us.2, 1
  %indvars.iv.next805.2 = add nuw nsw i64 %indvars.iv804.2, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar526.us.2, %smax813.2
  br i1 %exitcond814.2.not, label %polly.loop_exit524.loopexit.us.2, label %polly.loop_header522.us.2

polly.loop_exit524.loopexit.us.2:                 ; preds = %polly.loop_exit531.us.2
  %polly.indvar_next519.us.2 = add nuw nsw i64 %polly.indvar518.us.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar_next519.us.2, 1000
  br i1 %exitcond815.2.not, label %polly.loop_exit517.2, label %polly.loop_header515.us.2

polly.loop_exit517.2:                             ; preds = %polly.loop_exit524.loopexit.us.2, %polly.loop_header509.2
  %polly.indvar_next513.2 = add nuw nsw i64 %polly.indvar512.2, 1
  %indvars.iv.next803.2 = add nuw nsw i64 %indvars.iv802.2, 128
  %indvars.iv.next811.2 = add nsw i64 %indvars.iv810.2, -128
  %exitcond816.2.not = icmp eq i64 %polly.indvar_next513.2, 10
  br i1 %exitcond816.2.not, label %polly.loop_header509.3, label %polly.loop_header509.2

polly.loop_header509.3:                           ; preds = %polly.loop_exit517.2, %polly.loop_exit517.3
  %indvars.iv810.3 = phi i64 [ %indvars.iv.next811.3, %polly.loop_exit517.3 ], [ -768, %polly.loop_exit517.2 ]
  %indvars.iv802.3 = phi i64 [ %indvars.iv.next803.3, %polly.loop_exit517.3 ], [ 0, %polly.loop_exit517.2 ]
  %polly.indvar512.3 = phi i64 [ %polly.indvar_next513.3, %polly.loop_exit517.3 ], [ 6, %polly.loop_exit517.2 ]
  %smin812.3 = call i64 @llvm.smin.i64(i64 %indvars.iv810.3, i64 -1072)
  %342 = add nsw i64 %smin812.3, 1199
  %smax813.3 = call i64 @llvm.smax.i64(i64 %342, i64 0)
  %343 = mul nsw i64 %polly.indvar512.3, -128
  %polly.loop_guard525.3867 = icmp sgt i64 %343, -1200
  %344 = shl nsw i64 %polly.indvar512.3, 7
  br i1 %polly.loop_guard525.3867, label %polly.loop_header515.us.3, label %polly.loop_exit517.3

polly.loop_header515.us.3:                        ; preds = %polly.loop_header509.3, %polly.loop_exit524.loopexit.us.3
  %polly.indvar518.us.3 = phi i64 [ %polly.indvar_next519.us.3, %polly.loop_exit524.loopexit.us.3 ], [ 0, %polly.loop_header509.3 ]
  %345 = shl nuw nsw i64 %polly.indvar518.us.3, 3
  %scevgep535.us.3 = getelementptr i8, i8* %call1, i64 %345
  %scevgep539.us.3 = getelementptr i8, i8* %call2, i64 %345
  br label %polly.loop_header522.us.3

polly.loop_header522.us.3:                        ; preds = %polly.loop_exit531.us.3, %polly.loop_header515.us.3
  %indvars.iv804.3 = phi i64 [ %indvars.iv.next805.3, %polly.loop_exit531.us.3 ], [ %indvars.iv802.3, %polly.loop_header515.us.3 ]
  %polly.indvar526.us.3 = phi i64 [ %polly.indvar_next527.us.3, %polly.loop_exit531.us.3 ], [ 0, %polly.loop_header515.us.3 ]
  %smin806.3 = call i64 @llvm.smin.i64(i64 %indvars.iv804.3, i64 255)
  %346 = add nuw nsw i64 %polly.indvar526.us.3, %344
  %347 = mul nuw nsw i64 %346, 8000
  %scevgep540.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %347
  %scevgep540541.us.3 = bitcast i8* %scevgep540.us.3 to double*
  %_p_scalar_542.us.3 = load double, double* %scevgep540541.us.3, align 8, !alias.scope !85, !noalias !88
  %scevgep548.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %347
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !84, !noalias !89
  %348 = mul nuw nsw i64 %346, 9600
  br label %polly.loop_header529.us.3

polly.loop_header529.us.3:                        ; preds = %polly.loop_header529.us.3, %polly.loop_header522.us.3
  %polly.indvar532.us.3 = phi i64 [ 0, %polly.loop_header522.us.3 ], [ %polly.indvar_next533.us.3, %polly.loop_header529.us.3 ]
  %349 = add nuw nsw i64 %polly.indvar532.us.3, 768
  %350 = mul nuw nsw i64 %349, 8000
  %scevgep536.us.3 = getelementptr i8, i8* %scevgep535.us.3, i64 %350
  %scevgep536537.us.3 = bitcast i8* %scevgep536.us.3 to double*
  %_p_scalar_538.us.3 = load double, double* %scevgep536537.us.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_542.us.3, %_p_scalar_538.us.3
  %scevgep544.us.3 = getelementptr i8, i8* %scevgep539.us.3, i64 %350
  %scevgep544545.us.3 = bitcast i8* %scevgep544.us.3 to double*
  %_p_scalar_546.us.3 = load double, double* %scevgep544545.us.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_546.us.3
  %351 = shl i64 %349, 3
  %352 = add nuw nsw i64 %351, %348
  %scevgep551.us.3 = getelementptr i8, i8* %call, i64 %352
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_553.us.3
  store double %p_add42.i.us.3, double* %scevgep551552.us.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.us.3 = add nuw nsw i64 %polly.indvar532.us.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar532.us.3, %smin806.3
  br i1 %exitcond807.3.not, label %polly.loop_exit531.us.3, label %polly.loop_header529.us.3

polly.loop_exit531.us.3:                          ; preds = %polly.loop_header529.us.3
  %polly.indvar_next527.us.3 = add nuw nsw i64 %polly.indvar526.us.3, 1
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804.3, 1
  %exitcond814.3.not = icmp eq i64 %polly.indvar526.us.3, %smax813.3
  br i1 %exitcond814.3.not, label %polly.loop_exit524.loopexit.us.3, label %polly.loop_header522.us.3

polly.loop_exit524.loopexit.us.3:                 ; preds = %polly.loop_exit531.us.3
  %polly.indvar_next519.us.3 = add nuw nsw i64 %polly.indvar518.us.3, 1
  %exitcond815.3.not = icmp eq i64 %polly.indvar_next519.us.3, 1000
  br i1 %exitcond815.3.not, label %polly.loop_exit517.3, label %polly.loop_header515.us.3

polly.loop_exit517.3:                             ; preds = %polly.loop_exit524.loopexit.us.3, %polly.loop_header509.3
  %polly.indvar_next513.3 = add nuw nsw i64 %polly.indvar512.3, 1
  %indvars.iv.next803.3 = add nuw nsw i64 %indvars.iv802.3, 128
  %indvars.iv.next811.3 = add nsw i64 %indvars.iv810.3, -128
  %exitcond816.3.not = icmp eq i64 %polly.indvar_next513.3, 10
  br i1 %exitcond816.3.not, label %polly.loop_header509.4, label %polly.loop_header509.3

polly.loop_header509.4:                           ; preds = %polly.loop_exit517.3, %polly.loop_exit517.4
  %indvars.iv810.4 = phi i64 [ %indvars.iv.next811.4, %polly.loop_exit517.4 ], [ -1024, %polly.loop_exit517.3 ]
  %indvars.iv802.4 = phi i64 [ %indvars.iv.next803.4, %polly.loop_exit517.4 ], [ 0, %polly.loop_exit517.3 ]
  %polly.indvar512.4 = phi i64 [ %polly.indvar_next513.4, %polly.loop_exit517.4 ], [ 8, %polly.loop_exit517.3 ]
  %smin812.4 = call i64 @llvm.smin.i64(i64 %indvars.iv810.4, i64 -1072)
  %353 = add nsw i64 %smin812.4, 1199
  %smax813.4 = call i64 @llvm.smax.i64(i64 %353, i64 0)
  %354 = mul nsw i64 %polly.indvar512.4, -128
  %polly.loop_guard525.4868 = icmp sgt i64 %354, -1200
  %355 = shl nsw i64 %polly.indvar512.4, 7
  br i1 %polly.loop_guard525.4868, label %polly.loop_header515.us.4, label %polly.loop_exit517.4

polly.loop_header515.us.4:                        ; preds = %polly.loop_header509.4, %polly.loop_exit524.loopexit.us.4
  %polly.indvar518.us.4 = phi i64 [ %polly.indvar_next519.us.4, %polly.loop_exit524.loopexit.us.4 ], [ 0, %polly.loop_header509.4 ]
  %356 = shl nuw nsw i64 %polly.indvar518.us.4, 3
  %scevgep535.us.4 = getelementptr i8, i8* %call1, i64 %356
  %scevgep539.us.4 = getelementptr i8, i8* %call2, i64 %356
  br label %polly.loop_header522.us.4

polly.loop_header522.us.4:                        ; preds = %polly.loop_exit531.us.4, %polly.loop_header515.us.4
  %indvars.iv804.4 = phi i64 [ %indvars.iv.next805.4, %polly.loop_exit531.us.4 ], [ %indvars.iv802.4, %polly.loop_header515.us.4 ]
  %polly.indvar526.us.4 = phi i64 [ %polly.indvar_next527.us.4, %polly.loop_exit531.us.4 ], [ 0, %polly.loop_header515.us.4 ]
  %smin806.4 = call i64 @llvm.smin.i64(i64 %indvars.iv804.4, i64 255)
  %357 = add nuw nsw i64 %polly.indvar526.us.4, %355
  %358 = mul nuw nsw i64 %357, 8000
  %scevgep540.us.4 = getelementptr i8, i8* %scevgep539.us.4, i64 %358
  %scevgep540541.us.4 = bitcast i8* %scevgep540.us.4 to double*
  %_p_scalar_542.us.4 = load double, double* %scevgep540541.us.4, align 8, !alias.scope !85, !noalias !88
  %scevgep548.us.4 = getelementptr i8, i8* %scevgep535.us.4, i64 %358
  %scevgep548549.us.4 = bitcast i8* %scevgep548.us.4 to double*
  %_p_scalar_550.us.4 = load double, double* %scevgep548549.us.4, align 8, !alias.scope !84, !noalias !89
  %359 = mul nuw nsw i64 %357, 9600
  br label %polly.loop_header529.us.4

polly.loop_header529.us.4:                        ; preds = %polly.loop_header529.us.4, %polly.loop_header522.us.4
  %polly.indvar532.us.4 = phi i64 [ 0, %polly.loop_header522.us.4 ], [ %polly.indvar_next533.us.4, %polly.loop_header529.us.4 ]
  %360 = add nuw nsw i64 %polly.indvar532.us.4, 1024
  %361 = mul nuw nsw i64 %360, 8000
  %scevgep536.us.4 = getelementptr i8, i8* %scevgep535.us.4, i64 %361
  %scevgep536537.us.4 = bitcast i8* %scevgep536.us.4 to double*
  %_p_scalar_538.us.4 = load double, double* %scevgep536537.us.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_542.us.4, %_p_scalar_538.us.4
  %scevgep544.us.4 = getelementptr i8, i8* %scevgep539.us.4, i64 %361
  %scevgep544545.us.4 = bitcast i8* %scevgep544.us.4 to double*
  %_p_scalar_546.us.4 = load double, double* %scevgep544545.us.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_550.us.4, %_p_scalar_546.us.4
  %362 = shl i64 %360, 3
  %363 = add nuw nsw i64 %362, %359
  %scevgep551.us.4 = getelementptr i8, i8* %call, i64 %363
  %scevgep551552.us.4 = bitcast i8* %scevgep551.us.4 to double*
  %_p_scalar_553.us.4 = load double, double* %scevgep551552.us.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_553.us.4
  store double %p_add42.i.us.4, double* %scevgep551552.us.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.us.4 = add nuw nsw i64 %polly.indvar532.us.4, 1
  %exitcond807.4.not = icmp eq i64 %polly.indvar532.us.4, %smin806.4
  br i1 %exitcond807.4.not, label %polly.loop_exit531.us.4, label %polly.loop_header529.us.4

polly.loop_exit531.us.4:                          ; preds = %polly.loop_header529.us.4
  %polly.indvar_next527.us.4 = add nuw nsw i64 %polly.indvar526.us.4, 1
  %indvars.iv.next805.4 = add nuw nsw i64 %indvars.iv804.4, 1
  %exitcond814.4.not = icmp eq i64 %polly.indvar526.us.4, %smax813.4
  br i1 %exitcond814.4.not, label %polly.loop_exit524.loopexit.us.4, label %polly.loop_header522.us.4

polly.loop_exit524.loopexit.us.4:                 ; preds = %polly.loop_exit531.us.4
  %polly.indvar_next519.us.4 = add nuw nsw i64 %polly.indvar518.us.4, 1
  %exitcond815.4.not = icmp eq i64 %polly.indvar_next519.us.4, 1000
  br i1 %exitcond815.4.not, label %polly.loop_exit517.4, label %polly.loop_header515.us.4

polly.loop_exit517.4:                             ; preds = %polly.loop_exit524.loopexit.us.4, %polly.loop_header509.4
  %polly.indvar_next513.4 = add nuw nsw i64 %polly.indvar512.4, 1
  %indvars.iv.next803.4 = add nuw nsw i64 %indvars.iv802.4, 128
  %indvars.iv.next811.4 = add nsw i64 %indvars.iv810.4, -128
  %exitcond816.4.not = icmp eq i64 %polly.indvar_next513.4, 10
  br i1 %exitcond816.4.not, label %kernel_syr2k.exit, label %polly.loop_header509.4
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!44 = !{!"llvm.loop.tile.size", i32 128}
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
