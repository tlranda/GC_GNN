; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7354.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7354.c"
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
  %call784 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1645 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2646 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1645, %call2
  %polly.access.call2665 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2665, %call1
  %2 = or i1 %0, %1
  %polly.access.call685 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call685, %call2
  %4 = icmp ule i8* %polly.access.call2665, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call685, %call1
  %8 = icmp ule i8* %polly.access.call1645, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header758, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep937 = getelementptr i8, i8* %call2, i64 %12
  %scevgep936 = getelementptr i8, i8* %call2, i64 %11
  %scevgep935 = getelementptr i8, i8* %call1, i64 %12
  %scevgep934 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep934, %scevgep937
  %bound1 = icmp ult i8* %scevgep936, %scevgep935
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
  br i1 %exitcond18.not.i, label %vector.ph941, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph941:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert948 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat949 = shufflevector <4 x i64> %broadcast.splatinsert948, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph941
  %index942 = phi i64 [ 0, %vector.ph941 ], [ %index.next943, %vector.body940 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph941 ], [ %vec.ind.next947, %vector.body940 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind946, %broadcast.splat949
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv7.i, i64 %index942
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next943, 1200
  br i1 %40, label %for.inc41.i, label %vector.body940, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body940
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph941, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit819
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start454, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1004 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1004, label %for.body3.i46.preheader1078, label %vector.ph1005

vector.ph1005:                                    ; preds = %for.body3.i46.preheader
  %n.vec1007 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1003 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %index1008
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1009 = add i64 %index1008, 4
  %46 = icmp eq i64 %index.next1009, %n.vec1007
  br i1 %46, label %middle.block1001, label %vector.body1003, !llvm.loop !18

middle.block1001:                                 ; preds = %vector.body1003
  %cmp.n1011 = icmp eq i64 %indvars.iv21.i, %n.vec1007
  br i1 %cmp.n1011, label %for.inc6.i, label %for.body3.i46.preheader1078

for.body3.i46.preheader1078:                      ; preds = %for.body3.i46.preheader, %middle.block1001
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1007, %middle.block1001 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1078, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1078 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1001, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting455
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start274, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1027 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1027, label %for.body3.i60.preheader1077, label %vector.ph1028

vector.ph1028:                                    ; preds = %for.body3.i60.preheader
  %n.vec1030 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1026 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %index1031
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1032 = add i64 %index1031, 4
  %57 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %57, label %middle.block1024, label %vector.body1026, !llvm.loop !55

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1034 = icmp eq i64 %indvars.iv21.i52, %n.vec1030
  br i1 %cmp.n1034, label %for.inc6.i63, label %for.body3.i60.preheader1077

for.body3.i60.preheader1077:                      ; preds = %for.body3.i60.preheader, %middle.block1024
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1030, %middle.block1024 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1077, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1077 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1024, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting275
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1053 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1053, label %for.body3.i99.preheader1076, label %vector.ph1054

vector.ph1054:                                    ; preds = %for.body3.i99.preheader
  %n.vec1056 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1058, %vector.body1052 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %index1057
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1061 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1061, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1058 = add i64 %index1057, 4
  %68 = icmp eq i64 %index.next1058, %n.vec1056
  br i1 %68, label %middle.block1050, label %vector.body1052, !llvm.loop !57

middle.block1050:                                 ; preds = %vector.body1052
  %cmp.n1060 = icmp eq i64 %indvars.iv21.i91, %n.vec1056
  br i1 %cmp.n1060, label %for.inc6.i102, label %for.body3.i99.preheader1076

for.body3.i99.preheader1076:                      ; preds = %for.body3.i99.preheader, %middle.block1050
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1056, %middle.block1050 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1076, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1076 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1050, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1065 = phi i64 [ %indvar.next1066, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1065, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1067 = icmp ult i64 %88, 4
  br i1 %min.iters.check1067, label %polly.loop_header191.preheader, label %vector.ph1068

vector.ph1068:                                    ; preds = %polly.loop_header
  %n.vec1070 = and i64 %88, -4
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %vector.ph1068
  %index1071 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1072, %vector.body1064 ]
  %90 = shl nuw nsw i64 %index1071, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1075 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1075, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1072 = add i64 %index1071, 4
  %95 = icmp eq i64 %index.next1072, %n.vec1070
  br i1 %95, label %middle.block1062, label %vector.body1064, !llvm.loop !69

middle.block1062:                                 ; preds = %vector.body1064
  %cmp.n1074 = icmp eq i64 %88, %n.vec1070
  br i1 %cmp.n1074, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1062
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1070, %middle.block1062 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1062
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1066 = add i64 %indvar1065, 1
  br i1 %exitcond857.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond856.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond855.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond854.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar218, 7
  %98 = add nuw nsw i64 %97, 39
  %pexp.p_div_q = lshr i64 %98, 5
  %99 = sub nsw i64 %polly.indvar218, %pexp.p_div_q
  %polly.loop_guard = icmp sgt i64 %99, -2
  %100 = mul nsw i64 %polly.indvar218, -50
  %101 = mul nuw nsw i64 %polly.indvar218, 50
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next846 = add nuw nsw i64 %indvars.iv845, 50
  %exitcond853.not = icmp eq i64 %polly.indvar_next219, 24
  br i1 %exitcond853.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  br i1 %polly.loop_guard, label %polly.loop_header227.preheader, label %polly.loop_exit229

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %102 = mul nuw nsw i64 %polly.indvar224, 100
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit236, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next225, 10
  br i1 %exitcond852.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit236
  %indvars.iv847 = phi i64 [ %indvars.iv845, %polly.loop_header227.preheader ], [ %indvars.iv.next848, %polly.loop_exit236 ]
  %indvars.iv843 = phi i64 [ %indvars.iv, %polly.loop_header227.preheader ], [ %indvars.iv.next844, %polly.loop_exit236 ]
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit236 ]
  %103 = shl nsw i64 %polly.indvar230, 6
  %104 = add nsw i64 %103, %100
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %polly.loop_guard237 = icmp slt i64 %106, 50
  br i1 %polly.loop_guard237, label %polly.loop_header234.preheader, label %polly.loop_exit236

