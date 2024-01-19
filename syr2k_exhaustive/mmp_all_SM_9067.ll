; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9067.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9067.c"
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
  %call714 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1575 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1575, %call2
  %polly.access.call2595 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2595, %call1
  %2 = or i1 %0, %1
  %polly.access.call615 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call615, %call2
  %4 = icmp ule i8* %polly.access.call2595, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call615, %call1
  %8 = icmp ule i8* %polly.access.call1575, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header688, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep882 = getelementptr i8, i8* %call2, i64 %12
  %scevgep881 = getelementptr i8, i8* %call2, i64 %11
  %scevgep880 = getelementptr i8, i8* %call1, i64 %12
  %scevgep879 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep879, %scevgep882
  %bound1 = icmp ult i8* %scevgep881, %scevgep880
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
  br i1 %exitcond18.not.i, label %vector.ph886, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph886:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert893 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat894 = shufflevector <4 x i64> %broadcast.splatinsert893, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body885

vector.body885:                                   ; preds = %vector.body885, %vector.ph886
  %index887 = phi i64 [ 0, %vector.ph886 ], [ %index.next888, %vector.body885 ]
  %vec.ind891 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph886 ], [ %vec.ind.next892, %vector.body885 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind891, %broadcast.splat894
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv7.i, i64 %index887
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next888 = add i64 %index887, 4
  %vec.ind.next892 = add <4 x i64> %vec.ind891, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next888, 1200
  br i1 %40, label %for.inc41.i, label %vector.body885, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body885
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph886, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit749
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header492, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check949 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check949, label %for.body3.i46.preheader1026, label %vector.ph950

vector.ph950:                                     ; preds = %for.body3.i46.preheader
  %n.vec952 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next954, %vector.body948 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %index953
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next954 = add i64 %index953, 4
  %46 = icmp eq i64 %index.next954, %n.vec952
  br i1 %46, label %middle.block946, label %vector.body948, !llvm.loop !18

middle.block946:                                  ; preds = %vector.body948
  %cmp.n956 = icmp eq i64 %indvars.iv21.i, %n.vec952
  br i1 %cmp.n956, label %for.inc6.i, label %for.body3.i46.preheader1026

for.body3.i46.preheader1026:                      ; preds = %for.body3.i46.preheader, %middle.block946
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec952, %middle.block946 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1026, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1026 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block946, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check972 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check972, label %for.body3.i60.preheader1024, label %vector.ph973

vector.ph973:                                     ; preds = %for.body3.i60.preheader
  %n.vec975 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next977, %vector.body971 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %index976
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load980 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load980, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next977 = add i64 %index976, 4
  %57 = icmp eq i64 %index.next977, %n.vec975
  br i1 %57, label %middle.block969, label %vector.body971, !llvm.loop !54

middle.block969:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %indvars.iv21.i52, %n.vec975
  br i1 %cmp.n979, label %for.inc6.i63, label %for.body3.i60.preheader1024

for.body3.i60.preheader1024:                      ; preds = %for.body3.i60.preheader, %middle.block969
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec975, %middle.block969 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1024, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1024 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block969, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit361
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check998 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check998, label %for.body3.i99.preheader1022, label %vector.ph999

vector.ph999:                                     ; preds = %for.body3.i99.preheader
  %n.vec1001 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body997 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1002
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1006 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1006, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1003 = add i64 %index1002, 4
  %68 = icmp eq i64 %index.next1003, %n.vec1001
  br i1 %68, label %middle.block995, label %vector.body997, !llvm.loop !56

middle.block995:                                  ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %indvars.iv21.i91, %n.vec1001
  br i1 %cmp.n1005, label %for.inc6.i102, label %for.body3.i99.preheader1022

for.body3.i99.preheader1022:                      ; preds = %for.body3.i99.preheader, %middle.block995
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1001, %middle.block995 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1022, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1022 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block995, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1010 = phi i64 [ %indvar.next1011, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1010, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1012 = icmp ult i64 %88, 4
  br i1 %min.iters.check1012, label %polly.loop_header191.preheader, label %vector.ph1013

vector.ph1013:                                    ; preds = %polly.loop_header
  %n.vec1015 = and i64 %88, -4
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1013
  %index1016 = phi i64 [ 0, %vector.ph1013 ], [ %index.next1017, %vector.body1009 ]
  %90 = shl nuw nsw i64 %index1016, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1020 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1020, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1017 = add i64 %index1016, 4
  %95 = icmp eq i64 %index.next1017, %n.vec1015
  br i1 %95, label %middle.block1007, label %vector.body1009, !llvm.loop !67

middle.block1007:                                 ; preds = %vector.body1009
  %cmp.n1019 = icmp eq i64 %88, %n.vec1015
  br i1 %cmp.n1019, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1007
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1015, %middle.block1007 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1007
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1011 = add i64 %indvar1010, 1
  br i1 %exitcond795.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond794.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = udiv i64 %indvars.iv782, 24
  %98 = mul nuw nsw i64 %97, 96
  %99 = sub nsw i64 %indvars.iv, %98
  %100 = add i64 %indvars.iv786, %98
  %101 = trunc i64 %polly.indvar202 to i16
  %pexp.p_div_q.lhs.trunc = mul i16 %101, 5
  %pexp.p_div_q770 = udiv i16 %pexp.p_div_q.lhs.trunc, 24
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q770 to i64
  %102 = mul nuw nsw i64 %polly.indvar202, 20
  %103 = mul nsw i64 %polly.indvar202, -20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 5
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, -20
  %exitcond793.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond793.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit213 ], [ %100, %polly.loop_header199 ]
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit213 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %pexp.p_div_q.zext, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv784, i64 0)
  %104 = add i64 %smax, %indvars.iv788
  %105 = mul nuw nsw i64 %polly.indvar208, 96
  %106 = sub nsw i64 %102, %105
  %107 = icmp sgt i64 %106, 0
  %108 = select i1 %107, i64 %106, i64 0
  %109 = mul nsw i64 %polly.indvar208, -96
  %110 = icmp slt i64 %109, -1104
  %111 = select i1 %110, i64 %109, i64 -1104
  %112 = add nsw i64 %111, 1199
  %polly.loop_guard.not = icmp sgt i64 %108, %112
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp ult i64 %polly.indvar208, 12
  %indvars.iv.next785 = add i64 %indvars.iv784, -96
  %indvars.iv.next789 = add i64 %indvars.iv788, 96
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.loop_exit219
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %113 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep231 = getelementptr i8, i8* %call1, i64 %113
  %scevgep235 = getelementptr i8, i8* %call2, i64 %113
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit226
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond792.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit226, %polly.loop_header211
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit226 ], [ %104, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit226 ], [ %108, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv790, i64 19)
  %114 = add nuw i64 %polly.indvar220, %105
  %115 = add i64 %114, %103
  %polly.loop_guard227868 = icmp sgt i64 %115, -1
  br i1 %polly.loop_guard227868, label %polly.loop_header224.preheader, label %polly.loop_exit226

