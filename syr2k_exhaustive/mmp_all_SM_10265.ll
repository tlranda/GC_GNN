; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10265.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10265.c"
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
  %call718 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1579 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1579, %call2
  %polly.access.call2599 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2599, %call1
  %2 = or i1 %0, %1
  %polly.access.call619 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call619, %call2
  %4 = icmp ule i8* %polly.access.call2599, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call619, %call1
  %8 = icmp ule i8* %polly.access.call1579, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header692, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep898 = getelementptr i8, i8* %call2, i64 %12
  %scevgep897 = getelementptr i8, i8* %call2, i64 %11
  %scevgep896 = getelementptr i8, i8* %call1, i64 %12
  %scevgep895 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep895, %scevgep898
  %bound1 = icmp ult i8* %scevgep897, %scevgep896
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
  br i1 %exitcond18.not.i, label %vector.ph902, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph902:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert909 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat910 = shufflevector <4 x i64> %broadcast.splatinsert909, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %vector.ph902
  %index903 = phi i64 [ 0, %vector.ph902 ], [ %index.next904, %vector.body901 ]
  %vec.ind907 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph902 ], [ %vec.ind.next908, %vector.body901 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind907, %broadcast.splat910
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv7.i, i64 %index903
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next904 = add i64 %index903, 4
  %vec.ind.next908 = add <4 x i64> %vec.ind907, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next904, 1200
  br i1 %40, label %for.inc41.i, label %vector.body901, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body901
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph902, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit753
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check965 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check965, label %for.body3.i46.preheader1042, label %vector.ph966

vector.ph966:                                     ; preds = %for.body3.i46.preheader
  %n.vec968 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph966
  %index969 = phi i64 [ 0, %vector.ph966 ], [ %index.next970, %vector.body964 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %index969
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next970 = add i64 %index969, 4
  %46 = icmp eq i64 %index.next970, %n.vec968
  br i1 %46, label %middle.block962, label %vector.body964, !llvm.loop !18

middle.block962:                                  ; preds = %vector.body964
  %cmp.n972 = icmp eq i64 %indvars.iv21.i, %n.vec968
  br i1 %cmp.n972, label %for.inc6.i, label %for.body3.i46.preheader1042

for.body3.i46.preheader1042:                      ; preds = %for.body3.i46.preheader, %middle.block962
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec968, %middle.block962 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1042, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1042 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block962, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check988 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check988, label %for.body3.i60.preheader1040, label %vector.ph989

vector.ph989:                                     ; preds = %for.body3.i60.preheader
  %n.vec991 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph989
  %index992 = phi i64 [ 0, %vector.ph989 ], [ %index.next993, %vector.body987 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %index992
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load996 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load996, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next993 = add i64 %index992, 4
  %57 = icmp eq i64 %index.next993, %n.vec991
  br i1 %57, label %middle.block985, label %vector.body987, !llvm.loop !51

middle.block985:                                  ; preds = %vector.body987
  %cmp.n995 = icmp eq i64 %indvars.iv21.i52, %n.vec991
  br i1 %cmp.n995, label %for.inc6.i63, label %for.body3.i60.preheader1040

for.body3.i60.preheader1040:                      ; preds = %for.body3.i60.preheader, %middle.block985
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec991, %middle.block985 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1040, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1040 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block985, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1014 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1014, label %for.body3.i99.preheader1038, label %vector.ph1015

vector.ph1015:                                    ; preds = %for.body3.i99.preheader
  %n.vec1017 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1019, %vector.body1013 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %index1018
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1022 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1022, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1019 = add i64 %index1018, 4
  %68 = icmp eq i64 %index.next1019, %n.vec1017
  br i1 %68, label %middle.block1011, label %vector.body1013, !llvm.loop !53

middle.block1011:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %indvars.iv21.i91, %n.vec1017
  br i1 %cmp.n1021, label %for.inc6.i102, label %for.body3.i99.preheader1038

for.body3.i99.preheader1038:                      ; preds = %for.body3.i99.preheader, %middle.block1011
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1017, %middle.block1011 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1038, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1038 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1011, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1026 = phi i64 [ %indvar.next1027, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1026, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1028 = icmp ult i64 %88, 4
  br i1 %min.iters.check1028, label %polly.loop_header191.preheader, label %vector.ph1029

vector.ph1029:                                    ; preds = %polly.loop_header
  %n.vec1031 = and i64 %88, -4
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1033, %vector.body1025 ]
  %90 = shl nuw nsw i64 %index1032, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1036 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1036, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1033 = add i64 %index1032, 4
  %95 = icmp eq i64 %index.next1033, %n.vec1031
  br i1 %95, label %middle.block1023, label %vector.body1025, !llvm.loop !64

middle.block1023:                                 ; preds = %vector.body1025
  %cmp.n1035 = icmp eq i64 %88, %n.vec1031
  br i1 %cmp.n1035, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1023
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1031, %middle.block1023 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1023
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1027 = add i64 %indvar1026, 1
  br i1 %exitcond801.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond800.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit207 ], [ 5, %polly.loop_exit193 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nsw i64 %polly.indvar202, -80
  %98 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 80
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 5
  %exitcond799.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond799.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin793 = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 -872)
  %99 = shl nsw i64 %polly.indvar208, 7
  %100 = add nsw i64 %smin793, 999
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, -128
  %exitcond798.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond798.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %indvars.iv785, %polly.loop_header205 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %101 = shl nsw i64 %polly.indvar214, 4
  %102 = add nsw i64 %101, %97
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %polly.loop_guard = icmp slt i64 %104, 80
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv783, i64 0)
  %105 = add i64 %smax, %indvars.iv787
  %106 = sub nsw i64 %98, %101
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, 16
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, -16
  %exitcond797.not = icmp eq i64 %polly.indvar_next215, %indvars.iv795
  br i1 %exitcond797.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv789 = phi i64 [ %105, %polly.loop_header217.preheader ], [ %indvars.iv.next790, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %104, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv789, i64 15)
  %107 = add nsw i64 %polly.indvar220, %106
  %polly.loop_guard233884 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar220, %98
  %109 = mul i64 %108, 8000
  %110 = mul i64 %108, 9600
  br i1 %polly.loop_guard233884, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.loop_exit232.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit232.loopexit.us ], [ 0, %polly.loop_header217 ]
  %111 = add nuw nsw i64 %polly.indvar226.us, %99
  %112 = shl i64 %111, 3
  %113 = add i64 %112, %109
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %113
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %114 = add nuw nsw i64 %polly.indvar234.us, %101
  %115 = mul nuw nsw i64 %114, 8000
  %116 = add nuw nsw i64 %115, %112
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %116
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %116
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %117 = shl i64 %114, 3
  %118 = add i64 %117, %110
  %scevgep249.us = getelementptr i8, i8* %call, i64 %118
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
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond794.not = icmp eq i64 %polly.indvar226.us, %100
  br i1 %exitcond794.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit232.loopexit.us, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 79
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar1000 = phi i64 [ %indvar.next1001, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %119 = add i64 %indvar1000, 1
  %120 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1002 = icmp ult i64 %119, 4
  br i1 %min.iters.check1002, label %polly.loop_header344.preheader, label %vector.ph1003

vector.ph1003:                                    ; preds = %polly.loop_header338
  %n.vec1005 = and i64 %119, -4
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body999 ]
  %121 = shl nuw nsw i64 %index1006, 3
  %122 = getelementptr i8, i8* %scevgep350, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1010 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !69, !noalias !71
  %124 = fmul fast <4 x double> %wide.load1010, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !69, !noalias !71
  %index.next1007 = add i64 %index1006, 4
  %126 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %126, label %middle.block997, label %vector.body999, !llvm.loop !74

