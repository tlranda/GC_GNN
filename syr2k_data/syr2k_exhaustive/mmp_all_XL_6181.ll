; ModuleID = 'syr2k_exhaustive/mmp_all_XL_6181.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_6181.c"
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
  %call770 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1631 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2632 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1631, %call2
  %polly.access.call2651 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2651, %call1
  %2 = or i1 %0, %1
  %polly.access.call671 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call671, %call2
  %4 = icmp ule i8* %polly.access.call2651, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call671, %call1
  %8 = icmp ule i8* %polly.access.call1631, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header744, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv7.i, i64 %index959
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit805
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start445, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %index1025
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting446
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %index1048
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1070 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1070, label %for.body3.i99.preheader1093, label %vector.ph1071

vector.ph1071:                                    ; preds = %for.body3.i99.preheader
  %n.vec1073 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1075, %vector.body1069 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %index1074
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
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
  %exitcond859.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1083 = add i64 %indvar1082, 1
  br i1 %exitcond859.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond858.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond858.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  %101 = shl i64 %polly.indvar202, 5
  %102 = shl i64 %98, 3
  %103 = shl i64 %99, 3
  %104 = shl i64 %100, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond857.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %105 = shl nsw i64 %polly.indvar208, 8
  br label %polly.loop_header217

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 16
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -16
  %exitcond856.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond856.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header205
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %106 = add nuw nsw i64 %polly.indvar220, %105
  %polly.access.mul.call2224 = mul nuw nsw i64 %106, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %97, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar220
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit241.3, %polly.loop_exit219.3
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit241.3 ], [ %indvars.iv847, %polly.loop_exit219.3 ]
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit241.3 ], [ %indvars.iv843, %polly.loop_exit219.3 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ %281, %polly.loop_exit219.3 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv845, i64 0)
  %107 = add i64 %smax, %indvars.iv849
  %108 = mul nuw nsw i64 %polly.indvar230, 80
  %109 = sub nsw i64 %105, %108
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  br label %polly.loop_header239

polly.loop_header239:                             ; preds = %polly.loop_exit247, %polly.loop_header227
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit247 ], [ %107, %polly.loop_header227 ]
  %polly.indvar242 = phi i64 [ %polly.indvar_next243, %polly.loop_exit247 ], [ %111, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 255)
  %112 = add nuw i64 %polly.indvar242, %108
  %113 = add i64 %112, %280
  %polly.loop_guard937 = icmp sgt i64 %113, -1
  br i1 %polly.loop_guard937, label %polly.loop_header245.preheader, label %polly.loop_exit247

polly.loop_header245.preheader:                   ; preds = %polly.loop_header239
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %113
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %114 = mul i64 %112, 8000
  %115 = add i64 %114, %101
  %scevgep262 = getelementptr i8, i8* %call1, i64 %115
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !71, !noalias !78
  %116 = mul i64 %112, 9600
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244 = icmp ult i64 %polly.indvar242, 79
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond244, label %polly.loop_header239, label %polly.loop_header239.1

polly.loop_header245:                             ; preds = %polly.loop_header245.preheader, %polly.loop_header245
  %polly.indvar248 = phi i64 [ %polly.indvar_next249, %polly.loop_header245 ], [ 0, %polly.loop_header245.preheader ]
  %117 = add nuw nsw i64 %polly.indvar248, %105
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %101
  %scevgep251 = getelementptr i8, i8* %call1, i64 %119
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar248
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %116
  %scevgep265 = getelementptr i8, i8* %call, i64 %121
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond853.not = icmp eq i64 %polly.indvar248, %smin
  br i1 %exitcond853.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1056 = phi i64 [ %indvar.next1057, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %122 = add i64 %indvar1056, 1
  %123 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1058 = icmp ult i64 %122, 4
  br i1 %min.iters.check1058, label %polly.loop_header362.preheader, label %vector.ph1059

vector.ph1059:                                    ; preds = %polly.loop_header356
  %n.vec1061 = and i64 %122, -4
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1059
  %index1062 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1063, %vector.body1055 ]
  %124 = shl nuw nsw i64 %index1062, 3
  %125 = getelementptr i8, i8* %scevgep368, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1066 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !79, !noalias !81
  %127 = fmul fast <4 x double> %wide.load1066, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !79, !noalias !81
  %index.next1063 = add i64 %index1062, 4
  %129 = icmp eq i64 %index.next1063, %n.vec1061
  br i1 %129, label %middle.block1053, label %vector.body1055, !llvm.loop !85

middle.block1053:                                 ; preds = %vector.body1055
  %cmp.n1065 = icmp eq i64 %122, %n.vec1061
  br i1 %cmp.n1065, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1053
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1061, %middle.block1053 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1053
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1057 = add i64 %indvar1056, 1
  br i1 %exitcond882.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %130
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond881.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !86

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %131 = shl nsw i64 %polly.indvar375, 2
  %132 = or i64 %131, 1
  %133 = or i64 %131, 2
  %134 = or i64 %131, 3
  %135 = shl i64 %polly.indvar375, 5
  %136 = shl i64 %132, 3
  %137 = shl i64 %133, 3
  %138 = shl i64 %134, 3
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next376, 250
  br i1 %exitcond880.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit402 ], [ 1200, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %139 = shl nsw i64 %polly.indvar381, 8
  br label %polly.loop_header390

polly.loop_exit402:                               ; preds = %polly.loop_exit414.3
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -256
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 16
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -16
  %exitcond879.not = icmp eq i64 %polly.indvar_next382, 5
  br i1 %exitcond879.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header378
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %140 = add nuw nsw i64 %polly.indvar393, %139
  %polly.access.mul.call2397 = mul nuw nsw i64 %140, 1000
  %polly.access.add.call2398 = add nuw nsw i64 %131, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !83, !noalias !87
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.indvar393
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next394, %indvars.iv860
  br i1 %exitcond862.not, label %polly.loop_header390.1, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit414.3, %polly.loop_exit392.3
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit414.3 ], [ %indvars.iv869, %polly.loop_exit392.3 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit414.3 ], [ %indvars.iv864, %polly.loop_exit392.3 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit414.3 ], [ %316, %polly.loop_exit392.3 ]
  %smax868 = call i64 @llvm.smax.i64(i64 %indvars.iv866, i64 0)
  %141 = add i64 %smax868, %indvars.iv871
  %142 = mul nuw nsw i64 %polly.indvar403, 80
  %143 = sub nsw i64 %139, %142
  %144 = icmp sgt i64 %143, 0
  %145 = select i1 %144, i64 %143, i64 0
  br label %polly.loop_header412

polly.loop_header412:                             ; preds = %polly.loop_exit421, %polly.loop_header400
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit421 ], [ %141, %polly.loop_header400 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit421 ], [ %145, %polly.loop_header400 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 255)
  %146 = add nuw i64 %polly.indvar415, %142
  %147 = add i64 %146, %315
  %polly.loop_guard422941 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard422941, label %polly.loop_header419.preheader, label %polly.loop_exit421

