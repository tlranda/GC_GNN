; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6410.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6410.c"
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
  %call764 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1625 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2626 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1625, %call2
  %polly.access.call2645 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2645, %call1
  %2 = or i1 %0, %1
  %polly.access.call665 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call665, %call2
  %4 = icmp ule i8* %polly.access.call2645, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call665, %call1
  %8 = icmp ule i8* %polly.access.call1625, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header738, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv7.i, i64 %index938
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit799
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start441, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %index1004
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting442
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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1027
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1031 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1031, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1028 = add i64 %index1027, 4
  %57 = icmp eq i64 %index.next1028, %n.vec1026
  br i1 %57, label %middle.block1020, label %vector.body1022, !llvm.loop !60

middle.block1020:                                 ; preds = %vector.body1022
  %cmp.n1030 = icmp eq i64 %indvars.iv21.i52, %n.vec1026
  br i1 %cmp.n1030, label %for.inc6.i63, label %for.body3.i60.preheader1073

for.body3.i60.preheader1073:                      ; preds = %for.body3.i60.preheader, %middle.block1020
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1026, %middle.block1020 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1073, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1073 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1053
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1057 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1057, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1054 = add i64 %index1053, 4
  %68 = icmp eq i64 %index.next1054, %n.vec1052
  br i1 %68, label %middle.block1046, label %vector.body1048, !llvm.loop !62

middle.block1046:                                 ; preds = %vector.body1048
  %cmp.n1056 = icmp eq i64 %indvars.iv21.i91, %n.vec1052
  br i1 %cmp.n1056, label %for.inc6.i102, label %for.body3.i99.preheader1072

for.body3.i99.preheader1072:                      ; preds = %for.body3.i99.preheader, %middle.block1046
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1052, %middle.block1046 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1072, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1072 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1071 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1071, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1068 = add i64 %index1067, 4
  %95 = icmp eq i64 %index.next1068, %n.vec1066
  br i1 %95, label %middle.block1058, label %vector.body1060, !llvm.loop !74

middle.block1058:                                 ; preds = %vector.body1060
  %cmp.n1070 = icmp eq i64 %88, %n.vec1066
  br i1 %cmp.n1070, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1058
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1066, %middle.block1058 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1058
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1062 = add i64 %indvar1061, 1
  br i1 %exitcond849.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond848.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond848.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit223 ]
  %indvars.iv834 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next835, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 1200, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 4
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -4
  %exitcond847.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond847.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 1200
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next209, 1000
  br i1 %exitcond833.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -100
  br label %polly.loop_header221

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %99 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %99, 1000
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_header221.preheader, %polly.loop_exit229
  %indvars.iv840 = phi i64 [ %indvars.iv838, %polly.loop_header221.preheader ], [ %indvars.iv.next841, %polly.loop_exit229 ]
  %indvars.iv836 = phi i64 [ %indvars.iv834, %polly.loop_header221.preheader ], [ %indvars.iv.next837, %polly.loop_exit229 ]
  %polly.indvar224 = phi i64 [ %polly.indvar202, %polly.loop_header221.preheader ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv836, i64 0)
  %100 = add i64 %smax, %indvars.iv840
  %101 = mul nuw nsw i64 %polly.indvar224, 96
  %102 = sub nsw i64 %97, %101
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %105 = mul nsw i64 %polly.indvar224, -96
  %106 = icmp slt i64 %105, -1104
  %107 = select i1 %106, i64 %105, i64 -1104
  %108 = add nsw i64 %107, 1199
  %polly.loop_guard.not = icmp sgt i64 %104, %108
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -96
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, 96
  %exitcond846.not = icmp eq i64 %polly.indvar_next225, 13
  br i1 %exitcond846.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header221, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %109 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %109
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 1200
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next231, 1000
  br i1 %exitcond845.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit242 ], [ %100, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ %104, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv842, i64 99)
  %110 = add nuw i64 %polly.indvar236, %101
  %111 = add i64 %110, %98
  %polly.loop_guard243925 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard243925, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %111
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %112 = mul i64 %110, 8000
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %112
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !71, !noalias !78
  %113 = mul i64 %110, 9600
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %108
  %indvars.iv.next843 = add i64 %indvars.iv842, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %114 = add nuw nsw i64 %polly.indvar244, %97
  %115 = mul nuw nsw i64 %114, 8000
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %115
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %116 = shl i64 %114, 3
  %117 = add i64 %116, %113
  %scevgep263 = getelementptr i8, i8* %call, i64 %117
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond844.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond844.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit394
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1035 = phi i64 [ %indvar.next1036, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %118 = add i64 %indvar1035, 1
  %119 = mul nuw nsw i64 %polly.indvar357, 9600
  %scevgep366 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1037 = icmp ult i64 %118, 4
  br i1 %min.iters.check1037, label %polly.loop_header360.preheader, label %vector.ph1038

vector.ph1038:                                    ; preds = %polly.loop_header354
  %n.vec1040 = and i64 %118, -4
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1034 ]
  %120 = shl nuw nsw i64 %index1041, 3
  %121 = getelementptr i8, i8* %scevgep366, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1045 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !79, !noalias !81
  %123 = fmul fast <4 x double> %wide.load1045, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !79, !noalias !81
  %index.next1042 = add i64 %index1041, 4
  %125 = icmp eq i64 %index.next1042, %n.vec1040
  br i1 %125, label %middle.block1032, label %vector.body1034, !llvm.loop !85

