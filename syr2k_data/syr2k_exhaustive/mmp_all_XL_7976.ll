; ModuleID = 'syr2k_exhaustive/mmp_all_XL_7976.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_7976.c"
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
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1000 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1000, label %for.body3.i46.preheader1074, label %vector.ph1001

vector.ph1001:                                    ; preds = %for.body3.i46.preheader
  %n.vec1003 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph1001
  %index1004 = phi i64 [ 0, %vector.ph1001 ], [ %index.next1005, %vector.body999 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index1004
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1005 = add i64 %index1004, 4
  %46 = icmp eq i64 %index.next1005, %n.vec1003
  br i1 %46, label %middle.block997, label %vector.body999, !llvm.loop !18

middle.block997:                                  ; preds = %vector.body999
  %cmp.n1007 = icmp eq i64 %indvars.iv21.i, %n.vec1003
  br i1 %cmp.n1007, label %for.inc6.i, label %for.body3.i46.preheader1074

for.body3.i46.preheader1074:                      ; preds = %for.body3.i46.preheader, %middle.block997
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1003, %middle.block997 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1074, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1074 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block997, %for.cond1.preheader.i45
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
  %min.iters.check1023 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1023, label %for.body3.i60.preheader1073, label %vector.ph1024

vector.ph1024:                                    ; preds = %for.body3.i60.preheader
  %n.vec1026 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %vector.ph1024
  %index1027 = phi i64 [ 0, %vector.ph1024 ], [ %index.next1028, %vector.body1022 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1027
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1031 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1031, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1028 = add i64 %index1027, 4
  %57 = icmp eq i64 %index.next1028, %n.vec1026
  br i1 %57, label %middle.block1020, label %vector.body1022, !llvm.loop !55

middle.block1020:                                 ; preds = %vector.body1022
  %cmp.n1030 = icmp eq i64 %indvars.iv21.i52, %n.vec1026
  br i1 %cmp.n1030, label %for.inc6.i63, label %for.body3.i60.preheader1073

for.body3.i60.preheader1073:                      ; preds = %for.body3.i60.preheader, %middle.block1020
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1026, %middle.block1020 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1073, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1073 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1020, %for.cond1.preheader.i54
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
  %min.iters.check1049 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1049, label %for.body3.i99.preheader1072, label %vector.ph1050

vector.ph1050:                                    ; preds = %for.body3.i99.preheader
  %n.vec1052 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %vector.ph1050
  %index1053 = phi i64 [ 0, %vector.ph1050 ], [ %index.next1054, %vector.body1048 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1053
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1057 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1057, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1054 = add i64 %index1053, 4
  %68 = icmp eq i64 %index.next1054, %n.vec1052
  br i1 %68, label %middle.block1046, label %vector.body1048, !llvm.loop !57

middle.block1046:                                 ; preds = %vector.body1048
  %cmp.n1056 = icmp eq i64 %indvars.iv21.i91, %n.vec1052
  br i1 %cmp.n1056, label %for.inc6.i102, label %for.body3.i99.preheader1072

for.body3.i99.preheader1072:                      ; preds = %for.body3.i99.preheader, %middle.block1046
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1052, %middle.block1046 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1072, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1072 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1046, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1061 = phi i64 [ %indvar.next1062, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1061, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1063 = icmp ult i64 %88, 4
  br i1 %min.iters.check1063, label %polly.loop_header191.preheader, label %vector.ph1064

vector.ph1064:                                    ; preds = %polly.loop_header
  %n.vec1066 = and i64 %88, -4
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1064
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1068, %vector.body1060 ]
  %90 = shl nuw nsw i64 %index1067, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1071 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1071, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1068 = add i64 %index1067, 4
  %95 = icmp eq i64 %index.next1068, %n.vec1066
  br i1 %95, label %middle.block1058, label %vector.body1060, !llvm.loop !69

middle.block1058:                                 ; preds = %vector.body1060
  %cmp.n1070 = icmp eq i64 %88, %n.vec1066
  br i1 %cmp.n1070, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1058
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1066, %middle.block1058 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1058
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1062 = add i64 %indvar1061, 1
  br i1 %exitcond843.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond841.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond840.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit223 ], [ 1, %polly.loop_exit207 ]
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv836, 5
  %98 = add nuw i64 %indvars.iv834, %97
  %umin = call i64 @llvm.umin.i64(i64 %98, i64 53)
  %99 = mul nsw i64 %polly.indvar218, -128
  %100 = icmp slt i64 %99, -1072
  %101 = select i1 %100, i64 %99, i64 -1072
  %102 = add nsw i64 %101, 1199
  %103 = shl nsw i64 %polly.indvar218, 7
  %104 = add nuw nsw i64 %umin, 6
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 128
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 6
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 2
  %exitcond839.not = icmp eq i64 %polly.indvar_next219, 10
  br i1 %exitcond839.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit229 ], [ %indvars.iv827, %polly.loop_header215 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit229 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %105 = mul nuw nsw i64 %polly.indvar224, 20
  %106 = add nsw i64 %105, %99
  %107 = icmp sgt i64 %106, 0
  %108 = select i1 %107, i64 %106, i64 0
  %polly.loop_guard.not = icmp sgt i64 %108, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv825, i64 0)
  %109 = add i64 %smax, %indvars.iv829
  %110 = sub nsw i64 %103, %105
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next826 = add nsw i64 %indvars.iv825, 20
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -20
  %exitcond838.not = icmp eq i64 %polly.indvar224, %104
  br i1 %exitcond838.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv831 = phi i64 [ %109, %polly.loop_header227.preheader ], [ %indvars.iv.next832, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %108, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 19)
  %111 = add nsw i64 %polly.indvar230, %110
  %polly.loop_guard243925 = icmp sgt i64 %111, -1
  %112 = add nuw nsw i64 %polly.indvar230, %103
  %113 = mul i64 %112, 8000
  %114 = mul i64 %112, 9600
  br i1 %polly.loop_guard243925, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %115 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %115
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %112
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %113
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %116 = add nuw nsw i64 %polly.indvar244.us, %105
  %117 = mul nuw nsw i64 %116, 8000
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %117
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %118 = shl i64 %116, 3
  %119 = add i64 %118, %114
  %scevgep263.us = getelementptr i8, i8* %call, i64 %119
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond833.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp ult i64 %polly.indvar230, %102
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1035 = phi i64 [ %indvar.next1036, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %120 = add i64 %indvar1035, 1
  %121 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1037 = icmp ult i64 %120, 4
  br i1 %min.iters.check1037, label %polly.loop_header360.preheader, label %vector.ph1038

vector.ph1038:                                    ; preds = %polly.loop_header354
  %n.vec1040 = and i64 %120, -4
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1034 ]
  %122 = shl nuw nsw i64 %index1041, 3
  %123 = getelementptr i8, i8* %scevgep366, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1045 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !74, !noalias !76
  %125 = fmul fast <4 x double> %wide.load1045, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !74, !noalias !76
  %index.next1042 = add i64 %index1041, 4
  %127 = icmp eq i64 %index.next1042, %n.vec1040
  br i1 %127, label %middle.block1032, label %vector.body1034, !llvm.loop !80

middle.block1032:                                 ; preds = %vector.body1034
  %cmp.n1044 = icmp eq i64 %120, %n.vec1040
  br i1 %cmp.n1044, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1032
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1040, %middle.block1032 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1032
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1036 = add i64 %indvar1035, 1
  br i1 %exitcond868.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %128
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond867.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 1200
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next374, 1000
  br i1 %exitcond866.not, label %polly.loop_header386, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 1000
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next380, 1200
  br i1 %exitcond865.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header386:                             ; preds = %polly.loop_exit378, %polly.loop_exit395
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit395 ], [ 1, %polly.loop_exit378 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_exit395 ], [ 0, %polly.loop_exit378 ]
  %129 = udiv i64 %indvars.iv860, 5
  %130 = add nuw i64 %indvars.iv858, %129
  %umin862 = call i64 @llvm.umin.i64(i64 %130, i64 53)
  %131 = mul nsw i64 %polly.indvar389, -128
  %132 = icmp slt i64 %131, -1072
  %133 = select i1 %132, i64 %131, i64 -1072
  %134 = add nsw i64 %133, 1199
  %135 = shl nsw i64 %polly.indvar389, 7
  %136 = add nuw nsw i64 %umin862, 6
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit402
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -128
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 128
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 6
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 2
  %exitcond864.not = icmp eq i64 %polly.indvar_next390, 10
  br i1 %exitcond864.not, label %polly.exiting269, label %polly.loop_header386