polly.loop_header419.preheader:                   ; preds = %polly.loop_header412
  %polly.access.Packed_MemRef_call2273431 = getelementptr double, double* %Packed_MemRef_call2273, i64 %147
  %_p_scalar_432 = load double, double* %polly.access.Packed_MemRef_call2273431, align 8
  %148 = mul i64 %146, 8000
  %149 = add i64 %148, %135
  %scevgep437 = getelementptr i8, i8* %call1, i64 %149
  %scevgep437438 = bitcast i8* %scevgep437 to double*
  %_p_scalar_439 = load double, double* %scevgep437438, align 8, !alias.scope !82, !noalias !88
  %150 = mul i64 %146, 9600
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419, %polly.loop_header412
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %polly.loop_cond417 = icmp ult i64 %polly.indvar415, 79
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond417, label %polly.loop_header412, label %polly.loop_header412.1

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_header419
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_header419 ], [ 0, %polly.loop_header419.preheader ]
  %151 = add nuw nsw i64 %polly.indvar423, %139
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %135
  %scevgep426 = getelementptr i8, i8* %call1, i64 %153
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_432, %_p_scalar_428
  %polly.access.Packed_MemRef_call2273435 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.indvar423
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call2273435, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_439, %_p_scalar_436
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %150
  %scevgep440 = getelementptr i8, i8* %call, i64 %155
  %scevgep440441 = bitcast i8* %scevgep440 to double*
  %_p_scalar_442 = load double, double* %scevgep440441, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_442
  store double %p_add42.i79, double* %scevgep440441, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond876.not = icmp eq i64 %polly.indvar423, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit421, label %polly.loop_header419

polly.start445:                                   ; preds = %init_array.exit
  %malloccall447 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header531

polly.exiting446:                                 ; preds = %polly.loop_exit555
  tail call void @free(i8* %malloccall447)
  br label %kernel_syr2k.exit

polly.loop_header531:                             ; preds = %polly.loop_exit539, %polly.start445
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit539 ], [ 0, %polly.start445 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 1, %polly.start445 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar534, 9600
  %scevgep543 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1032 = icmp ult i64 %156, 4
  br i1 %min.iters.check1032, label %polly.loop_header537.preheader, label %vector.ph1033

vector.ph1033:                                    ; preds = %polly.loop_header531
  %n.vec1035 = and i64 %156, -4
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1033
  %index1036 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1037, %vector.body1031 ]
  %158 = shl nuw nsw i64 %index1036, 3
  %159 = getelementptr i8, i8* %scevgep543, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1040 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !89, !noalias !91
  %161 = fmul fast <4 x double> %wide.load1040, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %index.next1037 = add i64 %index1036, 4
  %163 = icmp eq i64 %index.next1037, %n.vec1035
  br i1 %163, label %middle.block1029, label %vector.body1031, !llvm.loop !95

middle.block1029:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %156, %n.vec1035
  br i1 %cmp.n1039, label %polly.loop_exit539, label %polly.loop_header537.preheader

polly.loop_header537.preheader:                   ; preds = %polly.loop_header531, %middle.block1029
  %polly.indvar540.ph = phi i64 [ 0, %polly.loop_header531 ], [ %n.vec1035, %middle.block1029 ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537, %middle.block1029
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next535, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond905.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_exit539
  %Packed_MemRef_call2448 = bitcast i8* %malloccall447 to double*
  br label %polly.loop_header547

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_header537
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header537 ], [ %polly.indvar540.ph, %polly.loop_header537.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %164
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_546, 1.200000e+00
  store double %p_mul.i, double* %scevgep544545, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next541, %polly.indvar534
  br i1 %exitcond904.not, label %polly.loop_exit539, label %polly.loop_header537, !llvm.loop !96

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header547.preheader ]
  %165 = shl nsw i64 %polly.indvar550, 2
  %166 = or i64 %165, 1
  %167 = or i64 %165, 2
  %168 = or i64 %165, 3
  %169 = shl i64 %polly.indvar550, 5
  %170 = shl i64 %166, 3
  %171 = shl i64 %167, 3
  %172 = shl i64 %168, 3
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit577
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next551, 250
  br i1 %exitcond903.not, label %polly.exiting446, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit577, %polly.loop_header547
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit577 ], [ 1200, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit577 ], [ 0, %polly.loop_header547 ]
  %173 = shl nsw i64 %polly.indvar556, 8
  br label %polly.loop_header565

polly.loop_exit577:                               ; preds = %polly.loop_exit589.3
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -256
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 16
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -16
  %exitcond902.not = icmp eq i64 %polly.indvar_next557, 5
  br i1 %exitcond902.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header565:                             ; preds = %polly.loop_header565, %polly.loop_header553
  %polly.indvar568 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next569, %polly.loop_header565 ]
  %174 = add nuw nsw i64 %polly.indvar568, %173
  %polly.access.mul.call2572 = mul nuw nsw i64 %174, 1000
  %polly.access.add.call2573 = add nuw nsw i64 %165, %polly.access.mul.call2572
  %polly.access.call2574 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573
  %polly.access.call2574.load = load double, double* %polly.access.call2574, align 8, !alias.scope !93, !noalias !97
  %polly.access.Packed_MemRef_call2448 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.indvar568
  store double %polly.access.call2574.load, double* %polly.access.Packed_MemRef_call2448, align 8
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next569, %indvars.iv883
  br i1 %exitcond885.not, label %polly.loop_header565.1, label %polly.loop_header565

polly.loop_header575:                             ; preds = %polly.loop_exit589.3, %polly.loop_exit567.3
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit589.3 ], [ %indvars.iv892, %polly.loop_exit567.3 ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit589.3 ], [ %indvars.iv887, %polly.loop_exit567.3 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit589.3 ], [ %351, %polly.loop_exit567.3 ]
  %smax891 = call i64 @llvm.smax.i64(i64 %indvars.iv889, i64 0)
  %175 = add i64 %smax891, %indvars.iv894
  %176 = mul nuw nsw i64 %polly.indvar578, 80
  %177 = sub nsw i64 %173, %176
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  br label %polly.loop_header587

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header575
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit596 ], [ %175, %polly.loop_header575 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ %179, %polly.loop_header575 ]
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 255)
  %180 = add nuw i64 %polly.indvar590, %176
  %181 = add i64 %180, %350
  %polly.loop_guard597945 = icmp sgt i64 %181, -1
  br i1 %polly.loop_guard597945, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %polly.access.Packed_MemRef_call2448606 = getelementptr double, double* %Packed_MemRef_call2448, i64 %181
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2448606, align 8
  %182 = mul i64 %180, 8000
  %183 = add i64 %182, %169
  %scevgep612 = getelementptr i8, i8* %call1, i64 %183
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !92, !noalias !98
  %184 = mul i64 %180, 9600
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp ult i64 %polly.indvar590, 79
  %indvars.iv.next897 = add i64 %indvars.iv896, 1
  br i1 %polly.loop_cond592, label %polly.loop_header587, label %polly.loop_header587.1

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_header594
  %polly.indvar598 = phi i64 [ %polly.indvar_next599, %polly.loop_header594 ], [ 0, %polly.loop_header594.preheader ]
  %185 = add nuw nsw i64 %polly.indvar598, %173
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %169
  %scevgep601 = getelementptr i8, i8* %call1, i64 %187
  %scevgep601602 = bitcast i8* %scevgep601 to double*
  %_p_scalar_603 = load double, double* %scevgep601602, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_607, %_p_scalar_603
  %polly.access.Packed_MemRef_call2448610 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.indvar598
  %_p_scalar_611 = load double, double* %polly.access.Packed_MemRef_call2448610, align 8
  %p_mul37.i = fmul fast double %_p_scalar_614, %_p_scalar_611
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %184
  %scevgep615 = getelementptr i8, i8* %call, i64 %189
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_617
  store double %p_add42.i, double* %scevgep615616, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %exitcond899.not = icmp eq i64 %polly.indvar598, %smin898
  br i1 %exitcond899.not, label %polly.loop_exit596, label %polly.loop_header594

