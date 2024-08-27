; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6355.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6355.c"
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
  %call776 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1637 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2638 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1637, %call2
  %polly.access.call2657 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2657, %call1
  %2 = or i1 %0, %1
  %polly.access.call677 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call677, %call2
  %4 = icmp ule i8* %polly.access.call2657, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call677, %call1
  %8 = icmp ule i8* %polly.access.call1637, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header750, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep954 = getelementptr i8, i8* %call2, i64 %12
  %scevgep953 = getelementptr i8, i8* %call2, i64 %11
  %scevgep952 = getelementptr i8, i8* %call1, i64 %12
  %scevgep951 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep951, %scevgep954
  %bound1 = icmp ult i8* %scevgep953, %scevgep952
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
  br i1 %exitcond18.not.i, label %vector.ph958, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph958:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert965 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat966 = shufflevector <4 x i64> %broadcast.splatinsert965, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph958
  %index959 = phi i64 [ 0, %vector.ph958 ], [ %index.next960, %vector.body957 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph958 ], [ %vec.ind.next964, %vector.body957 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind963, %broadcast.splat966
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv7.i, i64 %index959
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next960, 1200
  br i1 %40, label %for.inc41.i, label %vector.body957, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body957
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph958, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit811
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start449, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1021 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1021, label %for.body3.i46.preheader1095, label %vector.ph1022

vector.ph1022:                                    ; preds = %for.body3.i46.preheader
  %n.vec1024 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1022
  %index1025 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1026, %vector.body1020 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %index1025
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1026 = add i64 %index1025, 4
  %46 = icmp eq i64 %index.next1026, %n.vec1024
  br i1 %46, label %middle.block1018, label %vector.body1020, !llvm.loop !18

middle.block1018:                                 ; preds = %vector.body1020
  %cmp.n1028 = icmp eq i64 %indvars.iv21.i, %n.vec1024
  br i1 %cmp.n1028, label %for.inc6.i, label %for.body3.i46.preheader1095

for.body3.i46.preheader1095:                      ; preds = %for.body3.i46.preheader, %middle.block1018
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1024, %middle.block1018 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1095, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1095 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1018, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting450
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1044 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1044, label %for.body3.i60.preheader1094, label %vector.ph1045

vector.ph1045:                                    ; preds = %for.body3.i60.preheader
  %n.vec1047 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1045
  %index1048 = phi i64 [ 0, %vector.ph1045 ], [ %index.next1049, %vector.body1043 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1048
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1052 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1052, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1049 = add i64 %index1048, 4
  %57 = icmp eq i64 %index.next1049, %n.vec1047
  br i1 %57, label %middle.block1041, label %vector.body1043, !llvm.loop !60

middle.block1041:                                 ; preds = %vector.body1043
  %cmp.n1051 = icmp eq i64 %indvars.iv21.i52, %n.vec1047
  br i1 %cmp.n1051, label %for.inc6.i63, label %for.body3.i60.preheader1094

for.body3.i60.preheader1094:                      ; preds = %for.body3.i60.preheader, %middle.block1041
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1047, %middle.block1041 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1094, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1094 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1041, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1070 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1070, label %for.body3.i99.preheader1093, label %vector.ph1071

vector.ph1071:                                    ; preds = %for.body3.i99.preheader
  %n.vec1073 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1075, %vector.body1069 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1074
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1078 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1078, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1075 = add i64 %index1074, 4
  %68 = icmp eq i64 %index.next1075, %n.vec1073
  br i1 %68, label %middle.block1067, label %vector.body1069, !llvm.loop !62

middle.block1067:                                 ; preds = %vector.body1069
  %cmp.n1077 = icmp eq i64 %indvars.iv21.i91, %n.vec1073
  br i1 %cmp.n1077, label %for.inc6.i102, label %for.body3.i99.preheader1093

for.body3.i99.preheader1093:                      ; preds = %for.body3.i99.preheader, %middle.block1067
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1073, %middle.block1067 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1093, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1093 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1067, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1082 = phi i64 [ %indvar.next1083, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1082, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1084 = icmp ult i64 %88, 4
  br i1 %min.iters.check1084, label %polly.loop_header191.preheader, label %vector.ph1085

vector.ph1085:                                    ; preds = %polly.loop_header
  %n.vec1087 = and i64 %88, -4
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1085
  %index1088 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1089, %vector.body1081 ]
  %90 = shl nuw nsw i64 %index1088, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1092 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1092, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1089 = add i64 %index1088, 4
  %95 = icmp eq i64 %index.next1089, %n.vec1087
  br i1 %95, label %middle.block1079, label %vector.body1081, !llvm.loop !74

middle.block1079:                                 ; preds = %vector.body1081
  %cmp.n1091 = icmp eq i64 %88, %n.vec1087
  br i1 %cmp.n1091, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1079
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1087, %middle.block1079 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1079
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1083 = add i64 %indvar1082, 1
  br i1 %exitcond868.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond867.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond867.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond866.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 4
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -4
  %exitcond865.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond865.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next215, 50
  br i1 %exitcond851.not, label %polly.loop_header227.preheader, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_exit219
  %100 = mul nsw i64 %polly.indvar208, -100
  br label %polly.loop_header227

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %101 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.call2224 = mul nuw nsw i64 %101, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %99, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv858 = phi i64 [ %indvars.iv856, %polly.loop_header227.preheader ], [ %indvars.iv.next859, %polly.loop_exit235 ]
  %indvars.iv854 = phi i64 [ %indvars.iv852, %polly.loop_header227.preheader ], [ %indvars.iv.next855, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %polly.indvar208, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv854, i64 0)
  %102 = add i64 %smax, %indvars.iv858
  %103 = mul nuw nsw i64 %polly.indvar230, 96
  %104 = sub nsw i64 %98, %103
  %105 = icmp sgt i64 %104, 0
  %106 = select i1 %105, i64 %104, i64 0
  %107 = mul nsw i64 %polly.indvar230, -96
  %108 = icmp slt i64 %107, -1104
  %109 = select i1 %108, i64 %107, i64 -1104
  %110 = add nsw i64 %109, 1199
  %polly.loop_guard.not = icmp sgt i64 %106, %110
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -96
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, 96
  %exitcond864.not = icmp eq i64 %polly.indvar_next231, 13
  br i1 %exitcond864.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header227, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %111 = add nuw nsw i64 %polly.indvar236, %97
  %112 = shl i64 %111, 3
  %polly.access.mul.Packed_MemRef_call2256 = mul nuw nsw i64 %polly.indvar236, 1200
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit248
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next237, 50
  br i1 %exitcond863.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header233, %polly.loop_exit248
  %indvars.iv860 = phi i64 [ %102, %polly.loop_header233 ], [ %indvars.iv.next861, %polly.loop_exit248 ]
  %polly.indvar242 = phi i64 [ %106, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_exit248 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 99)
  %113 = add nuw i64 %polly.indvar242, %103
  %114 = add i64 %113, %100
  %polly.loop_guard249946 = icmp sgt i64 %114, -1
  br i1 %polly.loop_guard249946, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2257 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256, %114
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %115 = mul i64 %113, 8000
  %116 = add i64 %115, %112
  %scevgep264 = getelementptr i8, i8* %call1, i64 %116
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %117 = mul i64 %113, 9600
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp slt i64 %polly.indvar242, %110
  %indvars.iv.next861 = add i64 %indvars.iv860, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %118 = add nuw nsw i64 %polly.indvar250, %98
  %119 = mul nuw nsw i64 %118, 8000
  %120 = add nuw nsw i64 %119, %112
  %scevgep253 = getelementptr i8, i8* %call1, i64 %120
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar250, %polly.access.mul.Packed_MemRef_call2256
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %117
  %scevgep267 = getelementptr i8, i8* %call, i64 %122
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond862.not = icmp eq i64 %polly.indvar250, %smin
  br i1 %exitcond862.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit382
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1056 = phi i64 [ %indvar.next1057, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %123 = add i64 %indvar1056, 1
  %124 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1058 = icmp ult i64 %123, 4
  br i1 %min.iters.check1058, label %polly.loop_header364.preheader, label %vector.ph1059

vector.ph1059:                                    ; preds = %polly.loop_header358
  %n.vec1061 = and i64 %123, -4
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1059
  %index1062 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1063, %vector.body1055 ]
  %125 = shl nuw nsw i64 %index1062, 3
  %126 = getelementptr i8, i8* %scevgep370, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1066 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !79, !noalias !81
  %128 = fmul fast <4 x double> %wide.load1066, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !79, !noalias !81
  %index.next1063 = add i64 %index1062, 4
  %130 = icmp eq i64 %index.next1063, %n.vec1061
  br i1 %130, label %middle.block1053, label %vector.body1055, !llvm.loop !85

middle.block1053:                                 ; preds = %vector.body1055
  %cmp.n1065 = icmp eq i64 %123, %n.vec1061
  br i1 %cmp.n1065, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1053
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1061, %middle.block1053 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1053
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1057 = add i64 %indvar1056, 1
  br i1 %exitcond891.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %131
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond890.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %132 = mul nuw nsw i64 %polly.indvar377, 50
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_exit404
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next378, 20
  br i1 %exitcond889.not, label %polly.exiting273, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit404, %polly.loop_header374
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit404 ], [ 0, %polly.loop_header374 ]
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit404 ], [ 0, %polly.loop_header374 ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit404 ], [ 1200, %polly.loop_header374 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit404 ], [ 0, %polly.loop_header374 ]
  %133 = mul nuw nsw i64 %polly.indvar383, 100
  br label %polly.loop_header386

