; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6645.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6645.c"
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
  %call766 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1627 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2628 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1627, %call2
  %polly.access.call2647 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2647, %call1
  %2 = or i1 %0, %1
  %polly.access.call667 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call667, %call2
  %4 = icmp ule i8* %polly.access.call2647, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call667, %call1
  %8 = icmp ule i8* %polly.access.call1627, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header740, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep935 = getelementptr i8, i8* %call2, i64 %12
  %scevgep934 = getelementptr i8, i8* %call2, i64 %11
  %scevgep933 = getelementptr i8, i8* %call1, i64 %12
  %scevgep932 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep932, %scevgep935
  %bound1 = icmp ult i8* %scevgep934, %scevgep933
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
  br i1 %exitcond18.not.i, label %vector.ph939, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph939:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert946 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat947 = shufflevector <4 x i64> %broadcast.splatinsert946, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph939
  %index940 = phi i64 [ 0, %vector.ph939 ], [ %index.next941, %vector.body938 ]
  %vec.ind944 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph939 ], [ %vec.ind.next945, %vector.body938 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind944, %broadcast.splat947
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index940
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next941 = add i64 %index940, 4
  %vec.ind.next945 = add <4 x i64> %vec.ind944, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next941, 1200
  br i1 %40, label %for.inc41.i, label %vector.body938, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body938
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph939, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1002 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1002, label %for.body3.i46.preheader1076, label %vector.ph1003

vector.ph1003:                                    ; preds = %for.body3.i46.preheader
  %n.vec1005 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body1001 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index1006
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1007 = add i64 %index1006, 4
  %46 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %46, label %middle.block999, label %vector.body1001, !llvm.loop !18

middle.block999:                                  ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %indvars.iv21.i, %n.vec1005
  br i1 %cmp.n1009, label %for.inc6.i, label %for.body3.i46.preheader1076

for.body3.i46.preheader1076:                      ; preds = %for.body3.i46.preheader, %middle.block999
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1005, %middle.block999 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1076, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1076 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block999, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting443
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1025 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1025, label %for.body3.i60.preheader1075, label %vector.ph1026

vector.ph1026:                                    ; preds = %for.body3.i60.preheader
  %n.vec1028 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %vector.ph1026
  %index1029 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1030, %vector.body1024 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1029
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1033 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1033, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1030 = add i64 %index1029, 4
  %57 = icmp eq i64 %index.next1030, %n.vec1028
  br i1 %57, label %middle.block1022, label %vector.body1024, !llvm.loop !60

middle.block1022:                                 ; preds = %vector.body1024
  %cmp.n1032 = icmp eq i64 %indvars.iv21.i52, %n.vec1028
  br i1 %cmp.n1032, label %for.inc6.i63, label %for.body3.i60.preheader1075

for.body3.i60.preheader1075:                      ; preds = %for.body3.i60.preheader, %middle.block1022
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1028, %middle.block1022 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1075, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1075 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1022, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting269
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1051 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1051, label %for.body3.i99.preheader1074, label %vector.ph1052

vector.ph1052:                                    ; preds = %for.body3.i99.preheader
  %n.vec1054 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1052
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1056, %vector.body1050 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1055
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1059 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1059, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1056 = add i64 %index1055, 4
  %68 = icmp eq i64 %index.next1056, %n.vec1054
  br i1 %68, label %middle.block1048, label %vector.body1050, !llvm.loop !62

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1058 = icmp eq i64 %indvars.iv21.i91, %n.vec1054
  br i1 %cmp.n1058, label %for.inc6.i102, label %for.body3.i99.preheader1074

for.body3.i99.preheader1074:                      ; preds = %for.body3.i99.preheader, %middle.block1048
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1054, %middle.block1048 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1074, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1074 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1048, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %indvar1063 = phi i64 [ %indvar.next1064, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1063, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1065 = icmp ult i64 %88, 4
  br i1 %min.iters.check1065, label %polly.loop_header191.preheader, label %vector.ph1066

vector.ph1066:                                    ; preds = %polly.loop_header
  %n.vec1068 = and i64 %88, -4
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1070, %vector.body1062 ]
  %90 = shl nuw nsw i64 %index1069, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1073 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1070 = add i64 %index1069, 4
  %95 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %95, label %middle.block1060, label %vector.body1062, !llvm.loop !74

middle.block1060:                                 ; preds = %vector.body1062
  %cmp.n1072 = icmp eq i64 %88, %n.vec1068
  br i1 %cmp.n1072, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1060
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1068, %middle.block1060 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1060
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1064 = add i64 %indvar1063, 1
  br i1 %exitcond851.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond850.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv840 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next841, %polly.loop_exit223 ]
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = lshr i64 %polly.indvar202, 4
  %98 = shl nuw nsw i64 %97, 7
  %99 = sub nsw i64 %indvars.iv836, %98
  %100 = add i64 %indvars.iv840, %98
  %101 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %102 = mul nsw i64 %polly.indvar202, -8
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 8
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -8
  %exitcond849.not = icmp eq i64 %polly.indvar_next203, 150
  br i1 %exitcond849.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond835.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %103 = add nuw nsw i64 %polly.indvar214, %101
  %polly.access.mul.call2218 = mul nuw nsw i64 %103, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit229 ], [ %100, %polly.loop_exit207 ]
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %97, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv838, i64 0)
  %104 = add i64 %smax, %indvars.iv842
  %105 = shl nsw i64 %polly.indvar224, 7
  %106 = sub nsw i64 %101, %105
  %107 = icmp sgt i64 %106, 0
  %108 = select i1 %107, i64 %106, i64 0
  %109 = mul nsw i64 %polly.indvar224, -128
  %110 = icmp slt i64 %109, -1072
  %111 = select i1 %110, i64 %109, i64 -1072
  %112 = add nsw i64 %111, 1199
  %polly.loop_guard.not = icmp sgt i64 %108, %112
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next839 = add i64 %indvars.iv838, -128
  %indvars.iv.next843 = add i64 %indvars.iv842, 128
  %exitcond848.not = icmp eq i64 %polly.indvar_next225, 10
  br i1 %exitcond848.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header221, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %113 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %113
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next231, 1000
  br i1 %exitcond847.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit242 ], [ %104, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ %108, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 7)
  %114 = add nuw i64 %polly.indvar236, %105
  %115 = add i64 %114, %102
  %polly.loop_guard243927 = icmp sgt i64 %115, -1
  br i1 %polly.loop_guard243927, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %115
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %116 = mul i64 %114, 8000
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %116
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !71, !noalias !78
  %117 = mul i64 %114, 9600
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %112
  %indvars.iv.next845 = add i64 %indvars.iv844, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %118 = add nuw nsw i64 %polly.indvar244, %101
  %119 = mul nuw nsw i64 %118, 8000
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %119
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %120 = shl i64 %118, 3
  %121 = add i64 %120, %117
  %scevgep263 = getelementptr i8, i8* %call, i64 %121
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond846.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond846.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1037 = phi i64 [ %indvar.next1038, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %122 = add i64 %indvar1037, 1
  %123 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1039 = icmp ult i64 %122, 4
  br i1 %min.iters.check1039, label %polly.loop_header360.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %polly.loop_header354
  %n.vec1042 = and i64 %122, -4
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1036 ]
  %124 = shl nuw nsw i64 %index1043, 3
  %125 = getelementptr i8, i8* %scevgep366, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !79, !noalias !81
  %127 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !79, !noalias !81
  %index.next1044 = add i64 %index1043, 4
  %129 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %129, label %middle.block1034, label %vector.body1036, !llvm.loop !85

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1046 = icmp eq i64 %122, %n.vec1042
  br i1 %cmp.n1046, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1034
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1042, %middle.block1034 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1034
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1038 = add i64 %indvar1037, 1
  br i1 %exitcond873.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %130
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond872.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit395
  %indvars.iv861 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next862, %polly.loop_exit395 ]
  %indvars.iv856 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next857, %polly.loop_exit395 ]
  %indvars.iv852 = phi i64 [ 1200, %polly.loop_header370.preheader ], [ %indvars.iv.next853, %polly.loop_exit395 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit395 ]
  %131 = lshr i64 %polly.indvar373, 4
  %132 = shl nuw nsw i64 %131, 7
  %133 = sub nsw i64 %indvars.iv856, %132
  %134 = add i64 %indvars.iv861, %132
  %135 = shl nsw i64 %polly.indvar373, 3
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %136 = mul nsw i64 %polly.indvar373, -8
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -8
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 8
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, -8
  %exitcond871.not = icmp eq i64 %polly.indvar_next374, 150
  br i1 %exitcond871.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond855.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %137 = add nuw nsw i64 %polly.indvar385, %135
  %polly.access.mul.call2389 = mul nuw nsw i64 %137, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next386, %indvars.iv852
  br i1 %exitcond854.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_exit378
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit401 ], [ %134, %polly.loop_exit378 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit401 ], [ %133, %polly.loop_exit378 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ %131, %polly.loop_exit378 ]
  %smax860 = call i64 @llvm.smax.i64(i64 %indvars.iv858, i64 0)
  %138 = add i64 %smax860, %indvars.iv863
  %139 = shl nsw i64 %polly.indvar396, 7
  %140 = sub nsw i64 %135, %139
  %141 = icmp sgt i64 %140, 0
  %142 = select i1 %141, i64 %140, i64 0
  %143 = mul nsw i64 %polly.indvar396, -128
  %144 = icmp slt i64 %143, -1072
  %145 = select i1 %144, i64 %143, i64 -1072
  %146 = add nsw i64 %145, 1199
  %polly.loop_guard409.not = icmp sgt i64 %142, %146
  br i1 %polly.loop_guard409.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next859 = add i64 %indvars.iv858, -128
  %indvars.iv.next864 = add i64 %indvars.iv863, 128
  %exitcond870.not = icmp eq i64 %polly.indvar_next397, 10
  br i1 %exitcond870.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_header393, %polly.loop_exit408
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit408 ], [ 0, %polly.loop_header393 ]
  %147 = shl nuw nsw i64 %polly.indvar402, 3
  %scevgep421 = getelementptr i8, i8* %call1, i64 %147
  %polly.access.mul.Packed_MemRef_call2271425 = mul nuw nsw i64 %polly.indvar402, 1200
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit416
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next403, 1000
  br i1 %exitcond869.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header406:                             ; preds = %polly.loop_exit416, %polly.loop_header399
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit416 ], [ %138, %polly.loop_header399 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit416 ], [ %142, %polly.loop_header399 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 7)
  %148 = add nuw i64 %polly.indvar410, %139
  %149 = add i64 %148, %136
  %polly.loop_guard417928 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard417928, label %polly.loop_header414.preheader, label %polly.loop_exit416

