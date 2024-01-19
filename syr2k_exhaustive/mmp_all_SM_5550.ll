; ModuleID = 'syr2k_exhaustive/mmp_all_SM_5550.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_5550.c"
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
  %scevgep933 = getelementptr i8, i8* %call2, i64 %12
  %scevgep932 = getelementptr i8, i8* %call2, i64 %11
  %scevgep931 = getelementptr i8, i8* %call1, i64 %12
  %scevgep930 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep930, %scevgep933
  %bound1 = icmp ult i8* %scevgep932, %scevgep931
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
  br i1 %exitcond18.not.i, label %vector.ph937, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph937:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert944 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat945 = shufflevector <4 x i64> %broadcast.splatinsert944, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph937
  %index938 = phi i64 [ 0, %vector.ph937 ], [ %index.next939, %vector.body936 ]
  %vec.ind942 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph937 ], [ %vec.ind.next943, %vector.body936 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind942, %broadcast.splat945
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index938
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next939 = add i64 %index938, 4
  %vec.ind.next943 = add <4 x i64> %vec.ind942, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next939, 1200
  br i1 %40, label %for.inc41.i, label %vector.body936, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body936
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph937, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting444
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting271
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
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
  %exitcond854.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1061 = add i64 %indvar1060, 1
  br i1 %exitcond854.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond853.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond853.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin848 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -872)
  %97 = add nsw i64 %smin848, 1000
  %98 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -128
  %exitcond852.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond852.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 6
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %100 = mul nsw i64 %polly.indvar208, -64
  %101 = shl nsw i64 %polly.indvar208, 3
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %exitcond851.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond851.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %102 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond840.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %103 = add nuw nsw i64 %polly.indvar220, %99
  %polly.access.mul.call2224 = mul nuw nsw i64 %103, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %102, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit235 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %104 = shl nsw i64 %polly.indvar230, 3
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 63)
  %105 = add nsw i64 %104, %100
  %106 = mul nsw i64 %polly.indvar230, 64000
  %107 = mul nsw i64 %polly.indvar230, 76800
  %indvars.iv.next844 = or i64 %indvars.iv841, 1
  %smin845.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844, i64 63)
  %108 = or i64 %104, 1
  %109 = add nsw i64 %108, %100
  %110 = mul nuw nsw i64 %108, 8000
  %111 = mul nuw nsw i64 %108, 9600
  %indvars.iv.next844.1 = add nuw nsw i64 %indvars.iv.next844, 1
  %smin845.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.1, i64 63)
  %112 = or i64 %104, 2
  %113 = add nsw i64 %112, %100
  %114 = mul nuw nsw i64 %112, 8000
  %115 = mul nuw nsw i64 %112, 9600
  %indvars.iv.next844.2 = or i64 %indvars.iv841, 3
  %smin845.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.2, i64 63)
  %116 = or i64 %104, 3
  %117 = add nsw i64 %116, %100
  %118 = mul nuw nsw i64 %116, 8000
  %119 = mul nuw nsw i64 %116, 9600
  %indvars.iv.next844.3 = add nuw nsw i64 %indvars.iv.next844.2, 1
  %smin845.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.3, i64 63)
  %120 = or i64 %104, 4
  %121 = add nsw i64 %120, %100
  %122 = mul nuw nsw i64 %120, 8000
  %123 = mul nuw nsw i64 %120, 9600
  %indvars.iv.next844.4 = add nuw nsw i64 %indvars.iv.next844.2, 2
  %smin845.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.4, i64 63)
  %124 = or i64 %104, 5
  %125 = add nsw i64 %124, %100
  %126 = mul nuw nsw i64 %124, 8000
  %127 = mul nuw nsw i64 %124, 9600
  %indvars.iv.next844.5 = add nuw nsw i64 %indvars.iv.next844.2, 3
  %smin845.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.5, i64 63)
  %128 = or i64 %104, 6
  %129 = add nsw i64 %128, %100
  %130 = mul nuw nsw i64 %128, 8000
  %131 = mul nuw nsw i64 %128, 9600
  %indvars.iv.next844.6 = or i64 %indvars.iv841, 7
  %smin845.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next844.6, i64 63)
  %132 = or i64 %104, 7
  %133 = add nsw i64 %132, %100
  %134 = mul nuw nsw i64 %132, 8000
  %135 = mul nuw nsw i64 %132, 9600
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit247.7
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 8
  %exitcond850.not = icmp eq i64 %polly.indvar_next231, 150
  br i1 %exitcond850.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit247.7, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit247.7 ]
  %136 = add nuw nsw i64 %polly.indvar236, %98
  %137 = shl i64 %136, 3
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar236, 1200
  %polly.access.add.Packed_MemRef_call2255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %105
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %138 = add nuw nsw i64 %106, %137
  %scevgep262 = getelementptr i8, i8* %call1, i64 %138
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.access.add.Packed_MemRef_call2255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %109
  %polly.access.Packed_MemRef_call2256.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.1
  %_p_scalar_257.1 = load double, double* %polly.access.Packed_MemRef_call2256.1, align 8
  %139 = add nuw nsw i64 %110, %137
  %scevgep262.1 = getelementptr i8, i8* %call1, i64 %139
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.1