polly.loop_header234.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv843, i64 0)
  %107 = add i64 %smax, %indvars.iv847
  %108 = sub nsw i64 %101, %103
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit243, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not = icmp sgt i64 %polly.indvar230, %99
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, 64
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -64
  br i1 %polly.loop_cond232.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit243
  %indvars.iv849 = phi i64 [ %107, %polly.loop_header234.preheader ], [ %indvars.iv.next850, %polly.loop_exit243 ]
  %polly.indvar238 = phi i64 [ %106, %polly.loop_header234.preheader ], [ %polly.indvar_next239, %polly.loop_exit243 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 63)
  %109 = add nsw i64 %polly.indvar238, %108
  %polly.loop_guard251929 = icmp sgt i64 %109, -1
  %110 = add nuw nsw i64 %polly.indvar238, %101
  %111 = mul i64 %110, 8000
  %112 = mul i64 %110, 9600
  br i1 %polly.loop_guard251929, label %polly.loop_header241.us, label %polly.loop_exit243

polly.loop_header241.us:                          ; preds = %polly.loop_header234, %polly.loop_exit250.loopexit.us
  %polly.indvar244.us = phi i64 [ %polly.indvar_next245.us, %polly.loop_exit250.loopexit.us ], [ 0, %polly.loop_header234 ]
  %113 = add nuw nsw i64 %polly.indvar244.us, %102
  %114 = shl i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2258.us = mul nuw nsw i64 %113, 1200
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2258.us, %110
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %115 = add i64 %114, %111
  %scevgep266.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header248.us

polly.loop_header248.us:                          ; preds = %polly.loop_header241.us, %polly.loop_header248.us
  %polly.indvar252.us = phi i64 [ %polly.indvar_next253.us, %polly.loop_header248.us ], [ 0, %polly.loop_header241.us ]
  %116 = add nuw nsw i64 %polly.indvar252.us, %103
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep255.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep255256.us = bitcast i8* %scevgep255.us to double*
  %_p_scalar_257.us = load double, double* %scevgep255256.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %polly.access.add.Packed_MemRef_call2263.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call2258.us
  %polly.access.Packed_MemRef_call2264.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call2264.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %119 = shl i64 %116, 3
  %120 = add i64 %119, %112
  %scevgep269.us = getelementptr i8, i8* %call, i64 %120
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_271.us
  store double %p_add42.i118.us, double* %scevgep269270.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next253.us = add nuw nsw i64 %polly.indvar252.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar252.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit250.loopexit.us, label %polly.loop_header248.us

