; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6289.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6289.c"
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
  %scevgep932 = getelementptr i8, i8* %call2, i64 %12
  %scevgep931 = getelementptr i8, i8* %call2, i64 %11
  %scevgep930 = getelementptr i8, i8* %call1, i64 %12
  %scevgep929 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep929, %scevgep932
  %bound1 = icmp ult i8* %scevgep931, %scevgep930
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
  br i1 %exitcond18.not.i, label %vector.ph936, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph936:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert943 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat944 = shufflevector <4 x i64> %broadcast.splatinsert943, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph936
  %index937 = phi i64 [ 0, %vector.ph936 ], [ %index.next938, %vector.body935 ]
  %vec.ind941 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph936 ], [ %vec.ind.next942, %vector.body935 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind941, %broadcast.splat944
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index937
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next938 = add i64 %index937, 4
  %vec.ind.next942 = add <4 x i64> %vec.ind941, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next938, 1200
  br i1 %40, label %for.inc41.i, label %vector.body935, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body935
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph936, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check999 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check999, label %for.body3.i46.preheader1073, label %vector.ph1000

vector.ph1000:                                    ; preds = %for.body3.i46.preheader
  %n.vec1002 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body998 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index1003
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1004 = add i64 %index1003, 4
  %46 = icmp eq i64 %index.next1004, %n.vec1002
  br i1 %46, label %middle.block996, label %vector.body998, !llvm.loop !18

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1006 = icmp eq i64 %indvars.iv21.i, %n.vec1002
  br i1 %cmp.n1006, label %for.inc6.i, label %for.body3.i46.preheader1073

for.body3.i46.preheader1073:                      ; preds = %for.body3.i46.preheader, %middle.block996
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1002, %middle.block996 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1073, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1073 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block996, %for.cond1.preheader.i45
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
  %min.iters.check1022 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1022, label %for.body3.i60.preheader1072, label %vector.ph1023

vector.ph1023:                                    ; preds = %for.body3.i60.preheader
  %n.vec1025 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1027, %vector.body1021 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1026
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1030 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1030, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1027 = add i64 %index1026, 4
  %57 = icmp eq i64 %index.next1027, %n.vec1025
  br i1 %57, label %middle.block1019, label %vector.body1021, !llvm.loop !60

middle.block1019:                                 ; preds = %vector.body1021
  %cmp.n1029 = icmp eq i64 %indvars.iv21.i52, %n.vec1025
  br i1 %cmp.n1029, label %for.inc6.i63, label %for.body3.i60.preheader1072

for.body3.i60.preheader1072:                      ; preds = %for.body3.i60.preheader, %middle.block1019
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1025, %middle.block1019 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1072, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1072 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1019, %for.cond1.preheader.i54
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
  %min.iters.check1048 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1048, label %for.body3.i99.preheader1071, label %vector.ph1049

vector.ph1049:                                    ; preds = %for.body3.i99.preheader
  %n.vec1051 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1049
  %index1052 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1053, %vector.body1047 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1052
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1056 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1056, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1053 = add i64 %index1052, 4
  %68 = icmp eq i64 %index.next1053, %n.vec1051
  br i1 %68, label %middle.block1045, label %vector.body1047, !llvm.loop !62

middle.block1045:                                 ; preds = %vector.body1047
  %cmp.n1055 = icmp eq i64 %indvars.iv21.i91, %n.vec1051
  br i1 %cmp.n1055, label %for.inc6.i102, label %for.body3.i99.preheader1071

for.body3.i99.preheader1071:                      ; preds = %for.body3.i99.preheader, %middle.block1045
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1051, %middle.block1045 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1071, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1071 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1045, %for.cond1.preheader.i93
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
  %indvar1060 = phi i64 [ %indvar.next1061, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1060, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1062 = icmp ult i64 %88, 4
  br i1 %min.iters.check1062, label %polly.loop_header191.preheader, label %vector.ph1063

vector.ph1063:                                    ; preds = %polly.loop_header
  %n.vec1065 = and i64 %88, -4
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %vector.ph1063
  %index1066 = phi i64 [ 0, %vector.ph1063 ], [ %index.next1067, %vector.body1059 ]
  %90 = shl nuw nsw i64 %index1066, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1070 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1070, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1067 = add i64 %index1066, 4
  %95 = icmp eq i64 %index.next1067, %n.vec1065
  br i1 %95, label %middle.block1057, label %vector.body1059, !llvm.loop !74

middle.block1057:                                 ; preds = %vector.body1059
  %cmp.n1069 = icmp eq i64 %88, %n.vec1065
  br i1 %cmp.n1069, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1057
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1065, %middle.block1057 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1057
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1061 = add i64 %indvar1060, 1
  br i1 %exitcond850.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond849.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond849.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv840 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next841, %polly.loop_exit223 ]
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = add nuw i64 %polly.indvar202, %97
  %99 = mul nuw nsw i64 %98, 80
  %100 = sub i64 %indvars.iv836, %99
  %101 = add i64 %indvars.iv840, %99
  %102 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %103 = mul nsw i64 %polly.indvar202, -100
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 100
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -100
  %exitcond848.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond848.not, label %polly.exiting, label %polly.loop_header199

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
  %104 = add nuw nsw i64 %polly.indvar214, %102
  %polly.access.mul.call2218 = mul nuw nsw i64 %104, 1000
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
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit229 ], [ %101, %polly.loop_exit207 ]
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit229 ], [ %100, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %98, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv838, i64 0)
  %105 = add i64 %smax, %indvars.iv842
  %106 = mul nuw nsw i64 %polly.indvar224, 80
  %107 = sub nsw i64 %102, %106
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard = icmp slt i64 %109, 80
  br i1 %polly.loop_guard, label %polly.loop_header227.us, label %polly.loop_exit229