polly.loop_header245:                             ; preds = %polly.loop_header245, %polly.loop_header233
  %polly.indvar248 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next249, %polly.loop_header245 ]
  %140 = add nuw nsw i64 %polly.indvar248, %99
  %141 = mul nuw nsw i64 %140, 8000
  %142 = add nuw nsw i64 %141, %137
  %scevgep251 = getelementptr i8, i8* %call1, i64 %142
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.add.Packed_MemRef_call2259 = add nuw nsw i64 %polly.indvar248, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %143 = shl i64 %140, 3
  %144 = add nuw nsw i64 %143, %107
  %scevgep265 = getelementptr i8, i8* %call, i64 %144
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond846.not = icmp eq i64 %polly.indvar248, %smin845
  br i1 %exitcond846.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* nonnull %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1034 = phi i64 [ %indvar.next1035, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %145 = add i64 %indvar1034, 1
  %146 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %146
  %min.iters.check1036 = icmp ult i64 %145, 4
  br i1 %min.iters.check1036, label %polly.loop_header362.preheader, label %vector.ph1037

vector.ph1037:                                    ; preds = %polly.loop_header356
  %n.vec1039 = and i64 %145, -4
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1037
  %index1040 = phi i64 [ 0, %vector.ph1037 ], [ %index.next1041, %vector.body1033 ]
  %147 = shl nuw nsw i64 %index1040, 3
  %148 = getelementptr i8, i8* %scevgep368, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1044 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !79, !noalias !81
  %150 = fmul fast <4 x double> %wide.load1044, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %151 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !79, !noalias !81
  %index.next1041 = add i64 %index1040, 4
  %152 = icmp eq i64 %index.next1041, %n.vec1039
  br i1 %152, label %middle.block1031, label %vector.body1033, !llvm.loop !85

middle.block1031:                                 ; preds = %vector.body1033
  %cmp.n1043 = icmp eq i64 %145, %n.vec1039
  br i1 %cmp.n1043, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1031
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1039, %middle.block1031 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1031
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1035 = add i64 %indvar1034, 1
  br i1 %exitcond875.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %153 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %153
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond874.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !86

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %indvars.iv858 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %indvars.iv.next859, %polly.loop_exit380 ]
  %polly.indvar375 = phi i64 [ 0, %polly.loop_header372.preheader ], [ %polly.indvar_next376, %polly.loop_exit380 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -872)
  %154 = add nsw i64 %smin869, 1000
  %155 = shl nsw i64 %polly.indvar375, 7
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -128
  %exitcond873.not = icmp eq i64 %polly.indvar_next376, 8
  br i1 %exitcond873.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit402 ], [ 1200, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %156 = shl nsw i64 %polly.indvar381, 6
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %157 = mul nsw i64 %polly.indvar381, -64
  %158 = shl nsw i64 %polly.indvar381, 3
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -64
  %exitcond872.not = icmp eq i64 %polly.indvar_next382, 19
  br i1 %exitcond872.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %159 = add nuw nsw i64 %polly.indvar387, %155
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar387, 1200
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next388, %154
  br i1 %exitcond861.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header384
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %160 = add nuw nsw i64 %polly.indvar393, %156
  %polly.access.mul.call2397 = mul nuw nsw i64 %160, 1000
  %polly.access.add.call2398 = add nuw nsw i64 %159, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next394, %indvars.iv855
  br i1 %exitcond857.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_exit386
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit408 ], [ 0, %polly.loop_exit386 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ %158, %polly.loop_exit386 ]
  %161 = shl nsw i64 %polly.indvar403, 3
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 63)
  %162 = add nsw i64 %161, %157
  %163 = mul nsw i64 %polly.indvar403, 64000
  %164 = mul nsw i64 %polly.indvar403, 76800
  %indvars.iv.next865 = or i64 %indvars.iv862, 1
  %smin866.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865, i64 63)
  %165 = or i64 %161, 1
  %166 = add nsw i64 %165, %157
  %167 = mul nuw nsw i64 %165, 8000
  %168 = mul nuw nsw i64 %165, 9600
  %indvars.iv.next865.1 = add nuw nsw i64 %indvars.iv.next865, 1
  %smin866.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.1, i64 63)
  %169 = or i64 %161, 2
  %170 = add nsw i64 %169, %157
  %171 = mul nuw nsw i64 %169, 8000
  %172 = mul nuw nsw i64 %169, 9600
  %indvars.iv.next865.2 = or i64 %indvars.iv862, 3
  %smin866.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.2, i64 63)
  %173 = or i64 %161, 3
  %174 = add nsw i64 %173, %157
  %175 = mul nuw nsw i64 %173, 8000
  %176 = mul nuw nsw i64 %173, 9600
  %indvars.iv.next865.3 = add nuw nsw i64 %indvars.iv.next865.2, 1
  %smin866.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.3, i64 63)
  %177 = or i64 %161, 4
  %178 = add nsw i64 %177, %157
  %179 = mul nuw nsw i64 %177, 8000
  %180 = mul nuw nsw i64 %177, 9600
  %indvars.iv.next865.4 = add nuw nsw i64 %indvars.iv.next865.2, 2
  %smin866.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.4, i64 63)
  %181 = or i64 %161, 5
  %182 = add nsw i64 %181, %157
  %183 = mul nuw nsw i64 %181, 8000
  %184 = mul nuw nsw i64 %181, 9600
  %indvars.iv.next865.5 = add nuw nsw i64 %indvars.iv.next865.2, 3
  %smin866.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.5, i64 63)
  %185 = or i64 %161, 6
  %186 = add nsw i64 %185, %157
  %187 = mul nuw nsw i64 %185, 8000
  %188 = mul nuw nsw i64 %185, 9600
  %indvars.iv.next865.6 = or i64 %indvars.iv862, 7
  %smin866.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next865.6, i64 63)
  %189 = or i64 %161, 7
  %190 = add nsw i64 %189, %157
  %191 = mul nuw nsw i64 %189, 8000
  %192 = mul nuw nsw i64 %189, 9600
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit420.7
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 8
  %exitcond871.not = icmp eq i64 %polly.indvar_next404, 150
  br i1 %exitcond871.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit420.7, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit420.7 ]
  %193 = add nuw nsw i64 %polly.indvar409, %155
  %194 = shl i64 %193, 3
  %polly.access.mul.Packed_MemRef_call2273427 = mul nuw nsw i64 %polly.indvar409, 1200
  %polly.access.add.Packed_MemRef_call2273428 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %162
  %polly.access.Packed_MemRef_call2273429 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428
  %_p_scalar_430 = load double, double* %polly.access.Packed_MemRef_call2273429, align 8
  %195 = add nuw nsw i64 %163, %194
  %scevgep435 = getelementptr i8, i8* %call1, i64 %195
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.access.add.Packed_MemRef_call2273428.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %166
  %polly.access.Packed_MemRef_call2273429.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.1
  %_p_scalar_430.1 = load double, double* %polly.access.Packed_MemRef_call2273429.1, align 8
  %196 = add nuw nsw i64 %167, %194
  %scevgep435.1 = getelementptr i8, i8* %call1, i64 %196
  %scevgep435436.1 = bitcast i8* %scevgep435.1 to double*
  %_p_scalar_437.1 = load double, double* %scevgep435436.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.1

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header406
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %197 = add nuw nsw i64 %polly.indvar421, %156
  %198 = mul nuw nsw i64 %197, 8000
  %199 = add nuw nsw i64 %198, %194
  %scevgep424 = getelementptr i8, i8* %call1, i64 %199
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_430, %_p_scalar_426
  %polly.access.add.Packed_MemRef_call2273432 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432
  %_p_scalar_434 = load double, double* %polly.access.Packed_MemRef_call2273433, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_437, %_p_scalar_434
  %200 = shl i64 %197, 3
  %201 = add nuw nsw i64 %200, %164
  %scevgep438 = getelementptr i8, i8* %call, i64 %201
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond867.not = icmp eq i64 %polly.indvar421, %smin866
  br i1 %exitcond867.not, label %polly.loop_exit420, label %polly.loop_header418

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %202 = add i64 %indvar, 1
  %203 = mul nuw nsw i64 %polly.indvar532, 9600
  %scevgep541 = getelementptr i8, i8* %call, i64 %203
  %min.iters.check1010 = icmp ult i64 %202, 4
  br i1 %min.iters.check1010, label %polly.loop_header535.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %polly.loop_header529
  %n.vec1013 = and i64 %202, -4
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1015, %vector.body1009 ]
  %204 = shl nuw nsw i64 %index1014, 3
  %205 = getelementptr i8, i8* %scevgep541, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1018 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !89, !noalias !91
  %207 = fmul fast <4 x double> %wide.load1018, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !89, !noalias !91
  %index.next1015 = add i64 %index1014, 4
  %209 = icmp eq i64 %index.next1015, %n.vec1013
  br i1 %209, label %middle.block1007, label %vector.body1009, !llvm.loop !95

middle.block1007:                                 ; preds = %vector.body1009
  %cmp.n1017 = icmp eq i64 %202, %n.vec1013
  br i1 %cmp.n1017, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block1007
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1013, %middle.block1007 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block1007
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next533, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond896.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call2446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %210 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %210
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond895.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !96

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %indvars.iv879 = phi i64 [ 0, %polly.loop_header545.preheader ], [ %indvars.iv.next880, %polly.loop_exit553 ]
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header545.preheader ], [ %polly.indvar_next549, %polly.loop_exit553 ]
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv879, i64 -872)
  %211 = add nsw i64 %smin890, 1000
  %212 = shl nsw i64 %polly.indvar548, 7
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_exit575
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %indvars.iv.next880 = add nsw i64 %indvars.iv879, -128
  %exitcond894.not = icmp eq i64 %polly.indvar_next549, 8
  br i1 %exitcond894.not, label %polly.exiting444, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_exit575, %polly.loop_header545
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit575 ], [ 1200, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit575 ], [ 0, %polly.loop_header545 ]
  %213 = shl nsw i64 %polly.indvar554, 6
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_exit565
  %214 = mul nsw i64 %polly.indvar554, -64
  %215 = shl nsw i64 %polly.indvar554, 3
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -64
  %exitcond893.not = icmp eq i64 %polly.indvar_next555, 19
  br i1 %exitcond893.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_exit565 ]
  %216 = add nuw nsw i64 %polly.indvar560, %212
  %polly.access.mul.Packed_MemRef_call2446 = mul nuw nsw i64 %polly.indvar560, 1200
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next561, %211
  br i1 %exitcond882.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %217 = add nuw nsw i64 %polly.indvar566, %213
  %polly.access.mul.call2570 = mul nuw nsw i64 %217, 1000
  %polly.access.add.call2571 = add nuw nsw i64 %216, %polly.access.mul.call2570
  %polly.access.call2572 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571
  %polly.access.call2572.load = load double, double* %polly.access.call2572, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2446 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.Packed_MemRef_call2446
  %polly.access.Packed_MemRef_call2446 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446
  store double %polly.access.call2572.load, double* %polly.access.Packed_MemRef_call2446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next567, %indvars.iv876
  br i1 %exitcond878.not, label %polly.loop_exit565, label %polly.loop_header563

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_exit559
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit581 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ %215, %polly.loop_exit559 ]
  %218 = shl nsw i64 %polly.indvar576, 3
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv883, i64 63)
  %219 = add nsw i64 %218, %214
  %220 = mul nsw i64 %polly.indvar576, 64000
  %221 = mul nsw i64 %polly.indvar576, 76800
  %indvars.iv.next886 = or i64 %indvars.iv883, 1
  %smin887.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886, i64 63)
  %222 = or i64 %218, 1
  %223 = add nsw i64 %222, %214
  %224 = mul nuw nsw i64 %222, 8000
  %225 = mul nuw nsw i64 %222, 9600
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv.next886, 1
  %smin887.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.1, i64 63)
  %226 = or i64 %218, 2
  %227 = add nsw i64 %226, %214
  %228 = mul nuw nsw i64 %226, 8000
  %229 = mul nuw nsw i64 %226, 9600
  %indvars.iv.next886.2 = or i64 %indvars.iv883, 3
  %smin887.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.2, i64 63)
  %230 = or i64 %218, 3
  %231 = add nsw i64 %230, %214
  %232 = mul nuw nsw i64 %230, 8000
  %233 = mul nuw nsw i64 %230, 9600
  %indvars.iv.next886.3 = add nuw nsw i64 %indvars.iv.next886.2, 1
  %smin887.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.3, i64 63)
  %234 = or i64 %218, 4
  %235 = add nsw i64 %234, %214
  %236 = mul nuw nsw i64 %234, 8000
  %237 = mul nuw nsw i64 %234, 9600
  %indvars.iv.next886.4 = add nuw nsw i64 %indvars.iv.next886.2, 2
  %smin887.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.4, i64 63)
  %238 = or i64 %218, 5
  %239 = add nsw i64 %238, %214
  %240 = mul nuw nsw i64 %238, 8000
  %241 = mul nuw nsw i64 %238, 9600
  %indvars.iv.next886.5 = add nuw nsw i64 %indvars.iv.next886.2, 3
  %smin887.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.5, i64 63)
  %242 = or i64 %218, 6
  %243 = add nsw i64 %242, %214
  %244 = mul nuw nsw i64 %242, 8000
  %245 = mul nuw nsw i64 %242, 9600
  %indvars.iv.next886.6 = or i64 %indvars.iv883, 7
  %smin887.7 = call i64 @llvm.smin.i64(i64 %indvars.iv.next886.6, i64 63)
  %246 = or i64 %218, 7
  %247 = add nsw i64 %246, %214
  %248 = mul nuw nsw i64 %246, 8000
  %249 = mul nuw nsw i64 %246, 9600
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit593.7
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 8
  %exitcond892.not = icmp eq i64 %polly.indvar_next577, 150
  br i1 %exitcond892.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit593.7, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit593.7 ]
  %250 = add nuw nsw i64 %polly.indvar582, %212
  %251 = shl i64 %250, 3
  %polly.access.mul.Packed_MemRef_call2446600 = mul nuw nsw i64 %polly.indvar582, 1200
  %polly.access.add.Packed_MemRef_call2446601 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %219
  %polly.access.Packed_MemRef_call2446602 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601
  %_p_scalar_603 = load double, double* %polly.access.Packed_MemRef_call2446602, align 8
  %252 = add nuw nsw i64 %220, %251
  %scevgep608 = getelementptr i8, i8* %call1, i64 %252
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591