polly.loop_exit250.loopexit.us:                   ; preds = %polly.loop_header248.us
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next245.us, 100
  br i1 %exitcond851.not, label %polly.loop_exit243, label %polly.loop_header241.us

polly.loop_exit243:                               ; preds = %polly.loop_exit250.loopexit.us, %polly.loop_header234
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240 = icmp ult i64 %polly.indvar238, 49
  %indvars.iv.next850 = add i64 %indvars.iv849, 1
  br i1 %polly.loop_cond240, label %polly.loop_header234, label %polly.loop_exit236

polly.start274:                                   ; preds = %kernel_syr2k.exit
  %malloccall276 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header360

polly.exiting275:                                 ; preds = %polly.loop_exit400
  tail call void @free(i8* %malloccall276)
  br label %kernel_syr2k.exit90

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.start274
  %indvar1039 = phi i64 [ %indvar.next1040, %polly.loop_exit368 ], [ 0, %polly.start274 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 1, %polly.start274 ]
  %121 = add i64 %indvar1039, 1
  %122 = mul nuw nsw i64 %polly.indvar363, 9600
  %scevgep372 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1041 = icmp ult i64 %121, 4
  br i1 %min.iters.check1041, label %polly.loop_header366.preheader, label %vector.ph1042

vector.ph1042:                                    ; preds = %polly.loop_header360
  %n.vec1044 = and i64 %121, -4
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1042
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1046, %vector.body1038 ]
  %123 = shl nuw nsw i64 %index1045, 3
  %124 = getelementptr i8, i8* %scevgep372, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1049 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %126 = fmul fast <4 x double> %wide.load1049, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %index.next1046 = add i64 %index1045, 4
  %128 = icmp eq i64 %index.next1046, %n.vec1044
  br i1 %128, label %middle.block1036, label %vector.body1038, !llvm.loop !80

middle.block1036:                                 ; preds = %vector.body1038
  %cmp.n1048 = icmp eq i64 %121, %n.vec1044
  br i1 %cmp.n1048, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header360, %middle.block1036
  %polly.indvar369.ph = phi i64 [ 0, %polly.loop_header360 ], [ %n.vec1044, %middle.block1036 ]
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_header366, %middle.block1036
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next364, 1200
  %indvar.next1040 = add i64 %indvar1039, 1
  br i1 %exitcond877.not, label %polly.loop_header376.preheader, label %polly.loop_header360

polly.loop_header376.preheader:                   ; preds = %polly.loop_exit368
  %Packed_MemRef_call2277 = bitcast i8* %malloccall276 to double*
  br label %polly.loop_header376

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_header366
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_header366 ], [ %polly.indvar369.ph, %polly.loop_header366.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar369, 3
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %129
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_375, 1.200000e+00
  store double %p_mul.i57, double* %scevgep373374, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next370, %polly.indvar363
  br i1 %exitcond876.not, label %polly.loop_exit368, label %polly.loop_header366, !llvm.loop !81

polly.loop_header376:                             ; preds = %polly.loop_header376.preheader, %polly.loop_exit384
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit384 ], [ 0, %polly.loop_header376.preheader ]
  %polly.access.mul.Packed_MemRef_call2277 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond875.not, label %polly.loop_header392, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %polly.access.mul.call2389 = mul nuw nsw i64 %polly.indvar385, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2277 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2277
  %polly.access.Packed_MemRef_call2277 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2277, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next386, 1200
  br i1 %exitcond874.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header392:                             ; preds = %polly.loop_exit384, %polly.loop_exit400
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %130 = mul nuw nsw i64 %polly.indvar395, 7
  %131 = add nuw nsw i64 %130, 39
  %pexp.p_div_q404 = lshr i64 %131, 5
  %132 = sub nsw i64 %polly.indvar395, %pexp.p_div_q404
  %polly.loop_guard409 = icmp sgt i64 %132, -2
  %133 = mul nsw i64 %polly.indvar395, -50
  %134 = mul nuw nsw i64 %polly.indvar395, 50
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_exit408
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -50
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 50
  %exitcond873.not = icmp eq i64 %polly.indvar_next396, 24
  br i1 %exitcond873.not, label %polly.exiting275, label %polly.loop_header392

polly.loop_header398:                             ; preds = %polly.loop_exit408, %polly.loop_header392
  %polly.indvar401 = phi i64 [ 0, %polly.loop_header392 ], [ %polly.indvar_next402, %polly.loop_exit408 ]
  br i1 %polly.loop_guard409, label %polly.loop_header406.preheader, label %polly.loop_exit408