polly.loop_header227.us:                          ; preds = %polly.loop_header221, %polly.loop_exit235.loopexit.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_exit235.loopexit.us ], [ 0, %polly.loop_header221 ]
  %110 = shl nuw nsw i64 %polly.indvar230.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %110
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar230.us, 1200
  br label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header227.us
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit242.us ], [ %105, %polly.loop_header227.us ]
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.us ], [ %109, %polly.loop_header227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 99)
  %111 = add nuw i64 %polly.indvar236.us, %106
  %112 = add i64 %111, %103
  %polly.loop_guard243.us924 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard243.us924, label %polly.loop_header240.preheader.us, label %polly.loop_exit242.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader.us, %polly.loop_header240.us
  %polly.indvar244.us = phi i64 [ %polly.indvar_next245.us, %polly.loop_header240.us ], [ 0, %polly.loop_header240.preheader.us ]
  %113 = add nuw nsw i64 %polly.indvar244.us, %102
  %114 = mul nuw nsw i64 %113, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %114
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %polly.indvar244.us, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %115 = shl i64 %113, 3
  %116 = add i64 %115, %118
  %scevgep263.us = getelementptr i8, i8* %call, i64 %116
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond846.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond846.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.us = icmp ult i64 %polly.indvar236.us, 79
  %indvars.iv.next845 = add i64 %indvars.iv844, 1
  br i1 %polly.loop_cond238.us, label %polly.loop_header233.us, label %polly.loop_exit235.loopexit.us

polly.loop_header240.preheader.us:                ; preds = %polly.loop_header233.us
  %polly.access.add.Packed_MemRef_call2252.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %112
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %117 = mul i64 %111, 8000
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %117
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !71, !noalias !78
  %118 = mul i64 %111, 9600
  br label %polly.loop_header240.us

polly.loop_exit235.loopexit.us:                   ; preds = %polly.loop_exit242.us
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next231.us, 1000
  br i1 %exitcond847.not, label %polly.loop_exit229, label %polly.loop_header227.us