polly.loop_header393:                             ; preds = %polly.loop_exit402, %polly.loop_header386
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit402 ], [ %indvars.iv849, %polly.loop_header386 ]
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit402 ], [ %indvars.iv844, %polly.loop_header386 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit402 ], [ 0, %polly.loop_header386 ]
  %137 = mul nuw nsw i64 %polly.indvar396, 20
  %138 = add nsw i64 %137, %131
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard403.not = icmp sgt i64 %140, %134
  br i1 %polly.loop_guard403.not, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header393
  %smax848 = call i64 @llvm.smax.i64(i64 %indvars.iv846, i64 0)
  %141 = add i64 %smax848, %indvars.iv851
  %142 = sub nsw i64 %135, %137
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit409, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 20
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -20
  %exitcond863.not = icmp eq i64 %polly.indvar396, %136
  br i1 %exitcond863.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv853 = phi i64 [ %141, %polly.loop_header400.preheader ], [ %indvars.iv.next854, %polly.loop_exit409 ]
  %polly.indvar404 = phi i64 [ %140, %polly.loop_header400.preheader ], [ %polly.indvar_next405, %polly.loop_exit409 ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 19)
  %143 = add nsw i64 %polly.indvar404, %142
  %polly.loop_guard417926 = icmp sgt i64 %143, -1
  %144 = add nuw nsw i64 %polly.indvar404, %135
  %145 = mul i64 %144, 8000
  %146 = mul i64 %144, 9600
  br i1 %polly.loop_guard417926, label %polly.loop_header407.us, label %polly.loop_exit409

