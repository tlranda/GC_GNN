; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10405.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10405.c"
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
  br i1 %57, label %middle.block969, label %vector.body971, !llvm.loop !51

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

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
  br i1 %68, label %middle.block995, label %vector.body997, !llvm.loop !53

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1020 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1020, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1017 = add i64 %index1016, 4
  %95 = icmp eq i64 %index.next1017, %n.vec1015
  br i1 %95, label %middle.block1007, label %vector.body1009, !llvm.loop !64

middle.block1007:                                 ; preds = %vector.body1009
  %cmp.n1019 = icmp eq i64 %88, %n.vec1015
  br i1 %cmp.n1019, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1007
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1015, %middle.block1007 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1007
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1011 = add i64 %indvar1010, 1
  br i1 %exitcond793.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond792.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit207 ], [ 2, %polly.loop_exit193 ]
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %indvars.iv788, 3
  %98 = mul nsw i64 %polly.indvar202, -96
  %99 = icmp slt i64 %98, -1104
  %100 = select i1 %99, i64 %98, i64 -1104
  %101 = add nsw i64 %100, 1199
  %102 = mul nuw nsw i64 %polly.indvar202, 96
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 96
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 3
  %exitcond791.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond791.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit213 ], [ %indvars.iv781, %polly.loop_header199 ]
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %103 = shl nsw i64 %polly.indvar208, 8
  %104 = add nsw i64 %103, %98
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard.not = icmp sgt i64 %106, %101
  br i1 %polly.loop_guard.not, label %polly.loop_exit213, label %polly.loop_header211.preheader

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv779, i64 0)
  %107 = add i64 %smax, %indvars.iv783
  %108 = sub nsw i64 %102, %103
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, 256
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -256
  %exitcond790.not = icmp eq i64 %polly.indvar208, %97
  br i1 %exitcond790.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit219
  %indvars.iv785 = phi i64 [ %107, %polly.loop_header211.preheader ], [ %indvars.iv.next786, %polly.loop_exit219 ]
  %polly.indvar214 = phi i64 [ %106, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 255)
  %109 = add nsw i64 %polly.indvar214, %108
  %polly.loop_guard227868 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar214, %102
  %111 = mul i64 %110, 8000
  %112 = mul i64 %110, 9600
  br i1 %polly.loop_guard227868, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit226.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.loopexit.us ], [ 0, %polly.loop_header211 ]
  %113 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %113
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %111
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %111
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar228.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next229.us, %polly.loop_header224.us ]
  %114 = add nuw nsw i64 %polly.indvar228.us, %103
  %115 = mul nuw nsw i64 %114, 8000
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %115
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %115
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %116 = shl i64 %114, 3
  %117 = add i64 %116, %112
  %scevgep247.us = getelementptr i8, i8* %call, i64 %117
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond787.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit226.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216.not.not = icmp ult i64 %polly.indvar214, %101
  %indvars.iv.next786 = add i64 %indvars.iv785, 1
  br i1 %polly.loop_cond216.not.not, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar984 = phi i64 [ %indvar.next985, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %118 = add i64 %indvar984, 1
  %119 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check986 = icmp ult i64 %118, 4
  br i1 %min.iters.check986, label %polly.loop_header342.preheader, label %vector.ph987

vector.ph987:                                     ; preds = %polly.loop_header336
  %n.vec989 = and i64 %118, -4
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next991, %vector.body983 ]
  %120 = shl nuw nsw i64 %index990, 3
  %121 = getelementptr i8, i8* %scevgep348, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load994 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !69, !noalias !71
  %123 = fmul fast <4 x double> %wide.load994, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !69, !noalias !71
  %index.next991 = add i64 %index990, 4
  %125 = icmp eq i64 %index.next991, %n.vec989
  br i1 %125, label %middle.block981, label %vector.body983, !llvm.loop !74

middle.block981:                                  ; preds = %vector.body983
  %cmp.n993 = icmp eq i64 %118, %n.vec989
  br i1 %cmp.n993, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block981
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec989, %middle.block981 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block981
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next985 = add i64 %indvar984, 1
  br i1 %exitcond813.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %126
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond812.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit361
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit361 ], [ 2, %polly.loop_exit344 ]
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %127 = lshr i64 %indvars.iv808, 3
  %128 = mul nsw i64 %polly.indvar355, -96
  %129 = icmp slt i64 %128, -1104
  %130 = select i1 %129, i64 %128, i64 -1104
  %131 = add nsw i64 %130, 1199
  %132 = mul nuw nsw i64 %polly.indvar355, 96
  br label %polly.loop_header359