polly.loop_exit593:                               ; preds = %polly.loop_header591
  %polly.access.add.Packed_MemRef_call2446601.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %223
  %polly.access.Packed_MemRef_call2446602.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.1
  %_p_scalar_603.1 = load double, double* %polly.access.Packed_MemRef_call2446602.1, align 8
  %253 = add nuw nsw i64 %224, %251
  %scevgep608.1 = getelementptr i8, i8* %call1, i64 %253
  %scevgep608609.1 = bitcast i8* %scevgep608.1 to double*
  %_p_scalar_610.1 = load double, double* %scevgep608609.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.1

polly.loop_header591:                             ; preds = %polly.loop_header591, %polly.loop_header579
  %polly.indvar594 = phi i64 [ 0, %polly.loop_header579 ], [ %polly.indvar_next595, %polly.loop_header591 ]
  %254 = add nuw nsw i64 %polly.indvar594, %213
  %255 = mul nuw nsw i64 %254, 8000
  %256 = add nuw nsw i64 %255, %251
  %scevgep597 = getelementptr i8, i8* %call1, i64 %256
  %scevgep597598 = bitcast i8* %scevgep597 to double*
  %_p_scalar_599 = load double, double* %scevgep597598, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_603, %_p_scalar_599
  %polly.access.add.Packed_MemRef_call2446605 = add nuw nsw i64 %polly.indvar594, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2446606, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_607
  %257 = shl i64 %254, 3
  %258 = add nuw nsw i64 %257, %221
  %scevgep611 = getelementptr i8, i8* %call, i64 %258
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond888.not = icmp eq i64 %polly.indvar594, %smin887
  br i1 %exitcond888.not, label %polly.loop_exit593, label %polly.loop_header591

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin923 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 -1168)
  %259 = shl nsw i64 %polly.indvar743, 5
  %260 = add nsw i64 %smin923, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next922 = add nsw i64 %indvars.iv921, -32
  %exitcond926.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond926.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %261 = mul nsw i64 %polly.indvar749, -32
  %smin = call i64 @llvm.smin.i64(i64 %261, i64 -1168)
  %262 = add nsw i64 %smin, 1200
  %smin919 = call i64 @llvm.smin.i64(i64 %indvars.iv917, i64 -1168)
  %263 = shl nsw i64 %polly.indvar749, 5
  %264 = add nsw i64 %smin919, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond925.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %265 = add nuw nsw i64 %polly.indvar755, %259
  %266 = trunc i64 %265 to i32
  %267 = mul nuw nsw i64 %265, 9600
  %min.iters.check = icmp eq i64 %262, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph949

vector.ph949:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert956 = insertelement <4 x i64> poison, i64 %263, i32 0
  %broadcast.splat957 = shufflevector <4 x i64> %broadcast.splatinsert956, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert958 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat959 = shufflevector <4 x i32> %broadcast.splatinsert958, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph949
  %index950 = phi i64 [ 0, %vector.ph949 ], [ %index.next951, %vector.body948 ]
  %vec.ind954 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph949 ], [ %vec.ind.next955, %vector.body948 ]
  %268 = add nuw nsw <4 x i64> %vec.ind954, %broadcast.splat957
  %269 = trunc <4 x i64> %268 to <4 x i32>
  %270 = mul <4 x i32> %broadcast.splat959, %269
  %271 = add <4 x i32> %270, <i32 3, i32 3, i32 3, i32 3>
  %272 = urem <4 x i32> %271, <i32 1200, i32 1200, i32 1200, i32 1200>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %275 = extractelement <4 x i64> %268, i32 0
  %276 = shl i64 %275, 3
  %277 = add nuw nsw i64 %276, %267
  %278 = getelementptr i8, i8* %call, i64 %277
  %279 = bitcast i8* %278 to <4 x double>*
  store <4 x double> %274, <4 x double>* %279, align 8, !alias.scope !99, !noalias !101
  %index.next951 = add i64 %index950, 4
  %vec.ind.next955 = add <4 x i64> %vec.ind954, <i64 4, i64 4, i64 4, i64 4>
  %280 = icmp eq i64 %index.next951, %262
  br i1 %280, label %polly.loop_exit760, label %vector.body948, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body948, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond924.not = icmp eq i64 %polly.indvar755, %260
  br i1 %exitcond924.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %281 = add nuw nsw i64 %polly.indvar761, %263
  %282 = trunc i64 %281 to i32
  %283 = mul i32 %282, %266
  %284 = add i32 %283, 3
  %285 = urem i32 %284, 1200
  %p_conv31.i = sitofp i32 %285 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %286 = shl i64 %281, 3
  %287 = add nuw nsw i64 %286, %267
  %scevgep764 = getelementptr i8, i8* %call, i64 %287
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond920.not = icmp eq i64 %polly.indvar761, %264
  br i1 %exitcond920.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !105

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin913 = call i64 @llvm.smin.i64(i64 %indvars.iv911, i64 -1168)
  %288 = shl nsw i64 %polly.indvar770, 5
  %289 = add nsw i64 %smin913, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next912 = add nsw i64 %indvars.iv911, -32
  %exitcond916.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond916.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %290 = mul nsw i64 %polly.indvar776, -32
  %smin963 = call i64 @llvm.smin.i64(i64 %290, i64 -968)
  %291 = add nsw i64 %smin963, 1000
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 -968)
  %292 = shl nsw i64 %polly.indvar776, 5
  %293 = add nsw i64 %smin909, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond915.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %294 = add nuw nsw i64 %polly.indvar782, %288
  %295 = trunc i64 %294 to i32
  %296 = mul nuw nsw i64 %294, 8000
  %min.iters.check964 = icmp eq i64 %291, 0
  br i1 %min.iters.check964, label %polly.loop_header785, label %vector.ph965

vector.ph965:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert974 = insertelement <4 x i64> poison, i64 %292, i32 0
  %broadcast.splat975 = shufflevector <4 x i64> %broadcast.splatinsert974, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert976 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat977 = shufflevector <4 x i32> %broadcast.splatinsert976, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body962

vector.body962:                                   ; preds = %vector.body962, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next969, %vector.body962 ]
  %vec.ind972 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph965 ], [ %vec.ind.next973, %vector.body962 ]
  %297 = add nuw nsw <4 x i64> %vec.ind972, %broadcast.splat975
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat977, %298
  %300 = add <4 x i32> %299, <i32 2, i32 2, i32 2, i32 2>
  %301 = urem <4 x i32> %300, <i32 1000, i32 1000, i32 1000, i32 1000>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add nuw nsw i64 %305, %296
  %307 = getelementptr i8, i8* %call2, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !103, !noalias !106
  %index.next969 = add i64 %index968, 4
  %vec.ind.next973 = add <4 x i64> %vec.ind972, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next969, %291
  br i1 %309, label %polly.loop_exit787, label %vector.body962, !llvm.loop !107

polly.loop_exit787:                               ; preds = %vector.body962, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond914.not = icmp eq i64 %polly.indvar782, %289
  br i1 %exitcond914.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %310 = add nuw nsw i64 %polly.indvar788, %292
  %311 = trunc i64 %310 to i32
  %312 = mul i32 %311, %295
  %313 = add i32 %312, 2
  %314 = urem i32 %313, 1000
  %p_conv10.i = sitofp i32 %314 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %315 = shl i64 %310, 3
  %316 = add nuw nsw i64 %315, %296
  %scevgep791 = getelementptr i8, i8* %call2, i64 %316
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond910.not = icmp eq i64 %polly.indvar788, %293
  br i1 %exitcond910.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !108

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin903 = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 -1168)
  %317 = shl nsw i64 %polly.indvar796, 5
  %318 = add nsw i64 %smin903, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond906.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv897 = phi i64 [ %indvars.iv.next898, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %319 = mul nsw i64 %polly.indvar802, -32
  %smin981 = call i64 @llvm.smin.i64(i64 %319, i64 -968)
  %320 = add nsw i64 %smin981, 1000
  %smin899 = call i64 @llvm.smin.i64(i64 %indvars.iv897, i64 -968)
  %321 = shl nsw i64 %polly.indvar802, 5
  %322 = add nsw i64 %smin899, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next898 = add nsw i64 %indvars.iv897, -32
  %exitcond905.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond905.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %323 = add nuw nsw i64 %polly.indvar808, %317
  %324 = trunc i64 %323 to i32
  %325 = mul nuw nsw i64 %323, 8000
  %min.iters.check982 = icmp eq i64 %320, 0
  br i1 %min.iters.check982, label %polly.loop_header811, label %vector.ph983

vector.ph983:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert992 = insertelement <4 x i64> poison, i64 %321, i32 0
  %broadcast.splat993 = shufflevector <4 x i64> %broadcast.splatinsert992, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph983
  %index986 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body980 ]
  %vec.ind990 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph983 ], [ %vec.ind.next991, %vector.body980 ]
  %326 = add nuw nsw <4 x i64> %vec.ind990, %broadcast.splat993
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat995, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 1200, i32 1200, i32 1200, i32 1200>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %325
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !102, !noalias !109
  %index.next987 = add i64 %index986, 4
  %vec.ind.next991 = add <4 x i64> %vec.ind990, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next987, %320
  br i1 %338, label %polly.loop_exit813, label %vector.body980, !llvm.loop !110