middle.block997:                                  ; preds = %vector.body999
  %cmp.n1009 = icmp eq i64 %119, %n.vec1005
  br i1 %cmp.n1009, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block997
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1005, %middle.block997 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block997
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next1001 = add i64 %indvar1000, 1
  br i1 %exitcond825.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %127
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond824.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit362 ], [ 5, %polly.loop_exit346 ]
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %128 = mul nsw i64 %polly.indvar357, -80
  %129 = mul nuw nsw i64 %polly.indvar357, 80
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit368
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, -80
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 80
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 5
  %exitcond823.not = icmp eq i64 %polly.indvar_next358, 15
  br i1 %exitcond823.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.loop_header354
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit368 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 0, %polly.loop_header354 ]
  %smin817 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 -872)
  %130 = shl nsw i64 %polly.indvar363, 7
  %131 = add nsw i64 %smin817, 999
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_exit375
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -128
  %exitcond822.not = icmp eq i64 %polly.indvar_next364, 8
  br i1 %exitcond822.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header366:                             ; preds = %polly.loop_exit375, %polly.loop_header360
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit375 ], [ %indvars.iv807, %polly.loop_header360 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit375 ], [ %indvars.iv802, %polly.loop_header360 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit375 ], [ 0, %polly.loop_header360 ]
  %132 = shl nsw i64 %polly.indvar369, 4
  %133 = add nsw i64 %132, %128
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %polly.loop_guard376 = icmp slt i64 %135, 80
  br i1 %polly.loop_guard376, label %polly.loop_header373.preheader, label %polly.loop_exit375