polly.loop_header744:                             ; preds = %entry, %polly.loop_exit752
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit752 ], [ 0, %entry ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %entry ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %190 = shl nsw i64 %polly.indvar747, 5
  %191 = add nsw i64 %smin932, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond935.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond935.not, label %polly.loop_header771, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %192 = mul nsw i64 %polly.indvar753, -32
  %smin970 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin970, 1200
  %smin928 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 -1168)
  %194 = shl nsw i64 %polly.indvar753, 5
  %195 = add nsw i64 %smin928, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond934.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %polly.indvar759 = phi i64 [ 0, %polly.loop_header750 ], [ %polly.indvar_next760, %polly.loop_exit764 ]
  %196 = add nuw nsw i64 %polly.indvar759, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header762, label %vector.ph971

vector.ph971:                                     ; preds = %polly.loop_header756
  %broadcast.splatinsert978 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat979 = shufflevector <4 x i64> %broadcast.splatinsert978, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph971
  %index972 = phi i64 [ 0, %vector.ph971 ], [ %index.next973, %vector.body969 ]
  %vec.ind976 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph971 ], [ %vec.ind.next977, %vector.body969 ]
  %199 = add nuw nsw <4 x i64> %vec.ind976, %broadcast.splat979
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat981, %200
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
  %index.next973 = add i64 %index972, 4
  %vec.ind.next977 = add <4 x i64> %vec.ind976, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next973, %193
  br i1 %211, label %polly.loop_exit764, label %vector.body969, !llvm.loop !104

polly.loop_exit764:                               ; preds = %vector.body969, %polly.loop_header762
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond933.not = icmp eq i64 %polly.indvar759, %191
  br i1 %exitcond933.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_header756, %polly.loop_header762
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_header762 ], [ 0, %polly.loop_header756 ]
  %212 = add nuw nsw i64 %polly.indvar765, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep768 = getelementptr i8, i8* %call, i64 %218
  %scevgep768769 = bitcast i8* %scevgep768 to double*
  store double %p_div33.i, double* %scevgep768769, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond929.not = icmp eq i64 %polly.indvar765, %195
  br i1 %exitcond929.not, label %polly.loop_exit764, label %polly.loop_header762, !llvm.loop !105

polly.loop_header771:                             ; preds = %polly.loop_exit752, %polly.loop_exit779
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -1168)
  %219 = shl nsw i64 %polly.indvar774, 5
  %220 = add nsw i64 %smin922, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond925.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond925.not, label %polly.loop_header797, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv916 = phi i64 [ %indvars.iv.next917, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %221 = mul nsw i64 %polly.indvar780, -32
  %smin985 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin985, 1000
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 -968)
  %223 = shl nsw i64 %polly.indvar780, 5
  %224 = add nsw i64 %smin918, 999
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -32
  %exitcond924.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond924.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %225 = add nuw nsw i64 %polly.indvar786, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check986 = icmp eq i64 %222, 0
  br i1 %min.iters.check986, label %polly.loop_header789, label %vector.ph987

vector.ph987:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert996 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat997 = shufflevector <4 x i64> %broadcast.splatinsert996, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next991, %vector.body984 ]
  %vec.ind994 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph987 ], [ %vec.ind.next995, %vector.body984 ]
  %228 = add nuw nsw <4 x i64> %vec.ind994, %broadcast.splat997
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat999, %229
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
  %index.next991 = add i64 %index990, 4
  %vec.ind.next995 = add <4 x i64> %vec.ind994, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next991, %222
  br i1 %240, label %polly.loop_exit791, label %vector.body984, !llvm.loop !107

polly.loop_exit791:                               ; preds = %vector.body984, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond923.not = icmp eq i64 %polly.indvar786, %220
  br i1 %exitcond923.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %241 = add nuw nsw i64 %polly.indvar792, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep795 = getelementptr i8, i8* %call2, i64 %247
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div12.i, double* %scevgep795796, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond919.not = icmp eq i64 %polly.indvar792, %224
  br i1 %exitcond919.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !108

polly.loop_header797:                             ; preds = %polly.loop_exit779, %polly.loop_exit805
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -1168)
  %248 = shl nsw i64 %polly.indvar800, 5
  %249 = add nsw i64 %smin912, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond915.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond915.not, label %init_array.exit, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %250 = mul nsw i64 %polly.indvar806, -32
  %smin1003 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin1003, 1000
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -968)
  %252 = shl nsw i64 %polly.indvar806, 5
  %253 = add nsw i64 %smin908, 999
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond914.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %254 = add nuw nsw i64 %polly.indvar812, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check1004 = icmp eq i64 %251, 0
  br i1 %min.iters.check1004, label %polly.loop_header815, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header809
  %broadcast.splatinsert1014 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat1015 = shufflevector <4 x i64> %broadcast.splatinsert1014, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1002 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1005 ], [ %vec.ind.next1013, %vector.body1002 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1012, %broadcast.splat1015
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1017, %258
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
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1009, %251
  br i1 %269, label %polly.loop_exit817, label %vector.body1002, !llvm.loop !110

polly.loop_exit817:                               ; preds = %vector.body1002, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond913.not = icmp eq i64 %polly.indvar812, %249
  br i1 %exitcond913.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %270 = add nuw nsw i64 %polly.indvar818, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep822 = getelementptr i8, i8* %call1, i64 %276
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div.i, double* %scevgep822823, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond909.not = icmp eq i64 %polly.indvar818, %253
  br i1 %exitcond909.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !111

polly.loop_header217.1:                           ; preds = %polly.loop_header217, %polly.loop_header217.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_header217.1 ], [ 0, %polly.loop_header217 ]
  %277 = add nuw nsw i64 %polly.indvar220.1, %105
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %277, 1000
  %polly.access.add.call2225.1 = add nuw nsw i64 %98, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_header217.1, %polly.loop_header217.2
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_header217.2 ], [ 0, %polly.loop_header217.1 ]
  %278 = add nuw nsw i64 %polly.indvar220.2, %105
  %polly.access.mul.call2224.2 = mul nuw nsw i64 %278, 1000
  %polly.access.add.call2225.2 = add nuw nsw i64 %99, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_header217.2, %polly.loop_header217.3
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_header217.3 ], [ 0, %polly.loop_header217.2 ]
  %279 = add nuw nsw i64 %polly.indvar220.3, %105
  %polly.access.mul.call2224.3 = mul nuw nsw i64 %279, 1000
  %polly.access.add.call2225.3 = add nuw nsw i64 %100, %polly.access.mul.call2224.3
  %polly.access.call2226.3 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2225.3
  %polly.access.call2226.load.3 = load double, double* %polly.access.call2226.3, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar220.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2226.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %280 = mul nsw i64 %polly.indvar208, -256
  %281 = mul nuw nsw i64 %polly.indvar208, 3
  br label %polly.loop_header227

polly.loop_header239.1:                           ; preds = %polly.loop_exit247, %polly.loop_exit247.1
  %indvars.iv851.1 = phi i64 [ %indvars.iv.next852.1, %polly.loop_exit247.1 ], [ %107, %polly.loop_exit247 ]
  %polly.indvar242.1 = phi i64 [ %polly.indvar_next243.1, %polly.loop_exit247.1 ], [ %111, %polly.loop_exit247 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv851.1, i64 255)
  %282 = add nuw i64 %polly.indvar242.1, %108
  %283 = add i64 %282, %280
  %polly.loop_guard.1938 = icmp sgt i64 %283, -1
  br i1 %polly.loop_guard.1938, label %polly.loop_header245.preheader.1, label %polly.loop_exit247.1

polly.loop_header245.preheader.1:                 ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2255.1 = add nuw nsw i64 %283, 1200
  %polly.access.Packed_MemRef_call2256.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.1
  %_p_scalar_257.1 = load double, double* %polly.access.Packed_MemRef_call2256.1, align 8
  %284 = mul i64 %282, 8000
  %285 = add i64 %284, %102
  %scevgep262.1 = getelementptr i8, i8* %call1, i64 %285
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !71, !noalias !78
  %286 = mul i64 %282, 9600
  br label %polly.loop_header245.1