polly.loop_exit813:                               ; preds = %vector.body980, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond904.not = icmp eq i64 %polly.indvar808, %318
  br i1 %exitcond904.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %339 = add nuw nsw i64 %polly.indvar814, %321
  %340 = trunc i64 %339 to i32
  %341 = mul i32 %340, %324
  %342 = add i32 %341, 1
  %343 = urem i32 %342, 1200
  %p_conv.i = sitofp i32 %343 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %344 = shl i64 %339, 3
  %345 = add nuw nsw i64 %344, %325
  %scevgep818 = getelementptr i8, i8* %call1, i64 %345
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond900.not = icmp eq i64 %polly.indvar814, %322
  br i1 %exitcond900.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !111

polly.loop_header245.1:                           ; preds = %polly.loop_header245.1, %polly.loop_exit247
  %polly.indvar248.1 = phi i64 [ 0, %polly.loop_exit247 ], [ %polly.indvar_next249.1, %polly.loop_header245.1 ]
  %346 = add nuw nsw i64 %polly.indvar248.1, %99
  %347 = mul nuw nsw i64 %346, 8000
  %348 = add nuw nsw i64 %347, %137
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %348
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_257.1, %_p_scalar_253.1
  %polly.access.add.Packed_MemRef_call2259.1 = add nuw nsw i64 %polly.indvar248.1, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call2260.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_264.1, %_p_scalar_261.1
  %349 = shl i64 %346, 3
  %350 = add nuw nsw i64 %349, %111
  %scevgep265.1 = getelementptr i8, i8* %call, i64 %350
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_267.1
  store double %p_add42.i118.1, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.1 = add nuw nsw i64 %polly.indvar248.1, 1
  %exitcond846.1.not = icmp eq i64 %polly.indvar248.1, %smin845.1
  br i1 %exitcond846.1.not, label %polly.loop_exit247.1, label %polly.loop_header245.1

polly.loop_exit247.1:                             ; preds = %polly.loop_header245.1
  %polly.access.add.Packed_MemRef_call2255.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %113
  %polly.access.Packed_MemRef_call2256.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.2
  %_p_scalar_257.2 = load double, double* %polly.access.Packed_MemRef_call2256.2, align 8
  %351 = add nuw nsw i64 %114, %137
  %scevgep262.2 = getelementptr i8, i8* %call1, i64 %351
  %scevgep262263.2 = bitcast i8* %scevgep262.2 to double*
  %_p_scalar_264.2 = load double, double* %scevgep262263.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.2

polly.loop_header245.2:                           ; preds = %polly.loop_header245.2, %polly.loop_exit247.1
  %polly.indvar248.2 = phi i64 [ 0, %polly.loop_exit247.1 ], [ %polly.indvar_next249.2, %polly.loop_header245.2 ]
  %352 = add nuw nsw i64 %polly.indvar248.2, %99
  %353 = mul nuw nsw i64 %352, 8000
  %354 = add nuw nsw i64 %353, %137
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %354
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_257.2, %_p_scalar_253.2
  %polly.access.add.Packed_MemRef_call2259.2 = add nuw nsw i64 %polly.indvar248.2, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call2260.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_264.2, %_p_scalar_261.2
  %355 = shl i64 %352, 3
  %356 = add nuw nsw i64 %355, %115
  %scevgep265.2 = getelementptr i8, i8* %call, i64 %356
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_267.2
  store double %p_add42.i118.2, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.2 = add nuw nsw i64 %polly.indvar248.2, 1
  %exitcond846.2.not = icmp eq i64 %polly.indvar248.2, %smin845.2
  br i1 %exitcond846.2.not, label %polly.loop_exit247.2, label %polly.loop_header245.2

polly.loop_exit247.2:                             ; preds = %polly.loop_header245.2
  %polly.access.add.Packed_MemRef_call2255.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %117
  %polly.access.Packed_MemRef_call2256.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.3
  %_p_scalar_257.3 = load double, double* %polly.access.Packed_MemRef_call2256.3, align 8
  %357 = add nuw nsw i64 %118, %137
  %scevgep262.3 = getelementptr i8, i8* %call1, i64 %357
  %scevgep262263.3 = bitcast i8* %scevgep262.3 to double*
  %_p_scalar_264.3 = load double, double* %scevgep262263.3, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.3

polly.loop_header245.3:                           ; preds = %polly.loop_header245.3, %polly.loop_exit247.2
  %polly.indvar248.3 = phi i64 [ 0, %polly.loop_exit247.2 ], [ %polly.indvar_next249.3, %polly.loop_header245.3 ]
  %358 = add nuw nsw i64 %polly.indvar248.3, %99
  %359 = mul nuw nsw i64 %358, 8000
  %360 = add nuw nsw i64 %359, %137
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %360
  %scevgep251252.3 = bitcast i8* %scevgep251.3 to double*
  %_p_scalar_253.3 = load double, double* %scevgep251252.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_257.3, %_p_scalar_253.3
  %polly.access.add.Packed_MemRef_call2259.3 = add nuw nsw i64 %polly.indvar248.3, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call2260.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_264.3, %_p_scalar_261.3
  %361 = shl i64 %358, 3
  %362 = add nuw nsw i64 %361, %119
  %scevgep265.3 = getelementptr i8, i8* %call, i64 %362
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_267.3
  store double %p_add42.i118.3, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.3 = add nuw nsw i64 %polly.indvar248.3, 1
  %exitcond846.3.not = icmp eq i64 %polly.indvar248.3, %smin845.3
  br i1 %exitcond846.3.not, label %polly.loop_exit247.3, label %polly.loop_header245.3

polly.loop_exit247.3:                             ; preds = %polly.loop_header245.3
  %polly.access.add.Packed_MemRef_call2255.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %121
  %polly.access.Packed_MemRef_call2256.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.4
  %_p_scalar_257.4 = load double, double* %polly.access.Packed_MemRef_call2256.4, align 8
  %363 = add nuw nsw i64 %122, %137
  %scevgep262.4 = getelementptr i8, i8* %call1, i64 %363
  %scevgep262263.4 = bitcast i8* %scevgep262.4 to double*
  %_p_scalar_264.4 = load double, double* %scevgep262263.4, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.4

polly.loop_header245.4:                           ; preds = %polly.loop_header245.4, %polly.loop_exit247.3
  %polly.indvar248.4 = phi i64 [ 0, %polly.loop_exit247.3 ], [ %polly.indvar_next249.4, %polly.loop_header245.4 ]
  %364 = add nuw nsw i64 %polly.indvar248.4, %99
  %365 = mul nuw nsw i64 %364, 8000
  %366 = add nuw nsw i64 %365, %137
  %scevgep251.4 = getelementptr i8, i8* %call1, i64 %366
  %scevgep251252.4 = bitcast i8* %scevgep251.4 to double*
  %_p_scalar_253.4 = load double, double* %scevgep251252.4, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.4 = fmul fast double %_p_scalar_257.4, %_p_scalar_253.4
  %polly.access.add.Packed_MemRef_call2259.4 = add nuw nsw i64 %polly.indvar248.4, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.4
  %_p_scalar_261.4 = load double, double* %polly.access.Packed_MemRef_call2260.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_264.4, %_p_scalar_261.4
  %367 = shl i64 %364, 3
  %368 = add nuw nsw i64 %367, %123
  %scevgep265.4 = getelementptr i8, i8* %call, i64 %368
  %scevgep265266.4 = bitcast i8* %scevgep265.4 to double*
  %_p_scalar_267.4 = load double, double* %scevgep265266.4, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_267.4
  store double %p_add42.i118.4, double* %scevgep265266.4, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.4 = add nuw nsw i64 %polly.indvar248.4, 1
  %exitcond846.4.not = icmp eq i64 %polly.indvar248.4, %smin845.4
  br i1 %exitcond846.4.not, label %polly.loop_exit247.4, label %polly.loop_header245.4

polly.loop_exit247.4:                             ; preds = %polly.loop_header245.4
  %polly.access.add.Packed_MemRef_call2255.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %125
  %polly.access.Packed_MemRef_call2256.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.5
  %_p_scalar_257.5 = load double, double* %polly.access.Packed_MemRef_call2256.5, align 8
  %369 = add nuw nsw i64 %126, %137
  %scevgep262.5 = getelementptr i8, i8* %call1, i64 %369
  %scevgep262263.5 = bitcast i8* %scevgep262.5 to double*
  %_p_scalar_264.5 = load double, double* %scevgep262263.5, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.5

