; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10541.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10541.c"
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
  %call720 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1581 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1581, %call2
  %polly.access.call2601 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2601, %call1
  %2 = or i1 %0, %1
  %polly.access.call621 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call621, %call2
  %4 = icmp ule i8* %polly.access.call2601, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call621, %call1
  %8 = icmp ule i8* %polly.access.call1581, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header694, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep899 = getelementptr i8, i8* %call2, i64 %12
  %scevgep898 = getelementptr i8, i8* %call2, i64 %11
  %scevgep897 = getelementptr i8, i8* %call1, i64 %12
  %scevgep896 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep896, %scevgep899
  %bound1 = icmp ult i8* %scevgep898, %scevgep897
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
  br i1 %exitcond18.not.i, label %vector.ph903, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph903:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert910 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat911 = shufflevector <4 x i64> %broadcast.splatinsert910, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph903
  %index904 = phi i64 [ 0, %vector.ph903 ], [ %index.next905, %vector.body902 ]
  %vec.ind908 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph903 ], [ %vec.ind.next909, %vector.body902 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind908, %broadcast.splat911
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index904
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next905 = add i64 %index904, 4
  %vec.ind.next909 = add <4 x i64> %vec.ind908, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next905, 1200
  br i1 %40, label %for.inc41.i, label %vector.body902, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body902
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph903, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check966 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check966, label %for.body3.i46.preheader1043, label %vector.ph967

vector.ph967:                                     ; preds = %for.body3.i46.preheader
  %n.vec969 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph967
  %index970 = phi i64 [ 0, %vector.ph967 ], [ %index.next971, %vector.body965 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index970
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next971 = add i64 %index970, 4
  %46 = icmp eq i64 %index.next971, %n.vec969
  br i1 %46, label %middle.block963, label %vector.body965, !llvm.loop !18

middle.block963:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %indvars.iv21.i, %n.vec969
  br i1 %cmp.n973, label %for.inc6.i, label %for.body3.i46.preheader1043

for.body3.i46.preheader1043:                      ; preds = %for.body3.i46.preheader, %middle.block963
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec969, %middle.block963 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1043, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1043 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block963, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit520
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check989 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check989, label %for.body3.i60.preheader1041, label %vector.ph990

vector.ph990:                                     ; preds = %for.body3.i60.preheader
  %n.vec992 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next994, %vector.body988 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index993
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load997 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load997, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next994 = add i64 %index993, 4
  %57 = icmp eq i64 %index.next994, %n.vec992
  br i1 %57, label %middle.block986, label %vector.body988, !llvm.loop !51

middle.block986:                                  ; preds = %vector.body988
  %cmp.n996 = icmp eq i64 %indvars.iv21.i52, %n.vec992
  br i1 %cmp.n996, label %for.inc6.i63, label %for.body3.i60.preheader1041

for.body3.i60.preheader1041:                      ; preds = %for.body3.i60.preheader, %middle.block986
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec992, %middle.block986 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1041, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1041 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block986, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit362
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1015 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1015, label %for.body3.i99.preheader1039, label %vector.ph1016

vector.ph1016:                                    ; preds = %for.body3.i99.preheader
  %n.vec1018 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1014 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1019
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1023 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1023, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1020 = add i64 %index1019, 4
  %68 = icmp eq i64 %index.next1020, %n.vec1018
  br i1 %68, label %middle.block1012, label %vector.body1014, !llvm.loop !53

middle.block1012:                                 ; preds = %vector.body1014
  %cmp.n1022 = icmp eq i64 %indvars.iv21.i91, %n.vec1018
  br i1 %cmp.n1022, label %for.inc6.i102, label %for.body3.i99.preheader1039

for.body3.i99.preheader1039:                      ; preds = %for.body3.i99.preheader, %middle.block1012
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1018, %middle.block1012 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1039, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1039 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1012, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1027 = phi i64 [ %indvar.next1028, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1027, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1029 = icmp ult i64 %88, 4
  br i1 %min.iters.check1029, label %polly.loop_header191.preheader, label %vector.ph1030

vector.ph1030:                                    ; preds = %polly.loop_header
  %n.vec1032 = and i64 %88, -4
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1030
  %index1033 = phi i64 [ 0, %vector.ph1030 ], [ %index.next1034, %vector.body1026 ]
  %90 = shl nuw nsw i64 %index1033, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1037 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1037, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1034 = add i64 %index1033, 4
  %95 = icmp eq i64 %index.next1034, %n.vec1032
  br i1 %95, label %middle.block1024, label %vector.body1026, !llvm.loop !64

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1036 = icmp eq i64 %88, %n.vec1032
  br i1 %cmp.n1036, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1024
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1032, %middle.block1024 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1024
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1028 = add i64 %indvar1027, 1
  br i1 %exitcond802.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond801.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = udiv i64 %indvars.iv796, 5
  %98 = add nuw i64 %indvars.iv794, %97
  %umin = call i64 @llvm.umin.i64(i64 %98, i64 53)
  %99 = mul nsw i64 %polly.indvar202, -128
  %100 = icmp slt i64 %99, -1072
  %101 = select i1 %100, i64 %99, i64 -1072
  %102 = add nsw i64 %101, 1199
  %103 = shl nsw i64 %polly.indvar202, 7
  %104 = add nuw nsw i64 %umin, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 128
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 6
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 2
  %exitcond800.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond800.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %105 = shl i64 %polly.indvar208, 6
  %106 = shl i64 %polly.indvar208, 6
  %107 = shl i64 %polly.indvar208, 6
  %108 = or i64 %107, 8
  %109 = shl i64 %polly.indvar208, 6
  %110 = or i64 %109, 16
  %111 = shl i64 %polly.indvar208, 6
  %112 = or i64 %111, 24
  %113 = shl i64 %polly.indvar208, 6
  %114 = or i64 %113, 32
  %115 = shl i64 %polly.indvar208, 6
  %116 = or i64 %115, 40
  %117 = shl i64 %polly.indvar208, 6
  %118 = or i64 %117, 48
  %119 = or i64 %105, 56
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next209, 125
  br i1 %exitcond799.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %indvars.iv787, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %120 = mul nuw nsw i64 %polly.indvar214, 20
  %121 = add nsw i64 %120, %99
  %122 = icmp sgt i64 %121, 0
  %123 = select i1 %122, i64 %121, i64 0
  %polly.loop_guard.not = icmp sgt i64 %123, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %124 = add i64 %smax, %indvars.iv789
  %125 = sub nsw i64 %103, %120
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 20
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -20
  %exitcond798.not = icmp eq i64 %polly.indvar214, %104
  br i1 %exitcond798.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv791 = phi i64 [ %124, %polly.loop_header217.preheader ], [ %indvars.iv.next792, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %123, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 19)
  %126 = add nsw i64 %polly.indvar220, %125
  %polly.loop_guard233885 = icmp sgt i64 %126, -1
  %127 = add nuw nsw i64 %polly.indvar220, %103
  %128 = mul i64 %127, 8000
  %129 = mul i64 %127, 9600
  br i1 %polly.loop_guard233885, label %polly.loop_header223.us.preheader, label %polly.loop_exit225

polly.loop_header223.us.preheader:                ; preds = %polly.loop_header217
  %130 = add i64 %106, %128
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %130
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %130
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us.preheader, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us.preheader ]
  %131 = add nuw nsw i64 %polly.indvar234.us, %120
  %132 = mul nuw nsw i64 %131, 8000
  %133 = add nuw nsw i64 %132, %106
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %134 = shl i64 %131, 3
  %135 = add i64 %134, %129
  %scevgep249.us = getelementptr i8, i8* %call, i64 %135
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.loopexit.us, label %polly.loop_header230.us

polly.loop_exit232.loopexit.us:                   ; preds = %polly.loop_header230.us
  %136 = add i64 %108, %128
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %136
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %136
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_exit225:                               ; preds = %polly.loop_header230.us.7, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %102
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1001 = phi i64 [ %indvar.next1002, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %137 = add i64 %indvar1001, 1
  %138 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %138
  %min.iters.check1003 = icmp ult i64 %137, 4
  br i1 %min.iters.check1003, label %polly.loop_header344.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %polly.loop_header338
  %n.vec1006 = and i64 %137, -4
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %vector.ph1004
  %index1007 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1008, %vector.body1000 ]
  %139 = shl nuw nsw i64 %index1007, 3
  %140 = getelementptr i8, i8* %scevgep350, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1011 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !69, !noalias !71
  %142 = fmul fast <4 x double> %wide.load1011, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !69, !noalias !71
  %index.next1008 = add i64 %index1007, 4
  %144 = icmp eq i64 %index.next1008, %n.vec1006
  br i1 %144, label %middle.block998, label %vector.body1000, !llvm.loop !74

middle.block998:                                  ; preds = %vector.body1000
  %cmp.n1010 = icmp eq i64 %137, %n.vec1006
  br i1 %cmp.n1010, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block998
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1006, %middle.block998 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block998
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next1002 = add i64 %indvar1001, 1
  br i1 %exitcond826.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %145
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond825.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit362 ], [ 1, %polly.loop_exit346 ]
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %146 = udiv i64 %indvars.iv819, 5
  %147 = add nuw i64 %indvars.iv817, %146
  %umin821 = call i64 @llvm.umin.i64(i64 %147, i64 53)
  %148 = mul nsw i64 %polly.indvar357, -128
  %149 = icmp slt i64 %148, -1072
  %150 = select i1 %149, i64 %148, i64 -1072
  %151 = add nsw i64 %150, 1199
  %152 = shl nsw i64 %polly.indvar357, 7
  %153 = add nuw nsw i64 %umin821, 6
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, -128
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 128
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 6
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 2
  %exitcond824.not = icmp eq i64 %polly.indvar_next358, 10
  br i1 %exitcond824.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit369 ]
  %154 = shl i64 %polly.indvar363, 6
  %155 = shl i64 %polly.indvar363, 6
  %156 = shl i64 %polly.indvar363, 6
  %157 = or i64 %156, 8
  %158 = shl i64 %polly.indvar363, 6
  %159 = or i64 %158, 16
  %160 = shl i64 %polly.indvar363, 6
  %161 = or i64 %160, 24
  %162 = shl i64 %polly.indvar363, 6
  %163 = or i64 %162, 32
  %164 = shl i64 %polly.indvar363, 6
  %165 = or i64 %164, 40
  %166 = shl i64 %polly.indvar363, 6
  %167 = or i64 %166, 48
  %168 = or i64 %154, 56
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next364, 125
  br i1 %exitcond823.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit376 ], [ %indvars.iv808, %polly.loop_header360 ]
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit376 ], [ %indvars.iv803, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %169 = mul nuw nsw i64 %polly.indvar370, 20
  %170 = add nsw i64 %169, %148
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard377.not = icmp sgt i64 %172, %151
  br i1 %polly.loop_guard377.not, label %polly.loop_exit376, label %polly.loop_header374.preheader

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax807 = call i64 @llvm.smax.i64(i64 %indvars.iv805, i64 0)
  %173 = add i64 %smax807, %indvars.iv810
  %174 = sub nsw i64 %152, %169
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, 20
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -20
  %exitcond822.not = icmp eq i64 %polly.indvar370, %153
  br i1 %exitcond822.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv812 = phi i64 [ %173, %polly.loop_header374.preheader ], [ %indvars.iv.next813, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %172, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin814 = call i64 @llvm.smin.i64(i64 %indvars.iv812, i64 19)
  %175 = add nsw i64 %polly.indvar378, %174
  %polly.loop_guard391886 = icmp sgt i64 %175, -1
  %176 = add nuw nsw i64 %polly.indvar378, %152
  %177 = mul i64 %176, 8000
  %178 = mul i64 %176, 9600
  br i1 %polly.loop_guard391886, label %polly.loop_header381.us.preheader, label %polly.loop_exit383

polly.loop_header381.us.preheader:                ; preds = %polly.loop_header374
  %179 = add i64 %155, %177
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %179
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %179
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us.preheader, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us.preheader ]
  %180 = add nuw nsw i64 %polly.indvar392.us, %169
  %181 = mul nuw nsw i64 %180, 8000
  %182 = add nuw nsw i64 %181, %155
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %182
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %182
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %183 = shl i64 %180, 3
  %184 = add i64 %183, %178
  %scevgep407.us = getelementptr i8, i8* %call, i64 %184
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar392.us, %smin814
  br i1 %exitcond815.not, label %polly.loop_exit390.loopexit.us, label %polly.loop_header388.us

polly.loop_exit390.loopexit.us:                   ; preds = %polly.loop_header388.us
  %185 = add i64 %157, %177
  %scevgep398.us.1 = getelementptr i8, i8* %call2, i64 %185
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.1 = getelementptr i8, i8* %call1, i64 %185
  %scevgep404405.us.1 = bitcast i8* %scevgep404.us.1 to double*
  %_p_scalar_406.us.1 = load double, double* %scevgep404405.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.1

polly.loop_exit383:                               ; preds = %polly.loop_header388.us.7, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380.not.not = icmp ult i64 %polly.indvar378, %151
  %indvars.iv.next813 = add i64 %indvars.iv812, 1
  br i1 %polly.loop_cond380.not.not, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %186 = add i64 %indvar, 1
  %187 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %187
  %min.iters.check977 = icmp ult i64 %186, 4
  br i1 %min.iters.check977, label %polly.loop_header502.preheader, label %vector.ph978

vector.ph978:                                     ; preds = %polly.loop_header496
  %n.vec980 = and i64 %186, -4
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph978
  %index981 = phi i64 [ 0, %vector.ph978 ], [ %index.next982, %vector.body976 ]
  %188 = shl nuw nsw i64 %index981, 3
  %189 = getelementptr i8, i8* %scevgep508, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load985 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !78, !noalias !80
  %191 = fmul fast <4 x double> %wide.load985, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !78, !noalias !80
  %index.next982 = add i64 %index981, 4
  %193 = icmp eq i64 %index.next982, %n.vec980
  br i1 %193, label %middle.block974, label %vector.body976, !llvm.loop !83

middle.block974:                                  ; preds = %vector.body976
  %cmp.n984 = icmp eq i64 %186, %n.vec980
  br i1 %cmp.n984, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block974
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec980, %middle.block974 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block974
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond850.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %194 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %194
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond849.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit520 ], [ 1, %polly.loop_exit504 ]
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %195 = udiv i64 %indvars.iv843, 5
  %196 = add nuw i64 %indvars.iv841, %195
  %umin845 = call i64 @llvm.umin.i64(i64 %196, i64 53)
  %197 = mul nsw i64 %polly.indvar515, -128
  %198 = icmp slt i64 %197, -1072
  %199 = select i1 %198, i64 %197, i64 -1072
  %200 = add nsw i64 %199, 1199
  %201 = shl nsw i64 %polly.indvar515, 7
  %202 = add nuw nsw i64 %umin845, 6
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -128
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 128
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 6
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 2
  %exitcond848.not = icmp eq i64 %polly.indvar_next516, 10
  br i1 %exitcond848.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %polly.indvar521 = phi i64 [ 0, %polly.loop_header512 ], [ %polly.indvar_next522, %polly.loop_exit527 ]
  %203 = shl i64 %polly.indvar521, 6
  %204 = shl i64 %polly.indvar521, 6
  %205 = shl i64 %polly.indvar521, 6
  %206 = or i64 %205, 8
  %207 = shl i64 %polly.indvar521, 6
  %208 = or i64 %207, 16
  %209 = shl i64 %polly.indvar521, 6
  %210 = or i64 %209, 24
  %211 = shl i64 %polly.indvar521, 6
  %212 = or i64 %211, 32
  %213 = shl i64 %polly.indvar521, 6
  %214 = or i64 %213, 40
  %215 = shl i64 %polly.indvar521, 6
  %216 = or i64 %215, 48
  %217 = or i64 %203, 56
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next522, 125
  br i1 %exitcond847.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit534 ], [ %indvars.iv832, %polly.loop_header518 ]
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit534 ], [ %indvars.iv827, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %218 = mul nuw nsw i64 %polly.indvar528, 20
  %219 = add nsw i64 %218, %197
  %220 = icmp sgt i64 %219, 0
  %221 = select i1 %220, i64 %219, i64 0
  %polly.loop_guard535.not = icmp sgt i64 %221, %200
  br i1 %polly.loop_guard535.not, label %polly.loop_exit534, label %polly.loop_header532.preheader

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax831 = call i64 @llvm.smax.i64(i64 %indvars.iv829, i64 0)
  %222 = add i64 %smax831, %indvars.iv834
  %223 = sub nsw i64 %201, %218
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, 20
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -20
  %exitcond846.not = icmp eq i64 %polly.indvar528, %202
  br i1 %exitcond846.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv836 = phi i64 [ %222, %polly.loop_header532.preheader ], [ %indvars.iv.next837, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %221, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin838 = call i64 @llvm.smin.i64(i64 %indvars.iv836, i64 19)
  %224 = add nsw i64 %polly.indvar536, %223
  %polly.loop_guard549887 = icmp sgt i64 %224, -1
  %225 = add nuw nsw i64 %polly.indvar536, %201
  %226 = mul i64 %225, 8000
  %227 = mul i64 %225, 9600
  br i1 %polly.loop_guard549887, label %polly.loop_header539.us.preheader, label %polly.loop_exit541

polly.loop_header539.us.preheader:                ; preds = %polly.loop_header532
  %228 = add i64 %204, %226
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %228
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %228
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us.preheader, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us.preheader ]
  %229 = add nuw nsw i64 %polly.indvar550.us, %218
  %230 = mul nuw nsw i64 %229, 8000
  %231 = add nuw nsw i64 %230, %204
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %231
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %231
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %232 = shl i64 %229, 3
  %233 = add i64 %232, %227
  %scevgep565.us = getelementptr i8, i8* %call, i64 %233
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond839.not = icmp eq i64 %polly.indvar550.us, %smin838
  br i1 %exitcond839.not, label %polly.loop_exit548.loopexit.us, label %polly.loop_header546.us

polly.loop_exit548.loopexit.us:                   ; preds = %polly.loop_header546.us
  %234 = add i64 %206, %226
  %scevgep556.us.1 = getelementptr i8, i8* %call2, i64 %234
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.1 = getelementptr i8, i8* %call1, i64 %234
  %scevgep562563.us.1 = bitcast i8* %scevgep562.us.1 to double*
  %_p_scalar_564.us.1 = load double, double* %scevgep562563.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.1

polly.loop_exit541:                               ; preds = %polly.loop_header546.us.7, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538.not.not = icmp ult i64 %polly.indvar536, %200
  %indvars.iv.next837 = add i64 %indvars.iv836, 1
  br i1 %polly.loop_cond538.not.not, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin877 = call i64 @llvm.smin.i64(i64 %indvars.iv875, i64 -1168)
  %235 = shl nsw i64 %polly.indvar697, 5
  %236 = add nsw i64 %smin877, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next876 = add nsw i64 %indvars.iv875, -32
  %exitcond880.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond880.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %237 = mul nsw i64 %polly.indvar703, -32
  %smin915 = call i64 @llvm.smin.i64(i64 %237, i64 -1168)
  %238 = add nsw i64 %smin915, 1200
  %smin873 = call i64 @llvm.smin.i64(i64 %indvars.iv871, i64 -1168)
  %239 = shl nsw i64 %polly.indvar703, 5
  %240 = add nsw i64 %smin873, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -32
  %exitcond879.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond879.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %241 = add nuw nsw i64 %polly.indvar709, %235
  %242 = trunc i64 %241 to i32
  %243 = mul nuw nsw i64 %241, 9600
  %min.iters.check = icmp eq i64 %238, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph916

vector.ph916:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert923 = insertelement <4 x i64> poison, i64 %239, i32 0
  %broadcast.splat924 = shufflevector <4 x i64> %broadcast.splatinsert923, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert925 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat926 = shufflevector <4 x i32> %broadcast.splatinsert925, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body914

vector.body914:                                   ; preds = %vector.body914, %vector.ph916
  %index917 = phi i64 [ 0, %vector.ph916 ], [ %index.next918, %vector.body914 ]
  %vec.ind921 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph916 ], [ %vec.ind.next922, %vector.body914 ]
  %244 = add nuw nsw <4 x i64> %vec.ind921, %broadcast.splat924
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat926, %245
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 1200, i32 1200, i32 1200, i32 1200>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %252, %243
  %254 = getelementptr i8, i8* %call, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !87, !noalias !89
  %index.next918 = add i64 %index917, 4
  %vec.ind.next922 = add <4 x i64> %vec.ind921, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next918, %238
  br i1 %256, label %polly.loop_exit714, label %vector.body914, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body914, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond878.not = icmp eq i64 %polly.indvar709, %236
  br i1 %exitcond878.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %257 = add nuw nsw i64 %polly.indvar715, %239
  %258 = trunc i64 %257 to i32
  %259 = mul i32 %258, %242
  %260 = add i32 %259, 3
  %261 = urem i32 %260, 1200
  %p_conv31.i = sitofp i32 %261 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %262 = shl i64 %257, 3
  %263 = add nuw nsw i64 %262, %243
  %scevgep718 = getelementptr i8, i8* %call, i64 %263
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond874.not = icmp eq i64 %polly.indvar715, %240
  br i1 %exitcond874.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 -1168)
  %264 = shl nsw i64 %polly.indvar724, 5
  %265 = add nsw i64 %smin867, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -32
  %exitcond870.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond870.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %266 = mul nsw i64 %polly.indvar730, -32
  %smin930 = call i64 @llvm.smin.i64(i64 %266, i64 -968)
  %267 = add nsw i64 %smin930, 1000
  %smin863 = call i64 @llvm.smin.i64(i64 %indvars.iv861, i64 -968)
  %268 = shl nsw i64 %polly.indvar730, 5
  %269 = add nsw i64 %smin863, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond869.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %270 = add nuw nsw i64 %polly.indvar736, %264
  %271 = trunc i64 %270 to i32
  %272 = mul nuw nsw i64 %270, 8000
  %min.iters.check931 = icmp eq i64 %267, 0
  br i1 %min.iters.check931, label %polly.loop_header739, label %vector.ph932