polly.loop_header224.preheader:                   ; preds = %polly.loop_header217
  %116 = mul i64 %114, 8000
  %scevgep236 = getelementptr i8, i8* %scevgep235, i64 %116
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %scevgep231, i64 %116
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  %117 = mul i64 %114, 9600
  br label %polly.loop_header224

polly.loop_exit226:                               ; preds = %polly.loop_header224, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp slt i64 %polly.indvar220, %112
  %indvars.iv.next791 = add i64 %indvars.iv790, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header224:                             ; preds = %polly.loop_header224.preheader, %polly.loop_header224
  %polly.indvar228 = phi i64 [ %polly.indvar_next229, %polly.loop_header224 ], [ 0, %polly.loop_header224.preheader ]
  %118 = add nuw nsw i64 %polly.indvar228, %102
  %119 = mul nuw nsw i64 %118, 8000
  %scevgep232 = getelementptr i8, i8* %scevgep231, i64 %119
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_238, %_p_scalar_234
  %scevgep240 = getelementptr i8, i8* %scevgep235, i64 %119
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %120 = shl i64 %118, 3
  %121 = add i64 %120, %117
  %scevgep247 = getelementptr i8, i8* %call, i64 %121
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %exitcond.not = icmp eq i64 %polly.indvar228, %smin
  br i1 %exitcond.not, label %polly.loop_exit226, label %polly.loop_header224

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar984 = phi i64 [ %indvar.next985, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar984, 1
  %123 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check986 = icmp ult i64 %122, 4
  br i1 %min.iters.check986, label %polly.loop_header342.preheader, label %vector.ph987

vector.ph987:                                     ; preds = %polly.loop_header336
  %n.vec989 = and i64 %122, -4
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next991, %vector.body983 ]
  %124 = shl nuw nsw i64 %index990, 3
  %125 = getelementptr i8, i8* %scevgep348, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load994 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fmul fast <4 x double> %wide.load994, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %index.next991 = add i64 %index990, 4
  %129 = icmp eq i64 %index.next991, %n.vec989
  br i1 %129, label %middle.block981, label %vector.body983, !llvm.loop !77