polly.loop_header245.1:                           ; preds = %polly.loop_header245.1, %polly.loop_header245.preheader.1
  %polly.indvar248.1 = phi i64 [ %polly.indvar_next249.1, %polly.loop_header245.1 ], [ 0, %polly.loop_header245.preheader.1 ]
  %287 = add nuw nsw i64 %polly.indvar248.1, %105
  %288 = mul nuw nsw i64 %287, 8000
  %289 = add nuw nsw i64 %288, %102
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %289
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_257.1, %_p_scalar_253.1
  %polly.access.add.Packed_MemRef_call2259.1 = add nuw nsw i64 %polly.indvar248.1, 1200
  %polly.access.Packed_MemRef_call2260.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call2260.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_264.1, %_p_scalar_261.1
  %290 = shl i64 %287, 3
  %291 = add i64 %290, %286
  %scevgep265.1 = getelementptr i8, i8* %call, i64 %291
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_267.1
  store double %p_add42.i118.1, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.1 = add nuw nsw i64 %polly.indvar248.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar248.1, %smin.1
  br i1 %exitcond853.1.not, label %polly.loop_exit247.1, label %polly.loop_header245.1

polly.loop_exit247.1:                             ; preds = %polly.loop_header245.1, %polly.loop_header239.1
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %polly.loop_cond244.1 = icmp ult i64 %polly.indvar242.1, 79
  %indvars.iv.next852.1 = add i64 %indvars.iv851.1, 1
  br i1 %polly.loop_cond244.1, label %polly.loop_header239.1, label %polly.loop_header239.2

polly.loop_header239.2:                           ; preds = %polly.loop_exit247.1, %polly.loop_exit247.2
  %indvars.iv851.2 = phi i64 [ %indvars.iv.next852.2, %polly.loop_exit247.2 ], [ %107, %polly.loop_exit247.1 ]
  %polly.indvar242.2 = phi i64 [ %polly.indvar_next243.2, %polly.loop_exit247.2 ], [ %111, %polly.loop_exit247.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv851.2, i64 255)
  %292 = add nuw i64 %polly.indvar242.2, %108
  %293 = add i64 %292, %280
  %polly.loop_guard.2939 = icmp sgt i64 %293, -1
  br i1 %polly.loop_guard.2939, label %polly.loop_header245.preheader.2, label %polly.loop_exit247.2

polly.loop_header245.preheader.2:                 ; preds = %polly.loop_header239.2
  %polly.access.add.Packed_MemRef_call2255.2 = add nuw nsw i64 %293, 2400
  %polly.access.Packed_MemRef_call2256.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.2
  %_p_scalar_257.2 = load double, double* %polly.access.Packed_MemRef_call2256.2, align 8
  %294 = mul i64 %292, 8000
  %295 = add i64 %294, %103
  %scevgep262.2 = getelementptr i8, i8* %call1, i64 %295
  %scevgep262263.2 = bitcast i8* %scevgep262.2 to double*
  %_p_scalar_264.2 = load double, double* %scevgep262263.2, align 8, !alias.scope !71, !noalias !78
  %296 = mul i64 %292, 9600
  br label %polly.loop_header245.2

polly.loop_header245.2:                           ; preds = %polly.loop_header245.2, %polly.loop_header245.preheader.2
  %polly.indvar248.2 = phi i64 [ %polly.indvar_next249.2, %polly.loop_header245.2 ], [ 0, %polly.loop_header245.preheader.2 ]
  %297 = add nuw nsw i64 %polly.indvar248.2, %105
  %298 = mul nuw nsw i64 %297, 8000
  %299 = add nuw nsw i64 %298, %103
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %299
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_257.2, %_p_scalar_253.2
  %polly.access.add.Packed_MemRef_call2259.2 = add nuw nsw i64 %polly.indvar248.2, 2400
  %polly.access.Packed_MemRef_call2260.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call2260.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_264.2, %_p_scalar_261.2
  %300 = shl i64 %297, 3
  %301 = add i64 %300, %296
  %scevgep265.2 = getelementptr i8, i8* %call, i64 %301
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_267.2
  store double %p_add42.i118.2, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.2 = add nuw nsw i64 %polly.indvar248.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar248.2, %smin.2
  br i1 %exitcond853.2.not, label %polly.loop_exit247.2, label %polly.loop_header245.2

polly.loop_exit247.2:                             ; preds = %polly.loop_header245.2, %polly.loop_header239.2
  %polly.indvar_next243.2 = add nuw nsw i64 %polly.indvar242.2, 1
  %polly.loop_cond244.2 = icmp ult i64 %polly.indvar242.2, 79
  %indvars.iv.next852.2 = add i64 %indvars.iv851.2, 1
  br i1 %polly.loop_cond244.2, label %polly.loop_header239.2, label %polly.loop_header239.3

polly.loop_header239.3:                           ; preds = %polly.loop_exit247.2, %polly.loop_exit247.3
  %indvars.iv851.3 = phi i64 [ %indvars.iv.next852.3, %polly.loop_exit247.3 ], [ %107, %polly.loop_exit247.2 ]
  %polly.indvar242.3 = phi i64 [ %polly.indvar_next243.3, %polly.loop_exit247.3 ], [ %111, %polly.loop_exit247.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv851.3, i64 255)
  %302 = add nuw i64 %polly.indvar242.3, %108
  %303 = add i64 %302, %280
  %polly.loop_guard.3940 = icmp sgt i64 %303, -1
  br i1 %polly.loop_guard.3940, label %polly.loop_header245.preheader.3, label %polly.loop_exit247.3

polly.loop_header245.preheader.3:                 ; preds = %polly.loop_header239.3
  %polly.access.add.Packed_MemRef_call2255.3 = add nuw nsw i64 %303, 3600
  %polly.access.Packed_MemRef_call2256.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.3
  %_p_scalar_257.3 = load double, double* %polly.access.Packed_MemRef_call2256.3, align 8
  %304 = mul i64 %302, 8000
  %305 = add i64 %304, %104
  %scevgep262.3 = getelementptr i8, i8* %call1, i64 %305
  %scevgep262263.3 = bitcast i8* %scevgep262.3 to double*
  %_p_scalar_264.3 = load double, double* %scevgep262263.3, align 8, !alias.scope !71, !noalias !78
  %306 = mul i64 %302, 9600
  br label %polly.loop_header245.3

polly.loop_header245.3:                           ; preds = %polly.loop_header245.3, %polly.loop_header245.preheader.3
  %polly.indvar248.3 = phi i64 [ %polly.indvar_next249.3, %polly.loop_header245.3 ], [ 0, %polly.loop_header245.preheader.3 ]
  %307 = add nuw nsw i64 %polly.indvar248.3, %105
  %308 = mul nuw nsw i64 %307, 8000
  %309 = add nuw nsw i64 %308, %104
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %309
  %scevgep251252.3 = bitcast i8* %scevgep251.3 to double*
  %_p_scalar_253.3 = load double, double* %scevgep251252.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_257.3, %_p_scalar_253.3
  %polly.access.add.Packed_MemRef_call2259.3 = add nuw nsw i64 %polly.indvar248.3, 3600
  %polly.access.Packed_MemRef_call2260.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call2260.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_264.3, %_p_scalar_261.3
  %310 = shl i64 %307, 3
  %311 = add i64 %310, %306
  %scevgep265.3 = getelementptr i8, i8* %call, i64 %311
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_267.3
  store double %p_add42.i118.3, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.3 = add nuw nsw i64 %polly.indvar248.3, 1
  %exitcond853.3.not = icmp eq i64 %polly.indvar248.3, %smin.3
  br i1 %exitcond853.3.not, label %polly.loop_exit247.3, label %polly.loop_header245.3