polly.loop_exit361:                               ; preds = %polly.loop_exit368
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, -96
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 96
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 3
  %exitcond811.not = icmp eq i64 %polly.indvar_next356, 13
  br i1 %exitcond811.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header359:                             ; preds = %polly.loop_exit368, %polly.loop_header352
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit368 ], [ %indvars.iv799, %polly.loop_header352 ]
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit368 ], [ %indvars.iv794, %polly.loop_header352 ]
  %polly.indvar362 = phi i64 [ %polly.indvar_next363, %polly.loop_exit368 ], [ 0, %polly.loop_header352 ]
  %133 = shl nsw i64 %polly.indvar362, 8
  %134 = add nsw i64 %133, %128
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard369.not = icmp sgt i64 %136, %131
  br i1 %polly.loop_guard369.not, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header359
  %smax798 = call i64 @llvm.smax.i64(i64 %indvars.iv796, i64 0)
  %137 = add i64 %smax798, %indvars.iv801
  %138 = sub nsw i64 %132, %133
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_exit375, %polly.loop_header359
  %polly.indvar_next363 = add nuw nsw i64 %polly.indvar362, 1
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 256
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -256
  %exitcond810.not = icmp eq i64 %polly.indvar362, %127
  br i1 %exitcond810.not, label %polly.loop_exit361, label %polly.loop_header359

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_exit375
  %indvars.iv803 = phi i64 [ %137, %polly.loop_header366.preheader ], [ %indvars.iv.next804, %polly.loop_exit375 ]
  %polly.indvar370 = phi i64 [ %136, %polly.loop_header366.preheader ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %smin805 = call i64 @llvm.smin.i64(i64 %indvars.iv803, i64 255)
  %139 = add nsw i64 %polly.indvar370, %138
  %polly.loop_guard383869 = icmp sgt i64 %139, -1
  %140 = add nuw nsw i64 %polly.indvar370, %132
  %141 = mul i64 %140, 8000
  %142 = mul i64 %140, 9600
  br i1 %polly.loop_guard383869, label %polly.loop_header373.us, label %polly.loop_exit375

polly.loop_header373.us:                          ; preds = %polly.loop_header366, %polly.loop_exit382.loopexit.us
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.loopexit.us ], [ 0, %polly.loop_header366 ]
  %143 = shl nuw nsw i64 %polly.indvar376.us, 3
  %scevgep387.us = getelementptr i8, i8* %call1, i64 %143
  %scevgep391.us = getelementptr i8, i8* %call2, i64 %143
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %141
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %scevgep387.us, i64 %141
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header380.us

polly.loop_header380.us:                          ; preds = %polly.loop_header380.us, %polly.loop_header373.us
  %polly.indvar384.us = phi i64 [ 0, %polly.loop_header373.us ], [ %polly.indvar_next385.us, %polly.loop_header380.us ]
  %144 = add nuw nsw i64 %polly.indvar384.us, %133
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep388.us = getelementptr i8, i8* %scevgep387.us, i64 %145
  %scevgep388389.us = bitcast i8* %scevgep388.us to double*
  %_p_scalar_390.us = load double, double* %scevgep388389.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_394.us, %_p_scalar_390.us
  %scevgep396.us = getelementptr i8, i8* %scevgep391.us, i64 %145
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_398.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %142
  %scevgep403.us = getelementptr i8, i8* %call, i64 %147
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond806.not = icmp eq i64 %polly.indvar384.us, %smin805
  br i1 %exitcond806.not, label %polly.loop_exit382.loopexit.us, label %polly.loop_header380.us

polly.loop_exit382.loopexit.us:                   ; preds = %polly.loop_header380.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next377.us, 1000
  br i1 %exitcond807.not, label %polly.loop_exit375, label %polly.loop_header373.us