middle.block981:                                  ; preds = %vector.body983
  %cmp.n993 = icmp eq i64 %122, %n.vec989
  br i1 %cmp.n993, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block981
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec989, %middle.block981 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block981
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next985 = add i64 %indvar984, 1
  br i1 %exitcond814.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %130
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond813.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit361
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %131 = udiv i64 %indvars.iv798, 24
  %132 = mul nuw nsw i64 %131, 96
  %133 = sub nsw i64 %indvars.iv796, %132
  %134 = add i64 %indvars.iv803, %132
  %135 = trunc i64 %polly.indvar355 to i16
  %pexp.p_div_q358.lhs.trunc = mul i16 %135, 5
  %pexp.p_div_q358769 = udiv i16 %pexp.p_div_q358.lhs.trunc, 24
  %pexp.p_div_q358.zext = zext i16 %pexp.p_div_q358769 to i64
  %136 = mul nuw nsw i64 %polly.indvar355, 20
  %137 = mul nsw i64 %polly.indvar355, -20
  br label %polly.loop_header359

polly.loop_exit361:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 20
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 5
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, -20
  %exitcond812.not = icmp eq i64 %polly.indvar_next356, 60
  br i1 %exitcond812.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header359:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit367 ], [ %134, %polly.loop_header352 ]
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit367 ], [ %133, %polly.loop_header352 ]
  %polly.indvar362 = phi i64 [ %polly.indvar_next363, %polly.loop_exit367 ], [ %pexp.p_div_q358.zext, %polly.loop_header352 ]
  %smax802 = call i64 @llvm.smax.i64(i64 %indvars.iv800, i64 0)
  %138 = add i64 %smax802, %indvars.iv805
  %139 = mul nuw nsw i64 %polly.indvar362, 96
  %140 = sub nsw i64 %136, %139
  %141 = icmp sgt i64 %140, 0
  %142 = select i1 %141, i64 %140, i64 0
  %143 = mul nsw i64 %polly.indvar362, -96
  %144 = icmp slt i64 %143, -1104
  %145 = select i1 %144, i64 %143, i64 -1104
  %146 = add nsw i64 %145, 1199
  %polly.loop_guard375.not = icmp sgt i64 %142, %146
  br i1 %polly.loop_guard375.not, label %polly.loop_exit367, label %polly.loop_header365

polly.loop_exit367:                               ; preds = %polly.loop_exit374, %polly.loop_header359
  %polly.indvar_next363 = add nuw nsw i64 %polly.indvar362, 1
  %polly.loop_cond364 = icmp ult i64 %polly.indvar362, 12
  %indvars.iv.next801 = add i64 %indvars.iv800, -96
  %indvars.iv.next806 = add i64 %indvars.iv805, 96
  br i1 %polly.loop_cond364, label %polly.loop_header359, label %polly.loop_exit361