middle.block1032:                                 ; preds = %vector.body1034
  %cmp.n1044 = icmp eq i64 %118, %n.vec1040
  br i1 %cmp.n1044, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1032
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1040, %middle.block1032 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1032
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next358, 1200
  %indvar.next1036 = add i64 %indvar1035, 1
  br i1 %exitcond871.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %126
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond870.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit394
  %indvars.iv859 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next860, %polly.loop_exit394 ]
  %indvars.iv854 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next855, %polly.loop_exit394 ]
  %indvars.iv850 = phi i64 [ 1200, %polly.loop_header370.preheader ], [ %indvars.iv.next851, %polly.loop_exit394 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit394 ]
  %127 = mul nuw nsw i64 %polly.indvar373, 100
  br label %polly.loop_header376

polly.loop_exit394:                               ; preds = %polly.loop_exit400
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -100
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 4
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -4
  %exitcond869.not = icmp eq i64 %polly.indvar_next374, 12
  br i1 %exitcond869.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond853.not, label %polly.loop_header392.preheader, label %polly.loop_header376

polly.loop_header392.preheader:                   ; preds = %polly.loop_exit384
  %128 = mul nsw i64 %polly.indvar373, -100
  br label %polly.loop_header392

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %129 = add nuw nsw i64 %polly.indvar385, %127
  %polly.access.mul.call2389 = mul nuw nsw i64 %129, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next386, %indvars.iv850
  br i1 %exitcond852.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header392:                             ; preds = %polly.loop_header392.preheader, %polly.loop_exit400
  %indvars.iv861 = phi i64 [ %indvars.iv859, %polly.loop_header392.preheader ], [ %indvars.iv.next862, %polly.loop_exit400 ]
  %indvars.iv856 = phi i64 [ %indvars.iv854, %polly.loop_header392.preheader ], [ %indvars.iv.next857, %polly.loop_exit400 ]
  %polly.indvar395 = phi i64 [ %polly.indvar373, %polly.loop_header392.preheader ], [ %polly.indvar_next396, %polly.loop_exit400 ]
  %smax858 = call i64 @llvm.smax.i64(i64 %indvars.iv856, i64 0)
  %130 = add i64 %smax858, %indvars.iv861
  %131 = mul nuw nsw i64 %polly.indvar395, 96
  %132 = sub nsw i64 %127, %131
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %135 = mul nsw i64 %polly.indvar395, -96
  %136 = icmp slt i64 %135, -1104
  %137 = select i1 %136, i64 %135, i64 -1104
  %138 = add nsw i64 %137, 1199
  %polly.loop_guard408.not = icmp sgt i64 %134, %138
  br i1 %polly.loop_guard408.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_exit407, %polly.loop_header392
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -96
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, 96
  %exitcond868.not = icmp eq i64 %polly.indvar_next396, 13
  br i1 %exitcond868.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header398:                             ; preds = %polly.loop_header392, %polly.loop_exit407
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit407 ], [ 0, %polly.loop_header392 ]
  %139 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep420 = getelementptr i8, i8* %call1, i64 %139
  %polly.access.mul.Packed_MemRef_call2271424 = mul nuw nsw i64 %polly.indvar401, 1200
  br label %polly.loop_header405