polly.loop_exit404:                               ; preds = %polly.loop_exit410
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -100
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 4
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -4
  %exitcond888.not = icmp eq i64 %polly.indvar_next384, 12
  br i1 %exitcond888.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %134 = add nuw nsw i64 %polly.indvar389, %132
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 1200
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next390, 50
  br i1 %exitcond872.not, label %polly.loop_header402.preheader, label %polly.loop_header386

polly.loop_header402.preheader:                   ; preds = %polly.loop_exit394
  %135 = mul nsw i64 %polly.indvar383, -100
  br label %polly.loop_header402

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %136 = add nuw nsw i64 %polly.indvar395, %133
  %polly.access.mul.call2399 = mul nuw nsw i64 %136, 1000
  %polly.access.add.call2400 = add nuw nsw i64 %134, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next396, %indvars.iv869
  br i1 %exitcond871.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit410
  %indvars.iv880 = phi i64 [ %indvars.iv878, %polly.loop_header402.preheader ], [ %indvars.iv.next881, %polly.loop_exit410 ]
  %indvars.iv875 = phi i64 [ %indvars.iv873, %polly.loop_header402.preheader ], [ %indvars.iv.next876, %polly.loop_exit410 ]
  %polly.indvar405 = phi i64 [ %polly.indvar383, %polly.loop_header402.preheader ], [ %polly.indvar_next406, %polly.loop_exit410 ]
  %smax877 = call i64 @llvm.smax.i64(i64 %indvars.iv875, i64 0)
  %137 = add i64 %smax877, %indvars.iv880
  %138 = mul nuw nsw i64 %polly.indvar405, 96
  %139 = sub nsw i64 %133, %138
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %142 = mul nsw i64 %polly.indvar405, -96
  %143 = icmp slt i64 %142, -1104
  %144 = select i1 %143, i64 %142, i64 -1104
  %145 = add nsw i64 %144, 1199
  %polly.loop_guard418.not = icmp sgt i64 %141, %145
  br i1 %polly.loop_guard418.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_exit410:                               ; preds = %polly.loop_exit417, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, -96
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, 96
  %exitcond887.not = icmp eq i64 %polly.indvar_next406, 13
  br i1 %exitcond887.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header402, %polly.loop_exit417
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit417 ], [ 0, %polly.loop_header402 ]
  %146 = add nuw nsw i64 %polly.indvar411, %132
  %147 = shl i64 %146, 3
  %polly.access.mul.Packed_MemRef_call2275433 = mul nuw nsw i64 %polly.indvar411, 1200
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_exit425
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next412, 50
  br i1 %exitcond886.not, label %polly.loop_exit410, label %polly.loop_header408