polly.loop_exit247.3:                             ; preds = %polly.loop_header245.3, %polly.loop_header239.3
  %polly.indvar_next243.3 = add nuw nsw i64 %polly.indvar242.3, 1
  %polly.loop_cond244.3 = icmp ult i64 %polly.indvar242.3, 79
  %indvars.iv.next852.3 = add i64 %indvars.iv851.3, 1
  br i1 %polly.loop_cond244.3, label %polly.loop_header239.3, label %polly.loop_exit241.3

polly.loop_exit241.3:                             ; preds = %polly.loop_exit247.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -80
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, 80
  %exitcond855.not = icmp eq i64 %polly.indvar_next231, 15
  br i1 %exitcond855.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header390.1:                           ; preds = %polly.loop_header390, %polly.loop_header390.1
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_header390.1 ], [ 0, %polly.loop_header390 ]
  %312 = add nuw nsw i64 %polly.indvar393.1, %139
  %polly.access.mul.call2397.1 = mul nuw nsw i64 %312, 1000
  %polly.access.add.call2398.1 = add nuw nsw i64 %132, %polly.access.mul.call2397.1
  %polly.access.call2399.1 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398.1
  %polly.access.call2399.load.1 = load double, double* %polly.access.call2399.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273.1 = add nuw nsw i64 %polly.indvar393.1, 1200
  %polly.access.Packed_MemRef_call2273.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.1
  store double %polly.access.call2399.load.1, double* %polly.access.Packed_MemRef_call2273.1, align 8
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %exitcond862.1.not = icmp eq i64 %polly.indvar_next394.1, %indvars.iv860
  br i1 %exitcond862.1.not, label %polly.loop_header390.2, label %polly.loop_header390.1

polly.loop_header390.2:                           ; preds = %polly.loop_header390.1, %polly.loop_header390.2
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_header390.2 ], [ 0, %polly.loop_header390.1 ]
  %313 = add nuw nsw i64 %polly.indvar393.2, %139
  %polly.access.mul.call2397.2 = mul nuw nsw i64 %313, 1000
  %polly.access.add.call2398.2 = add nuw nsw i64 %133, %polly.access.mul.call2397.2
  %polly.access.call2399.2 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398.2
  %polly.access.call2399.load.2 = load double, double* %polly.access.call2399.2, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273.2 = add nuw nsw i64 %polly.indvar393.2, 2400
  %polly.access.Packed_MemRef_call2273.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.2
  store double %polly.access.call2399.load.2, double* %polly.access.Packed_MemRef_call2273.2, align 8
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %exitcond862.2.not = icmp eq i64 %polly.indvar_next394.2, %indvars.iv860
  br i1 %exitcond862.2.not, label %polly.loop_header390.3, label %polly.loop_header390.2

polly.loop_header390.3:                           ; preds = %polly.loop_header390.2, %polly.loop_header390.3
  %polly.indvar393.3 = phi i64 [ %polly.indvar_next394.3, %polly.loop_header390.3 ], [ 0, %polly.loop_header390.2 ]
  %314 = add nuw nsw i64 %polly.indvar393.3, %139
  %polly.access.mul.call2397.3 = mul nuw nsw i64 %314, 1000
  %polly.access.add.call2398.3 = add nuw nsw i64 %134, %polly.access.mul.call2397.3
  %polly.access.call2399.3 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2398.3
  %polly.access.call2399.load.3 = load double, double* %polly.access.call2399.3, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273.3 = add nuw nsw i64 %polly.indvar393.3, 3600
  %polly.access.Packed_MemRef_call2273.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.3
  store double %polly.access.call2399.load.3, double* %polly.access.Packed_MemRef_call2273.3, align 8
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %exitcond862.3.not = icmp eq i64 %polly.indvar_next394.3, %indvars.iv860
  br i1 %exitcond862.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_header390.3
  %315 = mul nsw i64 %polly.indvar381, -256
  %316 = mul nuw nsw i64 %polly.indvar381, 3
  br label %polly.loop_header400

polly.loop_header412.1:                           ; preds = %polly.loop_exit421, %polly.loop_exit421.1
  %indvars.iv873.1 = phi i64 [ %indvars.iv.next874.1, %polly.loop_exit421.1 ], [ %141, %polly.loop_exit421 ]
  %polly.indvar415.1 = phi i64 [ %polly.indvar_next416.1, %polly.loop_exit421.1 ], [ %145, %polly.loop_exit421 ]
  %smin875.1 = call i64 @llvm.smin.i64(i64 %indvars.iv873.1, i64 255)
  %317 = add nuw i64 %polly.indvar415.1, %142
  %318 = add i64 %317, %315
  %polly.loop_guard422.1942 = icmp sgt i64 %318, -1
  br i1 %polly.loop_guard422.1942, label %polly.loop_header419.preheader.1, label %polly.loop_exit421.1

polly.loop_header419.preheader.1:                 ; preds = %polly.loop_header412.1
  %polly.access.add.Packed_MemRef_call2273430.1 = add nuw nsw i64 %318, 1200
  %polly.access.Packed_MemRef_call2273431.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.1
  %_p_scalar_432.1 = load double, double* %polly.access.Packed_MemRef_call2273431.1, align 8
  %319 = mul i64 %317, 8000
  %320 = add i64 %319, %136
  %scevgep437.1 = getelementptr i8, i8* %call1, i64 %320
  %scevgep437438.1 = bitcast i8* %scevgep437.1 to double*
  %_p_scalar_439.1 = load double, double* %scevgep437438.1, align 8, !alias.scope !82, !noalias !88
  %321 = mul i64 %317, 9600
  br label %polly.loop_header419.1

polly.loop_header419.1:                           ; preds = %polly.loop_header419.1, %polly.loop_header419.preheader.1
  %polly.indvar423.1 = phi i64 [ %polly.indvar_next424.1, %polly.loop_header419.1 ], [ 0, %polly.loop_header419.preheader.1 ]
  %322 = add nuw nsw i64 %polly.indvar423.1, %139
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %136
  %scevgep426.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep426427.1 = bitcast i8* %scevgep426.1 to double*
  %_p_scalar_428.1 = load double, double* %scevgep426427.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_432.1, %_p_scalar_428.1
  %polly.access.add.Packed_MemRef_call2273434.1 = add nuw nsw i64 %polly.indvar423.1, 1200
  %polly.access.Packed_MemRef_call2273435.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.1
  %_p_scalar_436.1 = load double, double* %polly.access.Packed_MemRef_call2273435.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_439.1, %_p_scalar_436.1
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %321
  %scevgep440.1 = getelementptr i8, i8* %call, i64 %326
  %scevgep440441.1 = bitcast i8* %scevgep440.1 to double*
  %_p_scalar_442.1 = load double, double* %scevgep440441.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_442.1
  store double %p_add42.i79.1, double* %scevgep440441.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next424.1 = add nuw nsw i64 %polly.indvar423.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar423.1, %smin875.1
  br i1 %exitcond876.1.not, label %polly.loop_exit421.1, label %polly.loop_header419.1

polly.loop_exit421.1:                             ; preds = %polly.loop_header419.1, %polly.loop_header412.1
  %polly.indvar_next416.1 = add nuw nsw i64 %polly.indvar415.1, 1
  %polly.loop_cond417.1 = icmp ult i64 %polly.indvar415.1, 79
  %indvars.iv.next874.1 = add i64 %indvars.iv873.1, 1
  br i1 %polly.loop_cond417.1, label %polly.loop_header412.1, label %polly.loop_header412.2