polly.loop_header407.us:                          ; preds = %polly.loop_header400, %polly.loop_exit416.loopexit.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.loopexit.us ], [ 0, %polly.loop_header400 ]
  %147 = shl nuw nsw i64 %polly.indvar410.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %147
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar410.us, 1200
  %polly.access.add.Packed_MemRef_call2271426.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %144
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %145
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header407.us
  %polly.indvar418.us = phi i64 [ 0, %polly.loop_header407.us ], [ %polly.indvar_next419.us, %polly.loop_header414.us ]
  %148 = add nuw nsw i64 %polly.indvar418.us, %137
  %149 = mul nuw nsw i64 %148, 8000
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %149
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %148, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %150 = shl i64 %148, 3
  %151 = add i64 %150, %146
  %scevgep437.us = getelementptr i8, i8* %call, i64 %151
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_439.us
  store double %p_add42.i79.us, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond856.not = icmp eq i64 %polly.indvar418.us, %smin855
  br i1 %exitcond856.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next411.us, 1000
  br i1 %exitcond857.not, label %polly.loop_exit409, label %polly.loop_header407.us

polly.loop_exit409:                               ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header400
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %polly.loop_cond406.not.not = icmp ult i64 %polly.indvar404, %134
  %indvars.iv.next854 = add i64 %indvars.iv853, 1
  br i1 %polly.loop_cond406.not.not, label %polly.loop_header400, label %polly.loop_exit402

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar531, 9600
  %scevgep540 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1011 = icmp ult i64 %152, 4
  br i1 %min.iters.check1011, label %polly.loop_header534.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %polly.loop_header528
  %n.vec1014 = and i64 %152, -4
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1010 ]
  %154 = shl nuw nsw i64 %index1015, 3
  %155 = getelementptr i8, i8* %scevgep540, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1019 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !84, !noalias !86
  %157 = fmul fast <4 x double> %wide.load1019, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %index.next1016 = add i64 %index1015, 4
  %159 = icmp eq i64 %index.next1016, %n.vec1014
  br i1 %159, label %middle.block1008, label %vector.body1010, !llvm.loop !90

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1018 = icmp eq i64 %152, %n.vec1014
  br i1 %cmp.n1018, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1008
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1014, %middle.block1008 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1008
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next532, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond893.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %160
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond892.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !91

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit552
  %polly.indvar547 = phi i64 [ %polly.indvar_next548, %polly.loop_exit552 ], [ 0, %polly.loop_header544.preheader ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar547, 1200
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_header550
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next548, 1000
  br i1 %exitcond891.not, label %polly.loop_header560, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_header550, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_header550 ]
  %polly.access.mul.call2557 = mul nuw nsw i64 %polly.indvar553, 1000
  %polly.access.add.call2558 = add nuw nsw i64 %polly.access.mul.call2557, %polly.indvar547
  %polly.access.call2559 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2558
  %polly.access.call2559.load = load double, double* %polly.access.call2559, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar553, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2559.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next554, 1200
  br i1 %exitcond890.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header560:                             ; preds = %polly.loop_exit552, %polly.loop_exit569
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit569 ], [ 1, %polly.loop_exit552 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit569 ], [ 0, %polly.loop_exit552 ]
  %161 = udiv i64 %indvars.iv885, 5
  %162 = add nuw i64 %indvars.iv883, %161
  %umin887 = call i64 @llvm.umin.i64(i64 %162, i64 53)
  %163 = mul nsw i64 %polly.indvar563, -128
  %164 = icmp slt i64 %163, -1072
  %165 = select i1 %164, i64 %163, i64 -1072
  %166 = add nsw i64 %165, 1199
  %167 = shl nsw i64 %polly.indvar563, 7
  %168 = add nuw nsw i64 %umin887, 6
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit576
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -128
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 128
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 6
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 2
  %exitcond889.not = icmp eq i64 %polly.indvar_next564, 10
  br i1 %exitcond889.not, label %polly.exiting443, label %polly.loop_header560