polly.loop_exit229:                               ; preds = %polly.loop_exit235.loopexit.us, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %polly.loop_cond226 = icmp ult i64 %polly.indvar224, 14
  %indvars.iv.next839 = add i64 %indvars.iv838, -80
  %indvars.iv.next843 = add i64 %indvars.iv842, 80
  br i1 %polly.loop_cond226, label %polly.loop_header221, label %polly.loop_exit223

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1034 = phi i64 [ %indvar.next1035, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %119 = add i64 %indvar1034, 1
  %120 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1036 = icmp ult i64 %119, 4
  br i1 %min.iters.check1036, label %polly.loop_header360.preheader, label %vector.ph1037

vector.ph1037:                                    ; preds = %polly.loop_header354
  %n.vec1039 = and i64 %119, -4
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1037
  %index1040 = phi i64 [ 0, %vector.ph1037 ], [ %index.next1041, %vector.body1033 ]
  %121 = shl nuw nsw i64 %index1040, 3
  %122 = getelementptr i8, i8* %scevgep366, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1044 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !79, !noalias !81
  %124 = fmul fast <4 x double> %wide.load1044, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !79, !noalias !81
  %index.next1041 = add i64 %index1040, 4
  %126 = icmp eq i64 %index.next1041, %n.vec1039
  br i1 %126, label %middle.block1031, label %vector.body1033, !llvm.loop !85

middle.block1031:                                 ; preds = %vector.body1033
  %cmp.n1043 = icmp eq i64 %119, %n.vec1039
  br i1 %cmp.n1043, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1031
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1039, %middle.block1031 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1031
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1035 = add i64 %indvar1034, 1
  br i1 %exitcond871.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %127
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond870.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit395
  %indvars.iv860 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next861, %polly.loop_exit395 ]
  %indvars.iv855 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next856, %polly.loop_exit395 ]
  %indvars.iv851 = phi i64 [ 1200, %polly.loop_header370.preheader ], [ %indvars.iv.next852, %polly.loop_exit395 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit395 ]
  %128 = lshr i64 %polly.indvar373, 2
  %129 = add nuw i64 %polly.indvar373, %128
  %130 = mul nuw nsw i64 %129, 80
  %131 = sub i64 %indvars.iv855, %130
  %132 = add i64 %indvars.iv860, %130
  %133 = mul nuw nsw i64 %polly.indvar373, 100
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %134 = mul nsw i64 %polly.indvar373, -100
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -100
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 100
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -100
  %exitcond869.not = icmp eq i64 %polly.indvar_next374, 12
  br i1 %exitcond869.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond854.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %135 = add nuw nsw i64 %polly.indvar385, %133
  %polly.access.mul.call2389 = mul nuw nsw i64 %135, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next386, %indvars.iv851
  br i1 %exitcond853.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_exit378
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit401 ], [ %132, %polly.loop_exit378 ]
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit401 ], [ %131, %polly.loop_exit378 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ %129, %polly.loop_exit378 ]
  %smax859 = call i64 @llvm.smax.i64(i64 %indvars.iv857, i64 0)
  %136 = add i64 %smax859, %indvars.iv862
  %137 = mul nuw nsw i64 %polly.indvar396, 80
  %138 = sub nsw i64 %133, %137
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard409 = icmp slt i64 %140, 80
  br i1 %polly.loop_guard409, label %polly.loop_header399.us, label %polly.loop_exit401

polly.loop_header399.us:                          ; preds = %polly.loop_header393, %polly.loop_exit408.loopexit.us
  %polly.indvar402.us = phi i64 [ %polly.indvar_next403.us, %polly.loop_exit408.loopexit.us ], [ 0, %polly.loop_header393 ]
  %141 = shl nuw nsw i64 %polly.indvar402.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %141
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar402.us, 1200
  br label %polly.loop_header406.us

polly.loop_header406.us:                          ; preds = %polly.loop_exit416.us, %polly.loop_header399.us
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit416.us ], [ %136, %polly.loop_header399.us ]
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.us ], [ %140, %polly.loop_header399.us ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 99)
  %142 = add nuw i64 %polly.indvar410.us, %137
  %143 = add i64 %142, %134
  %polly.loop_guard417.us925 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard417.us925, label %polly.loop_header414.preheader.us, label %polly.loop_exit416.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.preheader.us, %polly.loop_header414.us
  %polly.indvar418.us = phi i64 [ %polly.indvar_next419.us, %polly.loop_header414.us ], [ 0, %polly.loop_header414.preheader.us ]
  %144 = add nuw nsw i64 %polly.indvar418.us, %133
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %145
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %149
  %scevgep437.us = getelementptr i8, i8* %call, i64 %147
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_439.us
  store double %p_add42.i79.us, double* %scevgep437438.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond867.not = icmp eq i64 %polly.indvar418.us, %smin866
  br i1 %exitcond867.not, label %polly.loop_exit416.us, label %polly.loop_header414.us