polly.loop_header406.preheader:                   ; preds = %polly.loop_header398
  %135 = mul nuw nsw i64 %polly.indvar401, 100
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit416, %polly.loop_header398
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next402, 10
  br i1 %exitcond872.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit416
  %indvars.iv865 = phi i64 [ %indvars.iv863, %polly.loop_header406.preheader ], [ %indvars.iv.next866, %polly.loop_exit416 ]
  %indvars.iv860 = phi i64 [ %indvars.iv858, %polly.loop_header406.preheader ], [ %indvars.iv.next861, %polly.loop_exit416 ]
  %polly.indvar410 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next411, %polly.loop_exit416 ]
  %136 = shl nsw i64 %polly.indvar410, 6
  %137 = add nsw i64 %136, %133
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard417 = icmp slt i64 %139, 50
  br i1 %polly.loop_guard417, label %polly.loop_header414.preheader, label %polly.loop_exit416

polly.loop_header414.preheader:                   ; preds = %polly.loop_header406
  %smax862 = call i64 @llvm.smax.i64(i64 %indvars.iv860, i64 0)
  %140 = add i64 %smax862, %indvars.iv865
  %141 = sub nsw i64 %134, %136
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit423, %polly.loop_header406
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412.not = icmp sgt i64 %polly.indvar410, %132
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, 64
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -64
  br i1 %polly.loop_cond412.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit423
  %indvars.iv867 = phi i64 [ %140, %polly.loop_header414.preheader ], [ %indvars.iv.next868, %polly.loop_exit423 ]
  %polly.indvar418 = phi i64 [ %139, %polly.loop_header414.preheader ], [ %polly.indvar_next419, %polly.loop_exit423 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 63)
  %142 = add nsw i64 %polly.indvar418, %141
  %polly.loop_guard431930 = icmp sgt i64 %142, -1
  %143 = add nuw nsw i64 %polly.indvar418, %134
  %144 = mul i64 %143, 8000
  %145 = mul i64 %143, 9600
  br i1 %polly.loop_guard431930, label %polly.loop_header421.us, label %polly.loop_exit423

polly.loop_header421.us:                          ; preds = %polly.loop_header414, %polly.loop_exit430.loopexit.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_exit430.loopexit.us ], [ 0, %polly.loop_header414 ]
  %146 = add nuw nsw i64 %polly.indvar424.us, %135
  %147 = shl i64 %146, 3
  %polly.access.mul.Packed_MemRef_call2277438.us = mul nuw nsw i64 %146, 1200
  %polly.access.add.Packed_MemRef_call2277439.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2277438.us, %143
  %polly.access.Packed_MemRef_call2277440.us = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2277440.us, align 8
  %148 = add i64 %147, %144
  %scevgep446.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep446447.us = bitcast i8* %scevgep446.us to double*
  %_p_scalar_448.us = load double, double* %scevgep446447.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header428.us

polly.loop_header428.us:                          ; preds = %polly.loop_header421.us, %polly.loop_header428.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.loop_header428.us ], [ 0, %polly.loop_header421.us ]
  %149 = add nuw nsw i64 %polly.indvar432.us, %136
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep435.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep435436.us = bitcast i8* %scevgep435.us to double*
  %_p_scalar_437.us = load double, double* %scevgep435436.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_441.us, %_p_scalar_437.us
  %polly.access.add.Packed_MemRef_call2277443.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2277438.us
  %polly.access.Packed_MemRef_call2277444.us = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277443.us
  %_p_scalar_445.us = load double, double* %polly.access.Packed_MemRef_call2277444.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_448.us, %_p_scalar_445.us
  %152 = shl i64 %149, 3
  %153 = add i64 %152, %145
  %scevgep449.us = getelementptr i8, i8* %call, i64 %153
  %scevgep449450.us = bitcast i8* %scevgep449.us to double*
  %_p_scalar_451.us = load double, double* %scevgep449450.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_451.us
  store double %p_add42.i79.us, double* %scevgep449450.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond870.not = icmp eq i64 %polly.indvar432.us, %smin869
  br i1 %exitcond870.not, label %polly.loop_exit430.loopexit.us, label %polly.loop_header428.us