polly.loop_header567:                             ; preds = %polly.loop_exit576, %polly.loop_header560
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit576 ], [ %indvars.iv874, %polly.loop_header560 ]
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit576 ], [ %indvars.iv869, %polly.loop_header560 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit576 ], [ 0, %polly.loop_header560 ]
  %169 = mul nuw nsw i64 %polly.indvar570, 20
  %170 = add nsw i64 %169, %163
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard577.not = icmp sgt i64 %172, %166
  br i1 %polly.loop_guard577.not, label %polly.loop_exit576, label %polly.loop_header574.preheader

polly.loop_header574.preheader:                   ; preds = %polly.loop_header567
  %smax873 = call i64 @llvm.smax.i64(i64 %indvars.iv871, i64 0)
  %173 = add i64 %smax873, %indvars.iv876
  %174 = sub nsw i64 %167, %169
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, 20
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -20
  %exitcond888.not = icmp eq i64 %polly.indvar570, %168
  br i1 %exitcond888.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit583
  %indvars.iv878 = phi i64 [ %173, %polly.loop_header574.preheader ], [ %indvars.iv.next879, %polly.loop_exit583 ]
  %polly.indvar578 = phi i64 [ %172, %polly.loop_header574.preheader ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 19)
  %175 = add nsw i64 %polly.indvar578, %174
  %polly.loop_guard591927 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar578, %167
  %177 = mul i64 %176, 8000
  %178 = mul i64 %176, 9600
  br i1 %polly.loop_guard591927, label %polly.loop_header581.us, label %polly.loop_exit583

polly.loop_header581.us:                          ; preds = %polly.loop_header574, %polly.loop_exit590.loopexit.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.loopexit.us ], [ 0, %polly.loop_header574 ]
  %179 = shl nuw nsw i64 %polly.indvar584.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %179
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  %polly.access.add.Packed_MemRef_call2445600.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %176
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %177
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.us, %polly.loop_header581.us
  %polly.indvar592.us = phi i64 [ 0, %polly.loop_header581.us ], [ %polly.indvar_next593.us, %polly.loop_header588.us ]
  %180 = add nuw nsw i64 %polly.indvar592.us, %169
  %181 = mul nuw nsw i64 %180, 8000
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %181
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %182 = shl i64 %180, 3
  %183 = add i64 %182, %178
  %scevgep611.us = getelementptr i8, i8* %call, i64 %183
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond881.not = icmp eq i64 %polly.indvar592.us, %smin880
  br i1 %exitcond881.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_header588.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next585.us, 1000
  br i1 %exitcond882.not, label %polly.loop_exit583, label %polly.loop_header581.us