vector.ph932:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert941 = insertelement <4 x i64> poison, i64 %268, i32 0
  %broadcast.splat942 = shufflevector <4 x i64> %broadcast.splatinsert941, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert943 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat944 = shufflevector <4 x i32> %broadcast.splatinsert943, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next936, %vector.body929 ]
  %vec.ind939 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph932 ], [ %vec.ind.next940, %vector.body929 ]
  %273 = add nuw nsw <4 x i64> %vec.ind939, %broadcast.splat942
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat944, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 1000, i32 1000, i32 1000, i32 1000>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %272
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !91, !noalias !94
  %index.next936 = add i64 %index935, 4
  %vec.ind.next940 = add <4 x i64> %vec.ind939, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next936, %267
  br i1 %285, label %polly.loop_exit741, label %vector.body929, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body929, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond868.not = icmp eq i64 %polly.indvar736, %265
  br i1 %exitcond868.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %286 = add nuw nsw i64 %polly.indvar742, %268
  %287 = trunc i64 %286 to i32
  %288 = mul i32 %287, %271
  %289 = add i32 %288, 2
  %290 = urem i32 %289, 1000
  %p_conv10.i = sitofp i32 %290 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %291 = shl i64 %286, 3
  %292 = add nuw nsw i64 %291, %272
  %scevgep745 = getelementptr i8, i8* %call2, i64 %292
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond864.not = icmp eq i64 %polly.indvar742, %269
  br i1 %exitcond864.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin857 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 -1168)
  %293 = shl nsw i64 %polly.indvar750, 5
  %294 = add nsw i64 %smin857, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -32
  %exitcond860.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond860.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %295 = mul nsw i64 %polly.indvar756, -32
  %smin948 = call i64 @llvm.smin.i64(i64 %295, i64 -968)
  %296 = add nsw i64 %smin948, 1000
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 -968)
  %297 = shl nsw i64 %polly.indvar756, 5
  %298 = add nsw i64 %smin853, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond859.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %299 = add nuw nsw i64 %polly.indvar762, %293
  %300 = trunc i64 %299 to i32
  %301 = mul nuw nsw i64 %299, 8000
  %min.iters.check949 = icmp eq i64 %296, 0
  br i1 %min.iters.check949, label %polly.loop_header765, label %vector.ph950