polly.loop_header373.preheader:                   ; preds = %polly.loop_header366
  %smax806 = call i64 @llvm.smax.i64(i64 %indvars.iv804, i64 0)
  %136 = add i64 %smax806, %indvars.iv809
  %137 = sub nsw i64 %129, %132
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_exit382, %polly.loop_header366
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, 16
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, -16
  %exitcond821.not = icmp eq i64 %polly.indvar_next370, %indvars.iv819
  br i1 %exitcond821.not, label %polly.loop_exit368, label %polly.loop_header366

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_exit382
  %indvars.iv811 = phi i64 [ %136, %polly.loop_header373.preheader ], [ %indvars.iv.next812, %polly.loop_exit382 ]
  %polly.indvar377 = phi i64 [ %135, %polly.loop_header373.preheader ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 15)
  %138 = add nsw i64 %polly.indvar377, %137
  %polly.loop_guard390885 = icmp sgt i64 %138, -1
  %139 = add nuw nsw i64 %polly.indvar377, %129
  %140 = mul i64 %139, 8000
  %141 = mul i64 %139, 9600
  br i1 %polly.loop_guard390885, label %polly.loop_header380.us, label %polly.loop_exit382

polly.loop_header380.us:                          ; preds = %polly.loop_header373, %polly.loop_exit389.loopexit.us
  %polly.indvar383.us = phi i64 [ %polly.indvar_next384.us, %polly.loop_exit389.loopexit.us ], [ 0, %polly.loop_header373 ]
  %142 = add nuw nsw i64 %polly.indvar383.us, %130
  %143 = shl i64 %142, 3
  %144 = add i64 %143, %140
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %144
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us = getelementptr i8, i8* %call1, i64 %144
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us

polly.loop_header387.us:                          ; preds = %polly.loop_header380.us, %polly.loop_header387.us
  %polly.indvar391.us = phi i64 [ %polly.indvar_next392.us, %polly.loop_header387.us ], [ 0, %polly.loop_header380.us ]
  %145 = add nuw nsw i64 %polly.indvar391.us, %132
  %146 = mul nuw nsw i64 %145, 8000
  %147 = add nuw nsw i64 %146, %143
  %scevgep394.us = getelementptr i8, i8* %call1, i64 %147
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_399.us, %_p_scalar_396.us
  %scevgep400.us = getelementptr i8, i8* %call2, i64 %147
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_405.us, %_p_scalar_402.us
  %148 = shl i64 %145, 3
  %149 = add i64 %148, %141
  %scevgep406.us = getelementptr i8, i8* %call, i64 %149
  %scevgep406407.us = bitcast i8* %scevgep406.us to double*
  %_p_scalar_408.us = load double, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_408.us
  store double %p_add42.i79.us, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us = add nuw nsw i64 %polly.indvar391.us, 1
  %exitcond814.not = icmp eq i64 %polly.indvar391.us, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit389.loopexit.us, label %polly.loop_header387.us