polly.loop_exit416.us:                            ; preds = %polly.loop_header414.us, %polly.loop_header406.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %polly.loop_cond412.us = icmp ult i64 %polly.indvar410.us, 79
  %indvars.iv.next865 = add i64 %indvars.iv864, 1
  br i1 %polly.loop_cond412.us, label %polly.loop_header406.us, label %polly.loop_exit408.loopexit.us

polly.loop_header414.preheader.us:                ; preds = %polly.loop_header406.us
  %polly.access.add.Packed_MemRef_call2271426.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %143
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %148 = mul i64 %142, 8000
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %148
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !82, !noalias !88
  %149 = mul i64 %142, 9600
  br label %polly.loop_header414.us

polly.loop_exit408.loopexit.us:                   ; preds = %polly.loop_exit416.us
  %polly.indvar_next403.us = add nuw nsw i64 %polly.indvar402.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next403.us, 1000
  br i1 %exitcond868.not, label %polly.loop_exit401, label %polly.loop_header399.us

polly.loop_exit401:                               ; preds = %polly.loop_exit408.loopexit.us, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %polly.loop_cond398 = icmp ult i64 %polly.indvar396, 14
  %indvars.iv.next858 = add i64 %indvars.iv857, -80
  %indvars.iv.next863 = add i64 %indvars.iv862, 80
  br i1 %polly.loop_cond398, label %polly.loop_header393, label %polly.loop_exit395

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1010 = icmp ult i64 %150, 4
  br i1 %min.iters.check1010, label %polly.loop_header534.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %polly.loop_header528
  %n.vec1013 = and i64 %150, -4
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1009 ]
  %152 = shl nuw nsw i64 %index1014, 3
  %153 = getelementptr i8, i8* %scevgep540, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1018 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !89, !noalias !91
  %155 = fmul fast <4 x double> %wide.load1018, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !89, !noalias !91
  %index.next1015 = add i64 %index1014, 4
  %157 = icmp eq i64 %index.next1015, %n.vec1013
  br i1 %157, label %middle.block1007, label %vector.body1009, !llvm.loop !95

middle.block1007:                                 ; preds = %vector.body1009
  %cmp.n1017 = icmp eq i64 %150, %n.vec1013
  br i1 %cmp.n1017, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1007
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1013, %middle.block1007 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1007
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond892.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %158
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond891.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !96

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit569
  %indvars.iv881 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next882, %polly.loop_exit569 ]
  %indvars.iv876 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next877, %polly.loop_exit569 ]
  %indvars.iv872 = phi i64 [ 1200, %polly.loop_header544.preheader ], [ %indvars.iv.next873, %polly.loop_exit569 ]
  %polly.indvar547 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %polly.indvar_next548, %polly.loop_exit569 ]
  %159 = lshr i64 %polly.indvar547, 2
  %160 = add nuw i64 %polly.indvar547, %159
  %161 = mul nuw nsw i64 %160, 80
  %162 = sub i64 %indvars.iv876, %161
  %163 = add i64 %indvars.iv881, %161
  %164 = mul nuw nsw i64 %polly.indvar547, 100
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_exit558
  %165 = mul nsw i64 %polly.indvar547, -100
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -100
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 100
  %indvars.iv.next882 = add nsw i64 %indvars.iv881, -100
  %exitcond890.not = icmp eq i64 %polly.indvar_next548, 12
  br i1 %exitcond890.not, label %polly.exiting443, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_exit558 ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar553, 1200
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next554, 1000
  br i1 %exitcond875.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header556:                             ; preds = %polly.loop_header556, %polly.loop_header550
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header550 ], [ %polly.indvar_next560, %polly.loop_header556 ]
  %166 = add nuw nsw i64 %polly.indvar559, %164
  %polly.access.mul.call2563 = mul nuw nsw i64 %166, 1000
  %polly.access.add.call2564 = add nuw nsw i64 %polly.access.mul.call2563, %polly.indvar553
  %polly.access.call2565 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2564
  %polly.access.call2565.load = load double, double* %polly.access.call2565, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar559, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2565.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next560, %indvars.iv872
  br i1 %exitcond874.not, label %polly.loop_exit558, label %polly.loop_header556

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_exit552
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit575 ], [ %163, %polly.loop_exit552 ]
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit575 ], [ %162, %polly.loop_exit552 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ %160, %polly.loop_exit552 ]
  %smax880 = call i64 @llvm.smax.i64(i64 %indvars.iv878, i64 0)
  %167 = add i64 %smax880, %indvars.iv883
  %168 = mul nuw nsw i64 %polly.indvar570, 80
  %169 = sub nsw i64 %164, %168
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard583 = icmp slt i64 %171, 80
  br i1 %polly.loop_guard583, label %polly.loop_header573.us, label %polly.loop_exit575