polly.loop_header365:                             ; preds = %polly.loop_header359, %polly.loop_exit374
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit374 ], [ 0, %polly.loop_header359 ]
  %147 = shl nuw nsw i64 %polly.indvar368, 3
  %scevgep387 = getelementptr i8, i8* %call1, i64 %147
  %scevgep391 = getelementptr i8, i8* %call2, i64 %147
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_exit382
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next369, 1000
  br i1 %exitcond811.not, label %polly.loop_exit367, label %polly.loop_header365

polly.loop_header372:                             ; preds = %polly.loop_exit382, %polly.loop_header365
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit382 ], [ %138, %polly.loop_header365 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit382 ], [ %142, %polly.loop_header365 ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 19)
  %148 = add nuw i64 %polly.indvar376, %139
  %149 = add i64 %148, %137
  %polly.loop_guard383869 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard383869, label %polly.loop_header380.preheader, label %polly.loop_exit382

polly.loop_header380.preheader:                   ; preds = %polly.loop_header372
  %150 = mul i64 %148, 8000
  %scevgep392 = getelementptr i8, i8* %scevgep391, i64 %150
  %scevgep392393 = bitcast i8* %scevgep392 to double*
  %_p_scalar_394 = load double, double* %scevgep392393, align 8, !alias.scope !76, !noalias !79
  %scevgep400 = getelementptr i8, i8* %scevgep387, i64 %150
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !75, !noalias !80
  %151 = mul i64 %148, 9600
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380, %polly.loop_header372
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %polly.loop_cond378.not.not = icmp slt i64 %polly.indvar376, %146
  %indvars.iv.next808 = add i64 %indvars.iv807, 1
  br i1 %polly.loop_cond378.not.not, label %polly.loop_header372, label %polly.loop_exit374

polly.loop_header380:                             ; preds = %polly.loop_header380.preheader, %polly.loop_header380
  %polly.indvar384 = phi i64 [ %polly.indvar_next385, %polly.loop_header380 ], [ 0, %polly.loop_header380.preheader ]
  %152 = add nuw nsw i64 %polly.indvar384, %136
  %153 = mul nuw nsw i64 %152, 8000
  %scevgep388 = getelementptr i8, i8* %scevgep387, i64 %153
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_394, %_p_scalar_390
  %scevgep396 = getelementptr i8, i8* %scevgep391, i64 %153
  %scevgep396397 = bitcast i8* %scevgep396 to double*
  %_p_scalar_398 = load double, double* %scevgep396397, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_402, %_p_scalar_398
  %154 = shl i64 %152, 3
  %155 = add i64 %154, %151
  %scevgep403 = getelementptr i8, i8* %call, i64 %155
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_405
  store double %p_add42.i79, double* %scevgep403404, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %exitcond810.not = icmp eq i64 %polly.indvar384, %smin809
  br i1 %exitcond810.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar495, 9600
  %scevgep504 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check960 = icmp ult i64 %156, 4
  br i1 %min.iters.check960, label %polly.loop_header498.preheader, label %vector.ph961

vector.ph961:                                     ; preds = %polly.loop_header492
  %n.vec963 = and i64 %156, -4
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %vector.ph961
  %index964 = phi i64 [ 0, %vector.ph961 ], [ %index.next965, %vector.body959 ]
  %158 = shl nuw nsw i64 %index964, 3
  %159 = getelementptr i8, i8* %scevgep504, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load968 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !81, !noalias !83
  %161 = fmul fast <4 x double> %wide.load968, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !81, !noalias !83
  %index.next965 = add i64 %index964, 4
  %163 = icmp eq i64 %index.next965, %n.vec963
  br i1 %163, label %middle.block957, label %vector.body959, !llvm.loop !86