polly.loop_exit389.loopexit.us:                   ; preds = %polly.loop_header387.us
  %polly.indvar_next384.us = add nuw nsw i64 %polly.indvar383.us, 1
  %exitcond818.not = icmp eq i64 %polly.indvar383.us, %131
  br i1 %exitcond818.not, label %polly.loop_exit382, label %polly.loop_header380.us

polly.loop_exit382:                               ; preds = %polly.loop_exit389.loopexit.us, %polly.loop_header373
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %polly.loop_cond379 = icmp ult i64 %polly.indvar377, 79
  %indvars.iv.next812 = add i64 %indvars.iv811, 1
  br i1 %polly.loop_cond379, label %polly.loop_header373, label %polly.loop_exit375

polly.loop_header495:                             ; preds = %init_array.exit, %polly.loop_exit503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit503 ], [ 0, %init_array.exit ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 1, %init_array.exit ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar498, 9600
  %scevgep507 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check976 = icmp ult i64 %150, 4
  br i1 %min.iters.check976, label %polly.loop_header501.preheader, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header495
  %n.vec979 = and i64 %150, -4
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body975 ]
  %152 = shl nuw nsw i64 %index980, 3
  %153 = getelementptr i8, i8* %scevgep507, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load984 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !78, !noalias !80
  %155 = fmul fast <4 x double> %wide.load984, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !78, !noalias !80
  %index.next981 = add i64 %index980, 4
  %157 = icmp eq i64 %index.next981, %n.vec979
  br i1 %157, label %middle.block973, label %vector.body975, !llvm.loop !83

middle.block973:                                  ; preds = %vector.body975
  %cmp.n983 = icmp eq i64 %150, %n.vec979
  br i1 %cmp.n983, label %polly.loop_exit503, label %polly.loop_header501.preheader

polly.loop_header501.preheader:                   ; preds = %polly.loop_header495, %middle.block973
  %polly.indvar504.ph = phi i64 [ 0, %polly.loop_header495 ], [ %n.vec979, %middle.block973 ]
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_header501, %middle.block973
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next499, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond849.not, label %polly.loop_header511, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_header501.preheader, %polly.loop_header501
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_header501 ], [ %polly.indvar504.ph, %polly.loop_header501.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep508 = getelementptr i8, i8* %scevgep507, i64 %158
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_510, 1.200000e+00
  store double %p_mul.i, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next505, %polly.indvar498
  br i1 %exitcond848.not, label %polly.loop_exit503, label %polly.loop_header501, !llvm.loop !84

polly.loop_header511:                             ; preds = %polly.loop_exit503, %polly.loop_exit519
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit519 ], [ 5, %polly.loop_exit503 ]
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %159 = mul nsw i64 %polly.indvar514, -80
  %160 = mul nuw nsw i64 %polly.indvar514, 80
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next827 = add nsw i64 %indvars.iv826, -80
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 80
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 5
  %exitcond847.not = icmp eq i64 %polly.indvar_next515, 15
  br i1 %exitcond847.not, label %kernel_syr2k.exit, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -872)
  %161 = shl nsw i64 %polly.indvar520, 7
  %162 = add nsw i64 %smin841, 999
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit532
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -128
  %exitcond846.not = icmp eq i64 %polly.indvar_next521, 8
  br i1 %exitcond846.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit532, %polly.loop_header517
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit532 ], [ %indvars.iv831, %polly.loop_header517 ]
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit532 ], [ %indvars.iv826, %polly.loop_header517 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit532 ], [ 0, %polly.loop_header517 ]
  %163 = shl nsw i64 %polly.indvar526, 4
  %164 = add nsw i64 %163, %159
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %polly.loop_guard533 = icmp slt i64 %166, 80
  br i1 %polly.loop_guard533, label %polly.loop_header530.preheader, label %polly.loop_exit532