polly.loop_header415:                             ; preds = %polly.loop_header408, %polly.loop_exit425
  %indvars.iv882 = phi i64 [ %137, %polly.loop_header408 ], [ %indvars.iv.next883, %polly.loop_exit425 ]
  %polly.indvar419 = phi i64 [ %141, %polly.loop_header408 ], [ %polly.indvar_next420, %polly.loop_exit425 ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 99)
  %148 = add nuw i64 %polly.indvar419, %138
  %149 = add i64 %148, %135
  %polly.loop_guard426947 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard426947, label %polly.loop_header423.preheader, label %polly.loop_exit425

polly.loop_header423.preheader:                   ; preds = %polly.loop_header415
  %polly.access.add.Packed_MemRef_call2275434 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275433, %149
  %polly.access.Packed_MemRef_call2275435 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call2275435, align 8
  %150 = mul i64 %148, 8000
  %151 = add i64 %150, %147
  %scevgep441 = getelementptr i8, i8* %call1, i64 %151
  %scevgep441442 = bitcast i8* %scevgep441 to double*
  %_p_scalar_443 = load double, double* %scevgep441442, align 8, !alias.scope !82, !noalias !88
  %152 = mul i64 %148, 9600
  br label %polly.loop_header423

polly.loop_exit425:                               ; preds = %polly.loop_header423, %polly.loop_header415
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %polly.loop_cond421.not.not = icmp slt i64 %polly.indvar419, %145
  %indvars.iv.next883 = add i64 %indvars.iv882, 1
  br i1 %polly.loop_cond421.not.not, label %polly.loop_header415, label %polly.loop_exit417