vector.ph950:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %297, i32 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next954, %vector.body947 ]
  %vec.ind957 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph950 ], [ %vec.ind.next958, %vector.body947 ]
  %302 = add nuw nsw <4 x i64> %vec.ind957, %broadcast.splat960
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat962, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 1200, i32 1200, i32 1200, i32 1200>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add nuw nsw i64 %310, %301
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !90, !noalias !97
  %index.next954 = add i64 %index953, 4
  %vec.ind.next958 = add <4 x i64> %vec.ind957, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next954, %296
  br i1 %314, label %polly.loop_exit767, label %vector.body947, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body947, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond858.not = icmp eq i64 %polly.indvar762, %294
  br i1 %exitcond858.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %315 = add nuw nsw i64 %polly.indvar768, %297
  %316 = trunc i64 %315 to i32
  %317 = mul i32 %316, %300
  %318 = add i32 %317, 1
  %319 = urem i32 %318, 1200
  %p_conv.i = sitofp i32 %319 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %320 = shl i64 %315, 3
  %321 = add nuw nsw i64 %320, %301
  %scevgep772 = getelementptr i8, i8* %call1, i64 %321
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond854.not = icmp eq i64 %polly.indvar768, %298
  br i1 %exitcond854.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_exit232.loopexit.us
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_exit232.loopexit.us ]
  %322 = add nuw nsw i64 %polly.indvar234.us.1, %120
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %108
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %129
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %326
  %scevgep249250.us.1 = bitcast i8* %scevgep249.us.1 to double*
  %_p_scalar_251.us.1 = load double, double* %scevgep249250.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_251.us.1
  store double %p_add42.i118.us.1, double* %scevgep249250.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar234.us.1, %smin
  br i1 %exitcond.1.not, label %polly.loop_exit232.loopexit.us.1, label %polly.loop_header230.us.1