polly.loop_header414.preheader:                   ; preds = %polly.loop_header406
  %polly.access.add.Packed_MemRef_call2271426 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271425, %149
  %polly.access.Packed_MemRef_call2271427 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426
  %_p_scalar_428 = load double, double* %polly.access.Packed_MemRef_call2271427, align 8
  %150 = mul i64 %148, 8000
  %scevgep434 = getelementptr i8, i8* %scevgep421, i64 %150
  %scevgep434435 = bitcast i8* %scevgep434 to double*
  %_p_scalar_436 = load double, double* %scevgep434435, align 8, !alias.scope !82, !noalias !88
  %151 = mul i64 %148, 9600
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_header414, %polly.loop_header406
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412.not.not = icmp slt i64 %polly.indvar410, %146
  %indvars.iv.next866 = add i64 %indvars.iv865, 1
  br i1 %polly.loop_cond412.not.not, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_header414
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header414 ], [ 0, %polly.loop_header414.preheader ]
  %152 = add nuw nsw i64 %polly.indvar418, %135
  %153 = mul nuw nsw i64 %152, 8000
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %153
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %polly.access.add.Packed_MemRef_call2271430 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call2271425
  %polly.access.Packed_MemRef_call2271431 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430
  %_p_scalar_432 = load double, double* %polly.access.Packed_MemRef_call2271431, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %154 = shl i64 %152, 3
  %155 = add i64 %154, %151
  %scevgep437 = getelementptr i8, i8* %call, i64 %155
  %scevgep437438 = bitcast i8* %scevgep437 to double*
  %_p_scalar_439 = load double, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_439
  store double %p_add42.i79, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond868.not = icmp eq i64 %polly.indvar418, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit416, label %polly.loop_header414

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1013 = icmp ult i64 %156, 4
  br i1 %min.iters.check1013, label %polly.loop_header534.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %polly.loop_header528
  %n.vec1016 = and i64 %156, -4
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1012 ]
  %158 = shl nuw nsw i64 %index1017, 3
  %159 = getelementptr i8, i8* %scevgep540, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !89, !noalias !91
  %161 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %index.next1018 = add i64 %index1017, 4
  %163 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %163, label %middle.block1010, label %vector.body1012, !llvm.loop !95

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1020 = icmp eq i64 %156, %n.vec1016
  br i1 %cmp.n1020, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1010
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1016, %middle.block1010 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1010
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond895.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %164
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond894.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !96

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit569
  %indvars.iv883 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next884, %polly.loop_exit569 ]
  %indvars.iv878 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next879, %polly.loop_exit569 ]
  %indvars.iv874 = phi i64 [ 1200, %polly.loop_header544.preheader ], [ %indvars.iv.next875, %polly.loop_exit569 ]
  %polly.indvar547 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %polly.indvar_next548, %polly.loop_exit569 ]
  %165 = lshr i64 %polly.indvar547, 4
  %166 = shl nuw nsw i64 %165, 7
  %167 = sub nsw i64 %indvars.iv878, %166
  %168 = add i64 %indvars.iv883, %166
  %169 = shl nsw i64 %polly.indvar547, 3
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_exit558
  %170 = mul nsw i64 %polly.indvar547, -8
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, -8
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 8
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -8
  %exitcond893.not = icmp eq i64 %polly.indvar_next548, 150
  br i1 %exitcond893.not, label %polly.exiting443, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_exit558 ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar553, 1200
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next554, 1000
  br i1 %exitcond877.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header556:                             ; preds = %polly.loop_header556, %polly.loop_header550
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header550 ], [ %polly.indvar_next560, %polly.loop_header556 ]
  %171 = add nuw nsw i64 %polly.indvar559, %169
  %polly.access.mul.call2563 = mul nuw nsw i64 %171, 1000
  %polly.access.add.call2564 = add nuw nsw i64 %polly.access.mul.call2563, %polly.indvar553
  %polly.access.call2565 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2564
  %polly.access.call2565.load = load double, double* %polly.access.call2565, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar559, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2565.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next560, %indvars.iv874
  br i1 %exitcond876.not, label %polly.loop_exit558, label %polly.loop_header556

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_exit552
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit575 ], [ %168, %polly.loop_exit552 ]
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit575 ], [ %167, %polly.loop_exit552 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ %165, %polly.loop_exit552 ]
  %smax882 = call i64 @llvm.smax.i64(i64 %indvars.iv880, i64 0)
  %172 = add i64 %smax882, %indvars.iv885
  %173 = shl nsw i64 %polly.indvar570, 7
  %174 = sub nsw i64 %169, %173
  %175 = icmp sgt i64 %174, 0
  %176 = select i1 %175, i64 %174, i64 0
  %177 = mul nsw i64 %polly.indvar570, -128
  %178 = icmp slt i64 %177, -1072
  %179 = select i1 %178, i64 %177, i64 -1072
  %180 = add nsw i64 %179, 1199
  %polly.loop_guard583.not = icmp sgt i64 %176, %180
  br i1 %polly.loop_guard583.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next881 = add i64 %indvars.iv880, -128
  %indvars.iv.next886 = add i64 %indvars.iv885, 128
  %exitcond892.not = icmp eq i64 %polly.indvar_next571, 10
  br i1 %exitcond892.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_header567, %polly.loop_exit582
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header567 ]
  %181 = shl nuw nsw i64 %polly.indvar576, 3
  %scevgep595 = getelementptr i8, i8* %call1, i64 %181
  %polly.access.mul.Packed_MemRef_call2445599 = mul nuw nsw i64 %polly.indvar576, 1200
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit590
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next577, 1000
  br i1 %exitcond891.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_exit590, %polly.loop_header573
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit590 ], [ %172, %polly.loop_header573 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit590 ], [ %176, %polly.loop_header573 ]
  %smin889 = call i64 @llvm.smin.i64(i64 %indvars.iv887, i64 7)
  %182 = add nuw i64 %polly.indvar584, %173
  %183 = add i64 %182, %170
  %polly.loop_guard591929 = icmp sgt i64 %183, -1
  br i1 %polly.loop_guard591929, label %polly.loop_header588.preheader, label %polly.loop_exit590