middle.block957:                                  ; preds = %vector.body959
  %cmp.n967 = icmp eq i64 %156, %n.vec963
  br i1 %cmp.n967, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block957
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec963, %middle.block957 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block957
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next496, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond833.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %164
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond832.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !87

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit517
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %165 = udiv i64 %indvars.iv817, 24
  %166 = mul nuw nsw i64 %165, 96
  %167 = sub nsw i64 %indvars.iv815, %166
  %168 = add i64 %indvars.iv822, %166
  %169 = trunc i64 %polly.indvar511 to i16
  %pexp.p_div_q514.lhs.trunc = mul i16 %169, 5
  %pexp.p_div_q514768 = udiv i16 %pexp.p_div_q514.lhs.trunc, 24
  %pexp.p_div_q514.zext = zext i16 %pexp.p_div_q514768 to i64
  %170 = mul nuw nsw i64 %polly.indvar511, 20
  %171 = mul nsw i64 %polly.indvar511, -20
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit523
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 20
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 5
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -20
  %exitcond831.not = icmp eq i64 %polly.indvar_next512, 60
  br i1 %exitcond831.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header515:                             ; preds = %polly.loop_exit523, %polly.loop_header508
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit523 ], [ %168, %polly.loop_header508 ]
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit523 ], [ %167, %polly.loop_header508 ]
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_exit523 ], [ %pexp.p_div_q514.zext, %polly.loop_header508 ]
  %smax821 = call i64 @llvm.smax.i64(i64 %indvars.iv819, i64 0)
  %172 = add i64 %smax821, %indvars.iv824
  %173 = mul nuw nsw i64 %polly.indvar518, 96
  %174 = sub nsw i64 %170, %173
  %175 = icmp sgt i64 %174, 0
  %176 = select i1 %175, i64 %174, i64 0
  %177 = mul nsw i64 %polly.indvar518, -96
  %178 = icmp slt i64 %177, -1104
  %179 = select i1 %178, i64 %177, i64 -1104
  %180 = add nsw i64 %179, 1199
  %polly.loop_guard531.not = icmp sgt i64 %176, %180
  br i1 %polly.loop_guard531.not, label %polly.loop_exit523, label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_exit530, %polly.loop_header515
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %polly.loop_cond520 = icmp ult i64 %polly.indvar518, 12
  %indvars.iv.next820 = add i64 %indvars.iv819, -96
  %indvars.iv.next825 = add i64 %indvars.iv824, 96
  br i1 %polly.loop_cond520, label %polly.loop_header515, label %polly.loop_exit517

polly.loop_header521:                             ; preds = %polly.loop_header515, %polly.loop_exit530
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit530 ], [ 0, %polly.loop_header515 ]
  %181 = shl nuw nsw i64 %polly.indvar524, 3
  %scevgep543 = getelementptr i8, i8* %call1, i64 %181
  %scevgep547 = getelementptr i8, i8* %call2, i64 %181
  br label %polly.loop_header528

polly.loop_exit530:                               ; preds = %polly.loop_exit538
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next525, 1000
  br i1 %exitcond830.not, label %polly.loop_exit523, label %polly.loop_header521

polly.loop_header528:                             ; preds = %polly.loop_exit538, %polly.loop_header521
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit538 ], [ %172, %polly.loop_header521 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit538 ], [ %176, %polly.loop_header521 ]
  %smin828 = call i64 @llvm.smin.i64(i64 %indvars.iv826, i64 19)
  %182 = add nuw i64 %polly.indvar532, %173
  %183 = add i64 %182, %171
  %polly.loop_guard539870 = icmp sgt i64 %183, -1
  br i1 %polly.loop_guard539870, label %polly.loop_header536.preheader, label %polly.loop_exit538

polly.loop_header536.preheader:                   ; preds = %polly.loop_header528
  %184 = mul i64 %182, 8000
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %184
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !85, !noalias !88
  %scevgep556 = getelementptr i8, i8* %scevgep543, i64 %184
  %scevgep556557 = bitcast i8* %scevgep556 to double*
  %_p_scalar_558 = load double, double* %scevgep556557, align 8, !alias.scope !84, !noalias !89
  %185 = mul i64 %182, 9600
  br label %polly.loop_header536

polly.loop_exit538:                               ; preds = %polly.loop_header536, %polly.loop_header528
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %polly.loop_cond534.not.not = icmp slt i64 %polly.indvar532, %180
  %indvars.iv.next827 = add i64 %indvars.iv826, 1
  br i1 %polly.loop_cond534.not.not, label %polly.loop_header528, label %polly.loop_exit530