polly.loop_exit232.loopexit.us.1:                 ; preds = %polly.loop_header230.us.1
  %327 = add i64 %110, %128
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_exit232.loopexit.us.1
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_exit232.loopexit.us.1 ]
  %328 = add nuw nsw i64 %polly.indvar234.us.2, %120
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %110
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %330
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %330
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %331 = shl i64 %328, 3
  %332 = add i64 %331, %129
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep249250.us.2 = bitcast i8* %scevgep249.us.2 to double*
  %_p_scalar_251.us.2 = load double, double* %scevgep249250.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_251.us.2
  store double %p_add42.i118.us.2, double* %scevgep249250.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar234.us.2, %smin
  br i1 %exitcond.2.not, label %polly.loop_exit232.loopexit.us.2, label %polly.loop_header230.us.2

polly.loop_exit232.loopexit.us.2:                 ; preds = %polly.loop_header230.us.2
  %333 = add i64 %112, %128
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %333
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %333
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_exit232.loopexit.us.2
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_exit232.loopexit.us.2 ]
  %334 = add nuw nsw i64 %polly.indvar234.us.3, %120
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %112
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %336
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %336
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %337 = shl i64 %334, 3
  %338 = add i64 %337, %129
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %338
  %scevgep249250.us.3 = bitcast i8* %scevgep249.us.3 to double*
  %_p_scalar_251.us.3 = load double, double* %scevgep249250.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_251.us.3
  store double %p_add42.i118.us.3, double* %scevgep249250.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar234.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit232.loopexit.us.3, label %polly.loop_header230.us.3

polly.loop_exit232.loopexit.us.3:                 ; preds = %polly.loop_header230.us.3
  %339 = add i64 %114, %128
  %scevgep240.us.4 = getelementptr i8, i8* %call2, i64 %339
  %scevgep240241.us.4 = bitcast i8* %scevgep240.us.4 to double*
  %_p_scalar_242.us.4 = load double, double* %scevgep240241.us.4, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.4 = getelementptr i8, i8* %call1, i64 %339
  %scevgep246247.us.4 = bitcast i8* %scevgep246.us.4 to double*
  %_p_scalar_248.us.4 = load double, double* %scevgep246247.us.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.4

polly.loop_header230.us.4:                        ; preds = %polly.loop_header230.us.4, %polly.loop_exit232.loopexit.us.3
  %polly.indvar234.us.4 = phi i64 [ %polly.indvar_next235.us.4, %polly.loop_header230.us.4 ], [ 0, %polly.loop_exit232.loopexit.us.3 ]
  %340 = add nuw nsw i64 %polly.indvar234.us.4, %120
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %114
  %scevgep237.us.4 = getelementptr i8, i8* %call1, i64 %342
  %scevgep237238.us.4 = bitcast i8* %scevgep237.us.4 to double*
  %_p_scalar_239.us.4 = load double, double* %scevgep237238.us.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_242.us.4, %_p_scalar_239.us.4
  %scevgep243.us.4 = getelementptr i8, i8* %call2, i64 %342
  %scevgep243244.us.4 = bitcast i8* %scevgep243.us.4 to double*
  %_p_scalar_245.us.4 = load double, double* %scevgep243244.us.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_248.us.4, %_p_scalar_245.us.4
  %343 = shl i64 %340, 3
  %344 = add i64 %343, %129
  %scevgep249.us.4 = getelementptr i8, i8* %call, i64 %344
  %scevgep249250.us.4 = bitcast i8* %scevgep249.us.4 to double*
  %_p_scalar_251.us.4 = load double, double* %scevgep249250.us.4, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.4 = fadd fast double %p_mul37.i114.us.4, %p_mul27.i112.us.4
  %p_reass.mul.i117.us.4 = fmul fast double %p_reass.add.i116.us.4, 1.500000e+00
  %p_add42.i118.us.4 = fadd fast double %p_reass.mul.i117.us.4, %_p_scalar_251.us.4
  store double %p_add42.i118.us.4, double* %scevgep249250.us.4, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.4 = add nuw nsw i64 %polly.indvar234.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar234.us.4, %smin
  br i1 %exitcond.4.not, label %polly.loop_exit232.loopexit.us.4, label %polly.loop_header230.us.4

polly.loop_exit232.loopexit.us.4:                 ; preds = %polly.loop_header230.us.4
  %345 = add i64 %116, %128
  %scevgep240.us.5 = getelementptr i8, i8* %call2, i64 %345
  %scevgep240241.us.5 = bitcast i8* %scevgep240.us.5 to double*
  %_p_scalar_242.us.5 = load double, double* %scevgep240241.us.5, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.5 = getelementptr i8, i8* %call1, i64 %345
  %scevgep246247.us.5 = bitcast i8* %scevgep246.us.5 to double*
  %_p_scalar_248.us.5 = load double, double* %scevgep246247.us.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.5

polly.loop_header230.us.5:                        ; preds = %polly.loop_header230.us.5, %polly.loop_exit232.loopexit.us.4
  %polly.indvar234.us.5 = phi i64 [ %polly.indvar_next235.us.5, %polly.loop_header230.us.5 ], [ 0, %polly.loop_exit232.loopexit.us.4 ]
  %346 = add nuw nsw i64 %polly.indvar234.us.5, %120
  %347 = mul nuw nsw i64 %346, 8000
  %348 = add nuw nsw i64 %347, %116
  %scevgep237.us.5 = getelementptr i8, i8* %call1, i64 %348
  %scevgep237238.us.5 = bitcast i8* %scevgep237.us.5 to double*
  %_p_scalar_239.us.5 = load double, double* %scevgep237238.us.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.5 = fmul fast double %_p_scalar_242.us.5, %_p_scalar_239.us.5
  %scevgep243.us.5 = getelementptr i8, i8* %call2, i64 %348
  %scevgep243244.us.5 = bitcast i8* %scevgep243.us.5 to double*
  %_p_scalar_245.us.5 = load double, double* %scevgep243244.us.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.5 = fmul fast double %_p_scalar_248.us.5, %_p_scalar_245.us.5
  %349 = shl i64 %346, 3
  %350 = add i64 %349, %129
  %scevgep249.us.5 = getelementptr i8, i8* %call, i64 %350
  %scevgep249250.us.5 = bitcast i8* %scevgep249.us.5 to double*
  %_p_scalar_251.us.5 = load double, double* %scevgep249250.us.5, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.5 = fadd fast double %p_mul37.i114.us.5, %p_mul27.i112.us.5
  %p_reass.mul.i117.us.5 = fmul fast double %p_reass.add.i116.us.5, 1.500000e+00
  %p_add42.i118.us.5 = fadd fast double %p_reass.mul.i117.us.5, %_p_scalar_251.us.5
  store double %p_add42.i118.us.5, double* %scevgep249250.us.5, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.5 = add nuw nsw i64 %polly.indvar234.us.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar234.us.5, %smin
  br i1 %exitcond.5.not, label %polly.loop_exit232.loopexit.us.5, label %polly.loop_header230.us.5

polly.loop_exit232.loopexit.us.5:                 ; preds = %polly.loop_header230.us.5
  %351 = add i64 %118, %128
  %scevgep240.us.6 = getelementptr i8, i8* %call2, i64 %351
  %scevgep240241.us.6 = bitcast i8* %scevgep240.us.6 to double*
  %_p_scalar_242.us.6 = load double, double* %scevgep240241.us.6, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.6 = getelementptr i8, i8* %call1, i64 %351
  %scevgep246247.us.6 = bitcast i8* %scevgep246.us.6 to double*
  %_p_scalar_248.us.6 = load double, double* %scevgep246247.us.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.6

polly.loop_header230.us.6:                        ; preds = %polly.loop_header230.us.6, %polly.loop_exit232.loopexit.us.5
  %polly.indvar234.us.6 = phi i64 [ %polly.indvar_next235.us.6, %polly.loop_header230.us.6 ], [ 0, %polly.loop_exit232.loopexit.us.5 ]
  %352 = add nuw nsw i64 %polly.indvar234.us.6, %120
  %353 = mul nuw nsw i64 %352, 8000
  %354 = add nuw nsw i64 %353, %118
  %scevgep237.us.6 = getelementptr i8, i8* %call1, i64 %354
  %scevgep237238.us.6 = bitcast i8* %scevgep237.us.6 to double*
  %_p_scalar_239.us.6 = load double, double* %scevgep237238.us.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.6 = fmul fast double %_p_scalar_242.us.6, %_p_scalar_239.us.6
  %scevgep243.us.6 = getelementptr i8, i8* %call2, i64 %354
  %scevgep243244.us.6 = bitcast i8* %scevgep243.us.6 to double*
  %_p_scalar_245.us.6 = load double, double* %scevgep243244.us.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.6 = fmul fast double %_p_scalar_248.us.6, %_p_scalar_245.us.6
  %355 = shl i64 %352, 3
  %356 = add i64 %355, %129
  %scevgep249.us.6 = getelementptr i8, i8* %call, i64 %356
  %scevgep249250.us.6 = bitcast i8* %scevgep249.us.6 to double*
  %_p_scalar_251.us.6 = load double, double* %scevgep249250.us.6, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.6 = fadd fast double %p_mul37.i114.us.6, %p_mul27.i112.us.6
  %p_reass.mul.i117.us.6 = fmul fast double %p_reass.add.i116.us.6, 1.500000e+00
  %p_add42.i118.us.6 = fadd fast double %p_reass.mul.i117.us.6, %_p_scalar_251.us.6
  store double %p_add42.i118.us.6, double* %scevgep249250.us.6, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.6 = add nuw nsw i64 %polly.indvar234.us.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar234.us.6, %smin
  br i1 %exitcond.6.not, label %polly.loop_exit232.loopexit.us.6, label %polly.loop_header230.us.6