polly.loop_header412.2:                           ; preds = %polly.loop_exit421.1, %polly.loop_exit421.2
  %indvars.iv873.2 = phi i64 [ %indvars.iv.next874.2, %polly.loop_exit421.2 ], [ %141, %polly.loop_exit421.1 ]
  %polly.indvar415.2 = phi i64 [ %polly.indvar_next416.2, %polly.loop_exit421.2 ], [ %145, %polly.loop_exit421.1 ]
  %smin875.2 = call i64 @llvm.smin.i64(i64 %indvars.iv873.2, i64 255)
  %327 = add nuw i64 %polly.indvar415.2, %142
  %328 = add i64 %327, %315
  %polly.loop_guard422.2943 = icmp sgt i64 %328, -1
  br i1 %polly.loop_guard422.2943, label %polly.loop_header419.preheader.2, label %polly.loop_exit421.2

polly.loop_header419.preheader.2:                 ; preds = %polly.loop_header412.2
  %polly.access.add.Packed_MemRef_call2273430.2 = add nuw nsw i64 %328, 2400
  %polly.access.Packed_MemRef_call2273431.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.2
  %_p_scalar_432.2 = load double, double* %polly.access.Packed_MemRef_call2273431.2, align 8
  %329 = mul i64 %327, 8000
  %330 = add i64 %329, %137
  %scevgep437.2 = getelementptr i8, i8* %call1, i64 %330
  %scevgep437438.2 = bitcast i8* %scevgep437.2 to double*
  %_p_scalar_439.2 = load double, double* %scevgep437438.2, align 8, !alias.scope !82, !noalias !88
  %331 = mul i64 %327, 9600
  br label %polly.loop_header419.2

polly.loop_header419.2:                           ; preds = %polly.loop_header419.2, %polly.loop_header419.preheader.2
  %polly.indvar423.2 = phi i64 [ %polly.indvar_next424.2, %polly.loop_header419.2 ], [ 0, %polly.loop_header419.preheader.2 ]
  %332 = add nuw nsw i64 %polly.indvar423.2, %139
  %333 = mul nuw nsw i64 %332, 8000
  %334 = add nuw nsw i64 %333, %137
  %scevgep426.2 = getelementptr i8, i8* %call1, i64 %334
  %scevgep426427.2 = bitcast i8* %scevgep426.2 to double*
  %_p_scalar_428.2 = load double, double* %scevgep426427.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_432.2, %_p_scalar_428.2
  %polly.access.add.Packed_MemRef_call2273434.2 = add nuw nsw i64 %polly.indvar423.2, 2400
  %polly.access.Packed_MemRef_call2273435.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.2
  %_p_scalar_436.2 = load double, double* %polly.access.Packed_MemRef_call2273435.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_439.2, %_p_scalar_436.2
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %331
  %scevgep440.2 = getelementptr i8, i8* %call, i64 %336
  %scevgep440441.2 = bitcast i8* %scevgep440.2 to double*
  %_p_scalar_442.2 = load double, double* %scevgep440441.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_442.2
  store double %p_add42.i79.2, double* %scevgep440441.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next424.2 = add nuw nsw i64 %polly.indvar423.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar423.2, %smin875.2
  br i1 %exitcond876.2.not, label %polly.loop_exit421.2, label %polly.loop_header419.2

polly.loop_exit421.2:                             ; preds = %polly.loop_header419.2, %polly.loop_header412.2
  %polly.indvar_next416.2 = add nuw nsw i64 %polly.indvar415.2, 1
  %polly.loop_cond417.2 = icmp ult i64 %polly.indvar415.2, 79
  %indvars.iv.next874.2 = add i64 %indvars.iv873.2, 1
  br i1 %polly.loop_cond417.2, label %polly.loop_header412.2, label %polly.loop_header412.3

polly.loop_header412.3:                           ; preds = %polly.loop_exit421.2, %polly.loop_exit421.3
  %indvars.iv873.3 = phi i64 [ %indvars.iv.next874.3, %polly.loop_exit421.3 ], [ %141, %polly.loop_exit421.2 ]
  %polly.indvar415.3 = phi i64 [ %polly.indvar_next416.3, %polly.loop_exit421.3 ], [ %145, %polly.loop_exit421.2 ]
  %smin875.3 = call i64 @llvm.smin.i64(i64 %indvars.iv873.3, i64 255)
  %337 = add nuw i64 %polly.indvar415.3, %142
  %338 = add i64 %337, %315
  %polly.loop_guard422.3944 = icmp sgt i64 %338, -1
  br i1 %polly.loop_guard422.3944, label %polly.loop_header419.preheader.3, label %polly.loop_exit421.3

polly.loop_header419.preheader.3:                 ; preds = %polly.loop_header412.3
  %polly.access.add.Packed_MemRef_call2273430.3 = add nuw nsw i64 %338, 3600
  %polly.access.Packed_MemRef_call2273431.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.3
  %_p_scalar_432.3 = load double, double* %polly.access.Packed_MemRef_call2273431.3, align 8
  %339 = mul i64 %337, 8000
  %340 = add i64 %339, %138
  %scevgep437.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep437438.3 = bitcast i8* %scevgep437.3 to double*
  %_p_scalar_439.3 = load double, double* %scevgep437438.3, align 8, !alias.scope !82, !noalias !88
  %341 = mul i64 %337, 9600
  br label %polly.loop_header419.3

polly.loop_header419.3:                           ; preds = %polly.loop_header419.3, %polly.loop_header419.preheader.3
  %polly.indvar423.3 = phi i64 [ %polly.indvar_next424.3, %polly.loop_header419.3 ], [ 0, %polly.loop_header419.preheader.3 ]
  %342 = add nuw nsw i64 %polly.indvar423.3, %139
  %343 = mul nuw nsw i64 %342, 8000
  %344 = add nuw nsw i64 %343, %138
  %scevgep426.3 = getelementptr i8, i8* %call1, i64 %344
  %scevgep426427.3 = bitcast i8* %scevgep426.3 to double*
  %_p_scalar_428.3 = load double, double* %scevgep426427.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_432.3, %_p_scalar_428.3
  %polly.access.add.Packed_MemRef_call2273434.3 = add nuw nsw i64 %polly.indvar423.3, 3600
  %polly.access.Packed_MemRef_call2273435.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.3
  %_p_scalar_436.3 = load double, double* %polly.access.Packed_MemRef_call2273435.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_439.3, %_p_scalar_436.3
  %345 = shl i64 %342, 3
  %346 = add i64 %345, %341
  %scevgep440.3 = getelementptr i8, i8* %call, i64 %346
  %scevgep440441.3 = bitcast i8* %scevgep440.3 to double*
  %_p_scalar_442.3 = load double, double* %scevgep440441.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_442.3
  store double %p_add42.i79.3, double* %scevgep440441.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next424.3 = add nuw nsw i64 %polly.indvar423.3, 1
  %exitcond876.3.not = icmp eq i64 %polly.indvar423.3, %smin875.3
  br i1 %exitcond876.3.not, label %polly.loop_exit421.3, label %polly.loop_header419.3

polly.loop_exit421.3:                             ; preds = %polly.loop_header419.3, %polly.loop_header412.3
  %polly.indvar_next416.3 = add nuw nsw i64 %polly.indvar415.3, 1
  %polly.loop_cond417.3 = icmp ult i64 %polly.indvar415.3, 79
  %indvars.iv.next874.3 = add i64 %indvars.iv873.3, 1
  br i1 %polly.loop_cond417.3, label %polly.loop_header412.3, label %polly.loop_exit414.3