polly.loop_header536:                             ; preds = %polly.loop_header536.preheader, %polly.loop_header536
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header536 ], [ 0, %polly.loop_header536.preheader ]
  %186 = add nuw nsw i64 %polly.indvar540, %170
  %187 = mul nuw nsw i64 %186, 8000
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %187
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_550, %_p_scalar_546
  %scevgep552 = getelementptr i8, i8* %scevgep547, i64 %187
  %scevgep552553 = bitcast i8* %scevgep552 to double*
  %_p_scalar_554 = load double, double* %scevgep552553, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_558, %_p_scalar_554
  %188 = shl i64 %186, 3
  %189 = add i64 %188, %185
  %scevgep559 = getelementptr i8, i8* %call, i64 %189
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_561
  store double %p_add42.i, double* %scevgep559560, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond829.not = icmp eq i64 %polly.indvar540, %smin828
  br i1 %exitcond829.not, label %polly.loop_exit538, label %polly.loop_header536

polly.loop_header688:                             ; preds = %entry, %polly.loop_exit696
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit696 ], [ 0, %entry ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %entry ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -1168)
  %190 = shl nsw i64 %polly.indvar691, 5
  %191 = add nsw i64 %smin860, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond863.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond863.not, label %polly.loop_header715, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %192 = mul nsw i64 %polly.indvar697, -32
  %smin898 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin898, 1200
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -1168)
  %194 = shl nsw i64 %polly.indvar697, 5
  %195 = add nsw i64 %smin856, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond862.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %polly.indvar703 = phi i64 [ 0, %polly.loop_header694 ], [ %polly.indvar_next704, %polly.loop_exit708 ]
  %196 = add nuw nsw i64 %polly.indvar703, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header706, label %vector.ph899

vector.ph899:                                     ; preds = %polly.loop_header700
  %broadcast.splatinsert906 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat907 = shufflevector <4 x i64> %broadcast.splatinsert906, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph899
  %index900 = phi i64 [ 0, %vector.ph899 ], [ %index.next901, %vector.body897 ]
  %vec.ind904 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph899 ], [ %vec.ind.next905, %vector.body897 ]
  %199 = add nuw nsw <4 x i64> %vec.ind904, %broadcast.splat907
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat909, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !90, !noalias !92
  %index.next901 = add i64 %index900, 4
  %vec.ind.next905 = add <4 x i64> %vec.ind904, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next901, %193
  br i1 %211, label %polly.loop_exit708, label %vector.body897, !llvm.loop !95

polly.loop_exit708:                               ; preds = %vector.body897, %polly.loop_header706
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond861.not = icmp eq i64 %polly.indvar703, %191
  br i1 %exitcond861.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_header700, %polly.loop_header706
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_header706 ], [ 0, %polly.loop_header700 ]
  %212 = add nuw nsw i64 %polly.indvar709, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep712 = getelementptr i8, i8* %call, i64 %218
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  store double %p_div33.i, double* %scevgep712713, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond857.not = icmp eq i64 %polly.indvar709, %195
  br i1 %exitcond857.not, label %polly.loop_exit708, label %polly.loop_header706, !llvm.loop !96

polly.loop_header715:                             ; preds = %polly.loop_exit696, %polly.loop_exit723
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -1168)
  %219 = shl nsw i64 %polly.indvar718, 5
  %220 = add nsw i64 %smin850, 1199
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond853.not = icmp eq i64 %polly.indvar_next719, 38
  br i1 %exitcond853.not, label %polly.loop_header741, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %221 = mul nsw i64 %polly.indvar724, -32
  %smin913 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin913, 1000
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -968)
  %223 = shl nsw i64 %polly.indvar724, 5
  %224 = add nsw i64 %smin846, 999
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next725, 32
  br i1 %exitcond852.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header721 ], [ %polly.indvar_next731, %polly.loop_exit735 ]
  %225 = add nuw nsw i64 %polly.indvar730, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check914 = icmp eq i64 %222, 0
  br i1 %min.iters.check914, label %polly.loop_header733, label %vector.ph915