polly.loop_header423:                             ; preds = %polly.loop_header423.preheader, %polly.loop_header423
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_header423 ], [ 0, %polly.loop_header423.preheader ]
  %153 = add nuw nsw i64 %polly.indvar427, %133
  %154 = mul nuw nsw i64 %153, 8000
  %155 = add nuw nsw i64 %154, %147
  %scevgep430 = getelementptr i8, i8* %call1, i64 %155
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %polly.access.add.Packed_MemRef_call2275438 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2275433
  %polly.access.Packed_MemRef_call2275439 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438
  %_p_scalar_440 = load double, double* %polly.access.Packed_MemRef_call2275439, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_443, %_p_scalar_440
  %156 = shl i64 %153, 3
  %157 = add i64 %156, %152
  %scevgep444 = getelementptr i8, i8* %call, i64 %157
  %scevgep444445 = bitcast i8* %scevgep444 to double*
  %_p_scalar_446 = load double, double* %scevgep444445, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_446
  store double %p_add42.i79, double* %scevgep444445, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond885.not = icmp eq i64 %polly.indvar427, %smin884
  br i1 %exitcond885.not, label %polly.loop_exit425, label %polly.loop_header423

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header535

polly.exiting450:                                 ; preds = %polly.loop_exit559
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar538, 9600
  %scevgep547 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1032 = icmp ult i64 %158, 4
  br i1 %min.iters.check1032, label %polly.loop_header541.preheader, label %vector.ph1033

vector.ph1033:                                    ; preds = %polly.loop_header535
  %n.vec1035 = and i64 %158, -4
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1033
  %index1036 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1037, %vector.body1031 ]
  %160 = shl nuw nsw i64 %index1036, 3
  %161 = getelementptr i8, i8* %scevgep547, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1040 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %163 = fmul fast <4 x double> %wide.load1040, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !89, !noalias !91
  %index.next1037 = add i64 %index1036, 4
  %165 = icmp eq i64 %index.next1037, %n.vec1035
  br i1 %165, label %middle.block1029, label %vector.body1031, !llvm.loop !95

middle.block1029:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %158, %n.vec1035
  br i1 %cmp.n1039, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1029
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1035, %middle.block1029 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1029
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next539, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond914.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header551

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %166
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond913.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !96

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_exit559
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit559 ], [ 0, %polly.loop_header551.preheader ]
  %167 = mul nuw nsw i64 %polly.indvar554, 50
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_exit581
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next555, 20
  br i1 %exitcond912.not, label %polly.exiting450, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_exit581, %polly.loop_header551
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit581 ], [ 0, %polly.loop_header551 ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit581 ], [ 0, %polly.loop_header551 ]
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit581 ], [ 1200, %polly.loop_header551 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit581 ], [ 0, %polly.loop_header551 ]
  %168 = mul nuw nsw i64 %polly.indvar560, 100
  br label %polly.loop_header563

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -100
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 4
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -4
  %exitcond911.not = icmp eq i64 %polly.indvar_next561, 12
  br i1 %exitcond911.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header563:                             ; preds = %polly.loop_exit571, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_exit571 ]
  %169 = add nuw nsw i64 %polly.indvar566, %167
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar566, 1200
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_header569
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next567, 50
  br i1 %exitcond895.not, label %polly.loop_header579.preheader, label %polly.loop_header563