polly.loop_header245.5:                           ; preds = %polly.loop_header245.5, %polly.loop_exit247.4
  %polly.indvar248.5 = phi i64 [ 0, %polly.loop_exit247.4 ], [ %polly.indvar_next249.5, %polly.loop_header245.5 ]
  %370 = add nuw nsw i64 %polly.indvar248.5, %99
  %371 = mul nuw nsw i64 %370, 8000
  %372 = add nuw nsw i64 %371, %137
  %scevgep251.5 = getelementptr i8, i8* %call1, i64 %372
  %scevgep251252.5 = bitcast i8* %scevgep251.5 to double*
  %_p_scalar_253.5 = load double, double* %scevgep251252.5, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.5 = fmul fast double %_p_scalar_257.5, %_p_scalar_253.5
  %polly.access.add.Packed_MemRef_call2259.5 = add nuw nsw i64 %polly.indvar248.5, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.5
  %_p_scalar_261.5 = load double, double* %polly.access.Packed_MemRef_call2260.5, align 8
  %p_mul37.i114.5 = fmul fast double %_p_scalar_264.5, %_p_scalar_261.5
  %373 = shl i64 %370, 3
  %374 = add nuw nsw i64 %373, %127
  %scevgep265.5 = getelementptr i8, i8* %call, i64 %374
  %scevgep265266.5 = bitcast i8* %scevgep265.5 to double*
  %_p_scalar_267.5 = load double, double* %scevgep265266.5, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_267.5
  store double %p_add42.i118.5, double* %scevgep265266.5, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.5 = add nuw nsw i64 %polly.indvar248.5, 1
  %exitcond846.5.not = icmp eq i64 %polly.indvar248.5, %smin845.5
  br i1 %exitcond846.5.not, label %polly.loop_exit247.5, label %polly.loop_header245.5

polly.loop_exit247.5:                             ; preds = %polly.loop_header245.5
  %polly.access.add.Packed_MemRef_call2255.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %129
  %polly.access.Packed_MemRef_call2256.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.6
  %_p_scalar_257.6 = load double, double* %polly.access.Packed_MemRef_call2256.6, align 8
  %375 = add nuw nsw i64 %130, %137
  %scevgep262.6 = getelementptr i8, i8* %call1, i64 %375
  %scevgep262263.6 = bitcast i8* %scevgep262.6 to double*
  %_p_scalar_264.6 = load double, double* %scevgep262263.6, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.6

polly.loop_header245.6:                           ; preds = %polly.loop_header245.6, %polly.loop_exit247.5
  %polly.indvar248.6 = phi i64 [ 0, %polly.loop_exit247.5 ], [ %polly.indvar_next249.6, %polly.loop_header245.6 ]
  %376 = add nuw nsw i64 %polly.indvar248.6, %99
  %377 = mul nuw nsw i64 %376, 8000
  %378 = add nuw nsw i64 %377, %137
  %scevgep251.6 = getelementptr i8, i8* %call1, i64 %378
  %scevgep251252.6 = bitcast i8* %scevgep251.6 to double*
  %_p_scalar_253.6 = load double, double* %scevgep251252.6, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.6 = fmul fast double %_p_scalar_257.6, %_p_scalar_253.6
  %polly.access.add.Packed_MemRef_call2259.6 = add nuw nsw i64 %polly.indvar248.6, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.6
  %_p_scalar_261.6 = load double, double* %polly.access.Packed_MemRef_call2260.6, align 8
  %p_mul37.i114.6 = fmul fast double %_p_scalar_264.6, %_p_scalar_261.6
  %379 = shl i64 %376, 3
  %380 = add nuw nsw i64 %379, %131
  %scevgep265.6 = getelementptr i8, i8* %call, i64 %380
  %scevgep265266.6 = bitcast i8* %scevgep265.6 to double*
  %_p_scalar_267.6 = load double, double* %scevgep265266.6, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_267.6
  store double %p_add42.i118.6, double* %scevgep265266.6, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.6 = add nuw nsw i64 %polly.indvar248.6, 1
  %exitcond846.6.not = icmp eq i64 %polly.indvar248.6, %smin845.6
  br i1 %exitcond846.6.not, label %polly.loop_exit247.6, label %polly.loop_header245.6

polly.loop_exit247.6:                             ; preds = %polly.loop_header245.6
  %polly.access.add.Packed_MemRef_call2255.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %133
  %polly.access.Packed_MemRef_call2256.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.7
  %_p_scalar_257.7 = load double, double* %polly.access.Packed_MemRef_call2256.7, align 8
  %381 = add nuw nsw i64 %134, %137
  %scevgep262.7 = getelementptr i8, i8* %call1, i64 %381
  %scevgep262263.7 = bitcast i8* %scevgep262.7 to double*
  %_p_scalar_264.7 = load double, double* %scevgep262263.7, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.7

polly.loop_header245.7:                           ; preds = %polly.loop_header245.7, %polly.loop_exit247.6
  %polly.indvar248.7 = phi i64 [ 0, %polly.loop_exit247.6 ], [ %polly.indvar_next249.7, %polly.loop_header245.7 ]
  %382 = add nuw nsw i64 %polly.indvar248.7, %99
  %383 = mul nuw nsw i64 %382, 8000
  %384 = add nuw nsw i64 %383, %137
  %scevgep251.7 = getelementptr i8, i8* %call1, i64 %384
  %scevgep251252.7 = bitcast i8* %scevgep251.7 to double*
  %_p_scalar_253.7 = load double, double* %scevgep251252.7, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.7 = fmul fast double %_p_scalar_257.7, %_p_scalar_253.7
  %polly.access.add.Packed_MemRef_call2259.7 = add nuw nsw i64 %polly.indvar248.7, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.7
  %_p_scalar_261.7 = load double, double* %polly.access.Packed_MemRef_call2260.7, align 8
  %p_mul37.i114.7 = fmul fast double %_p_scalar_264.7, %_p_scalar_261.7
  %385 = shl i64 %382, 3
  %386 = add nuw nsw i64 %385, %135
  %scevgep265.7 = getelementptr i8, i8* %call, i64 %386
  %scevgep265266.7 = bitcast i8* %scevgep265.7 to double*
  %_p_scalar_267.7 = load double, double* %scevgep265266.7, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_267.7
  store double %p_add42.i118.7, double* %scevgep265266.7, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.7 = add nuw nsw i64 %polly.indvar248.7, 1
  %exitcond846.7.not = icmp eq i64 %polly.indvar248.7, %smin845.7
  br i1 %exitcond846.7.not, label %polly.loop_exit247.7, label %polly.loop_header245.7

polly.loop_exit247.7:                             ; preds = %polly.loop_header245.7
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond849.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header418.1:                           ; preds = %polly.loop_header418.1, %polly.loop_exit420
  %polly.indvar421.1 = phi i64 [ 0, %polly.loop_exit420 ], [ %polly.indvar_next422.1, %polly.loop_header418.1 ]
  %387 = add nuw nsw i64 %polly.indvar421.1, %156
  %388 = mul nuw nsw i64 %387, 8000
  %389 = add nuw nsw i64 %388, %194
  %scevgep424.1 = getelementptr i8, i8* %call1, i64 %389
  %scevgep424425.1 = bitcast i8* %scevgep424.1 to double*
  %_p_scalar_426.1 = load double, double* %scevgep424425.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_430.1, %_p_scalar_426.1
  %polly.access.add.Packed_MemRef_call2273432.1 = add nuw nsw i64 %polly.indvar421.1, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.1
  %_p_scalar_434.1 = load double, double* %polly.access.Packed_MemRef_call2273433.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_434.1
  %390 = shl i64 %387, 3
  %391 = add nuw nsw i64 %390, %168
  %scevgep438.1 = getelementptr i8, i8* %call, i64 %391
  %scevgep438439.1 = bitcast i8* %scevgep438.1 to double*
  %_p_scalar_440.1 = load double, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_440.1
  store double %p_add42.i79.1, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.1 = add nuw nsw i64 %polly.indvar421.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar421.1, %smin866.1
  br i1 %exitcond867.1.not, label %polly.loop_exit420.1, label %polly.loop_header418.1

polly.loop_exit420.1:                             ; preds = %polly.loop_header418.1
  %polly.access.add.Packed_MemRef_call2273428.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %170
  %polly.access.Packed_MemRef_call2273429.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.2
  %_p_scalar_430.2 = load double, double* %polly.access.Packed_MemRef_call2273429.2, align 8
  %392 = add nuw nsw i64 %171, %194
  %scevgep435.2 = getelementptr i8, i8* %call1, i64 %392
  %scevgep435436.2 = bitcast i8* %scevgep435.2 to double*
  %_p_scalar_437.2 = load double, double* %scevgep435436.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.2

polly.loop_header418.2:                           ; preds = %polly.loop_header418.2, %polly.loop_exit420.1
  %polly.indvar421.2 = phi i64 [ 0, %polly.loop_exit420.1 ], [ %polly.indvar_next422.2, %polly.loop_header418.2 ]
  %393 = add nuw nsw i64 %polly.indvar421.2, %156
  %394 = mul nuw nsw i64 %393, 8000
  %395 = add nuw nsw i64 %394, %194
  %scevgep424.2 = getelementptr i8, i8* %call1, i64 %395
  %scevgep424425.2 = bitcast i8* %scevgep424.2 to double*
  %_p_scalar_426.2 = load double, double* %scevgep424425.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_430.2, %_p_scalar_426.2
  %polly.access.add.Packed_MemRef_call2273432.2 = add nuw nsw i64 %polly.indvar421.2, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.2
  %_p_scalar_434.2 = load double, double* %polly.access.Packed_MemRef_call2273433.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_437.2, %_p_scalar_434.2
  %396 = shl i64 %393, 3
  %397 = add nuw nsw i64 %396, %172
  %scevgep438.2 = getelementptr i8, i8* %call, i64 %397
  %scevgep438439.2 = bitcast i8* %scevgep438.2 to double*
  %_p_scalar_440.2 = load double, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_440.2
  store double %p_add42.i79.2, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.2 = add nuw nsw i64 %polly.indvar421.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar421.2, %smin866.2
  br i1 %exitcond867.2.not, label %polly.loop_exit420.2, label %polly.loop_header418.2