polly.loop_header530.preheader:                   ; preds = %polly.loop_header523
  %smax830 = call i64 @llvm.smax.i64(i64 %indvars.iv828, i64 0)
  %167 = add i64 %smax830, %indvars.iv833
  %168 = sub nsw i64 %160, %163
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_exit539, %polly.loop_header523
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, 16
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -16
  %exitcond845.not = icmp eq i64 %polly.indvar_next527, %indvars.iv843
  br i1 %exitcond845.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_exit539
  %indvars.iv835 = phi i64 [ %167, %polly.loop_header530.preheader ], [ %indvars.iv.next836, %polly.loop_exit539 ]
  %polly.indvar534 = phi i64 [ %166, %polly.loop_header530.preheader ], [ %polly.indvar_next535, %polly.loop_exit539 ]
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv835, i64 15)
  %169 = add nsw i64 %polly.indvar534, %168
  %polly.loop_guard547886 = icmp sgt i64 %169, -1
  %170 = add nuw nsw i64 %polly.indvar534, %160
  %171 = mul i64 %170, 8000
  %172 = mul i64 %170, 9600
  br i1 %polly.loop_guard547886, label %polly.loop_header537.us, label %polly.loop_exit539

polly.loop_header537.us:                          ; preds = %polly.loop_header530, %polly.loop_exit546.loopexit.us
  %polly.indvar540.us = phi i64 [ %polly.indvar_next541.us, %polly.loop_exit546.loopexit.us ], [ 0, %polly.loop_header530 ]
  %173 = add nuw nsw i64 %polly.indvar540.us, %161
  %174 = shl i64 %173, 3
  %175 = add i64 %174, %171
  %scevgep554.us = getelementptr i8, i8* %call2, i64 %175
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us = getelementptr i8, i8* %call1, i64 %175
  %scevgep560561.us = bitcast i8* %scevgep560.us to double*
  %_p_scalar_562.us = load double, double* %scevgep560561.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us

polly.loop_header544.us:                          ; preds = %polly.loop_header537.us, %polly.loop_header544.us
  %polly.indvar548.us = phi i64 [ %polly.indvar_next549.us, %polly.loop_header544.us ], [ 0, %polly.loop_header537.us ]
  %176 = add nuw nsw i64 %polly.indvar548.us, %163
  %177 = mul nuw nsw i64 %176, 8000
  %178 = add nuw nsw i64 %177, %174
  %scevgep551.us = getelementptr i8, i8* %call1, i64 %178
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %scevgep557.us = getelementptr i8, i8* %call2, i64 %178
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_562.us, %_p_scalar_559.us
  %179 = shl i64 %176, 3
  %180 = add i64 %179, %172
  %scevgep563.us = getelementptr i8, i8* %call, i64 %180
  %scevgep563564.us = bitcast i8* %scevgep563.us to double*
  %_p_scalar_565.us = load double, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_565.us
  store double %p_add42.i.us, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us = add nuw nsw i64 %polly.indvar548.us, 1
  %exitcond838.not = icmp eq i64 %polly.indvar548.us, %smin837
  br i1 %exitcond838.not, label %polly.loop_exit546.loopexit.us, label %polly.loop_header544.us

polly.loop_exit546.loopexit.us:                   ; preds = %polly.loop_header544.us
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar540.us, %162
  br i1 %exitcond842.not, label %polly.loop_exit539, label %polly.loop_header537.us

polly.loop_exit539:                               ; preds = %polly.loop_exit546.loopexit.us, %polly.loop_header530
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %polly.loop_cond536 = icmp ult i64 %polly.indvar534, 79
  %indvars.iv.next836 = add i64 %indvars.iv835, 1
  br i1 %polly.loop_cond536, label %polly.loop_header530, label %polly.loop_exit532