polly.loop_exit232.loopexit.us.6:                 ; preds = %polly.loop_header230.us.6
  %357 = add i64 %119, %128
  %scevgep240.us.7 = getelementptr i8, i8* %call2, i64 %357
  %scevgep240241.us.7 = bitcast i8* %scevgep240.us.7 to double*
  %_p_scalar_242.us.7 = load double, double* %scevgep240241.us.7, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.7 = getelementptr i8, i8* %call1, i64 %357
  %scevgep246247.us.7 = bitcast i8* %scevgep246.us.7 to double*
  %_p_scalar_248.us.7 = load double, double* %scevgep246247.us.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.7

polly.loop_header230.us.7:                        ; preds = %polly.loop_header230.us.7, %polly.loop_exit232.loopexit.us.6
  %polly.indvar234.us.7 = phi i64 [ %polly.indvar_next235.us.7, %polly.loop_header230.us.7 ], [ 0, %polly.loop_exit232.loopexit.us.6 ]
  %358 = add nuw nsw i64 %polly.indvar234.us.7, %120
  %359 = mul nuw nsw i64 %358, 8000
  %360 = add nuw nsw i64 %359, %119
  %scevgep237.us.7 = getelementptr i8, i8* %call1, i64 %360
  %scevgep237238.us.7 = bitcast i8* %scevgep237.us.7 to double*
  %_p_scalar_239.us.7 = load double, double* %scevgep237238.us.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.7 = fmul fast double %_p_scalar_242.us.7, %_p_scalar_239.us.7
  %scevgep243.us.7 = getelementptr i8, i8* %call2, i64 %360
  %scevgep243244.us.7 = bitcast i8* %scevgep243.us.7 to double*
  %_p_scalar_245.us.7 = load double, double* %scevgep243244.us.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.7 = fmul fast double %_p_scalar_248.us.7, %_p_scalar_245.us.7
  %361 = shl i64 %358, 3
  %362 = add i64 %361, %129
  %scevgep249.us.7 = getelementptr i8, i8* %call, i64 %362
  %scevgep249250.us.7 = bitcast i8* %scevgep249.us.7 to double*
  %_p_scalar_251.us.7 = load double, double* %scevgep249250.us.7, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.7 = fadd fast double %p_mul37.i114.us.7, %p_mul27.i112.us.7
  %p_reass.mul.i117.us.7 = fmul fast double %p_reass.add.i116.us.7, 1.500000e+00
  %p_add42.i118.us.7 = fadd fast double %p_reass.mul.i117.us.7, %_p_scalar_251.us.7
  store double %p_add42.i118.us.7, double* %scevgep249250.us.7, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.7 = add nuw nsw i64 %polly.indvar234.us.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar234.us.7, %smin
  br i1 %exitcond.7.not, label %polly.loop_exit225, label %polly.loop_header230.us.7

polly.loop_header388.us.1:                        ; preds = %polly.loop_header388.us.1, %polly.loop_exit390.loopexit.us
  %polly.indvar392.us.1 = phi i64 [ %polly.indvar_next393.us.1, %polly.loop_header388.us.1 ], [ 0, %polly.loop_exit390.loopexit.us ]
  %363 = add nuw nsw i64 %polly.indvar392.us.1, %169
  %364 = mul nuw nsw i64 %363, 8000
  %365 = add nuw nsw i64 %364, %157
  %scevgep395.us.1 = getelementptr i8, i8* %call1, i64 %365
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_400.us.1, %_p_scalar_397.us.1
  %scevgep401.us.1 = getelementptr i8, i8* %call2, i64 %365
  %scevgep401402.us.1 = bitcast i8* %scevgep401.us.1 to double*
  %_p_scalar_403.us.1 = load double, double* %scevgep401402.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_406.us.1, %_p_scalar_403.us.1
  %366 = shl i64 %363, 3
  %367 = add i64 %366, %178
  %scevgep407.us.1 = getelementptr i8, i8* %call, i64 %367
  %scevgep407408.us.1 = bitcast i8* %scevgep407.us.1 to double*
  %_p_scalar_409.us.1 = load double, double* %scevgep407408.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_409.us.1
  store double %p_add42.i79.us.1, double* %scevgep407408.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.1 = add nuw nsw i64 %polly.indvar392.us.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar392.us.1, %smin814
  br i1 %exitcond815.1.not, label %polly.loop_exit390.loopexit.us.1, label %polly.loop_header388.us.1

polly.loop_exit390.loopexit.us.1:                 ; preds = %polly.loop_header388.us.1
  %368 = add i64 %159, %177
  %scevgep398.us.2 = getelementptr i8, i8* %call2, i64 %368
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.2 = getelementptr i8, i8* %call1, i64 %368
  %scevgep404405.us.2 = bitcast i8* %scevgep404.us.2 to double*
  %_p_scalar_406.us.2 = load double, double* %scevgep404405.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.2

polly.loop_header388.us.2:                        ; preds = %polly.loop_header388.us.2, %polly.loop_exit390.loopexit.us.1
  %polly.indvar392.us.2 = phi i64 [ %polly.indvar_next393.us.2, %polly.loop_header388.us.2 ], [ 0, %polly.loop_exit390.loopexit.us.1 ]
  %369 = add nuw nsw i64 %polly.indvar392.us.2, %169
  %370 = mul nuw nsw i64 %369, 8000
  %371 = add nuw nsw i64 %370, %159
  %scevgep395.us.2 = getelementptr i8, i8* %call1, i64 %371
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_400.us.2, %_p_scalar_397.us.2
  %scevgep401.us.2 = getelementptr i8, i8* %call2, i64 %371
  %scevgep401402.us.2 = bitcast i8* %scevgep401.us.2 to double*
  %_p_scalar_403.us.2 = load double, double* %scevgep401402.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_406.us.2, %_p_scalar_403.us.2
  %372 = shl i64 %369, 3
  %373 = add i64 %372, %178
  %scevgep407.us.2 = getelementptr i8, i8* %call, i64 %373
  %scevgep407408.us.2 = bitcast i8* %scevgep407.us.2 to double*
  %_p_scalar_409.us.2 = load double, double* %scevgep407408.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_409.us.2
  store double %p_add42.i79.us.2, double* %scevgep407408.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.2 = add nuw nsw i64 %polly.indvar392.us.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar392.us.2, %smin814
  br i1 %exitcond815.2.not, label %polly.loop_exit390.loopexit.us.2, label %polly.loop_header388.us.2

polly.loop_exit390.loopexit.us.2:                 ; preds = %polly.loop_header388.us.2
  %374 = add i64 %161, %177
  %scevgep398.us.3 = getelementptr i8, i8* %call2, i64 %374
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.3 = getelementptr i8, i8* %call1, i64 %374
  %scevgep404405.us.3 = bitcast i8* %scevgep404.us.3 to double*
  %_p_scalar_406.us.3 = load double, double* %scevgep404405.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.3

polly.loop_header388.us.3:                        ; preds = %polly.loop_header388.us.3, %polly.loop_exit390.loopexit.us.2
  %polly.indvar392.us.3 = phi i64 [ %polly.indvar_next393.us.3, %polly.loop_header388.us.3 ], [ 0, %polly.loop_exit390.loopexit.us.2 ]
  %375 = add nuw nsw i64 %polly.indvar392.us.3, %169
  %376 = mul nuw nsw i64 %375, 8000
  %377 = add nuw nsw i64 %376, %161
  %scevgep395.us.3 = getelementptr i8, i8* %call1, i64 %377
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_400.us.3, %_p_scalar_397.us.3
  %scevgep401.us.3 = getelementptr i8, i8* %call2, i64 %377
  %scevgep401402.us.3 = bitcast i8* %scevgep401.us.3 to double*
  %_p_scalar_403.us.3 = load double, double* %scevgep401402.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_406.us.3, %_p_scalar_403.us.3
  %378 = shl i64 %375, 3
  %379 = add i64 %378, %178
  %scevgep407.us.3 = getelementptr i8, i8* %call, i64 %379
  %scevgep407408.us.3 = bitcast i8* %scevgep407.us.3 to double*
  %_p_scalar_409.us.3 = load double, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_409.us.3
  store double %p_add42.i79.us.3, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.3 = add nuw nsw i64 %polly.indvar392.us.3, 1
  %exitcond815.3.not = icmp eq i64 %polly.indvar392.us.3, %smin814
  br i1 %exitcond815.3.not, label %polly.loop_exit390.loopexit.us.3, label %polly.loop_header388.us.3