polly.loop_header588.preheader:                   ; preds = %polly.loop_header580
  %polly.access.add.Packed_MemRef_call2445600 = add nsw i64 %polly.access.mul.Packed_MemRef_call2445599, %183
  %polly.access.Packed_MemRef_call2445601 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600
  %_p_scalar_602 = load double, double* %polly.access.Packed_MemRef_call2445601, align 8
  %184 = mul i64 %182, 8000
  %scevgep608 = getelementptr i8, i8* %scevgep595, i64 %184
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  %185 = mul i64 %182, 9600
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588, %polly.loop_header580
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586.not.not = icmp slt i64 %polly.indvar584, %180
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  br i1 %polly.loop_cond586.not.not, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_header588
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header588 ], [ 0, %polly.loop_header588.preheader ]
  %186 = add nuw nsw i64 %polly.indvar592, %169
  %187 = mul nuw nsw i64 %186, 8000
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %187
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_602, %_p_scalar_598
  %polly.access.add.Packed_MemRef_call2445604 = add nuw nsw i64 %polly.indvar592, %polly.access.mul.Packed_MemRef_call2445599
  %polly.access.Packed_MemRef_call2445605 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604
  %_p_scalar_606 = load double, double* %polly.access.Packed_MemRef_call2445605, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_606
  %188 = shl i64 %186, 3
  %189 = add i64 %188, %185
  %scevgep611 = getelementptr i8, i8* %call, i64 %189
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond890.not = icmp eq i64 %polly.indvar592, %smin889
  br i1 %exitcond890.not, label %polly.loop_exit590, label %polly.loop_header588

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -1168)
  %190 = shl nsw i64 %polly.indvar743, 5
  %191 = add nsw i64 %smin922, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond925.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %192 = mul nsw i64 %polly.indvar749, -32
  %smin951 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin951, 1200
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -1168)
  %194 = shl nsw i64 %polly.indvar749, 5
  %195 = add nsw i64 %smin918, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond924.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %196 = add nuw nsw i64 %polly.indvar755, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph952