polly.loop_exit375:                               ; preds = %polly.loop_exit382.loopexit.us, %polly.loop_header366
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %polly.loop_cond372.not.not = icmp ult i64 %polly.indvar370, %131
  %indvars.iv.next804 = add i64 %indvars.iv803, 1
  br i1 %polly.loop_cond372.not.not, label %polly.loop_header366, label %polly.loop_exit368

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar495, 9600
  %scevgep504 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check960 = icmp ult i64 %148, 4
  br i1 %min.iters.check960, label %polly.loop_header498.preheader, label %vector.ph961

vector.ph961:                                     ; preds = %polly.loop_header492
  %n.vec963 = and i64 %148, -4
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %vector.ph961
  %index964 = phi i64 [ 0, %vector.ph961 ], [ %index.next965, %vector.body959 ]
  %150 = shl nuw nsw i64 %index964, 3
  %151 = getelementptr i8, i8* %scevgep504, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load968 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !78, !noalias !80
  %153 = fmul fast <4 x double> %wide.load968, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %index.next965 = add i64 %index964, 4
  %155 = icmp eq i64 %index.next965, %n.vec963
  br i1 %155, label %middle.block957, label %vector.body959, !llvm.loop !83

middle.block957:                                  ; preds = %vector.body959
  %cmp.n967 = icmp eq i64 %148, %n.vec963
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
  %156 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %156
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond832.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit517
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit517 ], [ 2, %polly.loop_exit500 ]
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %157 = lshr i64 %indvars.iv828, 3
  %158 = mul nsw i64 %polly.indvar511, -96
  %159 = icmp slt i64 %158, -1104
  %160 = select i1 %159, i64 %158, i64 -1104
  %161 = add nsw i64 %160, 1199
  %162 = mul nuw nsw i64 %polly.indvar511, 96
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit524
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next815 = add nsw i64 %indvars.iv814, -96
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 96
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 3
  %exitcond831.not = icmp eq i64 %polly.indvar_next512, 13
  br i1 %exitcond831.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header515:                             ; preds = %polly.loop_exit524, %polly.loop_header508
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit524 ], [ %indvars.iv819, %polly.loop_header508 ]
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit524 ], [ %indvars.iv814, %polly.loop_header508 ]
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_exit524 ], [ 0, %polly.loop_header508 ]
  %163 = shl nsw i64 %polly.indvar518, 8
  %164 = add nsw i64 %163, %158
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %polly.loop_guard525.not = icmp sgt i64 %166, %161
  br i1 %polly.loop_guard525.not, label %polly.loop_exit524, label %polly.loop_header522.preheader

polly.loop_header522.preheader:                   ; preds = %polly.loop_header515
  %smax818 = call i64 @llvm.smax.i64(i64 %indvars.iv816, i64 0)
  %167 = add i64 %smax818, %indvars.iv821
  %168 = sub nsw i64 %162, %163
  br label %polly.loop_header522

polly.loop_exit524:                               ; preds = %polly.loop_exit531, %polly.loop_header515
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, 256
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -256
  %exitcond830.not = icmp eq i64 %polly.indvar518, %157
  br i1 %exitcond830.not, label %polly.loop_exit517, label %polly.loop_header515

polly.loop_header522:                             ; preds = %polly.loop_header522.preheader, %polly.loop_exit531
  %indvars.iv823 = phi i64 [ %167, %polly.loop_header522.preheader ], [ %indvars.iv.next824, %polly.loop_exit531 ]
  %polly.indvar526 = phi i64 [ %166, %polly.loop_header522.preheader ], [ %polly.indvar_next527, %polly.loop_exit531 ]
  %smin825 = call i64 @llvm.smin.i64(i64 %indvars.iv823, i64 255)
  %169 = add nsw i64 %polly.indvar526, %168
  %polly.loop_guard539870 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar526, %162
  %171 = mul i64 %170, 8000
  %172 = mul i64 %170, 9600
  br i1 %polly.loop_guard539870, label %polly.loop_header529.us, label %polly.loop_exit531

polly.loop_header529.us:                          ; preds = %polly.loop_header522, %polly.loop_exit538.loopexit.us
  %polly.indvar532.us = phi i64 [ %polly.indvar_next533.us, %polly.loop_exit538.loopexit.us ], [ 0, %polly.loop_header522 ]
  %173 = shl nuw nsw i64 %polly.indvar532.us, 3
  %scevgep543.us = getelementptr i8, i8* %call1, i64 %173
  %scevgep547.us = getelementptr i8, i8* %call2, i64 %173
  %scevgep548.us = getelementptr i8, i8* %scevgep547.us, i64 %171
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %scevgep543.us, i64 %171
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header536.us