vector.ph915:                                     ; preds = %polly.loop_header727
  %broadcast.splatinsert924 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat925 = shufflevector <4 x i64> %broadcast.splatinsert924, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph915
  %index918 = phi i64 [ 0, %vector.ph915 ], [ %index.next919, %vector.body912 ]
  %vec.ind922 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next923, %vector.body912 ]
  %228 = add nuw nsw <4 x i64> %vec.ind922, %broadcast.splat925
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat927, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !94, !noalias !97
  %index.next919 = add i64 %index918, 4
  %vec.ind.next923 = add <4 x i64> %vec.ind922, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next919, %222
  br i1 %240, label %polly.loop_exit735, label %vector.body912, !llvm.loop !98

polly.loop_exit735:                               ; preds = %vector.body912, %polly.loop_header733
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond851.not = icmp eq i64 %polly.indvar730, %220
  br i1 %exitcond851.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_header727, %polly.loop_header733
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_header733 ], [ 0, %polly.loop_header727 ]
  %241 = add nuw nsw i64 %polly.indvar736, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep739 = getelementptr i8, i8* %call2, i64 %247
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  store double %p_div12.i, double* %scevgep739740, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond847.not = icmp eq i64 %polly.indvar736, %224
  br i1 %exitcond847.not, label %polly.loop_exit735, label %polly.loop_header733, !llvm.loop !99

polly.loop_header741:                             ; preds = %polly.loop_exit723, %polly.loop_exit749
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -1168)
  %248 = shl nsw i64 %polly.indvar744, 5
  %249 = add nsw i64 %smin840, 1199
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond843.not = icmp eq i64 %polly.indvar_next745, 38
  br i1 %exitcond843.not, label %init_array.exit, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %250 = mul nsw i64 %polly.indvar750, -32
  %smin931 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin931, 1000
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -968)
  %252 = shl nsw i64 %polly.indvar750, 5
  %253 = add nsw i64 %smin836, 999
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond842.not = icmp eq i64 %polly.indvar_next751, 32
  br i1 %exitcond842.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %polly.indvar756 = phi i64 [ 0, %polly.loop_header747 ], [ %polly.indvar_next757, %polly.loop_exit761 ]
  %254 = add nuw nsw i64 %polly.indvar756, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check932 = icmp eq i64 %251, 0
  br i1 %min.iters.check932, label %polly.loop_header759, label %vector.ph933

vector.ph933:                                     ; preds = %polly.loop_header753
  %broadcast.splatinsert942 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat943 = shufflevector <4 x i64> %broadcast.splatinsert942, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next937, %vector.body930 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph933 ], [ %vec.ind.next941, %vector.body930 ]
  %257 = add nuw nsw <4 x i64> %vec.ind940, %broadcast.splat943
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat945, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !93, !noalias !100
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next937, %251
  br i1 %269, label %polly.loop_exit761, label %vector.body930, !llvm.loop !101

polly.loop_exit761:                               ; preds = %vector.body930, %polly.loop_header759
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond841.not = icmp eq i64 %polly.indvar756, %249
  br i1 %exitcond841.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_header753, %polly.loop_header759
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_header759 ], [ 0, %polly.loop_header753 ]
  %270 = add nuw nsw i64 %polly.indvar762, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep766 = getelementptr i8, i8* %call1, i64 %276
  %scevgep766767 = bitcast i8* %scevgep766 to double*
  store double %p_div.i, double* %scevgep766767, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond837.not = icmp eq i64 %polly.indvar762, %253
  br i1 %exitcond837.not, label %polly.loop_exit761, label %polly.loop_header759, !llvm.loop !102
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
declare i64 @llvm.smax.i64(i64, i64) #5

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
!24 = !{!"llvm.loop.tile.size", i32 20}
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
!44 = !{!"llvm.loop.tile.size", i32 96}
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