polly.loop_exit407:                               ; preds = %polly.loop_exit415
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next402, 1000
  br i1 %exitcond867.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_header405:                             ; preds = %polly.loop_exit415, %polly.loop_header398
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit415 ], [ %130, %polly.loop_header398 ]
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit415 ], [ %134, %polly.loop_header398 ]
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 99)
  %140 = add nuw i64 %polly.indvar409, %131
  %141 = add i64 %140, %128
  %polly.loop_guard416926 = icmp sgt i64 %141, -1
  br i1 %polly.loop_guard416926, label %polly.loop_header413.preheader, label %polly.loop_exit415

polly.loop_header413.preheader:                   ; preds = %polly.loop_header405
  %polly.access.add.Packed_MemRef_call2271425 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271424, %141
  %polly.access.Packed_MemRef_call2271426 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425
  %_p_scalar_427 = load double, double* %polly.access.Packed_MemRef_call2271426, align 8
  %142 = mul i64 %140, 8000
  %scevgep433 = getelementptr i8, i8* %scevgep420, i64 %142
  %scevgep433434 = bitcast i8* %scevgep433 to double*
  %_p_scalar_435 = load double, double* %scevgep433434, align 8, !alias.scope !82, !noalias !88
  %143 = mul i64 %140, 9600
  br label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_header413, %polly.loop_header405
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %polly.loop_cond411.not.not = icmp slt i64 %polly.indvar409, %138
  %indvars.iv.next864 = add i64 %indvars.iv863, 1
  br i1 %polly.loop_cond411.not.not, label %polly.loop_header405, label %polly.loop_exit407

polly.loop_header413:                             ; preds = %polly.loop_header413.preheader, %polly.loop_header413
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header413 ], [ 0, %polly.loop_header413.preheader ]
  %144 = add nuw nsw i64 %polly.indvar417, %127
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep421 = getelementptr i8, i8* %scevgep420, i64 %145
  %scevgep421422 = bitcast i8* %scevgep421 to double*
  %_p_scalar_423 = load double, double* %scevgep421422, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_427, %_p_scalar_423
  %polly.access.add.Packed_MemRef_call2271429 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2271424
  %polly.access.Packed_MemRef_call2271430 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429
  %_p_scalar_431 = load double, double* %polly.access.Packed_MemRef_call2271430, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_435, %_p_scalar_431
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %143
  %scevgep436 = getelementptr i8, i8* %call, i64 %147
  %scevgep436437 = bitcast i8* %scevgep436 to double*
  %_p_scalar_438 = load double, double* %scevgep436437, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_438
  store double %p_add42.i79, double* %scevgep436437, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond866.not = icmp eq i64 %polly.indvar417, %smin865
  br i1 %exitcond866.not, label %polly.loop_exit415, label %polly.loop_header413

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header527

polly.exiting442:                                 ; preds = %polly.loop_exit567
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar530, 9600
  %scevgep539 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1011 = icmp ult i64 %148, 4
  br i1 %min.iters.check1011, label %polly.loop_header533.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %polly.loop_header527
  %n.vec1014 = and i64 %148, -4
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1010 ]
  %150 = shl nuw nsw i64 %index1015, 3
  %151 = getelementptr i8, i8* %scevgep539, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1019 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !89, !noalias !91
  %153 = fmul fast <4 x double> %wide.load1019, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !89, !noalias !91
  %index.next1016 = add i64 %index1015, 4
  %155 = icmp eq i64 %index.next1016, %n.vec1014
  br i1 %155, label %middle.block1008, label %vector.body1010, !llvm.loop !95

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1018 = icmp eq i64 %148, %n.vec1014
  br i1 %cmp.n1018, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block1008
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1014, %middle.block1008 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block1008
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next531, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond893.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header543

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %156
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond892.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !96