polly.loop_exit390.loopexit.us.3:                 ; preds = %polly.loop_header388.us.3
  %380 = add i64 %163, %177
  %scevgep398.us.4 = getelementptr i8, i8* %call2, i64 %380
  %scevgep398399.us.4 = bitcast i8* %scevgep398.us.4 to double*
  %_p_scalar_400.us.4 = load double, double* %scevgep398399.us.4, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.4 = getelementptr i8, i8* %call1, i64 %380
  %scevgep404405.us.4 = bitcast i8* %scevgep404.us.4 to double*
  %_p_scalar_406.us.4 = load double, double* %scevgep404405.us.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.4

polly.loop_header388.us.4:                        ; preds = %polly.loop_header388.us.4, %polly.loop_exit390.loopexit.us.3
  %polly.indvar392.us.4 = phi i64 [ %polly.indvar_next393.us.4, %polly.loop_header388.us.4 ], [ 0, %polly.loop_exit390.loopexit.us.3 ]
  %381 = add nuw nsw i64 %polly.indvar392.us.4, %169
  %382 = mul nuw nsw i64 %381, 8000
  %383 = add nuw nsw i64 %382, %163
  %scevgep395.us.4 = getelementptr i8, i8* %call1, i64 %383
  %scevgep395396.us.4 = bitcast i8* %scevgep395.us.4 to double*
  %_p_scalar_397.us.4 = load double, double* %scevgep395396.us.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_400.us.4, %_p_scalar_397.us.4
  %scevgep401.us.4 = getelementptr i8, i8* %call2, i64 %383
  %scevgep401402.us.4 = bitcast i8* %scevgep401.us.4 to double*
  %_p_scalar_403.us.4 = load double, double* %scevgep401402.us.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_406.us.4, %_p_scalar_403.us.4
  %384 = shl i64 %381, 3
  %385 = add i64 %384, %178
  %scevgep407.us.4 = getelementptr i8, i8* %call, i64 %385
  %scevgep407408.us.4 = bitcast i8* %scevgep407.us.4 to double*
  %_p_scalar_409.us.4 = load double, double* %scevgep407408.us.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_409.us.4
  store double %p_add42.i79.us.4, double* %scevgep407408.us.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.4 = add nuw nsw i64 %polly.indvar392.us.4, 1
  %exitcond815.4.not = icmp eq i64 %polly.indvar392.us.4, %smin814
  br i1 %exitcond815.4.not, label %polly.loop_exit390.loopexit.us.4, label %polly.loop_header388.us.4

polly.loop_exit390.loopexit.us.4:                 ; preds = %polly.loop_header388.us.4
  %386 = add i64 %165, %177
  %scevgep398.us.5 = getelementptr i8, i8* %call2, i64 %386
  %scevgep398399.us.5 = bitcast i8* %scevgep398.us.5 to double*
  %_p_scalar_400.us.5 = load double, double* %scevgep398399.us.5, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.5 = getelementptr i8, i8* %call1, i64 %386
  %scevgep404405.us.5 = bitcast i8* %scevgep404.us.5 to double*
  %_p_scalar_406.us.5 = load double, double* %scevgep404405.us.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.5

polly.loop_header388.us.5:                        ; preds = %polly.loop_header388.us.5, %polly.loop_exit390.loopexit.us.4
  %polly.indvar392.us.5 = phi i64 [ %polly.indvar_next393.us.5, %polly.loop_header388.us.5 ], [ 0, %polly.loop_exit390.loopexit.us.4 ]
  %387 = add nuw nsw i64 %polly.indvar392.us.5, %169
  %388 = mul nuw nsw i64 %387, 8000
  %389 = add nuw nsw i64 %388, %165
  %scevgep395.us.5 = getelementptr i8, i8* %call1, i64 %389
  %scevgep395396.us.5 = bitcast i8* %scevgep395.us.5 to double*
  %_p_scalar_397.us.5 = load double, double* %scevgep395396.us.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.5 = fmul fast double %_p_scalar_400.us.5, %_p_scalar_397.us.5
  %scevgep401.us.5 = getelementptr i8, i8* %call2, i64 %389
  %scevgep401402.us.5 = bitcast i8* %scevgep401.us.5 to double*
  %_p_scalar_403.us.5 = load double, double* %scevgep401402.us.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.5 = fmul fast double %_p_scalar_406.us.5, %_p_scalar_403.us.5
  %390 = shl i64 %387, 3
  %391 = add i64 %390, %178
  %scevgep407.us.5 = getelementptr i8, i8* %call, i64 %391
  %scevgep407408.us.5 = bitcast i8* %scevgep407.us.5 to double*
  %_p_scalar_409.us.5 = load double, double* %scevgep407408.us.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.5 = fadd fast double %p_mul37.i75.us.5, %p_mul27.i73.us.5
  %p_reass.mul.i78.us.5 = fmul fast double %p_reass.add.i77.us.5, 1.500000e+00
  %p_add42.i79.us.5 = fadd fast double %p_reass.mul.i78.us.5, %_p_scalar_409.us.5
  store double %p_add42.i79.us.5, double* %scevgep407408.us.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.5 = add nuw nsw i64 %polly.indvar392.us.5, 1
  %exitcond815.5.not = icmp eq i64 %polly.indvar392.us.5, %smin814
  br i1 %exitcond815.5.not, label %polly.loop_exit390.loopexit.us.5, label %polly.loop_header388.us.5

polly.loop_exit390.loopexit.us.5:                 ; preds = %polly.loop_header388.us.5
  %392 = add i64 %167, %177
  %scevgep398.us.6 = getelementptr i8, i8* %call2, i64 %392
  %scevgep398399.us.6 = bitcast i8* %scevgep398.us.6 to double*
  %_p_scalar_400.us.6 = load double, double* %scevgep398399.us.6, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.6 = getelementptr i8, i8* %call1, i64 %392
  %scevgep404405.us.6 = bitcast i8* %scevgep404.us.6 to double*
  %_p_scalar_406.us.6 = load double, double* %scevgep404405.us.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.6

polly.loop_header388.us.6:                        ; preds = %polly.loop_header388.us.6, %polly.loop_exit390.loopexit.us.5
  %polly.indvar392.us.6 = phi i64 [ %polly.indvar_next393.us.6, %polly.loop_header388.us.6 ], [ 0, %polly.loop_exit390.loopexit.us.5 ]
  %393 = add nuw nsw i64 %polly.indvar392.us.6, %169
  %394 = mul nuw nsw i64 %393, 8000
  %395 = add nuw nsw i64 %394, %167
  %scevgep395.us.6 = getelementptr i8, i8* %call1, i64 %395
  %scevgep395396.us.6 = bitcast i8* %scevgep395.us.6 to double*
  %_p_scalar_397.us.6 = load double, double* %scevgep395396.us.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.6 = fmul fast double %_p_scalar_400.us.6, %_p_scalar_397.us.6
  %scevgep401.us.6 = getelementptr i8, i8* %call2, i64 %395
  %scevgep401402.us.6 = bitcast i8* %scevgep401.us.6 to double*
  %_p_scalar_403.us.6 = load double, double* %scevgep401402.us.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.6 = fmul fast double %_p_scalar_406.us.6, %_p_scalar_403.us.6
  %396 = shl i64 %393, 3
  %397 = add i64 %396, %178
  %scevgep407.us.6 = getelementptr i8, i8* %call, i64 %397
  %scevgep407408.us.6 = bitcast i8* %scevgep407.us.6 to double*
  %_p_scalar_409.us.6 = load double, double* %scevgep407408.us.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.6 = fadd fast double %p_mul37.i75.us.6, %p_mul27.i73.us.6
  %p_reass.mul.i78.us.6 = fmul fast double %p_reass.add.i77.us.6, 1.500000e+00
  %p_add42.i79.us.6 = fadd fast double %p_reass.mul.i78.us.6, %_p_scalar_409.us.6
  store double %p_add42.i79.us.6, double* %scevgep407408.us.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.6 = add nuw nsw i64 %polly.indvar392.us.6, 1
  %exitcond815.6.not = icmp eq i64 %polly.indvar392.us.6, %smin814
  br i1 %exitcond815.6.not, label %polly.loop_exit390.loopexit.us.6, label %polly.loop_header388.us.6

polly.loop_exit390.loopexit.us.6:                 ; preds = %polly.loop_header388.us.6
  %398 = add i64 %168, %177
  %scevgep398.us.7 = getelementptr i8, i8* %call2, i64 %398
  %scevgep398399.us.7 = bitcast i8* %scevgep398.us.7 to double*
  %_p_scalar_400.us.7 = load double, double* %scevgep398399.us.7, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.7 = getelementptr i8, i8* %call1, i64 %398
  %scevgep404405.us.7 = bitcast i8* %scevgep404.us.7 to double*
  %_p_scalar_406.us.7 = load double, double* %scevgep404405.us.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.7