polly.loop_exit430.loopexit.us:                   ; preds = %polly.loop_header428.us
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next425.us, 100
  br i1 %exitcond871.not, label %polly.loop_exit423, label %polly.loop_header421.us

polly.loop_exit423:                               ; preds = %polly.loop_exit430.loopexit.us, %polly.loop_header414
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %polly.loop_cond420 = icmp ult i64 %polly.indvar418, 49
  %indvars.iv.next868 = add i64 %indvars.iv867, 1
  br i1 %polly.loop_cond420, label %polly.loop_header414, label %polly.loop_exit416

polly.start454:                                   ; preds = %init_array.exit
  %malloccall456 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header540

polly.exiting455:                                 ; preds = %polly.loop_exit580
  tail call void @free(i8* %malloccall456)
  br label %kernel_syr2k.exit

polly.loop_header540:                             ; preds = %polly.loop_exit548, %polly.start454
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit548 ], [ 0, %polly.start454 ]
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 1, %polly.start454 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar543, 9600
  %scevgep552 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1015 = icmp ult i64 %154, 4
  br i1 %min.iters.check1015, label %polly.loop_header546.preheader, label %vector.ph1016

vector.ph1016:                                    ; preds = %polly.loop_header540
  %n.vec1018 = and i64 %154, -4
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1014 ]
  %156 = shl nuw nsw i64 %index1019, 3
  %157 = getelementptr i8, i8* %scevgep552, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1023 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %159 = fmul fast <4 x double> %wide.load1023, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %index.next1020 = add i64 %index1019, 4
  %161 = icmp eq i64 %index.next1020, %n.vec1018
  br i1 %161, label %middle.block1012, label %vector.body1014, !llvm.loop !90

middle.block1012:                                 ; preds = %vector.body1014
  %cmp.n1022 = icmp eq i64 %154, %n.vec1018
  br i1 %cmp.n1022, label %polly.loop_exit548, label %polly.loop_header546.preheader

polly.loop_header546.preheader:                   ; preds = %polly.loop_header540, %middle.block1012
  %polly.indvar549.ph = phi i64 [ 0, %polly.loop_header540 ], [ %n.vec1018, %middle.block1012 ]
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546, %middle.block1012
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next544, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond897.not, label %polly.loop_header556.preheader, label %polly.loop_header540

polly.loop_header556.preheader:                   ; preds = %polly.loop_exit548
  %Packed_MemRef_call2457 = bitcast i8* %malloccall456 to double*
  br label %polly.loop_header556

polly.loop_header546:                             ; preds = %polly.loop_header546.preheader, %polly.loop_header546
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_header546 ], [ %polly.indvar549.ph, %polly.loop_header546.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar549, 3
  %scevgep553 = getelementptr i8, i8* %scevgep552, i64 %162
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_555, 1.200000e+00
  store double %p_mul.i, double* %scevgep553554, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next550, %polly.indvar543
  br i1 %exitcond896.not, label %polly.loop_exit548, label %polly.loop_header546, !llvm.loop !91

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_exit564
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_exit564 ], [ 0, %polly.loop_header556.preheader ]
  %polly.access.mul.Packed_MemRef_call2457 = mul nuw nsw i64 %polly.indvar559, 1200
  br label %polly.loop_header562

polly.loop_exit564:                               ; preds = %polly.loop_header562
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next560, 1000
  br i1 %exitcond895.not, label %polly.loop_header572, label %polly.loop_header556

polly.loop_header562:                             ; preds = %polly.loop_header562, %polly.loop_header556
  %polly.indvar565 = phi i64 [ 0, %polly.loop_header556 ], [ %polly.indvar_next566, %polly.loop_header562 ]
  %polly.access.mul.call2569 = mul nuw nsw i64 %polly.indvar565, 1000
  %polly.access.add.call2570 = add nuw nsw i64 %polly.access.mul.call2569, %polly.indvar559
  %polly.access.call2571 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2570
  %polly.access.call2571.load = load double, double* %polly.access.call2571, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2457 = add nuw nsw i64 %polly.indvar565, %polly.access.mul.Packed_MemRef_call2457
  %polly.access.Packed_MemRef_call2457 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457
  store double %polly.access.call2571.load, double* %polly.access.Packed_MemRef_call2457, align 8
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next566, 1200
  br i1 %exitcond894.not, label %polly.loop_exit564, label %polly.loop_header562