polly.loop_header573.us:                          ; preds = %polly.loop_header567, %polly.loop_exit582.loopexit.us
  %polly.indvar576.us = phi i64 [ %polly.indvar_next577.us, %polly.loop_exit582.loopexit.us ], [ 0, %polly.loop_header567 ]
  %172 = shl nuw nsw i64 %polly.indvar576.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %172
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar576.us, 1200
  br label %polly.loop_header580.us

polly.loop_header580.us:                          ; preds = %polly.loop_exit590.us, %polly.loop_header573.us
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit590.us ], [ %167, %polly.loop_header573.us ]
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.us ], [ %171, %polly.loop_header573.us ]
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 99)
  %173 = add nuw i64 %polly.indvar584.us, %168
  %174 = add i64 %173, %165
  %polly.loop_guard591.us926 = icmp sgt i64 %174, -1
  br i1 %polly.loop_guard591.us926, label %polly.loop_header588.preheader.us, label %polly.loop_exit590.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.preheader.us, %polly.loop_header588.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_header588.us ], [ 0, %polly.loop_header588.preheader.us ]
  %175 = add nuw nsw i64 %polly.indvar592.us, %164
  %176 = mul nuw nsw i64 %175, 8000
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %176
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %polly.indvar592.us, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %177 = shl i64 %175, 3
  %178 = add i64 %177, %180
  %scevgep611.us = getelementptr i8, i8* %call, i64 %178
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond888.not = icmp eq i64 %polly.indvar592.us, %smin887
  br i1 %exitcond888.not, label %polly.loop_exit590.us, label %polly.loop_header588.us

polly.loop_exit590.us:                            ; preds = %polly.loop_header588.us, %polly.loop_header580.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %polly.loop_cond586.us = icmp ult i64 %polly.indvar584.us, 79
  %indvars.iv.next886 = add i64 %indvars.iv885, 1
  br i1 %polly.loop_cond586.us, label %polly.loop_header580.us, label %polly.loop_exit582.loopexit.us

polly.loop_header588.preheader.us:                ; preds = %polly.loop_header580.us
  %polly.access.add.Packed_MemRef_call2445600.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %174
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %179 = mul i64 %173, 8000
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %179
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !92, !noalias !98
  %180 = mul i64 %173, 9600
  br label %polly.loop_header588.us

polly.loop_exit582.loopexit.us:                   ; preds = %polly.loop_exit590.us
  %polly.indvar_next577.us = add nuw nsw i64 %polly.indvar576.us, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next577.us, 1000
  br i1 %exitcond889.not, label %polly.loop_exit575, label %polly.loop_header573.us

polly.loop_exit575:                               ; preds = %polly.loop_exit582.loopexit.us, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %polly.loop_cond572 = icmp ult i64 %polly.indvar570, 14
  %indvars.iv.next879 = add i64 %indvars.iv878, -80
  %indvars.iv.next884 = add i64 %indvars.iv883, 80
  br i1 %polly.loop_cond572, label %polly.loop_header567, label %polly.loop_exit569

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin919 = call i64 @llvm.smin.i64(i64 %indvars.iv917, i64 -1168)
  %181 = shl nsw i64 %polly.indvar743, 5
  %182 = add nsw i64 %smin919, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, -32
  %exitcond922.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond922.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %183 = mul nsw i64 %polly.indvar749, -32
  %smin948 = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin948, 1200
  %smin915 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 -1168)
  %185 = shl nsw i64 %polly.indvar749, 5
  %186 = add nsw i64 %smin915, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -32
  %exitcond921.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond921.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %187 = add nuw nsw i64 %polly.indvar755, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph949