polly.loop_header388.us.7:                        ; preds = %polly.loop_header388.us.7, %polly.loop_exit390.loopexit.us.6
  %polly.indvar392.us.7 = phi i64 [ %polly.indvar_next393.us.7, %polly.loop_header388.us.7 ], [ 0, %polly.loop_exit390.loopexit.us.6 ]
  %399 = add nuw nsw i64 %polly.indvar392.us.7, %169
  %400 = mul nuw nsw i64 %399, 8000
  %401 = add nuw nsw i64 %400, %168
  %scevgep395.us.7 = getelementptr i8, i8* %call1, i64 %401
  %scevgep395396.us.7 = bitcast i8* %scevgep395.us.7 to double*
  %_p_scalar_397.us.7 = load double, double* %scevgep395396.us.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.7 = fmul fast double %_p_scalar_400.us.7, %_p_scalar_397.us.7
  %scevgep401.us.7 = getelementptr i8, i8* %call2, i64 %401
  %scevgep401402.us.7 = bitcast i8* %scevgep401.us.7 to double*
  %_p_scalar_403.us.7 = load double, double* %scevgep401402.us.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.7 = fmul fast double %_p_scalar_406.us.7, %_p_scalar_403.us.7
  %402 = shl i64 %399, 3
  %403 = add i64 %402, %178
  %scevgep407.us.7 = getelementptr i8, i8* %call, i64 %403
  %scevgep407408.us.7 = bitcast i8* %scevgep407.us.7 to double*
  %_p_scalar_409.us.7 = load double, double* %scevgep407408.us.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.7 = fadd fast double %p_mul37.i75.us.7, %p_mul27.i73.us.7
  %p_reass.mul.i78.us.7 = fmul fast double %p_reass.add.i77.us.7, 1.500000e+00
  %p_add42.i79.us.7 = fadd fast double %p_reass.mul.i78.us.7, %_p_scalar_409.us.7
  store double %p_add42.i79.us.7, double* %scevgep407408.us.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.7 = add nuw nsw i64 %polly.indvar392.us.7, 1
  %exitcond815.7.not = icmp eq i64 %polly.indvar392.us.7, %smin814
  br i1 %exitcond815.7.not, label %polly.loop_exit383, label %polly.loop_header388.us.7

polly.loop_header546.us.1:                        ; preds = %polly.loop_header546.us.1, %polly.loop_exit548.loopexit.us
  %polly.indvar550.us.1 = phi i64 [ %polly.indvar_next551.us.1, %polly.loop_header546.us.1 ], [ 0, %polly.loop_exit548.loopexit.us ]
  %404 = add nuw nsw i64 %polly.indvar550.us.1, %218
  %405 = mul nuw nsw i64 %404, 8000
  %406 = add nuw nsw i64 %405, %206
  %scevgep553.us.1 = getelementptr i8, i8* %call1, i64 %406
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %scevgep559.us.1 = getelementptr i8, i8* %call2, i64 %406
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_564.us.1, %_p_scalar_561.us.1
  %407 = shl i64 %404, 3
  %408 = add i64 %407, %227
  %scevgep565.us.1 = getelementptr i8, i8* %call, i64 %408
  %scevgep565566.us.1 = bitcast i8* %scevgep565.us.1 to double*
  %_p_scalar_567.us.1 = load double, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_567.us.1
  store double %p_add42.i.us.1, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.1 = add nuw nsw i64 %polly.indvar550.us.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar550.us.1, %smin838
  br i1 %exitcond839.1.not, label %polly.loop_exit548.loopexit.us.1, label %polly.loop_header546.us.1

polly.loop_exit548.loopexit.us.1:                 ; preds = %polly.loop_header546.us.1
  %409 = add i64 %208, %226
  %scevgep556.us.2 = getelementptr i8, i8* %call2, i64 %409
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.2 = getelementptr i8, i8* %call1, i64 %409
  %scevgep562563.us.2 = bitcast i8* %scevgep562.us.2 to double*
  %_p_scalar_564.us.2 = load double, double* %scevgep562563.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.2

polly.loop_header546.us.2:                        ; preds = %polly.loop_header546.us.2, %polly.loop_exit548.loopexit.us.1
  %polly.indvar550.us.2 = phi i64 [ %polly.indvar_next551.us.2, %polly.loop_header546.us.2 ], [ 0, %polly.loop_exit548.loopexit.us.1 ]
  %410 = add nuw nsw i64 %polly.indvar550.us.2, %218
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %208
  %scevgep553.us.2 = getelementptr i8, i8* %call1, i64 %412
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %scevgep559.us.2 = getelementptr i8, i8* %call2, i64 %412
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_564.us.2, %_p_scalar_561.us.2
  %413 = shl i64 %410, 3
  %414 = add i64 %413, %227
  %scevgep565.us.2 = getelementptr i8, i8* %call, i64 %414
  %scevgep565566.us.2 = bitcast i8* %scevgep565.us.2 to double*
  %_p_scalar_567.us.2 = load double, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_567.us.2
  store double %p_add42.i.us.2, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.2 = add nuw nsw i64 %polly.indvar550.us.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar550.us.2, %smin838
  br i1 %exitcond839.2.not, label %polly.loop_exit548.loopexit.us.2, label %polly.loop_header546.us.2

polly.loop_exit548.loopexit.us.2:                 ; preds = %polly.loop_header546.us.2
  %415 = add i64 %210, %226
  %scevgep556.us.3 = getelementptr i8, i8* %call2, i64 %415
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.3 = getelementptr i8, i8* %call1, i64 %415
  %scevgep562563.us.3 = bitcast i8* %scevgep562.us.3 to double*
  %_p_scalar_564.us.3 = load double, double* %scevgep562563.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.3

polly.loop_header546.us.3:                        ; preds = %polly.loop_header546.us.3, %polly.loop_exit548.loopexit.us.2
  %polly.indvar550.us.3 = phi i64 [ %polly.indvar_next551.us.3, %polly.loop_header546.us.3 ], [ 0, %polly.loop_exit548.loopexit.us.2 ]
  %416 = add nuw nsw i64 %polly.indvar550.us.3, %218
  %417 = mul nuw nsw i64 %416, 8000
  %418 = add nuw nsw i64 %417, %210
  %scevgep553.us.3 = getelementptr i8, i8* %call1, i64 %418
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %scevgep559.us.3 = getelementptr i8, i8* %call2, i64 %418
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_564.us.3, %_p_scalar_561.us.3
  %419 = shl i64 %416, 3
  %420 = add i64 %419, %227
  %scevgep565.us.3 = getelementptr i8, i8* %call, i64 %420
  %scevgep565566.us.3 = bitcast i8* %scevgep565.us.3 to double*
  %_p_scalar_567.us.3 = load double, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_567.us.3
  store double %p_add42.i.us.3, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.3 = add nuw nsw i64 %polly.indvar550.us.3, 1
  %exitcond839.3.not = icmp eq i64 %polly.indvar550.us.3, %smin838
  br i1 %exitcond839.3.not, label %polly.loop_exit548.loopexit.us.3, label %polly.loop_header546.us.3

polly.loop_exit548.loopexit.us.3:                 ; preds = %polly.loop_header546.us.3
  %421 = add i64 %212, %226
  %scevgep556.us.4 = getelementptr i8, i8* %call2, i64 %421
  %scevgep556557.us.4 = bitcast i8* %scevgep556.us.4 to double*
  %_p_scalar_558.us.4 = load double, double* %scevgep556557.us.4, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.4 = getelementptr i8, i8* %call1, i64 %421
  %scevgep562563.us.4 = bitcast i8* %scevgep562.us.4 to double*
  %_p_scalar_564.us.4 = load double, double* %scevgep562563.us.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.4

polly.loop_header546.us.4:                        ; preds = %polly.loop_header546.us.4, %polly.loop_exit548.loopexit.us.3
  %polly.indvar550.us.4 = phi i64 [ %polly.indvar_next551.us.4, %polly.loop_header546.us.4 ], [ 0, %polly.loop_exit548.loopexit.us.3 ]
  %422 = add nuw nsw i64 %polly.indvar550.us.4, %218
  %423 = mul nuw nsw i64 %422, 8000
  %424 = add nuw nsw i64 %423, %212
  %scevgep553.us.4 = getelementptr i8, i8* %call1, i64 %424
  %scevgep553554.us.4 = bitcast i8* %scevgep553.us.4 to double*
  %_p_scalar_555.us.4 = load double, double* %scevgep553554.us.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_558.us.4, %_p_scalar_555.us.4
  %scevgep559.us.4 = getelementptr i8, i8* %call2, i64 %424
  %scevgep559560.us.4 = bitcast i8* %scevgep559.us.4 to double*
  %_p_scalar_561.us.4 = load double, double* %scevgep559560.us.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_564.us.4, %_p_scalar_561.us.4
  %425 = shl i64 %422, 3
  %426 = add i64 %425, %227
  %scevgep565.us.4 = getelementptr i8, i8* %call, i64 %426
  %scevgep565566.us.4 = bitcast i8* %scevgep565.us.4 to double*
  %_p_scalar_567.us.4 = load double, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_567.us.4
  store double %p_add42.i.us.4, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.4 = add nuw nsw i64 %polly.indvar550.us.4, 1
  %exitcond839.4.not = icmp eq i64 %polly.indvar550.us.4, %smin838
  br i1 %exitcond839.4.not, label %polly.loop_exit548.loopexit.us.4, label %polly.loop_header546.us.4