polly.loop_header579.preheader:                   ; preds = %polly.loop_exit571
  %170 = mul nsw i64 %polly.indvar560, -100
  br label %polly.loop_header579

polly.loop_header569:                             ; preds = %polly.loop_header569, %polly.loop_header563
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header563 ], [ %polly.indvar_next573, %polly.loop_header569 ]
  %171 = add nuw nsw i64 %polly.indvar572, %168
  %polly.access.mul.call2576 = mul nuw nsw i64 %171, 1000
  %polly.access.add.call2577 = add nuw nsw i64 %169, %polly.access.mul.call2576
  %polly.access.call2578 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2577
  %polly.access.call2578.load = load double, double* %polly.access.call2578, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2452 = add nuw nsw i64 %polly.indvar572, %polly.access.mul.Packed_MemRef_call2452
  %polly.access.Packed_MemRef_call2452 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452
  store double %polly.access.call2578.load, double* %polly.access.Packed_MemRef_call2452, align 8
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next573, %indvars.iv892
  br i1 %exitcond894.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header579:                             ; preds = %polly.loop_header579.preheader, %polly.loop_exit587
  %indvars.iv903 = phi i64 [ %indvars.iv901, %polly.loop_header579.preheader ], [ %indvars.iv.next904, %polly.loop_exit587 ]
  %indvars.iv898 = phi i64 [ %indvars.iv896, %polly.loop_header579.preheader ], [ %indvars.iv.next899, %polly.loop_exit587 ]
  %polly.indvar582 = phi i64 [ %polly.indvar560, %polly.loop_header579.preheader ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %smax900 = call i64 @llvm.smax.i64(i64 %indvars.iv898, i64 0)
  %172 = add i64 %smax900, %indvars.iv903
  %173 = mul nuw nsw i64 %polly.indvar582, 96
  %174 = sub nsw i64 %168, %173
  %175 = icmp sgt i64 %174, 0
  %176 = select i1 %175, i64 %174, i64 0
  %177 = mul nsw i64 %polly.indvar582, -96
  %178 = icmp slt i64 %177, -1104
  %179 = select i1 %178, i64 %177, i64 -1104
  %180 = add nsw i64 %179, 1199
  %polly.loop_guard595.not = icmp sgt i64 %176, %180
  br i1 %polly.loop_guard595.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594, %polly.loop_header579
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -96
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, 96
  %exitcond910.not = icmp eq i64 %polly.indvar_next583, 13
  br i1 %exitcond910.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_header579, %polly.loop_exit594
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %181 = add nuw nsw i64 %polly.indvar588, %167
  %182 = shl i64 %181, 3
  %polly.access.mul.Packed_MemRef_call2452610 = mul nuw nsw i64 %polly.indvar588, 1200
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit602
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next589, 50
  br i1 %exitcond909.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header585, %polly.loop_exit602
  %indvars.iv905 = phi i64 [ %172, %polly.loop_header585 ], [ %indvars.iv.next906, %polly.loop_exit602 ]
  %polly.indvar596 = phi i64 [ %176, %polly.loop_header585 ], [ %polly.indvar_next597, %polly.loop_exit602 ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 99)
  %183 = add nuw i64 %polly.indvar596, %173
  %184 = add i64 %183, %170
  %polly.loop_guard603948 = icmp sgt i64 %184, -1
  br i1 %polly.loop_guard603948, label %polly.loop_header600.preheader, label %polly.loop_exit602

polly.loop_header600.preheader:                   ; preds = %polly.loop_header592
  %polly.access.add.Packed_MemRef_call2452611 = add nsw i64 %polly.access.mul.Packed_MemRef_call2452610, %184
  %polly.access.Packed_MemRef_call2452612 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611
  %_p_scalar_613 = load double, double* %polly.access.Packed_MemRef_call2452612, align 8
  %185 = mul i64 %183, 8000
  %186 = add i64 %185, %182
  %scevgep618 = getelementptr i8, i8* %call1, i64 %186
  %scevgep618619 = bitcast i8* %scevgep618 to double*
  %_p_scalar_620 = load double, double* %scevgep618619, align 8, !alias.scope !92, !noalias !98
  %187 = mul i64 %183, 9600
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_header600, %polly.loop_header592
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not.not = icmp slt i64 %polly.indvar596, %180
  %indvars.iv.next906 = add i64 %indvars.iv905, 1
  br i1 %polly.loop_cond598.not.not, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header600:                             ; preds = %polly.loop_header600.preheader, %polly.loop_header600
  %polly.indvar604 = phi i64 [ %polly.indvar_next605, %polly.loop_header600 ], [ 0, %polly.loop_header600.preheader ]
  %188 = add nuw nsw i64 %polly.indvar604, %168
  %189 = mul nuw nsw i64 %188, 8000
  %190 = add nuw nsw i64 %189, %182
  %scevgep607 = getelementptr i8, i8* %call1, i64 %190
  %scevgep607608 = bitcast i8* %scevgep607 to double*
  %_p_scalar_609 = load double, double* %scevgep607608, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_613, %_p_scalar_609
  %polly.access.add.Packed_MemRef_call2452615 = add nuw nsw i64 %polly.indvar604, %polly.access.mul.Packed_MemRef_call2452610
  %polly.access.Packed_MemRef_call2452616 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615
  %_p_scalar_617 = load double, double* %polly.access.Packed_MemRef_call2452616, align 8
  %p_mul37.i = fmul fast double %_p_scalar_620, %_p_scalar_617
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %187
  %scevgep621 = getelementptr i8, i8* %call, i64 %192
  %scevgep621622 = bitcast i8* %scevgep621 to double*
  %_p_scalar_623 = load double, double* %scevgep621622, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_623
  store double %p_add42.i, double* %scevgep621622, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %exitcond908.not = icmp eq i64 %polly.indvar604, %smin907
  br i1 %exitcond908.not, label %polly.loop_exit602, label %polly.loop_header600

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %polly.loop_exit758 ], [ 0, %entry ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %smin941 = call i64 @llvm.smin.i64(i64 %indvars.iv939, i64 -1168)
  %193 = shl nsw i64 %polly.indvar753, 5
  %194 = add nsw i64 %smin941, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next940 = add nsw i64 %indvars.iv939, -32
  %exitcond944.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond944.not, label %polly.loop_header777, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %indvars.iv935 = phi i64 [ %indvars.iv.next936, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %195 = mul nsw i64 %polly.indvar759, -32
  %smin970 = call i64 @llvm.smin.i64(i64 %195, i64 -1168)
  %196 = add nsw i64 %smin970, 1200
  %smin937 = call i64 @llvm.smin.i64(i64 %indvars.iv935, i64 -1168)
  %197 = shl nsw i64 %polly.indvar759, 5
  %198 = add nsw i64 %smin937, 1199
  br label %polly.loop_header762

polly.loop_exit764:                               ; preds = %polly.loop_exit770
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %indvars.iv.next936 = add nsw i64 %indvars.iv935, -32
  %exitcond943.not = icmp eq i64 %polly.indvar_next760, 38
  br i1 %exitcond943.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_exit770, %polly.loop_header756
  %polly.indvar765 = phi i64 [ 0, %polly.loop_header756 ], [ %polly.indvar_next766, %polly.loop_exit770 ]
  %199 = add nuw nsw i64 %polly.indvar765, %193
  %200 = trunc i64 %199 to i32
  %201 = mul nuw nsw i64 %199, 9600
  %min.iters.check = icmp eq i64 %196, 0
  br i1 %min.iters.check, label %polly.loop_header768, label %vector.ph971

vector.ph971:                                     ; preds = %polly.loop_header762
  %broadcast.splatinsert978 = insertelement <4 x i64> poison, i64 %197, i32 0
  %broadcast.splat979 = shufflevector <4 x i64> %broadcast.splatinsert978, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph971
  %index972 = phi i64 [ 0, %vector.ph971 ], [ %index.next973, %vector.body969 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph971 ], [ %vec.ind.next977, %vector.body969 ]
  %202 = add nuw nsw <4 x i64> %vec.ind976, %broadcast.splat979
  %203 = trunc <4 x i64> %202 to <4 x i32>
  %204 = mul <4 x i32> %broadcast.splat981, %203
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 1200, i32 1200, i32 1200, i32 1200>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %209 = extractelement <4 x i64> %202, i32 0
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %210, %201
  %212 = getelementptr i8, i8* %call, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %208, <4 x double>* %213, align 8, !alias.scope !99, !noalias !101
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %214 = icmp eq i64 %index.next973, %196
  br i1 %214, label %polly.loop_exit770, label %vector.body969, !llvm.loop !104

polly.loop_exit770:                               ; preds = %vector.body969, %polly.loop_header768
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond942.not = icmp eq i64 %polly.indvar765, %194
  br i1 %exitcond942.not, label %polly.loop_exit764, label %polly.loop_header762

polly.loop_header768:                             ; preds = %polly.loop_header762, %polly.loop_header768
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header768 ], [ 0, %polly.loop_header762 ]
  %215 = add nuw nsw i64 %polly.indvar771, %197
  %216 = trunc i64 %215 to i32
  %217 = mul i32 %216, %200
  %218 = add i32 %217, 3
  %219 = urem i32 %218, 1200
  %p_conv31.i = sitofp i32 %219 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %220 = shl i64 %215, 3
  %221 = add nuw nsw i64 %220, %201
  %scevgep774 = getelementptr i8, i8* %call, i64 %221
  %scevgep774775 = bitcast i8* %scevgep774 to double*
  store double %p_div33.i, double* %scevgep774775, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond938.not = icmp eq i64 %polly.indvar771, %198
  br i1 %exitcond938.not, label %polly.loop_exit770, label %polly.loop_header768, !llvm.loop !105

polly.loop_header777:                             ; preds = %polly.loop_exit758, %polly.loop_exit785
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %smin931 = call i64 @llvm.smin.i64(i64 %indvars.iv929, i64 -1168)
  %222 = shl nsw i64 %polly.indvar780, 5
  %223 = add nsw i64 %smin931, 1199
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next781, 38
  br i1 %exitcond934.not, label %polly.loop_header803, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %224 = mul nsw i64 %polly.indvar786, -32
  %smin985 = call i64 @llvm.smin.i64(i64 %224, i64 -968)
  %225 = add nsw i64 %smin985, 1000
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -968)
  %226 = shl nsw i64 %polly.indvar786, 5
  %227 = add nsw i64 %smin927, 999
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -32
  %exitcond933.not = icmp eq i64 %polly.indvar_next787, 32
  br i1 %exitcond933.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %polly.indvar792 = phi i64 [ 0, %polly.loop_header783 ], [ %polly.indvar_next793, %polly.loop_exit797 ]
  %228 = add nuw nsw i64 %polly.indvar792, %222
  %229 = trunc i64 %228 to i32
  %230 = mul nuw nsw i64 %228, 8000
  %min.iters.check986 = icmp eq i64 %225, 0
  br i1 %min.iters.check986, label %polly.loop_header795, label %vector.ph987