polly.loop_exit420.2:                             ; preds = %polly.loop_header418.2
  %polly.access.add.Packed_MemRef_call2273428.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %174
  %polly.access.Packed_MemRef_call2273429.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.3
  %_p_scalar_430.3 = load double, double* %polly.access.Packed_MemRef_call2273429.3, align 8
  %398 = add nuw nsw i64 %175, %194
  %scevgep435.3 = getelementptr i8, i8* %call1, i64 %398
  %scevgep435436.3 = bitcast i8* %scevgep435.3 to double*
  %_p_scalar_437.3 = load double, double* %scevgep435436.3, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.3

polly.loop_header418.3:                           ; preds = %polly.loop_header418.3, %polly.loop_exit420.2
  %polly.indvar421.3 = phi i64 [ 0, %polly.loop_exit420.2 ], [ %polly.indvar_next422.3, %polly.loop_header418.3 ]
  %399 = add nuw nsw i64 %polly.indvar421.3, %156
  %400 = mul nuw nsw i64 %399, 8000
  %401 = add nuw nsw i64 %400, %194
  %scevgep424.3 = getelementptr i8, i8* %call1, i64 %401
  %scevgep424425.3 = bitcast i8* %scevgep424.3 to double*
  %_p_scalar_426.3 = load double, double* %scevgep424425.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_430.3, %_p_scalar_426.3
  %polly.access.add.Packed_MemRef_call2273432.3 = add nuw nsw i64 %polly.indvar421.3, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.3
  %_p_scalar_434.3 = load double, double* %polly.access.Packed_MemRef_call2273433.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_437.3, %_p_scalar_434.3
  %402 = shl i64 %399, 3
  %403 = add nuw nsw i64 %402, %176
  %scevgep438.3 = getelementptr i8, i8* %call, i64 %403
  %scevgep438439.3 = bitcast i8* %scevgep438.3 to double*
  %_p_scalar_440.3 = load double, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_440.3
  store double %p_add42.i79.3, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.3 = add nuw nsw i64 %polly.indvar421.3, 1
  %exitcond867.3.not = icmp eq i64 %polly.indvar421.3, %smin866.3
  br i1 %exitcond867.3.not, label %polly.loop_exit420.3, label %polly.loop_header418.3

polly.loop_exit420.3:                             ; preds = %polly.loop_header418.3
  %polly.access.add.Packed_MemRef_call2273428.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %178
  %polly.access.Packed_MemRef_call2273429.4 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.4
  %_p_scalar_430.4 = load double, double* %polly.access.Packed_MemRef_call2273429.4, align 8
  %404 = add nuw nsw i64 %179, %194
  %scevgep435.4 = getelementptr i8, i8* %call1, i64 %404
  %scevgep435436.4 = bitcast i8* %scevgep435.4 to double*
  %_p_scalar_437.4 = load double, double* %scevgep435436.4, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.4

polly.loop_header418.4:                           ; preds = %polly.loop_header418.4, %polly.loop_exit420.3
  %polly.indvar421.4 = phi i64 [ 0, %polly.loop_exit420.3 ], [ %polly.indvar_next422.4, %polly.loop_header418.4 ]
  %405 = add nuw nsw i64 %polly.indvar421.4, %156
  %406 = mul nuw nsw i64 %405, 8000
  %407 = add nuw nsw i64 %406, %194
  %scevgep424.4 = getelementptr i8, i8* %call1, i64 %407
  %scevgep424425.4 = bitcast i8* %scevgep424.4 to double*
  %_p_scalar_426.4 = load double, double* %scevgep424425.4, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.4 = fmul fast double %_p_scalar_430.4, %_p_scalar_426.4
  %polly.access.add.Packed_MemRef_call2273432.4 = add nuw nsw i64 %polly.indvar421.4, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.4 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.4
  %_p_scalar_434.4 = load double, double* %polly.access.Packed_MemRef_call2273433.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_437.4, %_p_scalar_434.4
  %408 = shl i64 %405, 3
  %409 = add nuw nsw i64 %408, %180
  %scevgep438.4 = getelementptr i8, i8* %call, i64 %409
  %scevgep438439.4 = bitcast i8* %scevgep438.4 to double*
  %_p_scalar_440.4 = load double, double* %scevgep438439.4, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_440.4
  store double %p_add42.i79.4, double* %scevgep438439.4, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.4 = add nuw nsw i64 %polly.indvar421.4, 1
  %exitcond867.4.not = icmp eq i64 %polly.indvar421.4, %smin866.4
  br i1 %exitcond867.4.not, label %polly.loop_exit420.4, label %polly.loop_header418.4

polly.loop_exit420.4:                             ; preds = %polly.loop_header418.4
  %polly.access.add.Packed_MemRef_call2273428.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %182
  %polly.access.Packed_MemRef_call2273429.5 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.5
  %_p_scalar_430.5 = load double, double* %polly.access.Packed_MemRef_call2273429.5, align 8
  %410 = add nuw nsw i64 %183, %194
  %scevgep435.5 = getelementptr i8, i8* %call1, i64 %410
  %scevgep435436.5 = bitcast i8* %scevgep435.5 to double*
  %_p_scalar_437.5 = load double, double* %scevgep435436.5, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.5

polly.loop_header418.5:                           ; preds = %polly.loop_header418.5, %polly.loop_exit420.4
  %polly.indvar421.5 = phi i64 [ 0, %polly.loop_exit420.4 ], [ %polly.indvar_next422.5, %polly.loop_header418.5 ]
  %411 = add nuw nsw i64 %polly.indvar421.5, %156
  %412 = mul nuw nsw i64 %411, 8000
  %413 = add nuw nsw i64 %412, %194
  %scevgep424.5 = getelementptr i8, i8* %call1, i64 %413
  %scevgep424425.5 = bitcast i8* %scevgep424.5 to double*
  %_p_scalar_426.5 = load double, double* %scevgep424425.5, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.5 = fmul fast double %_p_scalar_430.5, %_p_scalar_426.5
  %polly.access.add.Packed_MemRef_call2273432.5 = add nuw nsw i64 %polly.indvar421.5, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.5 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.5
  %_p_scalar_434.5 = load double, double* %polly.access.Packed_MemRef_call2273433.5, align 8
  %p_mul37.i75.5 = fmul fast double %_p_scalar_437.5, %_p_scalar_434.5
  %414 = shl i64 %411, 3
  %415 = add nuw nsw i64 %414, %184
  %scevgep438.5 = getelementptr i8, i8* %call, i64 %415
  %scevgep438439.5 = bitcast i8* %scevgep438.5 to double*
  %_p_scalar_440.5 = load double, double* %scevgep438439.5, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_440.5
  store double %p_add42.i79.5, double* %scevgep438439.5, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.5 = add nuw nsw i64 %polly.indvar421.5, 1
  %exitcond867.5.not = icmp eq i64 %polly.indvar421.5, %smin866.5
  br i1 %exitcond867.5.not, label %polly.loop_exit420.5, label %polly.loop_header418.5

polly.loop_exit420.5:                             ; preds = %polly.loop_header418.5
  %polly.access.add.Packed_MemRef_call2273428.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %186
  %polly.access.Packed_MemRef_call2273429.6 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.6
  %_p_scalar_430.6 = load double, double* %polly.access.Packed_MemRef_call2273429.6, align 8
  %416 = add nuw nsw i64 %187, %194
  %scevgep435.6 = getelementptr i8, i8* %call1, i64 %416
  %scevgep435436.6 = bitcast i8* %scevgep435.6 to double*
  %_p_scalar_437.6 = load double, double* %scevgep435436.6, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.6

polly.loop_header418.6:                           ; preds = %polly.loop_header418.6, %polly.loop_exit420.5
  %polly.indvar421.6 = phi i64 [ 0, %polly.loop_exit420.5 ], [ %polly.indvar_next422.6, %polly.loop_header418.6 ]
  %417 = add nuw nsw i64 %polly.indvar421.6, %156
  %418 = mul nuw nsw i64 %417, 8000
  %419 = add nuw nsw i64 %418, %194
  %scevgep424.6 = getelementptr i8, i8* %call1, i64 %419
  %scevgep424425.6 = bitcast i8* %scevgep424.6 to double*
  %_p_scalar_426.6 = load double, double* %scevgep424425.6, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.6 = fmul fast double %_p_scalar_430.6, %_p_scalar_426.6
  %polly.access.add.Packed_MemRef_call2273432.6 = add nuw nsw i64 %polly.indvar421.6, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.6 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.6
  %_p_scalar_434.6 = load double, double* %polly.access.Packed_MemRef_call2273433.6, align 8
  %p_mul37.i75.6 = fmul fast double %_p_scalar_437.6, %_p_scalar_434.6
  %420 = shl i64 %417, 3
  %421 = add nuw nsw i64 %420, %188
  %scevgep438.6 = getelementptr i8, i8* %call, i64 %421
  %scevgep438439.6 = bitcast i8* %scevgep438.6 to double*
  %_p_scalar_440.6 = load double, double* %scevgep438439.6, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_440.6
  store double %p_add42.i79.6, double* %scevgep438439.6, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.6 = add nuw nsw i64 %polly.indvar421.6, 1
  %exitcond867.6.not = icmp eq i64 %polly.indvar421.6, %smin866.6
  br i1 %exitcond867.6.not, label %polly.loop_exit420.6, label %polly.loop_header418.6