polly.loop_exit548.loopexit.us.4:                 ; preds = %polly.loop_header546.us.4
  %427 = add i64 %214, %226
  %scevgep556.us.5 = getelementptr i8, i8* %call2, i64 %427
  %scevgep556557.us.5 = bitcast i8* %scevgep556.us.5 to double*
  %_p_scalar_558.us.5 = load double, double* %scevgep556557.us.5, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.5 = getelementptr i8, i8* %call1, i64 %427
  %scevgep562563.us.5 = bitcast i8* %scevgep562.us.5 to double*
  %_p_scalar_564.us.5 = load double, double* %scevgep562563.us.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.5

polly.loop_header546.us.5:                        ; preds = %polly.loop_header546.us.5, %polly.loop_exit548.loopexit.us.4
  %polly.indvar550.us.5 = phi i64 [ %polly.indvar_next551.us.5, %polly.loop_header546.us.5 ], [ 0, %polly.loop_exit548.loopexit.us.4 ]
  %428 = add nuw nsw i64 %polly.indvar550.us.5, %218
  %429 = mul nuw nsw i64 %428, 8000
  %430 = add nuw nsw i64 %429, %214
  %scevgep553.us.5 = getelementptr i8, i8* %call1, i64 %430
  %scevgep553554.us.5 = bitcast i8* %scevgep553.us.5 to double*
  %_p_scalar_555.us.5 = load double, double* %scevgep553554.us.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.5 = fmul fast double %_p_scalar_558.us.5, %_p_scalar_555.us.5
  %scevgep559.us.5 = getelementptr i8, i8* %call2, i64 %430
  %scevgep559560.us.5 = bitcast i8* %scevgep559.us.5 to double*
  %_p_scalar_561.us.5 = load double, double* %scevgep559560.us.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.5 = fmul fast double %_p_scalar_564.us.5, %_p_scalar_561.us.5
  %431 = shl i64 %428, 3
  %432 = add i64 %431, %227
  %scevgep565.us.5 = getelementptr i8, i8* %call, i64 %432
  %scevgep565566.us.5 = bitcast i8* %scevgep565.us.5 to double*
  %_p_scalar_567.us.5 = load double, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.5 = fadd fast double %p_mul37.i.us.5, %p_mul27.i.us.5
  %p_reass.mul.i.us.5 = fmul fast double %p_reass.add.i.us.5, 1.500000e+00
  %p_add42.i.us.5 = fadd fast double %p_reass.mul.i.us.5, %_p_scalar_567.us.5
  store double %p_add42.i.us.5, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.5 = add nuw nsw i64 %polly.indvar550.us.5, 1
  %exitcond839.5.not = icmp eq i64 %polly.indvar550.us.5, %smin838
  br i1 %exitcond839.5.not, label %polly.loop_exit548.loopexit.us.5, label %polly.loop_header546.us.5

polly.loop_exit548.loopexit.us.5:                 ; preds = %polly.loop_header546.us.5
  %433 = add i64 %216, %226
  %scevgep556.us.6 = getelementptr i8, i8* %call2, i64 %433
  %scevgep556557.us.6 = bitcast i8* %scevgep556.us.6 to double*
  %_p_scalar_558.us.6 = load double, double* %scevgep556557.us.6, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.6 = getelementptr i8, i8* %call1, i64 %433
  %scevgep562563.us.6 = bitcast i8* %scevgep562.us.6 to double*
  %_p_scalar_564.us.6 = load double, double* %scevgep562563.us.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.6

polly.loop_header546.us.6:                        ; preds = %polly.loop_header546.us.6, %polly.loop_exit548.loopexit.us.5
  %polly.indvar550.us.6 = phi i64 [ %polly.indvar_next551.us.6, %polly.loop_header546.us.6 ], [ 0, %polly.loop_exit548.loopexit.us.5 ]
  %434 = add nuw nsw i64 %polly.indvar550.us.6, %218
  %435 = mul nuw nsw i64 %434, 8000
  %436 = add nuw nsw i64 %435, %216
  %scevgep553.us.6 = getelementptr i8, i8* %call1, i64 %436
  %scevgep553554.us.6 = bitcast i8* %scevgep553.us.6 to double*
  %_p_scalar_555.us.6 = load double, double* %scevgep553554.us.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.6 = fmul fast double %_p_scalar_558.us.6, %_p_scalar_555.us.6
  %scevgep559.us.6 = getelementptr i8, i8* %call2, i64 %436
  %scevgep559560.us.6 = bitcast i8* %scevgep559.us.6 to double*
  %_p_scalar_561.us.6 = load double, double* %scevgep559560.us.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.6 = fmul fast double %_p_scalar_564.us.6, %_p_scalar_561.us.6
  %437 = shl i64 %434, 3
  %438 = add i64 %437, %227
  %scevgep565.us.6 = getelementptr i8, i8* %call, i64 %438
  %scevgep565566.us.6 = bitcast i8* %scevgep565.us.6 to double*
  %_p_scalar_567.us.6 = load double, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.6 = fadd fast double %p_mul37.i.us.6, %p_mul27.i.us.6
  %p_reass.mul.i.us.6 = fmul fast double %p_reass.add.i.us.6, 1.500000e+00
  %p_add42.i.us.6 = fadd fast double %p_reass.mul.i.us.6, %_p_scalar_567.us.6
  store double %p_add42.i.us.6, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.6 = add nuw nsw i64 %polly.indvar550.us.6, 1
  %exitcond839.6.not = icmp eq i64 %polly.indvar550.us.6, %smin838
  br i1 %exitcond839.6.not, label %polly.loop_exit548.loopexit.us.6, label %polly.loop_header546.us.6

polly.loop_exit548.loopexit.us.6:                 ; preds = %polly.loop_header546.us.6
  %439 = add i64 %217, %226
  %scevgep556.us.7 = getelementptr i8, i8* %call2, i64 %439
  %scevgep556557.us.7 = bitcast i8* %scevgep556.us.7 to double*
  %_p_scalar_558.us.7 = load double, double* %scevgep556557.us.7, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.7 = getelementptr i8, i8* %call1, i64 %439
  %scevgep562563.us.7 = bitcast i8* %scevgep562.us.7 to double*
  %_p_scalar_564.us.7 = load double, double* %scevgep562563.us.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.7

polly.loop_header546.us.7:                        ; preds = %polly.loop_header546.us.7, %polly.loop_exit548.loopexit.us.6
  %polly.indvar550.us.7 = phi i64 [ %polly.indvar_next551.us.7, %polly.loop_header546.us.7 ], [ 0, %polly.loop_exit548.loopexit.us.6 ]
  %440 = add nuw nsw i64 %polly.indvar550.us.7, %218
  %441 = mul nuw nsw i64 %440, 8000
  %442 = add nuw nsw i64 %441, %217
  %scevgep553.us.7 = getelementptr i8, i8* %call1, i64 %442
  %scevgep553554.us.7 = bitcast i8* %scevgep553.us.7 to double*
  %_p_scalar_555.us.7 = load double, double* %scevgep553554.us.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.7 = fmul fast double %_p_scalar_558.us.7, %_p_scalar_555.us.7
  %scevgep559.us.7 = getelementptr i8, i8* %call2, i64 %442
  %scevgep559560.us.7 = bitcast i8* %scevgep559.us.7 to double*
  %_p_scalar_561.us.7 = load double, double* %scevgep559560.us.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.7 = fmul fast double %_p_scalar_564.us.7, %_p_scalar_561.us.7
  %443 = shl i64 %440, 3
  %444 = add i64 %443, %227
  %scevgep565.us.7 = getelementptr i8, i8* %call, i64 %444
  %scevgep565566.us.7 = bitcast i8* %scevgep565.us.7 to double*
  %_p_scalar_567.us.7 = load double, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.7 = fadd fast double %p_mul37.i.us.7, %p_mul27.i.us.7
  %p_reass.mul.i.us.7 = fmul fast double %p_reass.add.i.us.7, 1.500000e+00
  %p_add42.i.us.7 = fadd fast double %p_reass.mul.i.us.7, %_p_scalar_567.us.7
  store double %p_add42.i.us.7, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.7 = add nuw nsw i64 %polly.indvar550.us.7, 1
  %exitcond839.7.not = icmp eq i64 %polly.indvar550.us.7, %smin838
  br i1 %exitcond839.7.not, label %polly.loop_exit541, label %polly.loop_header546.us.7
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 8}
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
!44 = !{!"llvm.loop.tile.size", i32 128}
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