vector.ph987:                                     ; preds = %polly.loop_header789
  %broadcast.splatinsert996 = insertelement <4 x i64> poison, i64 %226, i32 0
  %broadcast.splat997 = shufflevector <4 x i64> %broadcast.splatinsert996, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %229, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next991, %vector.body984 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph987 ], [ %vec.ind.next995, %vector.body984 ]
  %231 = add nuw nsw <4 x i64> %vec.ind994, %broadcast.splat997
  %232 = trunc <4 x i64> %231 to <4 x i32>
  %233 = mul <4 x i32> %broadcast.splat999, %232
  %234 = add <4 x i32> %233, <i32 2, i32 2, i32 2, i32 2>
  %235 = urem <4 x i32> %234, <i32 1000, i32 1000, i32 1000, i32 1000>
  %236 = sitofp <4 x i32> %235 to <4 x double>
  %237 = fmul fast <4 x double> %236, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %238 = extractelement <4 x i64> %231, i32 0
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %230
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %237, <4 x double>* %242, align 8, !alias.scope !103, !noalias !106
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %243 = icmp eq i64 %index.next991, %225
  br i1 %243, label %polly.loop_exit797, label %vector.body984, !llvm.loop !107

polly.loop_exit797:                               ; preds = %vector.body984, %polly.loop_header795
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond932.not = icmp eq i64 %polly.indvar792, %223
  br i1 %exitcond932.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_header789, %polly.loop_header795
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_header795 ], [ 0, %polly.loop_header789 ]
  %244 = add nuw nsw i64 %polly.indvar798, %226
  %245 = trunc i64 %244 to i32
  %246 = mul i32 %245, %229
  %247 = add i32 %246, 2
  %248 = urem i32 %247, 1000
  %p_conv10.i = sitofp i32 %248 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %249 = shl i64 %244, 3
  %250 = add nuw nsw i64 %249, %230
  %scevgep801 = getelementptr i8, i8* %call2, i64 %250
  %scevgep801802 = bitcast i8* %scevgep801 to double*
  store double %p_div12.i, double* %scevgep801802, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond928.not = icmp eq i64 %polly.indvar798, %227
  br i1 %exitcond928.not, label %polly.loop_exit797, label %polly.loop_header795, !llvm.loop !108