polly.loop_header572:                             ; preds = %polly.loop_exit564, %polly.loop_exit580
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %polly.indvar575 = phi i64 [ %polly.indvar_next576, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %163 = mul nuw nsw i64 %polly.indvar575, 7
  %164 = add nuw nsw i64 %163, 39
  %pexp.p_div_q584 = lshr i64 %164, 5
  %165 = sub nsw i64 %polly.indvar575, %pexp.p_div_q584
  %polly.loop_guard589 = icmp sgt i64 %165, -2
  %166 = mul nsw i64 %polly.indvar575, -50
  %167 = mul nuw nsw i64 %polly.indvar575, 50
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588
  %polly.indvar_next576 = add nuw nsw i64 %polly.indvar575, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -50
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 50
  %exitcond893.not = icmp eq i64 %polly.indvar_next576, 24
  br i1 %exitcond893.not, label %polly.exiting455, label %polly.loop_header572

polly.loop_header578:                             ; preds = %polly.loop_exit588, %polly.loop_header572
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header572 ], [ %polly.indvar_next582, %polly.loop_exit588 ]
  br i1 %polly.loop_guard589, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %168 = mul nuw nsw i64 %polly.indvar581, 100
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit596, %polly.loop_header578
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next582, 10
  br i1 %exitcond892.not, label %polly.loop_exit580, label %polly.loop_header578

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit596
  %indvars.iv885 = phi i64 [ %indvars.iv883, %polly.loop_header586.preheader ], [ %indvars.iv.next886, %polly.loop_exit596 ]
  %indvars.iv880 = phi i64 [ %indvars.iv878, %polly.loop_header586.preheader ], [ %indvars.iv.next881, %polly.loop_exit596 ]
  %polly.indvar590 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit596 ]
  %169 = shl nsw i64 %polly.indvar590, 6
  %170 = add nsw i64 %169, %166
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard597 = icmp slt i64 %172, 50
  br i1 %polly.loop_guard597, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header586
  %smax882 = call i64 @llvm.smax.i64(i64 %indvars.iv880, i64 0)
  %173 = add i64 %smax882, %indvars.iv885
  %174 = sub nsw i64 %167, %169
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit603, %polly.loop_header586
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592.not = icmp sgt i64 %polly.indvar590, %165
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, 64
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -64
  br i1 %polly.loop_cond592.not, label %polly.loop_exit588, label %polly.loop_header586

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit603
  %indvars.iv887 = phi i64 [ %173, %polly.loop_header594.preheader ], [ %indvars.iv.next888, %polly.loop_exit603 ]
  %polly.indvar598 = phi i64 [ %172, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit603 ]
  %smin889 = call i64 @llvm.smin.i64(i64 %indvars.iv887, i64 63)
  %175 = add nsw i64 %polly.indvar598, %174
  %polly.loop_guard611931 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar598, %167
  %177 = mul i64 %176, 8000
  %178 = mul i64 %176, 9600
  br i1 %polly.loop_guard611931, label %polly.loop_header601.us, label %polly.loop_exit603

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.loop_exit610.loopexit.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_exit610.loopexit.us ], [ 0, %polly.loop_header594 ]
  %179 = add nuw nsw i64 %polly.indvar604.us, %168
  %180 = shl i64 %179, 3
  %polly.access.mul.Packed_MemRef_call2457618.us = mul nuw nsw i64 %179, 1200
  %polly.access.add.Packed_MemRef_call2457619.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2457618.us, %176
  %polly.access.Packed_MemRef_call2457620.us = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457619.us
  %_p_scalar_621.us = load double, double* %polly.access.Packed_MemRef_call2457620.us, align 8
  %181 = add i64 %180, %177
  %scevgep626.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep626627.us = bitcast i8* %scevgep626.us to double*
  %_p_scalar_628.us = load double, double* %scevgep626627.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %182 = add nuw nsw i64 %polly.indvar612.us, %169
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep615.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep615616.us = bitcast i8* %scevgep615.us to double*
  %_p_scalar_617.us = load double, double* %scevgep615616.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_621.us, %_p_scalar_617.us
  %polly.access.add.Packed_MemRef_call2457623.us = add nuw nsw i64 %182, %polly.access.mul.Packed_MemRef_call2457618.us
  %polly.access.Packed_MemRef_call2457624.us = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457623.us
  %_p_scalar_625.us = load double, double* %polly.access.Packed_MemRef_call2457624.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_628.us, %_p_scalar_625.us
  %185 = shl i64 %182, 3
  %186 = add i64 %185, %178
  %scevgep629.us = getelementptr i8, i8* %call, i64 %186
  %scevgep629630.us = bitcast i8* %scevgep629.us to double*
  %_p_scalar_631.us = load double, double* %scevgep629630.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_631.us
  store double %p_add42.i.us, double* %scevgep629630.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond890.not = icmp eq i64 %polly.indvar612.us, %smin889
  br i1 %exitcond890.not, label %polly.loop_exit610.loopexit.us, label %polly.loop_header608.us