polly.loop_exit583:                               ; preds = %polly.loop_exit590.loopexit.us, %polly.loop_header574
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %polly.loop_cond580.not.not = icmp ult i64 %polly.indvar578, %166
  %indvars.iv.next879 = add i64 %indvars.iv878, 1
  br i1 %polly.loop_cond580.not.not, label %polly.loop_header574, label %polly.loop_exit576

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv918, i64 -1168)
  %184 = shl nsw i64 %polly.indvar743, 5
  %185 = add nsw i64 %smin920, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -32
  %exitcond923.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond923.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %186 = mul nsw i64 %polly.indvar749, -32
  %smin949 = call i64 @llvm.smin.i64(i64 %186, i64 -1168)
  %187 = add nsw i64 %smin949, 1200
  %smin916 = call i64 @llvm.smin.i64(i64 %indvars.iv914, i64 -1168)
  %188 = shl nsw i64 %polly.indvar749, 5
  %189 = add nsw i64 %smin916, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -32
  %exitcond922.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond922.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %190 = add nuw nsw i64 %polly.indvar755, %184
  %191 = trunc i64 %190 to i32
  %192 = mul nuw nsw i64 %190, 9600
  %min.iters.check = icmp eq i64 %187, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph950

vector.ph950:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %188, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph950
  %index951 = phi i64 [ 0, %vector.ph950 ], [ %index.next952, %vector.body948 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next956, %vector.body948 ]
  %193 = add nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %194 = trunc <4 x i64> %193 to <4 x i32>
  %195 = mul <4 x i32> %broadcast.splat960, %194
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 1200, i32 1200, i32 1200, i32 1200>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %200 = extractelement <4 x i64> %193, i32 0
  %201 = shl i64 %200, 3
  %202 = add nuw nsw i64 %201, %192
  %203 = getelementptr i8, i8* %call, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %199, <4 x double>* %204, align 8, !alias.scope !94, !noalias !96
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %205 = icmp eq i64 %index.next952, %187
  br i1 %205, label %polly.loop_exit760, label %vector.body948, !llvm.loop !99

polly.loop_exit760:                               ; preds = %vector.body948, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond921.not = icmp eq i64 %polly.indvar755, %185
  br i1 %exitcond921.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %206 = add nuw nsw i64 %polly.indvar761, %188
  %207 = trunc i64 %206 to i32
  %208 = mul i32 %207, %191
  %209 = add i32 %208, 3
  %210 = urem i32 %209, 1200
  %p_conv31.i = sitofp i32 %210 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %211 = shl i64 %206, 3
  %212 = add nuw nsw i64 %211, %192
  %scevgep764 = getelementptr i8, i8* %call, i64 %212
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond917.not = icmp eq i64 %polly.indvar761, %189
  br i1 %exitcond917.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !100

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -1168)
  %213 = shl nsw i64 %polly.indvar770, 5
  %214 = add nsw i64 %smin910, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond913.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %215 = mul nsw i64 %polly.indvar776, -32
  %smin964 = call i64 @llvm.smin.i64(i64 %215, i64 -968)
  %216 = add nsw i64 %smin964, 1000
  %smin906 = call i64 @llvm.smin.i64(i64 %indvars.iv904, i64 -968)
  %217 = shl nsw i64 %polly.indvar776, 5
  %218 = add nsw i64 %smin906, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next905 = add nsw i64 %indvars.iv904, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond912.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %219 = add nuw nsw i64 %polly.indvar782, %213
  %220 = trunc i64 %219 to i32
  %221 = mul nuw nsw i64 %219, 8000
  %min.iters.check965 = icmp eq i64 %216, 0
  br i1 %min.iters.check965, label %polly.loop_header785, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert975 = insertelement <4 x i64> poison, i64 %217, i32 0
  %broadcast.splat976 = shufflevector <4 x i64> %broadcast.splatinsert975, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %220, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph966
  %index969 = phi i64 [ 0, %vector.ph966 ], [ %index.next970, %vector.body963 ]
  %vec.ind973 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next974, %vector.body963 ]
  %222 = add nuw nsw <4 x i64> %vec.ind973, %broadcast.splat976
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat978, %223
  %225 = add <4 x i32> %224, <i32 2, i32 2, i32 2, i32 2>
  %226 = urem <4 x i32> %225, <i32 1000, i32 1000, i32 1000, i32 1000>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add nuw nsw i64 %230, %221
  %232 = getelementptr i8, i8* %call2, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !98, !noalias !101
  %index.next970 = add i64 %index969, 4
  %vec.ind.next974 = add <4 x i64> %vec.ind973, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next970, %216
  br i1 %234, label %polly.loop_exit787, label %vector.body963, !llvm.loop !102