polly.loop_header803:                             ; preds = %polly.loop_exit785, %polly.loop_exit811
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %smin921 = call i64 @llvm.smin.i64(i64 %indvars.iv919, i64 -1168)
  %251 = shl nsw i64 %polly.indvar806, 5
  %252 = add nsw i64 %smin921, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond924.not, label %init_array.exit, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %253 = mul nsw i64 %polly.indvar812, -32
  %smin1003 = call i64 @llvm.smin.i64(i64 %253, i64 -968)
  %254 = add nsw i64 %smin1003, 1000
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv915, i64 -968)
  %255 = shl nsw i64 %polly.indvar812, 5
  %256 = add nsw i64 %smin917, 999
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next916 = add nsw i64 %indvars.iv915, -32
  %exitcond923.not = icmp eq i64 %polly.indvar_next813, 32
  br i1 %exitcond923.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %257 = add nuw nsw i64 %polly.indvar818, %251
  %258 = trunc i64 %257 to i32
  %259 = mul nuw nsw i64 %257, 8000
  %min.iters.check1004 = icmp eq i64 %254, 0
  br i1 %min.iters.check1004, label %polly.loop_header821, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header815
  %broadcast.splatinsert1014 = insertelement <4 x i64> poison, i64 %255, i32 0
  %broadcast.splat1015 = shufflevector <4 x i64> %broadcast.splatinsert1014, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1002 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1005 ], [ %vec.ind.next1013, %vector.body1002 ]
  %260 = add nuw nsw <4 x i64> %vec.ind1012, %broadcast.splat1015
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = mul <4 x i32> %broadcast.splat1017, %261
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 1200, i32 1200, i32 1200, i32 1200>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %267 = extractelement <4 x i64> %260, i32 0
  %268 = shl i64 %267, 3
  %269 = add nuw nsw i64 %268, %259
  %270 = getelementptr i8, i8* %call1, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %266, <4 x double>* %271, align 8, !alias.scope !102, !noalias !109
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %272 = icmp eq i64 %index.next1009, %254
  br i1 %272, label %polly.loop_exit823, label %vector.body1002, !llvm.loop !110

polly.loop_exit823:                               ; preds = %vector.body1002, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond922.not = icmp eq i64 %polly.indvar818, %252
  br i1 %exitcond922.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %273 = add nuw nsw i64 %polly.indvar824, %255
  %274 = trunc i64 %273 to i32
  %275 = mul i32 %274, %258
  %276 = add i32 %275, 1
  %277 = urem i32 %276, 1200
  %p_conv.i = sitofp i32 %277 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %278 = shl i64 %273, 3
  %279 = add nuw nsw i64 %278, %259
  %scevgep828 = getelementptr i8, i8* %call1, i64 %279
  %scevgep828829 = bitcast i8* %scevgep828 to double*
  store double %p_div.i, double* %scevgep828829, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond918.not = icmp eq i64 %polly.indvar824, %256
  br i1 %exitcond918.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !111
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
!34 = !{!"llvm.loop.tile.size", i32 50}
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