vector.ph952:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body950

vector.body950:                                   ; preds = %vector.body950, %vector.ph952
  %index953 = phi i64 [ 0, %vector.ph952 ], [ %index.next954, %vector.body950 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph952 ], [ %vec.ind.next958, %vector.body950 ]
  %199 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat962, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !99, !noalias !101
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next954, %193
  br i1 %211, label %polly.loop_exit760, label %vector.body950, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body950, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond923.not = icmp eq i64 %polly.indvar755, %191
  br i1 %exitcond923.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %212 = add nuw nsw i64 %polly.indvar761, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep764 = getelementptr i8, i8* %call, i64 %218
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond919.not = icmp eq i64 %polly.indvar761, %195
  br i1 %exitcond919.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !105

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %219 = shl nsw i64 %polly.indvar770, 5
  %220 = add nsw i64 %smin912, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond915.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %221 = mul nsw i64 %polly.indvar776, -32
  %smin966 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin966, 1000
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -968)
  %223 = shl nsw i64 %polly.indvar776, 5
  %224 = add nsw i64 %smin908, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond914.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %225 = add nuw nsw i64 %polly.indvar782, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check967 = icmp eq i64 %222, 0
  br i1 %min.iters.check967, label %polly.loop_header785, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body965 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph968 ], [ %vec.ind.next976, %vector.body965 ]
  %228 = add nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat980, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !103, !noalias !106
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next972, %222
  br i1 %240, label %polly.loop_exit787, label %vector.body965, !llvm.loop !107