polly.loop_exit787:                               ; preds = %vector.body963, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond911.not = icmp eq i64 %polly.indvar782, %214
  br i1 %exitcond911.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %235 = add nuw nsw i64 %polly.indvar788, %217
  %236 = trunc i64 %235 to i32
  %237 = mul i32 %236, %220
  %238 = add i32 %237, 2
  %239 = urem i32 %238, 1000
  %p_conv10.i = sitofp i32 %239 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %240 = shl i64 %235, 3
  %241 = add nuw nsw i64 %240, %221
  %scevgep791 = getelementptr i8, i8* %call2, i64 %241
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond907.not = icmp eq i64 %polly.indvar788, %218
  br i1 %exitcond907.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !103

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %242 = shl nsw i64 %polly.indvar796, 5
  %243 = add nsw i64 %smin900, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond903.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond903.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %244 = mul nsw i64 %polly.indvar802, -32
  %smin982 = call i64 @llvm.smin.i64(i64 %244, i64 -968)
  %245 = add nsw i64 %smin982, 1000
  %smin896 = call i64 @llvm.smin.i64(i64 %indvars.iv894, i64 -968)
  %246 = shl nsw i64 %polly.indvar802, 5
  %247 = add nsw i64 %smin896, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -32
  %exitcond902.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond902.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %248 = add nuw nsw i64 %polly.indvar808, %242
  %249 = trunc i64 %248 to i32
  %250 = mul nuw nsw i64 %248, 8000
  %min.iters.check983 = icmp eq i64 %245, 0
  br i1 %min.iters.check983, label %polly.loop_header811, label %vector.ph984

vector.ph984:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert993 = insertelement <4 x i64> poison, i64 %246, i32 0
  %broadcast.splat994 = shufflevector <4 x i64> %broadcast.splatinsert993, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next988, %vector.body981 ]
  %vec.ind991 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph984 ], [ %vec.ind.next992, %vector.body981 ]
  %251 = add nuw nsw <4 x i64> %vec.ind991, %broadcast.splat994
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat996, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 1200, i32 1200, i32 1200, i32 1200>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add nuw nsw i64 %259, %250
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !97, !noalias !104
  %index.next988 = add i64 %index987, 4
  %vec.ind.next992 = add <4 x i64> %vec.ind991, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next988, %245
  br i1 %263, label %polly.loop_exit813, label %vector.body981, !llvm.loop !105

polly.loop_exit813:                               ; preds = %vector.body981, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond901.not = icmp eq i64 %polly.indvar808, %243
  br i1 %exitcond901.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %264 = add nuw nsw i64 %polly.indvar814, %246
  %265 = trunc i64 %264 to i32
  %266 = mul i32 %265, %249
  %267 = add i32 %266, 1
  %268 = urem i32 %267, 1200
  %p_conv.i = sitofp i32 %268 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %269 = shl i64 %264, 3
  %270 = add nuw nsw i64 %269, %250
  %scevgep818 = getelementptr i8, i8* %call1, i64 %270
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond897.not = icmp eq i64 %polly.indvar814, %247
  br i1 %exitcond897.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !106
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!45 = !{!"llvm.loop.tile.size", i32 128}
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