polly.loop_exit610.loopexit.us:                   ; preds = %polly.loop_header608.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next605.us, 100
  br i1 %exitcond891.not, label %polly.loop_exit603, label %polly.loop_header601.us

polly.loop_exit603:                               ; preds = %polly.loop_exit610.loopexit.us, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600 = icmp ult i64 %polly.indvar598, 49
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  br i1 %polly.loop_cond600, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header758:                             ; preds = %entry, %polly.loop_exit766
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %polly.loop_exit766 ], [ 0, %entry ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %entry ]
  %smin924 = call i64 @llvm.smin.i64(i64 %indvars.iv922, i64 -1168)
  %187 = shl nsw i64 %polly.indvar761, 5
  %188 = add nsw i64 %smin924, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next923 = add nsw i64 %indvars.iv922, -32
  %exitcond927.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond927.not, label %polly.loop_header785, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %189 = mul nsw i64 %polly.indvar767, -32
  %smin953 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin953, 1200
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv918, i64 -1168)
  %191 = shl nsw i64 %polly.indvar767, 5
  %192 = add nsw i64 %smin920, 1199
  br label %polly.loop_header770

polly.loop_exit772:                               ; preds = %polly.loop_exit778
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -32
  %exitcond926.not = icmp eq i64 %polly.indvar_next768, 38
  br i1 %exitcond926.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_exit778, %polly.loop_header764
  %polly.indvar773 = phi i64 [ 0, %polly.loop_header764 ], [ %polly.indvar_next774, %polly.loop_exit778 ]
  %193 = add nuw nsw i64 %polly.indvar773, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header776, label %vector.ph954

vector.ph954:                                     ; preds = %polly.loop_header770
  %broadcast.splatinsert961 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat962 = shufflevector <4 x i64> %broadcast.splatinsert961, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert963 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat964 = shufflevector <4 x i32> %broadcast.splatinsert963, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %vector.ph954
  %index955 = phi i64 [ 0, %vector.ph954 ], [ %index.next956, %vector.body952 ]
  %vec.ind959 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph954 ], [ %vec.ind.next960, %vector.body952 ]
  %196 = add nuw nsw <4 x i64> %vec.ind959, %broadcast.splat962
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat964, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !94, !noalias !96
  %index.next956 = add i64 %index955, 4
  %vec.ind.next960 = add <4 x i64> %vec.ind959, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next956, %190
  br i1 %208, label %polly.loop_exit778, label %vector.body952, !llvm.loop !99

polly.loop_exit778:                               ; preds = %vector.body952, %polly.loop_header776
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond925.not = icmp eq i64 %polly.indvar773, %188
  br i1 %exitcond925.not, label %polly.loop_exit772, label %polly.loop_header770

polly.loop_header776:                             ; preds = %polly.loop_header770, %polly.loop_header776
  %polly.indvar779 = phi i64 [ %polly.indvar_next780, %polly.loop_header776 ], [ 0, %polly.loop_header770 ]
  %209 = add nuw nsw i64 %polly.indvar779, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep782 = getelementptr i8, i8* %call, i64 %215
  %scevgep782783 = bitcast i8* %scevgep782 to double*
  store double %p_div33.i, double* %scevgep782783, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next780 = add nuw nsw i64 %polly.indvar779, 1
  %exitcond921.not = icmp eq i64 %polly.indvar779, %192
  br i1 %exitcond921.not, label %polly.loop_exit778, label %polly.loop_header776, !llvm.loop !100