vector.ph949:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert956 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat957 = shufflevector <4 x i64> %broadcast.splatinsert956, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph949
  %index950 = phi i64 [ 0, %vector.ph949 ], [ %index.next951, %vector.body947 ]
  %vec.ind954 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph949 ], [ %vec.ind.next955, %vector.body947 ]
  %190 = add nuw nsw <4 x i64> %vec.ind954, %broadcast.splat957
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat959, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !99, !noalias !101
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next951, %184
  br i1 %202, label %polly.loop_exit760, label %vector.body947, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body947, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond920.not = icmp eq i64 %polly.indvar755, %182
  br i1 %exitcond920.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %203 = add nuw nsw i64 %polly.indvar761, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep764 = getelementptr i8, i8* %call, i64 %209
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond916.not = icmp eq i64 %polly.indvar761, %186
  br i1 %exitcond916.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !105

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 -1168)
  %210 = shl nsw i64 %polly.indvar770, 5
  %211 = add nsw i64 %smin909, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond912.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %212 = mul nsw i64 %polly.indvar776, -32
  %smin963 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin963, 1000
  %smin905 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -968)
  %214 = shl nsw i64 %polly.indvar776, 5
  %215 = add nsw i64 %smin905, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -32
  %exitcond911.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond911.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %216 = add nuw nsw i64 %polly.indvar782, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check964 = icmp eq i64 %213, 0
  br i1 %min.iters.check964, label %polly.loop_header785, label %vector.ph965

vector.ph965:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert974 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat975 = shufflevector <4 x i64> %broadcast.splatinsert974, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next969, %vector.body962 ]
  %vec.ind972 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph965 ], [ %vec.ind.next973, %vector.body962 ]
  %219 = add nuw nsw <4 x i64> %vec.ind972, %broadcast.splat975
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat977, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !103, !noalias !106
  %index.next969 = add i64 %index968, 4
  %vec.ind.next973 = add <4 x i64> %vec.ind972, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next969, %213
  br i1 %231, label %polly.loop_exit787, label %vector.body962, !llvm.loop !107

polly.loop_exit787:                               ; preds = %vector.body962, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond910.not = icmp eq i64 %polly.indvar782, %211
  br i1 %exitcond910.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %232 = add nuw nsw i64 %polly.indvar788, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep791 = getelementptr i8, i8* %call2, i64 %238
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond906.not = icmp eq i64 %polly.indvar788, %215
  br i1 %exitcond906.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !108

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin899 = call i64 @llvm.smin.i64(i64 %indvars.iv897, i64 -1168)
  %239 = shl nsw i64 %polly.indvar796, 5
  %240 = add nsw i64 %smin899, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, -32
  %exitcond902.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond902.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv893 = phi i64 [ %indvars.iv.next894, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %241 = mul nsw i64 %polly.indvar802, -32
  %smin981 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin981, 1000
  %smin895 = call i64 @llvm.smin.i64(i64 %indvars.iv893, i64 -968)
  %243 = shl nsw i64 %polly.indvar802, 5
  %244 = add nsw i64 %smin895, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next894 = add nsw i64 %indvars.iv893, -32
  %exitcond901.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond901.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %245 = add nuw nsw i64 %polly.indvar808, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check982 = icmp eq i64 %242, 0
  br i1 %min.iters.check982, label %polly.loop_header811, label %vector.ph983

vector.ph983:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert992 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat993 = shufflevector <4 x i64> %broadcast.splatinsert992, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph983
  %index986 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body980 ]
  %vec.ind990 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph983 ], [ %vec.ind.next991, %vector.body980 ]
  %248 = add nuw nsw <4 x i64> %vec.ind990, %broadcast.splat993
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat995, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !102, !noalias !109
  %index.next987 = add i64 %index986, 4
  %vec.ind.next991 = add <4 x i64> %vec.ind990, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next987, %242
  br i1 %260, label %polly.loop_exit813, label %vector.body980, !llvm.loop !110

polly.loop_exit813:                               ; preds = %vector.body980, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond900.not = icmp eq i64 %polly.indvar808, %240
  br i1 %exitcond900.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %261 = add nuw nsw i64 %polly.indvar814, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep818 = getelementptr i8, i8* %call1, i64 %267
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond896.not = icmp eq i64 %polly.indvar814, %244
  br i1 %exitcond896.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 100}
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
!45 = !{!"llvm.loop.tile.size", i32 80}
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