polly.loop_header536.us:                          ; preds = %polly.loop_header536.us, %polly.loop_header529.us
  %polly.indvar540.us = phi i64 [ 0, %polly.loop_header529.us ], [ %polly.indvar_next541.us, %polly.loop_header536.us ]
  %174 = add nuw nsw i64 %polly.indvar540.us, %163
  %175 = mul nuw nsw i64 %174, 8000
  %scevgep544.us = getelementptr i8, i8* %scevgep543.us, i64 %175
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %scevgep552.us = getelementptr i8, i8* %scevgep547.us, i64 %175
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_554.us
  %176 = shl i64 %174, 3
  %177 = add i64 %176, %172
  %scevgep559.us = getelementptr i8, i8* %call, i64 %177
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond826.not = icmp eq i64 %polly.indvar540.us, %smin825
  br i1 %exitcond826.not, label %polly.loop_exit538.loopexit.us, label %polly.loop_header536.us

polly.loop_exit538.loopexit.us:                   ; preds = %polly.loop_header536.us
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next533.us, 1000
  br i1 %exitcond827.not, label %polly.loop_exit531, label %polly.loop_header529.us

polly.loop_exit531:                               ; preds = %polly.loop_exit538.loopexit.us, %polly.loop_header522
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %polly.loop_cond528.not.not = icmp ult i64 %polly.indvar526, %161
  %indvars.iv.next824 = add i64 %indvars.iv823, 1
  br i1 %polly.loop_cond528.not.not, label %polly.loop_header522, label %polly.loop_exit524

polly.loop_header688:                             ; preds = %entry, %polly.loop_exit696
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit696 ], [ 0, %entry ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %entry ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -1168)
  %178 = shl nsw i64 %polly.indvar691, 5
  %179 = add nsw i64 %smin860, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond863.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond863.not, label %polly.loop_header715, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %180 = mul nsw i64 %polly.indvar697, -32
  %smin898 = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin898, 1200
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -1168)
  %182 = shl nsw i64 %polly.indvar697, 5
  %183 = add nsw i64 %smin856, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond862.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %polly.indvar703 = phi i64 [ 0, %polly.loop_header694 ], [ %polly.indvar_next704, %polly.loop_exit708 ]
  %184 = add nuw nsw i64 %polly.indvar703, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header706, label %vector.ph899

vector.ph899:                                     ; preds = %polly.loop_header700
  %broadcast.splatinsert906 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat907 = shufflevector <4 x i64> %broadcast.splatinsert906, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph899
  %index900 = phi i64 [ 0, %vector.ph899 ], [ %index.next901, %vector.body897 ]
  %vec.ind904 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph899 ], [ %vec.ind.next905, %vector.body897 ]
  %187 = add nuw nsw <4 x i64> %vec.ind904, %broadcast.splat907
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat909, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !87, !noalias !89
  %index.next901 = add i64 %index900, 4
  %vec.ind.next905 = add <4 x i64> %vec.ind904, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next901, %181
  br i1 %199, label %polly.loop_exit708, label %vector.body897, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body897, %polly.loop_header706
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond861.not = icmp eq i64 %polly.indvar703, %179
  br i1 %exitcond861.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_header700, %polly.loop_header706
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_header706 ], [ 0, %polly.loop_header700 ]
  %200 = add nuw nsw i64 %polly.indvar709, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep712 = getelementptr i8, i8* %call, i64 %206
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  store double %p_div33.i, double* %scevgep712713, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond857.not = icmp eq i64 %polly.indvar709, %183
  br i1 %exitcond857.not, label %polly.loop_exit708, label %polly.loop_header706, !llvm.loop !93

polly.loop_header715:                             ; preds = %polly.loop_exit696, %polly.loop_exit723
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -1168)
  %207 = shl nsw i64 %polly.indvar718, 5
  %208 = add nsw i64 %smin850, 1199
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond853.not = icmp eq i64 %polly.indvar_next719, 38
  br i1 %exitcond853.not, label %polly.loop_header741, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %209 = mul nsw i64 %polly.indvar724, -32
  %smin913 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin913, 1000
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -968)
  %211 = shl nsw i64 %polly.indvar724, 5
  %212 = add nsw i64 %smin846, 999
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next725, 32
  br i1 %exitcond852.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header721 ], [ %polly.indvar_next731, %polly.loop_exit735 ]
  %213 = add nuw nsw i64 %polly.indvar730, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check914 = icmp eq i64 %210, 0
  br i1 %min.iters.check914, label %polly.loop_header733, label %vector.ph915