polly.loop_header692:                             ; preds = %entry, %polly.loop_exit700
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit700 ], [ 0, %entry ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %entry ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv874, i64 -1168)
  %181 = shl nsw i64 %polly.indvar695, 5
  %182 = add nsw i64 %smin876, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, -32
  %exitcond879.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond879.not, label %polly.loop_header719, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %183 = mul nsw i64 %polly.indvar701, -32
  %smin914 = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin914, 1200
  %smin872 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 -1168)
  %185 = shl nsw i64 %polly.indvar701, 5
  %186 = add nsw i64 %smin872, 1199
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit712
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -32
  %exitcond878.not = icmp eq i64 %polly.indvar_next702, 38
  br i1 %exitcond878.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_exit712, %polly.loop_header698
  %polly.indvar707 = phi i64 [ 0, %polly.loop_header698 ], [ %polly.indvar_next708, %polly.loop_exit712 ]
  %187 = add nuw nsw i64 %polly.indvar707, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header710, label %vector.ph915

vector.ph915:                                     ; preds = %polly.loop_header704
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert924 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat925 = shufflevector <4 x i32> %broadcast.splatinsert924, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph915
  %index916 = phi i64 [ 0, %vector.ph915 ], [ %index.next917, %vector.body913 ]
  %vec.ind920 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next921, %vector.body913 ]
  %190 = add nuw nsw <4 x i64> %vec.ind920, %broadcast.splat923
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat925, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !87, !noalias !89
  %index.next917 = add i64 %index916, 4
  %vec.ind.next921 = add <4 x i64> %vec.ind920, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next917, %184
  br i1 %202, label %polly.loop_exit712, label %vector.body913, !llvm.loop !92

polly.loop_exit712:                               ; preds = %vector.body913, %polly.loop_header710
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond877.not = icmp eq i64 %polly.indvar707, %182
  br i1 %exitcond877.not, label %polly.loop_exit706, label %polly.loop_header704

polly.loop_header710:                             ; preds = %polly.loop_header704, %polly.loop_header710
  %polly.indvar713 = phi i64 [ %polly.indvar_next714, %polly.loop_header710 ], [ 0, %polly.loop_header704 ]
  %203 = add nuw nsw i64 %polly.indvar713, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep716 = getelementptr i8, i8* %call, i64 %209
  %scevgep716717 = bitcast i8* %scevgep716 to double*
  store double %p_div33.i, double* %scevgep716717, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next714 = add nuw nsw i64 %polly.indvar713, 1
  %exitcond873.not = icmp eq i64 %polly.indvar713, %186
  br i1 %exitcond873.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !93

polly.loop_header719:                             ; preds = %polly.loop_exit700, %polly.loop_exit727
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -1168)
  %210 = shl nsw i64 %polly.indvar722, 5
  %211 = add nsw i64 %smin866, 1199
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next723, 38
  br i1 %exitcond869.not, label %polly.loop_header745, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %212 = mul nsw i64 %polly.indvar728, -32
  %smin929 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin929, 1000
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 -968)
  %214 = shl nsw i64 %polly.indvar728, 5
  %215 = add nsw i64 %smin862, 999
  br label %polly.loop_header731

polly.loop_exit733:                               ; preds = %polly.loop_exit739
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond868.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_exit739, %polly.loop_header725
  %polly.indvar734 = phi i64 [ 0, %polly.loop_header725 ], [ %polly.indvar_next735, %polly.loop_exit739 ]
  %216 = add nuw nsw i64 %polly.indvar734, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check930 = icmp eq i64 %213, 0
  br i1 %min.iters.check930, label %polly.loop_header737, label %vector.ph931

vector.ph931:                                     ; preds = %polly.loop_header731
  %broadcast.splatinsert940 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat941 = shufflevector <4 x i64> %broadcast.splatinsert940, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph931
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next935, %vector.body928 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph931 ], [ %vec.ind.next939, %vector.body928 ]
  %219 = add nuw nsw <4 x i64> %vec.ind938, %broadcast.splat941
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat943, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !91, !noalias !94
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next935, %213
  br i1 %231, label %polly.loop_exit739, label %vector.body928, !llvm.loop !95