polly.loop_exit787:                               ; preds = %vector.body965, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond913.not = icmp eq i64 %polly.indvar782, %220
  br i1 %exitcond913.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %241 = add nuw nsw i64 %polly.indvar788, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep791 = getelementptr i8, i8* %call2, i64 %247
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond909.not = icmp eq i64 %polly.indvar788, %224
  br i1 %exitcond909.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !108

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 -1168)
  %248 = shl nsw i64 %polly.indvar796, 5
  %249 = add nsw i64 %smin902, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond905.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %250 = mul nsw i64 %polly.indvar802, -32
  %smin984 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin984, 1000
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -968)
  %252 = shl nsw i64 %polly.indvar802, 5
  %253 = add nsw i64 %smin898, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond904.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %254 = add nuw nsw i64 %polly.indvar808, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check985 = icmp eq i64 %251, 0
  br i1 %min.iters.check985, label %polly.loop_header811, label %vector.ph986

vector.ph986:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert995 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat996 = shufflevector <4 x i64> %broadcast.splatinsert995, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next990, %vector.body983 ]
  %vec.ind993 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph986 ], [ %vec.ind.next994, %vector.body983 ]
  %257 = add nuw nsw <4 x i64> %vec.ind993, %broadcast.splat996
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat998, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !102, !noalias !109
  %index.next990 = add i64 %index989, 4
  %vec.ind.next994 = add <4 x i64> %vec.ind993, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next990, %251
  br i1 %269, label %polly.loop_exit813, label %vector.body983, !llvm.loop !110

polly.loop_exit813:                               ; preds = %vector.body983, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond903.not = icmp eq i64 %polly.indvar808, %249
  br i1 %exitcond903.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %270 = add nuw nsw i64 %polly.indvar814, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep818 = getelementptr i8, i8* %call1, i64 %276
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond899.not = icmp eq i64 %polly.indvar814, %253
  br i1 %exitcond899.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 128}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