polly.loop_header543:                             ; preds = %polly.loop_header543.preheader, %polly.loop_exit567
  %indvars.iv881 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %indvars.iv.next882, %polly.loop_exit567 ]
  %indvars.iv876 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %indvars.iv.next877, %polly.loop_exit567 ]
  %indvars.iv872 = phi i64 [ 1200, %polly.loop_header543.preheader ], [ %indvars.iv.next873, %polly.loop_exit567 ]
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %polly.indvar_next547, %polly.loop_exit567 ]
  %157 = mul nuw nsw i64 %polly.indvar546, 100
  br label %polly.loop_header549

polly.loop_exit567:                               ; preds = %polly.loop_exit573
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, -100
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 4
  %indvars.iv.next882 = add nsw i64 %indvars.iv881, -4
  %exitcond891.not = icmp eq i64 %polly.indvar_next547, 12
  br i1 %exitcond891.not, label %polly.exiting442, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar552, 1200
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next553, 1000
  br i1 %exitcond875.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %158 = mul nsw i64 %polly.indvar546, -100
  br label %polly.loop_header565

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %159 = add nuw nsw i64 %polly.indvar558, %157
  %polly.access.mul.call2562 = mul nuw nsw i64 %159, 1000
  %polly.access.add.call2563 = add nuw nsw i64 %polly.access.mul.call2562, %polly.indvar552
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next559, %indvars.iv872
  br i1 %exitcond874.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header565:                             ; preds = %polly.loop_header565.preheader, %polly.loop_exit573
  %indvars.iv883 = phi i64 [ %indvars.iv881, %polly.loop_header565.preheader ], [ %indvars.iv.next884, %polly.loop_exit573 ]
  %indvars.iv878 = phi i64 [ %indvars.iv876, %polly.loop_header565.preheader ], [ %indvars.iv.next879, %polly.loop_exit573 ]
  %polly.indvar568 = phi i64 [ %polly.indvar546, %polly.loop_header565.preheader ], [ %polly.indvar_next569, %polly.loop_exit573 ]
  %smax880 = call i64 @llvm.smax.i64(i64 %indvars.iv878, i64 0)
  %160 = add i64 %smax880, %indvars.iv883
  %161 = mul nuw nsw i64 %polly.indvar568, 96
  %162 = sub nsw i64 %157, %161
  %163 = icmp sgt i64 %162, 0
  %164 = select i1 %163, i64 %162, i64 0
  %165 = mul nsw i64 %polly.indvar568, -96
  %166 = icmp slt i64 %165, -1104
  %167 = select i1 %166, i64 %165, i64 -1104
  %168 = add nsw i64 %167, 1199
  %polly.loop_guard581.not = icmp sgt i64 %164, %168
  br i1 %polly.loop_guard581.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit580, %polly.loop_header565
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -96
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, 96
  %exitcond890.not = icmp eq i64 %polly.indvar_next569, 13
  br i1 %exitcond890.not, label %polly.loop_exit567, label %polly.loop_header565