vector.ph915:                                     ; preds = %polly.loop_header727
  %broadcast.splatinsert924 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat925 = shufflevector <4 x i64> %broadcast.splatinsert924, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph915
  %index918 = phi i64 [ 0, %vector.ph915 ], [ %index.next919, %vector.body912 ]
  %vec.ind922 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next923, %vector.body912 ]
  %216 = add nuw nsw <4 x i64> %vec.ind922, %broadcast.splat925
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat927, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !91, !noalias !94
  %index.next919 = add i64 %index918, 4
  %vec.ind.next923 = add <4 x i64> %vec.ind922, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next919, %210
  br i1 %228, label %polly.loop_exit735, label %vector.body912, !llvm.loop !95

polly.loop_exit735:                               ; preds = %vector.body912, %polly.loop_header733
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond851.not = icmp eq i64 %polly.indvar730, %208
  br i1 %exitcond851.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_header727, %polly.loop_header733
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_header733 ], [ 0, %polly.loop_header727 ]
  %229 = add nuw nsw i64 %polly.indvar736, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep739 = getelementptr i8, i8* %call2, i64 %235
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  store double %p_div12.i, double* %scevgep739740, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond847.not = icmp eq i64 %polly.indvar736, %212
  br i1 %exitcond847.not, label %polly.loop_exit735, label %polly.loop_header733, !llvm.loop !96

polly.loop_header741:                             ; preds = %polly.loop_exit723, %polly.loop_exit749
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -1168)
  %236 = shl nsw i64 %polly.indvar744, 5
  %237 = add nsw i64 %smin840, 1199
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond843.not = icmp eq i64 %polly.indvar_next745, 38
  br i1 %exitcond843.not, label %init_array.exit, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %238 = mul nsw i64 %polly.indvar750, -32
  %smin931 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin931, 1000
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -968)
  %240 = shl nsw i64 %polly.indvar750, 5
  %241 = add nsw i64 %smin836, 999
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond842.not = icmp eq i64 %polly.indvar_next751, 32
  br i1 %exitcond842.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %polly.indvar756 = phi i64 [ 0, %polly.loop_header747 ], [ %polly.indvar_next757, %polly.loop_exit761 ]
  %242 = add nuw nsw i64 %polly.indvar756, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check932 = icmp eq i64 %239, 0
  br i1 %min.iters.check932, label %polly.loop_header759, label %vector.ph933

vector.ph933:                                     ; preds = %polly.loop_header753
  %broadcast.splatinsert942 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat943 = shufflevector <4 x i64> %broadcast.splatinsert942, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert944 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat945 = shufflevector <4 x i32> %broadcast.splatinsert944, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next937, %vector.body930 ]
  %vec.ind940 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph933 ], [ %vec.ind.next941, %vector.body930 ]
  %245 = add nuw nsw <4 x i64> %vec.ind940, %broadcast.splat943
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat945, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !90, !noalias !97
  %index.next937 = add i64 %index936, 4
  %vec.ind.next941 = add <4 x i64> %vec.ind940, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next937, %239
  br i1 %257, label %polly.loop_exit761, label %vector.body930, !llvm.loop !98

polly.loop_exit761:                               ; preds = %vector.body930, %polly.loop_header759
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond841.not = icmp eq i64 %polly.indvar756, %237
  br i1 %exitcond841.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_header753, %polly.loop_header759
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_header759 ], [ 0, %polly.loop_header753 ]
  %258 = add nuw nsw i64 %polly.indvar762, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep766 = getelementptr i8, i8* %call1, i64 %264
  %scevgep766767 = bitcast i8* %scevgep766 to double*
  store double %p_div.i, double* %scevgep766767, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond837.not = icmp eq i64 %polly.indvar762, %241
  br i1 %exitcond837.not, label %polly.loop_exit761, label %polly.loop_header759, !llvm.loop !99
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
!24 = !{!"llvm.loop.tile.size", i32 256}
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
!44 = !{!"llvm.loop.tile.size", i32 96}
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