polly.loop_exit739:                               ; preds = %vector.body928, %polly.loop_header737
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond867.not = icmp eq i64 %polly.indvar734, %211
  br i1 %exitcond867.not, label %polly.loop_exit733, label %polly.loop_header731

polly.loop_header737:                             ; preds = %polly.loop_header731, %polly.loop_header737
  %polly.indvar740 = phi i64 [ %polly.indvar_next741, %polly.loop_header737 ], [ 0, %polly.loop_header731 ]
  %232 = add nuw nsw i64 %polly.indvar740, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep743 = getelementptr i8, i8* %call2, i64 %238
  %scevgep743744 = bitcast i8* %scevgep743 to double*
  store double %p_div12.i, double* %scevgep743744, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next741 = add nuw nsw i64 %polly.indvar740, 1
  %exitcond863.not = icmp eq i64 %polly.indvar740, %215
  br i1 %exitcond863.not, label %polly.loop_exit739, label %polly.loop_header737, !llvm.loop !96

polly.loop_header745:                             ; preds = %polly.loop_exit727, %polly.loop_exit753
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -1168)
  %239 = shl nsw i64 %polly.indvar748, 5
  %240 = add nsw i64 %smin856, 1199
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next749, 38
  br i1 %exitcond859.not, label %init_array.exit, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %241 = mul nsw i64 %polly.indvar754, -32
  %smin947 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin947, 1000
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -968)
  %243 = shl nsw i64 %polly.indvar754, 5
  %244 = add nsw i64 %smin852, 999
  br label %polly.loop_header757

polly.loop_exit759:                               ; preds = %polly.loop_exit765
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond858.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_exit765, %polly.loop_header751
  %polly.indvar760 = phi i64 [ 0, %polly.loop_header751 ], [ %polly.indvar_next761, %polly.loop_exit765 ]
  %245 = add nuw nsw i64 %polly.indvar760, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check948 = icmp eq i64 %242, 0
  br i1 %min.iters.check948, label %polly.loop_header763, label %vector.ph949

vector.ph949:                                     ; preds = %polly.loop_header757
  %broadcast.splatinsert958 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat959 = shufflevector <4 x i64> %broadcast.splatinsert958, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert960 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat961 = shufflevector <4 x i32> %broadcast.splatinsert960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph949
  %index952 = phi i64 [ 0, %vector.ph949 ], [ %index.next953, %vector.body946 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph949 ], [ %vec.ind.next957, %vector.body946 ]
  %248 = add nuw nsw <4 x i64> %vec.ind956, %broadcast.splat959
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat961, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !90, !noalias !97
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next953, %242
  br i1 %260, label %polly.loop_exit765, label %vector.body946, !llvm.loop !98

polly.loop_exit765:                               ; preds = %vector.body946, %polly.loop_header763
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond857.not = icmp eq i64 %polly.indvar760, %240
  br i1 %exitcond857.not, label %polly.loop_exit759, label %polly.loop_header757

polly.loop_header763:                             ; preds = %polly.loop_header757, %polly.loop_header763
  %polly.indvar766 = phi i64 [ %polly.indvar_next767, %polly.loop_header763 ], [ 0, %polly.loop_header757 ]
  %261 = add nuw nsw i64 %polly.indvar766, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep770 = getelementptr i8, i8* %call1, i64 %267
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div.i, double* %scevgep770771, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next767 = add nuw nsw i64 %polly.indvar766, 1
  %exitcond853.not = icmp eq i64 %polly.indvar766, %244
  br i1 %exitcond853.not, label %polly.loop_exit765, label %polly.loop_header763, !llvm.loop !99
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
!24 = !{!"llvm.loop.tile.size", i32 16}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 128}
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
!44 = !{!"llvm.loop.tile.size", i32 80}
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