polly.loop_header571:                             ; preds = %polly.loop_header565, %polly.loop_exit580
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit580 ], [ 0, %polly.loop_header565 ]
  %169 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep593 = getelementptr i8, i8* %call1, i64 %169
  %polly.access.mul.Packed_MemRef_call2444597 = mul nuw nsw i64 %polly.indvar574, 1200
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next575, 1000
  br i1 %exitcond889.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header578:                             ; preds = %polly.loop_exit588, %polly.loop_header571
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit588 ], [ %160, %polly.loop_header571 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ %164, %polly.loop_header571 ]
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 99)
  %170 = add nuw i64 %polly.indvar582, %161
  %171 = add i64 %170, %158
  %polly.loop_guard589927 = icmp sgt i64 %171, -1
  br i1 %polly.loop_guard589927, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %polly.access.add.Packed_MemRef_call2444598 = add nsw i64 %polly.access.mul.Packed_MemRef_call2444597, %171
  %polly.access.Packed_MemRef_call2444599 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598
  %_p_scalar_600 = load double, double* %polly.access.Packed_MemRef_call2444599, align 8
  %172 = mul i64 %170, 8000
  %scevgep606 = getelementptr i8, i8* %scevgep593, i64 %172
  %scevgep606607 = bitcast i8* %scevgep606 to double*
  %_p_scalar_608 = load double, double* %scevgep606607, align 8, !alias.scope !92, !noalias !98
  %173 = mul i64 %170, 9600
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_header586, %polly.loop_header578
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584.not.not = icmp slt i64 %polly.indvar582, %168
  %indvars.iv.next886 = add i64 %indvars.iv885, 1
  br i1 %polly.loop_cond584.not.not, label %polly.loop_header578, label %polly.loop_exit580

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_header586
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_header586 ], [ 0, %polly.loop_header586.preheader ]
  %174 = add nuw nsw i64 %polly.indvar590, %157
  %175 = mul nuw nsw i64 %174, 8000
  %scevgep594 = getelementptr i8, i8* %scevgep593, i64 %175
  %scevgep594595 = bitcast i8* %scevgep594 to double*
  %_p_scalar_596 = load double, double* %scevgep594595, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_600, %_p_scalar_596
  %polly.access.add.Packed_MemRef_call2444602 = add nuw nsw i64 %polly.indvar590, %polly.access.mul.Packed_MemRef_call2444597
  %polly.access.Packed_MemRef_call2444603 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602
  %_p_scalar_604 = load double, double* %polly.access.Packed_MemRef_call2444603, align 8
  %p_mul37.i = fmul fast double %_p_scalar_608, %_p_scalar_604
  %176 = shl i64 %174, 3
  %177 = add i64 %176, %173
  %scevgep609 = getelementptr i8, i8* %call, i64 %177
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_611
  store double %p_add42.i, double* %scevgep609610, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond888.not = icmp eq i64 %polly.indvar590, %smin887
  br i1 %exitcond888.not, label %polly.loop_exit588, label %polly.loop_header586

polly.loop_header738:                             ; preds = %entry, %polly.loop_exit746
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit746 ], [ 0, %entry ]
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %entry ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv918, i64 -1168)
  %178 = shl nsw i64 %polly.indvar741, 5
  %179 = add nsw i64 %smin920, 1199
  br label %polly.loop_header744

polly.loop_exit746:                               ; preds = %polly.loop_exit752
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -32
  %exitcond923.not = icmp eq i64 %polly.indvar_next742, 38
  br i1 %exitcond923.not, label %polly.loop_header765, label %polly.loop_header738

polly.loop_header744:                             ; preds = %polly.loop_exit752, %polly.loop_header738
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %polly.loop_header738 ]
  %180 = mul nsw i64 %polly.indvar747, -32
  %smin949 = call i64 @llvm.smin.i64(i64 %180, i64 -1168)
  %181 = add nsw i64 %smin949, 1200
  %smin916 = call i64 @llvm.smin.i64(i64 %indvars.iv914, i64 -1168)
  %182 = shl nsw i64 %polly.indvar747, 5
  %183 = add nsw i64 %smin916, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -32
  %exitcond922.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond922.not, label %polly.loop_exit746, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %polly.indvar753 = phi i64 [ 0, %polly.loop_header744 ], [ %polly.indvar_next754, %polly.loop_exit758 ]
  %184 = add nuw nsw i64 %polly.indvar753, %178
  %185 = trunc i64 %184 to i32
  %186 = mul nuw nsw i64 %184, 9600
  %min.iters.check = icmp eq i64 %181, 0
  br i1 %min.iters.check, label %polly.loop_header756, label %vector.ph950

vector.ph950:                                     ; preds = %polly.loop_header750
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %182, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body948

vector.body948:                                   ; preds = %vector.body948, %vector.ph950
  %index951 = phi i64 [ 0, %vector.ph950 ], [ %index.next952, %vector.body948 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next956, %vector.body948 ]
  %187 = add nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %188 = trunc <4 x i64> %187 to <4 x i32>
  %189 = mul <4 x i32> %broadcast.splat960, %188
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 1200, i32 1200, i32 1200, i32 1200>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %194 = extractelement <4 x i64> %187, i32 0
  %195 = shl i64 %194, 3
  %196 = add nuw nsw i64 %195, %186
  %197 = getelementptr i8, i8* %call, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %193, <4 x double>* %198, align 8, !alias.scope !99, !noalias !101
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %199 = icmp eq i64 %index.next952, %181
  br i1 %199, label %polly.loop_exit758, label %vector.body948, !llvm.loop !104