polly.loop_exit414.3:                             ; preds = %polly.loop_exit421.3
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -80
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, 80
  %exitcond878.not = icmp eq i64 %polly.indvar_next404, 15
  br i1 %exitcond878.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header565.1:                           ; preds = %polly.loop_header565, %polly.loop_header565.1
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_header565.1 ], [ 0, %polly.loop_header565 ]
  %347 = add nuw nsw i64 %polly.indvar568.1, %173
  %polly.access.mul.call2572.1 = mul nuw nsw i64 %347, 1000
  %polly.access.add.call2573.1 = add nuw nsw i64 %166, %polly.access.mul.call2572.1
  %polly.access.call2574.1 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573.1
  %polly.access.call2574.load.1 = load double, double* %polly.access.call2574.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2448.1 = add nuw nsw i64 %polly.indvar568.1, 1200
  %polly.access.Packed_MemRef_call2448.1 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448.1
  store double %polly.access.call2574.load.1, double* %polly.access.Packed_MemRef_call2448.1, align 8
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %exitcond885.1.not = icmp eq i64 %polly.indvar_next569.1, %indvars.iv883
  br i1 %exitcond885.1.not, label %polly.loop_header565.2, label %polly.loop_header565.1

polly.loop_header565.2:                           ; preds = %polly.loop_header565.1, %polly.loop_header565.2
  %polly.indvar568.2 = phi i64 [ %polly.indvar_next569.2, %polly.loop_header565.2 ], [ 0, %polly.loop_header565.1 ]
  %348 = add nuw nsw i64 %polly.indvar568.2, %173
  %polly.access.mul.call2572.2 = mul nuw nsw i64 %348, 1000
  %polly.access.add.call2573.2 = add nuw nsw i64 %167, %polly.access.mul.call2572.2
  %polly.access.call2574.2 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573.2
  %polly.access.call2574.load.2 = load double, double* %polly.access.call2574.2, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2448.2 = add nuw nsw i64 %polly.indvar568.2, 2400
  %polly.access.Packed_MemRef_call2448.2 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448.2
  store double %polly.access.call2574.load.2, double* %polly.access.Packed_MemRef_call2448.2, align 8
  %polly.indvar_next569.2 = add nuw nsw i64 %polly.indvar568.2, 1
  %exitcond885.2.not = icmp eq i64 %polly.indvar_next569.2, %indvars.iv883
  br i1 %exitcond885.2.not, label %polly.loop_header565.3, label %polly.loop_header565.2

polly.loop_header565.3:                           ; preds = %polly.loop_header565.2, %polly.loop_header565.3
  %polly.indvar568.3 = phi i64 [ %polly.indvar_next569.3, %polly.loop_header565.3 ], [ 0, %polly.loop_header565.2 ]
  %349 = add nuw nsw i64 %polly.indvar568.3, %173
  %polly.access.mul.call2572.3 = mul nuw nsw i64 %349, 1000
  %polly.access.add.call2573.3 = add nuw nsw i64 %168, %polly.access.mul.call2572.3
  %polly.access.call2574.3 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2573.3
  %polly.access.call2574.load.3 = load double, double* %polly.access.call2574.3, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2448.3 = add nuw nsw i64 %polly.indvar568.3, 3600
  %polly.access.Packed_MemRef_call2448.3 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448.3
  store double %polly.access.call2574.load.3, double* %polly.access.Packed_MemRef_call2448.3, align 8
  %polly.indvar_next569.3 = add nuw nsw i64 %polly.indvar568.3, 1
  %exitcond885.3.not = icmp eq i64 %polly.indvar_next569.3, %indvars.iv883
  br i1 %exitcond885.3.not, label %polly.loop_exit567.3, label %polly.loop_header565.3

polly.loop_exit567.3:                             ; preds = %polly.loop_header565.3
  %350 = mul nsw i64 %polly.indvar556, -256
  %351 = mul nuw nsw i64 %polly.indvar556, 3
  br label %polly.loop_header575

polly.loop_header587.1:                           ; preds = %polly.loop_exit596, %polly.loop_exit596.1
  %indvars.iv896.1 = phi i64 [ %indvars.iv.next897.1, %polly.loop_exit596.1 ], [ %175, %polly.loop_exit596 ]
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_exit596.1 ], [ %179, %polly.loop_exit596 ]
  %smin898.1 = call i64 @llvm.smin.i64(i64 %indvars.iv896.1, i64 255)
  %352 = add nuw i64 %polly.indvar590.1, %176
  %353 = add i64 %352, %350
  %polly.loop_guard597.1946 = icmp sgt i64 %353, -1
  br i1 %polly.loop_guard597.1946, label %polly.loop_header594.preheader.1, label %polly.loop_exit596.1

polly.loop_header594.preheader.1:                 ; preds = %polly.loop_header587.1
  %polly.access.add.Packed_MemRef_call2448605.1 = add nuw nsw i64 %353, 1200
  %polly.access.Packed_MemRef_call2448606.1 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.1
  %_p_scalar_607.1 = load double, double* %polly.access.Packed_MemRef_call2448606.1, align 8
  %354 = mul i64 %352, 8000
  %355 = add i64 %354, %170
  %scevgep612.1 = getelementptr i8, i8* %call1, i64 %355
  %scevgep612613.1 = bitcast i8* %scevgep612.1 to double*
  %_p_scalar_614.1 = load double, double* %scevgep612613.1, align 8, !alias.scope !92, !noalias !98
  %356 = mul i64 %352, 9600
  br label %polly.loop_header594.1

polly.loop_header594.1:                           ; preds = %polly.loop_header594.1, %polly.loop_header594.preheader.1
  %polly.indvar598.1 = phi i64 [ %polly.indvar_next599.1, %polly.loop_header594.1 ], [ 0, %polly.loop_header594.preheader.1 ]
  %357 = add nuw nsw i64 %polly.indvar598.1, %173
  %358 = mul nuw nsw i64 %357, 8000
  %359 = add nuw nsw i64 %358, %170
  %scevgep601.1 = getelementptr i8, i8* %call1, i64 %359
  %scevgep601602.1 = bitcast i8* %scevgep601.1 to double*
  %_p_scalar_603.1 = load double, double* %scevgep601602.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_607.1, %_p_scalar_603.1
  %polly.access.add.Packed_MemRef_call2448609.1 = add nuw nsw i64 %polly.indvar598.1, 1200
  %polly.access.Packed_MemRef_call2448610.1 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.1
  %_p_scalar_611.1 = load double, double* %polly.access.Packed_MemRef_call2448610.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_614.1, %_p_scalar_611.1
  %360 = shl i64 %357, 3
  %361 = add i64 %360, %356
  %scevgep615.1 = getelementptr i8, i8* %call, i64 %361
  %scevgep615616.1 = bitcast i8* %scevgep615.1 to double*
  %_p_scalar_617.1 = load double, double* %scevgep615616.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_617.1
  store double %p_add42.i.1, double* %scevgep615616.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next599.1 = add nuw nsw i64 %polly.indvar598.1, 1
  %exitcond899.1.not = icmp eq i64 %polly.indvar598.1, %smin898.1
  br i1 %exitcond899.1.not, label %polly.loop_exit596.1, label %polly.loop_header594.1

polly.loop_exit596.1:                             ; preds = %polly.loop_header594.1, %polly.loop_header587.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %polly.loop_cond592.1 = icmp ult i64 %polly.indvar590.1, 79
  %indvars.iv.next897.1 = add i64 %indvars.iv896.1, 1
  br i1 %polly.loop_cond592.1, label %polly.loop_header587.1, label %polly.loop_header587.2