polly.loop_exit420.6:                             ; preds = %polly.loop_header418.6
  %polly.access.add.Packed_MemRef_call2273428.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %190
  %polly.access.Packed_MemRef_call2273429.7 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.7
  %_p_scalar_430.7 = load double, double* %polly.access.Packed_MemRef_call2273429.7, align 8
  %422 = add nuw nsw i64 %191, %194
  %scevgep435.7 = getelementptr i8, i8* %call1, i64 %422
  %scevgep435436.7 = bitcast i8* %scevgep435.7 to double*
  %_p_scalar_437.7 = load double, double* %scevgep435436.7, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.7

polly.loop_header418.7:                           ; preds = %polly.loop_header418.7, %polly.loop_exit420.6
  %polly.indvar421.7 = phi i64 [ 0, %polly.loop_exit420.6 ], [ %polly.indvar_next422.7, %polly.loop_header418.7 ]
  %423 = add nuw nsw i64 %polly.indvar421.7, %156
  %424 = mul nuw nsw i64 %423, 8000
  %425 = add nuw nsw i64 %424, %194
  %scevgep424.7 = getelementptr i8, i8* %call1, i64 %425
  %scevgep424425.7 = bitcast i8* %scevgep424.7 to double*
  %_p_scalar_426.7 = load double, double* %scevgep424425.7, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.7 = fmul fast double %_p_scalar_430.7, %_p_scalar_426.7
  %polly.access.add.Packed_MemRef_call2273432.7 = add nuw nsw i64 %polly.indvar421.7, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.7 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.7
  %_p_scalar_434.7 = load double, double* %polly.access.Packed_MemRef_call2273433.7, align 8
  %p_mul37.i75.7 = fmul fast double %_p_scalar_437.7, %_p_scalar_434.7
  %426 = shl i64 %423, 3
  %427 = add nuw nsw i64 %426, %192
  %scevgep438.7 = getelementptr i8, i8* %call, i64 %427
  %scevgep438439.7 = bitcast i8* %scevgep438.7 to double*
  %_p_scalar_440.7 = load double, double* %scevgep438439.7, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_440.7
  store double %p_add42.i79.7, double* %scevgep438439.7, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.7 = add nuw nsw i64 %polly.indvar421.7, 1
  %exitcond867.7.not = icmp eq i64 %polly.indvar421.7, %smin866.7
  br i1 %exitcond867.7.not, label %polly.loop_exit420.7, label %polly.loop_header418.7

polly.loop_exit420.7:                             ; preds = %polly.loop_header418.7
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next410, %154
  br i1 %exitcond870.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header591.1:                           ; preds = %polly.loop_header591.1, %polly.loop_exit593
  %polly.indvar594.1 = phi i64 [ 0, %polly.loop_exit593 ], [ %polly.indvar_next595.1, %polly.loop_header591.1 ]
  %428 = add nuw nsw i64 %polly.indvar594.1, %213
  %429 = mul nuw nsw i64 %428, 8000
  %430 = add nuw nsw i64 %429, %251
  %scevgep597.1 = getelementptr i8, i8* %call1, i64 %430
  %scevgep597598.1 = bitcast i8* %scevgep597.1 to double*
  %_p_scalar_599.1 = load double, double* %scevgep597598.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_603.1, %_p_scalar_599.1
  %polly.access.add.Packed_MemRef_call2446605.1 = add nuw nsw i64 %polly.indvar594.1, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.1
  %_p_scalar_607.1 = load double, double* %polly.access.Packed_MemRef_call2446606.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_610.1, %_p_scalar_607.1
  %431 = shl i64 %428, 3
  %432 = add nuw nsw i64 %431, %225
  %scevgep611.1 = getelementptr i8, i8* %call, i64 %432
  %scevgep611612.1 = bitcast i8* %scevgep611.1 to double*
  %_p_scalar_613.1 = load double, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_613.1
  store double %p_add42.i.1, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.1 = add nuw nsw i64 %polly.indvar594.1, 1
  %exitcond888.1.not = icmp eq i64 %polly.indvar594.1, %smin887.1
  br i1 %exitcond888.1.not, label %polly.loop_exit593.1, label %polly.loop_header591.1

polly.loop_exit593.1:                             ; preds = %polly.loop_header591.1
  %polly.access.add.Packed_MemRef_call2446601.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %227
  %polly.access.Packed_MemRef_call2446602.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.2
  %_p_scalar_603.2 = load double, double* %polly.access.Packed_MemRef_call2446602.2, align 8
  %433 = add nuw nsw i64 %228, %251
  %scevgep608.2 = getelementptr i8, i8* %call1, i64 %433
  %scevgep608609.2 = bitcast i8* %scevgep608.2 to double*
  %_p_scalar_610.2 = load double, double* %scevgep608609.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.2

polly.loop_header591.2:                           ; preds = %polly.loop_header591.2, %polly.loop_exit593.1
  %polly.indvar594.2 = phi i64 [ 0, %polly.loop_exit593.1 ], [ %polly.indvar_next595.2, %polly.loop_header591.2 ]
  %434 = add nuw nsw i64 %polly.indvar594.2, %213
  %435 = mul nuw nsw i64 %434, 8000
  %436 = add nuw nsw i64 %435, %251
  %scevgep597.2 = getelementptr i8, i8* %call1, i64 %436
  %scevgep597598.2 = bitcast i8* %scevgep597.2 to double*
  %_p_scalar_599.2 = load double, double* %scevgep597598.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_603.2, %_p_scalar_599.2
  %polly.access.add.Packed_MemRef_call2446605.2 = add nuw nsw i64 %polly.indvar594.2, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.2
  %_p_scalar_607.2 = load double, double* %polly.access.Packed_MemRef_call2446606.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_610.2, %_p_scalar_607.2
  %437 = shl i64 %434, 3
  %438 = add nuw nsw i64 %437, %229
  %scevgep611.2 = getelementptr i8, i8* %call, i64 %438
  %scevgep611612.2 = bitcast i8* %scevgep611.2 to double*
  %_p_scalar_613.2 = load double, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_613.2
  store double %p_add42.i.2, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.2 = add nuw nsw i64 %polly.indvar594.2, 1
  %exitcond888.2.not = icmp eq i64 %polly.indvar594.2, %smin887.2
  br i1 %exitcond888.2.not, label %polly.loop_exit593.2, label %polly.loop_header591.2

polly.loop_exit593.2:                             ; preds = %polly.loop_header591.2
  %polly.access.add.Packed_MemRef_call2446601.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %231
  %polly.access.Packed_MemRef_call2446602.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.3
  %_p_scalar_603.3 = load double, double* %polly.access.Packed_MemRef_call2446602.3, align 8
  %439 = add nuw nsw i64 %232, %251
  %scevgep608.3 = getelementptr i8, i8* %call1, i64 %439
  %scevgep608609.3 = bitcast i8* %scevgep608.3 to double*
  %_p_scalar_610.3 = load double, double* %scevgep608609.3, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.3

polly.loop_header591.3:                           ; preds = %polly.loop_header591.3, %polly.loop_exit593.2
  %polly.indvar594.3 = phi i64 [ 0, %polly.loop_exit593.2 ], [ %polly.indvar_next595.3, %polly.loop_header591.3 ]
  %440 = add nuw nsw i64 %polly.indvar594.3, %213
  %441 = mul nuw nsw i64 %440, 8000
  %442 = add nuw nsw i64 %441, %251
  %scevgep597.3 = getelementptr i8, i8* %call1, i64 %442
  %scevgep597598.3 = bitcast i8* %scevgep597.3 to double*
  %_p_scalar_599.3 = load double, double* %scevgep597598.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_603.3, %_p_scalar_599.3
  %polly.access.add.Packed_MemRef_call2446605.3 = add nuw nsw i64 %polly.indvar594.3, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.3
  %_p_scalar_607.3 = load double, double* %polly.access.Packed_MemRef_call2446606.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_610.3, %_p_scalar_607.3
  %443 = shl i64 %440, 3
  %444 = add nuw nsw i64 %443, %233
  %scevgep611.3 = getelementptr i8, i8* %call, i64 %444
  %scevgep611612.3 = bitcast i8* %scevgep611.3 to double*
  %_p_scalar_613.3 = load double, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_613.3
  store double %p_add42.i.3, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.3 = add nuw nsw i64 %polly.indvar594.3, 1
  %exitcond888.3.not = icmp eq i64 %polly.indvar594.3, %smin887.3
  br i1 %exitcond888.3.not, label %polly.loop_exit593.3, label %polly.loop_header591.3

polly.loop_exit593.3:                             ; preds = %polly.loop_header591.3
  %polly.access.add.Packed_MemRef_call2446601.4 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %235
  %polly.access.Packed_MemRef_call2446602.4 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.4
  %_p_scalar_603.4 = load double, double* %polly.access.Packed_MemRef_call2446602.4, align 8
  %445 = add nuw nsw i64 %236, %251
  %scevgep608.4 = getelementptr i8, i8* %call1, i64 %445
  %scevgep608609.4 = bitcast i8* %scevgep608.4 to double*
  %_p_scalar_610.4 = load double, double* %scevgep608609.4, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.4