polly.loop_exit758:                               ; preds = %vector.body948, %polly.loop_header756
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond921.not = icmp eq i64 %polly.indvar753, %179
  br i1 %exitcond921.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_header750, %polly.loop_header756
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_header756 ], [ 0, %polly.loop_header750 ]
  %200 = add nuw nsw i64 %polly.indvar759, %182
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %201, %185
  %203 = add i32 %202, 3
  %204 = urem i32 %203, 1200
  %p_conv31.i = sitofp i32 %204 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %205 = shl i64 %200, 3
  %206 = add nuw nsw i64 %205, %186
  %scevgep762 = getelementptr i8, i8* %call, i64 %206
  %scevgep762763 = bitcast i8* %scevgep762 to double*
  store double %p_div33.i, double* %scevgep762763, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond917.not = icmp eq i64 %polly.indvar759, %183
  br i1 %exitcond917.not, label %polly.loop_exit758, label %polly.loop_header756, !llvm.loop !105

polly.loop_header765:                             ; preds = %polly.loop_exit746, %polly.loop_exit773
  %indvars.iv908 = phi i64 [ %indvars.iv.next909, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_exit773 ], [ 0, %polly.loop_exit746 ]
  %smin910 = call i64 @llvm.smin.i64(i64 %indvars.iv908, i64 -1168)
  %207 = shl nsw i64 %polly.indvar768, 5
  %208 = add nsw i64 %smin910, 1199
  br label %polly.loop_header771

polly.loop_exit773:                               ; preds = %polly.loop_exit779
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %indvars.iv.next909 = add nsw i64 %indvars.iv908, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next769, 38
  br i1 %exitcond913.not, label %polly.loop_header791, label %polly.loop_header765

polly.loop_header771:                             ; preds = %polly.loop_exit779, %polly.loop_header765
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_header765 ]
  %209 = mul nsw i64 %polly.indvar774, -32
  %smin964 = call i64 @llvm.smin.i64(i64 %209, i64 -968)
  %210 = add nsw i64 %smin964, 1000
  %smin906 = call i64 @llvm.smin.i64(i64 %indvars.iv904, i64 -968)
  %211 = shl nsw i64 %polly.indvar774, 5
  %212 = add nsw i64 %smin906, 999
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next905 = add nsw i64 %indvars.iv904, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next775, 32
  br i1 %exitcond912.not, label %polly.loop_exit773, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %polly.indvar780 = phi i64 [ 0, %polly.loop_header771 ], [ %polly.indvar_next781, %polly.loop_exit785 ]
  %213 = add nuw nsw i64 %polly.indvar780, %207
  %214 = trunc i64 %213 to i32
  %215 = mul nuw nsw i64 %213, 8000
  %min.iters.check965 = icmp eq i64 %210, 0
  br i1 %min.iters.check965, label %polly.loop_header783, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header777
  %broadcast.splatinsert975 = insertelement <4 x i64> poison, i64 %211, i32 0
  %broadcast.splat976 = shufflevector <4 x i64> %broadcast.splatinsert975, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %214, i32 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph966
  %index969 = phi i64 [ 0, %vector.ph966 ], [ %index.next970, %vector.body963 ]
  %vec.ind973 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next974, %vector.body963 ]
  %216 = add nuw nsw <4 x i64> %vec.ind973, %broadcast.splat976
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat978, %217
  %219 = add <4 x i32> %218, <i32 2, i32 2, i32 2, i32 2>
  %220 = urem <4 x i32> %219, <i32 1000, i32 1000, i32 1000, i32 1000>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add nuw nsw i64 %224, %215
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !103, !noalias !106
  %index.next970 = add i64 %index969, 4
  %vec.ind.next974 = add <4 x i64> %vec.ind973, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next970, %210
  br i1 %228, label %polly.loop_exit785, label %vector.body963, !llvm.loop !107