polly.loop_header587.2:                           ; preds = %polly.loop_exit596.1, %polly.loop_exit596.2
  %indvars.iv896.2 = phi i64 [ %indvars.iv.next897.2, %polly.loop_exit596.2 ], [ %175, %polly.loop_exit596.1 ]
  %polly.indvar590.2 = phi i64 [ %polly.indvar_next591.2, %polly.loop_exit596.2 ], [ %179, %polly.loop_exit596.1 ]
  %smin898.2 = call i64 @llvm.smin.i64(i64 %indvars.iv896.2, i64 255)
  %362 = add nuw i64 %polly.indvar590.2, %176
  %363 = add i64 %362, %350
  %polly.loop_guard597.2947 = icmp sgt i64 %363, -1
  br i1 %polly.loop_guard597.2947, label %polly.loop_header594.preheader.2, label %polly.loop_exit596.2

polly.loop_header594.preheader.2:                 ; preds = %polly.loop_header587.2
  %polly.access.add.Packed_MemRef_call2448605.2 = add nuw nsw i64 %363, 2400
  %polly.access.Packed_MemRef_call2448606.2 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.2
  %_p_scalar_607.2 = load double, double* %polly.access.Packed_MemRef_call2448606.2, align 8
  %364 = mul i64 %362, 8000
  %365 = add i64 %364, %171
  %scevgep612.2 = getelementptr i8, i8* %call1, i64 %365
  %scevgep612613.2 = bitcast i8* %scevgep612.2 to double*
  %_p_scalar_614.2 = load double, double* %scevgep612613.2, align 8, !alias.scope !92, !noalias !98
  %366 = mul i64 %362, 9600
  br label %polly.loop_header594.2

polly.loop_header594.2:                           ; preds = %polly.loop_header594.2, %polly.loop_header594.preheader.2
  %polly.indvar598.2 = phi i64 [ %polly.indvar_next599.2, %polly.loop_header594.2 ], [ 0, %polly.loop_header594.preheader.2 ]
  %367 = add nuw nsw i64 %polly.indvar598.2, %173
  %368 = mul nuw nsw i64 %367, 8000
  %369 = add nuw nsw i64 %368, %171
  %scevgep601.2 = getelementptr i8, i8* %call1, i64 %369
  %scevgep601602.2 = bitcast i8* %scevgep601.2 to double*
  %_p_scalar_603.2 = load double, double* %scevgep601602.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_607.2, %_p_scalar_603.2
  %polly.access.add.Packed_MemRef_call2448609.2 = add nuw nsw i64 %polly.indvar598.2, 2400
  %polly.access.Packed_MemRef_call2448610.2 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.2
  %_p_scalar_611.2 = load double, double* %polly.access.Packed_MemRef_call2448610.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_614.2, %_p_scalar_611.2
  %370 = shl i64 %367, 3
  %371 = add i64 %370, %366
  %scevgep615.2 = getelementptr i8, i8* %call, i64 %371
  %scevgep615616.2 = bitcast i8* %scevgep615.2 to double*
  %_p_scalar_617.2 = load double, double* %scevgep615616.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_617.2
  store double %p_add42.i.2, double* %scevgep615616.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next599.2 = add nuw nsw i64 %polly.indvar598.2, 1
  %exitcond899.2.not = icmp eq i64 %polly.indvar598.2, %smin898.2
  br i1 %exitcond899.2.not, label %polly.loop_exit596.2, label %polly.loop_header594.2

polly.loop_exit596.2:                             ; preds = %polly.loop_header594.2, %polly.loop_header587.2
  %polly.indvar_next591.2 = add nuw nsw i64 %polly.indvar590.2, 1
  %polly.loop_cond592.2 = icmp ult i64 %polly.indvar590.2, 79
  %indvars.iv.next897.2 = add i64 %indvars.iv896.2, 1
  br i1 %polly.loop_cond592.2, label %polly.loop_header587.2, label %polly.loop_header587.3

polly.loop_header587.3:                           ; preds = %polly.loop_exit596.2, %polly.loop_exit596.3
  %indvars.iv896.3 = phi i64 [ %indvars.iv.next897.3, %polly.loop_exit596.3 ], [ %175, %polly.loop_exit596.2 ]
  %polly.indvar590.3 = phi i64 [ %polly.indvar_next591.3, %polly.loop_exit596.3 ], [ %179, %polly.loop_exit596.2 ]
  %smin898.3 = call i64 @llvm.smin.i64(i64 %indvars.iv896.3, i64 255)
  %372 = add nuw i64 %polly.indvar590.3, %176
  %373 = add i64 %372, %350
  %polly.loop_guard597.3948 = icmp sgt i64 %373, -1
  br i1 %polly.loop_guard597.3948, label %polly.loop_header594.preheader.3, label %polly.loop_exit596.3

polly.loop_header594.preheader.3:                 ; preds = %polly.loop_header587.3
  %polly.access.add.Packed_MemRef_call2448605.3 = add nuw nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call2448606.3 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.3
  %_p_scalar_607.3 = load double, double* %polly.access.Packed_MemRef_call2448606.3, align 8
  %374 = mul i64 %372, 8000
  %375 = add i64 %374, %172
  %scevgep612.3 = getelementptr i8, i8* %call1, i64 %375
  %scevgep612613.3 = bitcast i8* %scevgep612.3 to double*
  %_p_scalar_614.3 = load double, double* %scevgep612613.3, align 8, !alias.scope !92, !noalias !98
  %376 = mul i64 %372, 9600
  br label %polly.loop_header594.3

polly.loop_header594.3:                           ; preds = %polly.loop_header594.3, %polly.loop_header594.preheader.3
  %polly.indvar598.3 = phi i64 [ %polly.indvar_next599.3, %polly.loop_header594.3 ], [ 0, %polly.loop_header594.preheader.3 ]
  %377 = add nuw nsw i64 %polly.indvar598.3, %173
  %378 = mul nuw nsw i64 %377, 8000
  %379 = add nuw nsw i64 %378, %172
  %scevgep601.3 = getelementptr i8, i8* %call1, i64 %379
  %scevgep601602.3 = bitcast i8* %scevgep601.3 to double*
  %_p_scalar_603.3 = load double, double* %scevgep601602.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_607.3, %_p_scalar_603.3
  %polly.access.add.Packed_MemRef_call2448609.3 = add nuw nsw i64 %polly.indvar598.3, 3600
  %polly.access.Packed_MemRef_call2448610.3 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.3
  %_p_scalar_611.3 = load double, double* %polly.access.Packed_MemRef_call2448610.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_614.3, %_p_scalar_611.3
  %380 = shl i64 %377, 3
  %381 = add i64 %380, %376
  %scevgep615.3 = getelementptr i8, i8* %call, i64 %381
  %scevgep615616.3 = bitcast i8* %scevgep615.3 to double*
  %_p_scalar_617.3 = load double, double* %scevgep615616.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_617.3
  store double %p_add42.i.3, double* %scevgep615616.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next599.3 = add nuw nsw i64 %polly.indvar598.3, 1
  %exitcond899.3.not = icmp eq i64 %polly.indvar598.3, %smin898.3
  br i1 %exitcond899.3.not, label %polly.loop_exit596.3, label %polly.loop_header594.3

polly.loop_exit596.3:                             ; preds = %polly.loop_header594.3, %polly.loop_header587.3
  %polly.indvar_next591.3 = add nuw nsw i64 %polly.indvar590.3, 1
  %polly.loop_cond592.3 = icmp ult i64 %polly.indvar590.3, 79
  %indvars.iv.next897.3 = add i64 %indvars.iv896.3, 1
  br i1 %polly.loop_cond592.3, label %polly.loop_header587.3, label %polly.loop_exit589.3

polly.loop_exit589.3:                             ; preds = %polly.loop_exit596.3
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -80
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, 80
  %exitcond901.not = icmp eq i64 %polly.indvar_next579, 15
  br i1 %exitcond901.not, label %polly.loop_exit577, label %polly.loop_header575
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
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