polly.loop_header785:                             ; preds = %polly.loop_exit766, %polly.loop_exit793
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %smin914 = call i64 @llvm.smin.i64(i64 %indvars.iv912, i64 -1168)
  %216 = shl nsw i64 %polly.indvar788, 5
  %217 = add nsw i64 %smin914, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -32
  %exitcond917.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond917.not, label %polly.loop_header811, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %218 = mul nsw i64 %polly.indvar794, -32
  %smin968 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin968, 1000
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -968)
  %220 = shl nsw i64 %polly.indvar794, 5
  %221 = add nsw i64 %smin910, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond916.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %222 = add nuw nsw i64 %polly.indvar800, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check969 = icmp eq i64 %219, 0
  br i1 %min.iters.check969, label %polly.loop_header803, label %vector.ph970

vector.ph970:                                     ; preds = %polly.loop_header797
  %broadcast.splatinsert979 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat980 = shufflevector <4 x i64> %broadcast.splatinsert979, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph970
  %index973 = phi i64 [ 0, %vector.ph970 ], [ %index.next974, %vector.body967 ]
  %vec.ind977 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph970 ], [ %vec.ind.next978, %vector.body967 ]
  %225 = add nuw nsw <4 x i64> %vec.ind977, %broadcast.splat980
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat982, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !98, !noalias !101
  %index.next974 = add i64 %index973, 4
  %vec.ind.next978 = add <4 x i64> %vec.ind977, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next974, %219
  br i1 %237, label %polly.loop_exit805, label %vector.body967, !llvm.loop !102

polly.loop_exit805:                               ; preds = %vector.body967, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond915.not = icmp eq i64 %polly.indvar800, %217
  br i1 %exitcond915.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %238 = add nuw nsw i64 %polly.indvar806, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep809 = getelementptr i8, i8* %call2, i64 %244
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div12.i, double* %scevgep809810, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond911.not = icmp eq i64 %polly.indvar806, %221
  br i1 %exitcond911.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !103

polly.loop_header811:                             ; preds = %polly.loop_exit793, %polly.loop_exit819
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %245 = shl nsw i64 %polly.indvar814, 5
  %246 = add nsw i64 %smin904, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond907.not, label %init_array.exit, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %247 = mul nsw i64 %polly.indvar820, -32
  %smin986 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin986, 1000
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -968)
  %249 = shl nsw i64 %polly.indvar820, 5
  %250 = add nsw i64 %smin900, 999
  br label %polly.loop_header823

polly.loop_exit825:                               ; preds = %polly.loop_exit831
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond906.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_exit831, %polly.loop_header817
  %polly.indvar826 = phi i64 [ 0, %polly.loop_header817 ], [ %polly.indvar_next827, %polly.loop_exit831 ]
  %251 = add nuw nsw i64 %polly.indvar826, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check987 = icmp eq i64 %248, 0
  br i1 %min.iters.check987, label %polly.loop_header829, label %vector.ph988

vector.ph988:                                     ; preds = %polly.loop_header823
  %broadcast.splatinsert997 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat998 = shufflevector <4 x i64> %broadcast.splatinsert997, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %vector.ph988
  %index991 = phi i64 [ 0, %vector.ph988 ], [ %index.next992, %vector.body985 ]
  %vec.ind995 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph988 ], [ %vec.ind.next996, %vector.body985 ]
  %254 = add nuw nsw <4 x i64> %vec.ind995, %broadcast.splat998
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1000, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !97, !noalias !104
  %index.next992 = add i64 %index991, 4
  %vec.ind.next996 = add <4 x i64> %vec.ind995, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next992, %248
  br i1 %266, label %polly.loop_exit831, label %vector.body985, !llvm.loop !105

polly.loop_exit831:                               ; preds = %vector.body985, %polly.loop_header829
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond905.not = icmp eq i64 %polly.indvar826, %246
  br i1 %exitcond905.not, label %polly.loop_exit825, label %polly.loop_header823

polly.loop_header829:                             ; preds = %polly.loop_header823, %polly.loop_header829
  %polly.indvar832 = phi i64 [ %polly.indvar_next833, %polly.loop_header829 ], [ 0, %polly.loop_header823 ]
  %267 = add nuw nsw i64 %polly.indvar832, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep836 = getelementptr i8, i8* %call1, i64 %273
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div.i, double* %scevgep836837, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next833 = add nuw nsw i64 %polly.indvar832, 1
  %exitcond901.not = icmp eq i64 %polly.indvar832, %250
  br i1 %exitcond901.not, label %polly.loop_exit831, label %polly.loop_header829, !llvm.loop !106
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

declare noalias i8* @malloc(i64)

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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 50}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