polly.loop_exit785:                               ; preds = %vector.body963, %polly.loop_header783
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond911.not = icmp eq i64 %polly.indvar780, %208
  br i1 %exitcond911.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_header777, %polly.loop_header783
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_header783 ], [ 0, %polly.loop_header777 ]
  %229 = add nuw nsw i64 %polly.indvar786, %211
  %230 = trunc i64 %229 to i32
  %231 = mul i32 %230, %214
  %232 = add i32 %231, 2
  %233 = urem i32 %232, 1000
  %p_conv10.i = sitofp i32 %233 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %234 = shl i64 %229, 3
  %235 = add nuw nsw i64 %234, %215
  %scevgep789 = getelementptr i8, i8* %call2, i64 %235
  %scevgep789790 = bitcast i8* %scevgep789 to double*
  store double %p_div12.i, double* %scevgep789790, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond907.not = icmp eq i64 %polly.indvar786, %212
  br i1 %exitcond907.not, label %polly.loop_exit785, label %polly.loop_header783, !llvm.loop !108

polly.loop_header791:                             ; preds = %polly.loop_exit773, %polly.loop_exit799
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit773 ]
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %236 = shl nsw i64 %polly.indvar794, 5
  %237 = add nsw i64 %smin900, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond903.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond903.not, label %init_array.exit, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_header791 ]
  %238 = mul nsw i64 %polly.indvar800, -32
  %smin982 = call i64 @llvm.smin.i64(i64 %238, i64 -968)
  %239 = add nsw i64 %smin982, 1000
  %smin896 = call i64 @llvm.smin.i64(i64 %indvars.iv894, i64 -968)
  %240 = shl nsw i64 %polly.indvar800, 5
  %241 = add nsw i64 %smin896, 999
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -32
  %exitcond902.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond902.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %polly.indvar806 = phi i64 [ 0, %polly.loop_header797 ], [ %polly.indvar_next807, %polly.loop_exit811 ]
  %242 = add nuw nsw i64 %polly.indvar806, %236
  %243 = trunc i64 %242 to i32
  %244 = mul nuw nsw i64 %242, 8000
  %min.iters.check983 = icmp eq i64 %239, 0
  br i1 %min.iters.check983, label %polly.loop_header809, label %vector.ph984

vector.ph984:                                     ; preds = %polly.loop_header803
  %broadcast.splatinsert993 = insertelement <4 x i64> poison, i64 %240, i32 0
  %broadcast.splat994 = shufflevector <4 x i64> %broadcast.splatinsert993, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next988, %vector.body981 ]
  %vec.ind991 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph984 ], [ %vec.ind.next992, %vector.body981 ]
  %245 = add nuw nsw <4 x i64> %vec.ind991, %broadcast.splat994
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat996, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 1200, i32 1200, i32 1200, i32 1200>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add nuw nsw i64 %253, %244
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !102, !noalias !109
  %index.next988 = add i64 %index987, 4
  %vec.ind.next992 = add <4 x i64> %vec.ind991, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next988, %239
  br i1 %257, label %polly.loop_exit811, label %vector.body981, !llvm.loop !110

polly.loop_exit811:                               ; preds = %vector.body981, %polly.loop_header809
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond901.not = icmp eq i64 %polly.indvar806, %237
  br i1 %exitcond901.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_header803, %polly.loop_header809
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_header809 ], [ 0, %polly.loop_header803 ]
  %258 = add nuw nsw i64 %polly.indvar812, %240
  %259 = trunc i64 %258 to i32
  %260 = mul i32 %259, %243
  %261 = add i32 %260, 1
  %262 = urem i32 %261, 1200
  %p_conv.i = sitofp i32 %262 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %263 = shl i64 %258, 3
  %264 = add nuw nsw i64 %263, %244
  %scevgep816 = getelementptr i8, i8* %call1, i64 %264
  %scevgep816817 = bitcast i8* %scevgep816 to double*
  store double %p_div.i, double* %scevgep816817, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond897.not = icmp eq i64 %polly.indvar812, %241
  br i1 %exitcond897.not, label %polly.loop_exit811, label %polly.loop_header809, !llvm.loop !111
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
!45 = !{!"llvm.loop.tile.size", i32 96}
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