polly.loop_header591.4:                           ; preds = %polly.loop_header591.4, %polly.loop_exit593.3
  %polly.indvar594.4 = phi i64 [ 0, %polly.loop_exit593.3 ], [ %polly.indvar_next595.4, %polly.loop_header591.4 ]
  %446 = add nuw nsw i64 %polly.indvar594.4, %213
  %447 = mul nuw nsw i64 %446, 8000
  %448 = add nuw nsw i64 %447, %251
  %scevgep597.4 = getelementptr i8, i8* %call1, i64 %448
  %scevgep597598.4 = bitcast i8* %scevgep597.4 to double*
  %_p_scalar_599.4 = load double, double* %scevgep597598.4, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.4 = fmul fast double %_p_scalar_603.4, %_p_scalar_599.4
  %polly.access.add.Packed_MemRef_call2446605.4 = add nuw nsw i64 %polly.indvar594.4, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.4 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.4
  %_p_scalar_607.4 = load double, double* %polly.access.Packed_MemRef_call2446606.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_610.4, %_p_scalar_607.4
  %449 = shl i64 %446, 3
  %450 = add nuw nsw i64 %449, %237
  %scevgep611.4 = getelementptr i8, i8* %call, i64 %450
  %scevgep611612.4 = bitcast i8* %scevgep611.4 to double*
  %_p_scalar_613.4 = load double, double* %scevgep611612.4, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_613.4
  store double %p_add42.i.4, double* %scevgep611612.4, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.4 = add nuw nsw i64 %polly.indvar594.4, 1
  %exitcond888.4.not = icmp eq i64 %polly.indvar594.4, %smin887.4
  br i1 %exitcond888.4.not, label %polly.loop_exit593.4, label %polly.loop_header591.4

polly.loop_exit593.4:                             ; preds = %polly.loop_header591.4
  %polly.access.add.Packed_MemRef_call2446601.5 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %239
  %polly.access.Packed_MemRef_call2446602.5 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.5
  %_p_scalar_603.5 = load double, double* %polly.access.Packed_MemRef_call2446602.5, align 8
  %451 = add nuw nsw i64 %240, %251
  %scevgep608.5 = getelementptr i8, i8* %call1, i64 %451
  %scevgep608609.5 = bitcast i8* %scevgep608.5 to double*
  %_p_scalar_610.5 = load double, double* %scevgep608609.5, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.5

polly.loop_header591.5:                           ; preds = %polly.loop_header591.5, %polly.loop_exit593.4
  %polly.indvar594.5 = phi i64 [ 0, %polly.loop_exit593.4 ], [ %polly.indvar_next595.5, %polly.loop_header591.5 ]
  %452 = add nuw nsw i64 %polly.indvar594.5, %213
  %453 = mul nuw nsw i64 %452, 8000
  %454 = add nuw nsw i64 %453, %251
  %scevgep597.5 = getelementptr i8, i8* %call1, i64 %454
  %scevgep597598.5 = bitcast i8* %scevgep597.5 to double*
  %_p_scalar_599.5 = load double, double* %scevgep597598.5, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.5 = fmul fast double %_p_scalar_603.5, %_p_scalar_599.5
  %polly.access.add.Packed_MemRef_call2446605.5 = add nuw nsw i64 %polly.indvar594.5, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.5 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.5
  %_p_scalar_607.5 = load double, double* %polly.access.Packed_MemRef_call2446606.5, align 8
  %p_mul37.i.5 = fmul fast double %_p_scalar_610.5, %_p_scalar_607.5
  %455 = shl i64 %452, 3
  %456 = add nuw nsw i64 %455, %241
  %scevgep611.5 = getelementptr i8, i8* %call, i64 %456
  %scevgep611612.5 = bitcast i8* %scevgep611.5 to double*
  %_p_scalar_613.5 = load double, double* %scevgep611612.5, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_613.5
  store double %p_add42.i.5, double* %scevgep611612.5, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.5 = add nuw nsw i64 %polly.indvar594.5, 1
  %exitcond888.5.not = icmp eq i64 %polly.indvar594.5, %smin887.5
  br i1 %exitcond888.5.not, label %polly.loop_exit593.5, label %polly.loop_header591.5

polly.loop_exit593.5:                             ; preds = %polly.loop_header591.5
  %polly.access.add.Packed_MemRef_call2446601.6 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %243
  %polly.access.Packed_MemRef_call2446602.6 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.6
  %_p_scalar_603.6 = load double, double* %polly.access.Packed_MemRef_call2446602.6, align 8
  %457 = add nuw nsw i64 %244, %251
  %scevgep608.6 = getelementptr i8, i8* %call1, i64 %457
  %scevgep608609.6 = bitcast i8* %scevgep608.6 to double*
  %_p_scalar_610.6 = load double, double* %scevgep608609.6, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.6

polly.loop_header591.6:                           ; preds = %polly.loop_header591.6, %polly.loop_exit593.5
  %polly.indvar594.6 = phi i64 [ 0, %polly.loop_exit593.5 ], [ %polly.indvar_next595.6, %polly.loop_header591.6 ]
  %458 = add nuw nsw i64 %polly.indvar594.6, %213
  %459 = mul nuw nsw i64 %458, 8000
  %460 = add nuw nsw i64 %459, %251
  %scevgep597.6 = getelementptr i8, i8* %call1, i64 %460
  %scevgep597598.6 = bitcast i8* %scevgep597.6 to double*
  %_p_scalar_599.6 = load double, double* %scevgep597598.6, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.6 = fmul fast double %_p_scalar_603.6, %_p_scalar_599.6
  %polly.access.add.Packed_MemRef_call2446605.6 = add nuw nsw i64 %polly.indvar594.6, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.6 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.6
  %_p_scalar_607.6 = load double, double* %polly.access.Packed_MemRef_call2446606.6, align 8
  %p_mul37.i.6 = fmul fast double %_p_scalar_610.6, %_p_scalar_607.6
  %461 = shl i64 %458, 3
  %462 = add nuw nsw i64 %461, %245
  %scevgep611.6 = getelementptr i8, i8* %call, i64 %462
  %scevgep611612.6 = bitcast i8* %scevgep611.6 to double*
  %_p_scalar_613.6 = load double, double* %scevgep611612.6, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_613.6
  store double %p_add42.i.6, double* %scevgep611612.6, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.6 = add nuw nsw i64 %polly.indvar594.6, 1
  %exitcond888.6.not = icmp eq i64 %polly.indvar594.6, %smin887.6
  br i1 %exitcond888.6.not, label %polly.loop_exit593.6, label %polly.loop_header591.6

polly.loop_exit593.6:                             ; preds = %polly.loop_header591.6
  %polly.access.add.Packed_MemRef_call2446601.7 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %247
  %polly.access.Packed_MemRef_call2446602.7 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.7
  %_p_scalar_603.7 = load double, double* %polly.access.Packed_MemRef_call2446602.7, align 8
  %463 = add nuw nsw i64 %248, %251
  %scevgep608.7 = getelementptr i8, i8* %call1, i64 %463
  %scevgep608609.7 = bitcast i8* %scevgep608.7 to double*
  %_p_scalar_610.7 = load double, double* %scevgep608609.7, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.7

polly.loop_header591.7:                           ; preds = %polly.loop_header591.7, %polly.loop_exit593.6
  %polly.indvar594.7 = phi i64 [ 0, %polly.loop_exit593.6 ], [ %polly.indvar_next595.7, %polly.loop_header591.7 ]
  %464 = add nuw nsw i64 %polly.indvar594.7, %213
  %465 = mul nuw nsw i64 %464, 8000
  %466 = add nuw nsw i64 %465, %251
  %scevgep597.7 = getelementptr i8, i8* %call1, i64 %466
  %scevgep597598.7 = bitcast i8* %scevgep597.7 to double*
  %_p_scalar_599.7 = load double, double* %scevgep597598.7, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.7 = fmul fast double %_p_scalar_603.7, %_p_scalar_599.7
  %polly.access.add.Packed_MemRef_call2446605.7 = add nuw nsw i64 %polly.indvar594.7, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.7 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.7
  %_p_scalar_607.7 = load double, double* %polly.access.Packed_MemRef_call2446606.7, align 8
  %p_mul37.i.7 = fmul fast double %_p_scalar_610.7, %_p_scalar_607.7
  %467 = shl i64 %464, 3
  %468 = add nuw nsw i64 %467, %249
  %scevgep611.7 = getelementptr i8, i8* %call, i64 %468
  %scevgep611612.7 = bitcast i8* %scevgep611.7 to double*
  %_p_scalar_613.7 = load double, double* %scevgep611612.7, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_613.7
  store double %p_add42.i.7, double* %scevgep611612.7, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.7 = add nuw nsw i64 %polly.indvar594.7, 1
  %exitcond888.7.not = icmp eq i64 %polly.indvar594.7, %smin887.7
  br i1 %exitcond888.7.not, label %polly.loop_exit593.7, label %polly.loop_header591.7

polly.loop_exit593.7:                             ; preds = %polly.loop_header591.7
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next583, %211
  br i1 %exitcond891.not, label %polly.loop_exit581, label %polly.loop_header579
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
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!45 = !{!"llvm.loop.tile.size", i32 8}
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
