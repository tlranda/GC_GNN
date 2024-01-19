; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8524.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8524.c"
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
  %call712 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header686, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index903
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index969
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit521.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index992
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load996 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load996, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next993 = add i64 %index992, 4
  %57 = icmp eq i64 %index.next993, %n.vec991
  br i1 %57, label %middle.block985, label %vector.body987, !llvm.loop !53

middle.block985:                                  ; preds = %vector.body987
  %cmp.n995 = icmp eq i64 %indvars.iv21.i52, %n.vec991
  br i1 %cmp.n995, label %for.inc6.i63, label %for.body3.i60.preheader1040

for.body3.i60.preheader1040:                      ; preds = %for.body3.i60.preheader, %middle.block985
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec991, %middle.block985 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1040, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1040 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit366.4
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1018
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1022 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1022, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1019 = add i64 %index1018, 4
  %68 = icmp eq i64 %index.next1019, %n.vec1017
  br i1 %68, label %middle.block1011, label %vector.body1013, !llvm.loop !55

middle.block1011:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %indvars.iv21.i91, %n.vec1017
  br i1 %cmp.n1021, label %for.inc6.i102, label %for.body3.i99.preheader1038

for.body3.i99.preheader1038:                      ; preds = %for.body3.i99.preheader, %middle.block1011
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1017, %middle.block1011 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1038, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1038 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %wide.load1036 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1036, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1033 = add i64 %index1032, 4
  %95 = icmp eq i64 %index.next1033, %n.vec1031
  br i1 %95, label %middle.block1023, label %vector.body1025, !llvm.loop !66

middle.block1023:                                 ; preds = %vector.body1025
  %cmp.n1035 = icmp eq i64 %88, %n.vec1031
  br i1 %cmp.n1035, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1023
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1031, %middle.block1023 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1023
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond793.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1027 = add i64 %indvar1026, 1
  br i1 %exitcond793.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond792.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.4
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit213.4 ], [ 0, %polly.loop_exit193 ]
  %smin787 = call i64 @llvm.smin.i64(i64 %indvars.iv785, i64 -968)
  %97 = add nsw i64 %smin787, 1000
  %98 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 -1168)
  %99 = add nsw i64 %smin783, 1199
  %smax = call i64 @llvm.smax.i64(i64 %99, i64 0)
  %100 = mul nsw i64 %polly.indvar214, -32
  %polly.loop_guard872 = icmp sgt i64 %100, -1200
  %101 = shl nsw i64 %polly.indvar214, 5
  br i1 %polly.loop_guard872, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header211 ]
  %102 = add nuw nsw i64 %polly.indvar220.us, %98
  %103 = shl i64 %102, 3
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_exit231.us
  %indvars.iv777 = phi i64 [ %indvars.iv, %polly.loop_header217.us ], [ %indvars.iv.next778, %polly.loop_exit231.us ]
  %polly.indvar226.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_exit231.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv777, i64 255)
  %104 = add nuw nsw i64 %polly.indvar226.us, %101
  %105 = mul nuw nsw i64 %104, 8000
  %106 = add nuw nsw i64 %105, %103
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %106
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %106
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !64, !noalias !70
  %107 = mul nuw nsw i64 %104, 9600
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header229.us, %polly.loop_header223.us
  %polly.indvar232.us = phi i64 [ 0, %polly.loop_header223.us ], [ %polly.indvar_next233.us, %polly.loop_header229.us ]
  %108 = mul nuw nsw i64 %polly.indvar232.us, 8000
  %109 = add nuw nsw i64 %108, %103
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %109
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %109
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %110 = shl i64 %polly.indvar232.us, 3
  %111 = add nuw nsw i64 %110, %107
  %scevgep247.us = getelementptr i8, i8* %call, i64 %111
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.us, label %polly.loop_header229.us

polly.loop_exit231.us:                            ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1
  %exitcond784.not = icmp eq i64 %polly.indvar226.us, %smax
  br i1 %exitcond784.not, label %polly.loop_exit225.loopexit.us, label %polly.loop_header223.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_exit231.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond788.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -32
  %exitcond789.not = icmp eq i64 %polly.indvar_next215, 38
  br i1 %exitcond789.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1000 = phi i64 [ %indvar.next1001, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %112 = add i64 %indvar1000, 1
  %113 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1002 = icmp ult i64 %112, 4
  br i1 %min.iters.check1002, label %polly.loop_header342.preheader, label %vector.ph1003

vector.ph1003:                                    ; preds = %polly.loop_header336
  %n.vec1005 = and i64 %112, -4
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph1003
  %index1006 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1007, %vector.body999 ]
  %114 = shl nuw nsw i64 %index1006, 3
  %115 = getelementptr i8, i8* %scevgep348, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1010 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !71, !noalias !73
  %117 = fmul fast <4 x double> %wide.load1010, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !71, !noalias !73
  %index.next1007 = add i64 %index1006, 4
  %119 = icmp eq i64 %index.next1007, %n.vec1005
  br i1 %119, label %middle.block997, label %vector.body999, !llvm.loop !76

middle.block997:                                  ; preds = %vector.body999
  %cmp.n1009 = icmp eq i64 %112, %n.vec1005
  br i1 %cmp.n1009, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block997
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1005, %middle.block997 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block997
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next1001 = add i64 %indvar1000, 1
  br i1 %exitcond815.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %120
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond814.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !77

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit366.4
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit366.4 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit366.4 ], [ 0, %polly.loop_exit344 ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 -968)
  %121 = add nsw i64 %smin809, 1000
  %122 = shl nsw i64 %polly.indvar355, 5
  br label %polly.loop_header364

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header352
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %smin804 = call i64 @llvm.smin.i64(i64 %indvars.iv802, i64 -1168)
  %123 = add nsw i64 %smin804, 1199
  %smax805 = call i64 @llvm.smax.i64(i64 %123, i64 0)
  %124 = mul nsw i64 %polly.indvar367, -32
  %polly.loop_guard380877 = icmp sgt i64 %124, -1200
  %125 = shl nsw i64 %polly.indvar367, 5
  br i1 %polly.loop_guard380877, label %polly.loop_header370.us, label %polly.loop_exit372

polly.loop_header370.us:                          ; preds = %polly.loop_header364, %polly.loop_exit379.loopexit.us
  %polly.indvar373.us = phi i64 [ %polly.indvar_next374.us, %polly.loop_exit379.loopexit.us ], [ 0, %polly.loop_header364 ]
  %126 = add nuw nsw i64 %polly.indvar373.us, %122
  %127 = shl i64 %126, 3
  br label %polly.loop_header377.us

polly.loop_header377.us:                          ; preds = %polly.loop_header370.us, %polly.loop_exit386.us
  %indvars.iv796 = phi i64 [ %indvars.iv794, %polly.loop_header370.us ], [ %indvars.iv.next797, %polly.loop_exit386.us ]
  %polly.indvar381.us = phi i64 [ 0, %polly.loop_header370.us ], [ %polly.indvar_next382.us, %polly.loop_exit386.us ]
  %smin798 = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 255)
  %128 = add nuw nsw i64 %polly.indvar381.us, %125
  %129 = mul nuw nsw i64 %128, 8000
  %130 = add nuw nsw i64 %129, %127
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %130
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %130
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !74, !noalias !79
  %131 = mul nuw nsw i64 %128, 9600
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.us, %polly.loop_header377.us
  %polly.indvar387.us = phi i64 [ 0, %polly.loop_header377.us ], [ %polly.indvar_next388.us, %polly.loop_header384.us ]
  %132 = mul nuw nsw i64 %polly.indvar387.us, 8000
  %133 = add nuw nsw i64 %132, %127
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %134 = shl i64 %polly.indvar387.us, 3
  %135 = add nuw nsw i64 %134, %131
  %scevgep402.us = getelementptr i8, i8* %call, i64 %135
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond799.not = icmp eq i64 %polly.indvar387.us, %smin798
  br i1 %exitcond799.not, label %polly.loop_exit386.us, label %polly.loop_header384.us

polly.loop_exit386.us:                            ; preds = %polly.loop_header384.us
  %polly.indvar_next382.us = add nuw nsw i64 %polly.indvar381.us, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond806.not = icmp eq i64 %polly.indvar381.us, %smax805
  br i1 %exitcond806.not, label %polly.loop_exit379.loopexit.us, label %polly.loop_header377.us

polly.loop_exit379.loopexit.us:                   ; preds = %polly.loop_exit386.us
  %polly.indvar_next374.us = add nuw nsw i64 %polly.indvar373.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next374.us, %121
  br i1 %exitcond810.not, label %polly.loop_exit372, label %polly.loop_header370.us

polly.loop_exit372:                               ; preds = %polly.loop_exit379.loopexit.us, %polly.loop_header364
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 32
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, -32
  %exitcond811.not = icmp eq i64 %polly.indvar_next368, 38
  br i1 %exitcond811.not, label %polly.loop_header364.1, label %polly.loop_header364

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check976 = icmp ult i64 %136, 4
  br i1 %min.iters.check976, label %polly.loop_header497.preheader, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header491
  %n.vec979 = and i64 %136, -4
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body975 ]
  %138 = shl nuw nsw i64 %index980, 3
  %139 = getelementptr i8, i8* %scevgep503, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load984 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !80, !noalias !82
  %141 = fmul fast <4 x double> %wide.load984, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !80, !noalias !82
  %index.next981 = add i64 %index980, 4
  %143 = icmp eq i64 %index.next981, %n.vec979
  br i1 %143, label %middle.block973, label %vector.body975, !llvm.loop !85

middle.block973:                                  ; preds = %vector.body975
  %cmp.n983 = icmp eq i64 %136, %n.vec979
  br i1 %cmp.n983, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block973
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec979, %middle.block973 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block973
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond837.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %144
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond836.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !86

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit521.4
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit521.4 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit521.4 ], [ 0, %polly.loop_exit499 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -968)
  %145 = add nsw i64 %smin831, 1000
  %146 = shl nsw i64 %polly.indvar510, 5
  br label %polly.loop_header519

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header507
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit527 ], [ 0, %polly.loop_header507 ]
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit527 ], [ 0, %polly.loop_header507 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ 0, %polly.loop_header507 ]
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -1168)
  %147 = add nsw i64 %smin826, 1199
  %smax827 = call i64 @llvm.smax.i64(i64 %147, i64 0)
  %148 = mul nsw i64 %polly.indvar522, -32
  %polly.loop_guard535882 = icmp sgt i64 %148, -1200
  %149 = shl nsw i64 %polly.indvar522, 5
  br i1 %polly.loop_guard535882, label %polly.loop_header525.us, label %polly.loop_exit527

polly.loop_header525.us:                          ; preds = %polly.loop_header519, %polly.loop_exit534.loopexit.us
  %polly.indvar528.us = phi i64 [ %polly.indvar_next529.us, %polly.loop_exit534.loopexit.us ], [ 0, %polly.loop_header519 ]
  %150 = add nuw nsw i64 %polly.indvar528.us, %146
  %151 = shl i64 %150, 3
  br label %polly.loop_header532.us

polly.loop_header532.us:                          ; preds = %polly.loop_header525.us, %polly.loop_exit541.us
  %indvars.iv818 = phi i64 [ %indvars.iv816, %polly.loop_header525.us ], [ %indvars.iv.next819, %polly.loop_exit541.us ]
  %polly.indvar536.us = phi i64 [ 0, %polly.loop_header525.us ], [ %polly.indvar_next537.us, %polly.loop_exit541.us ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 255)
  %152 = add nuw nsw i64 %polly.indvar536.us, %149
  %153 = mul nuw nsw i64 %152, 8000
  %154 = add nuw nsw i64 %153, %151
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %154
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !83, !noalias !88
  %155 = mul nuw nsw i64 %152, 9600
  br label %polly.loop_header539.us

polly.loop_header539.us:                          ; preds = %polly.loop_header539.us, %polly.loop_header532.us
  %polly.indvar542.us = phi i64 [ 0, %polly.loop_header532.us ], [ %polly.indvar_next543.us, %polly.loop_header539.us ]
  %156 = mul nuw nsw i64 %polly.indvar542.us, 8000
  %157 = add nuw nsw i64 %156, %151
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %157
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %158 = shl i64 %polly.indvar542.us, 3
  %159 = add nuw nsw i64 %158, %155
  %scevgep557.us = getelementptr i8, i8* %call, i64 %159
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond821.not = icmp eq i64 %polly.indvar542.us, %smin820
  br i1 %exitcond821.not, label %polly.loop_exit541.us, label %polly.loop_header539.us

polly.loop_exit541.us:                            ; preds = %polly.loop_header539.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %exitcond828.not = icmp eq i64 %polly.indvar536.us, %smax827
  br i1 %exitcond828.not, label %polly.loop_exit534.loopexit.us, label %polly.loop_header532.us

polly.loop_exit534.loopexit.us:                   ; preds = %polly.loop_exit541.us
  %polly.indvar_next529.us = add nuw nsw i64 %polly.indvar528.us, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next529.us, %145
  br i1 %exitcond832.not, label %polly.loop_exit527, label %polly.loop_header525.us

polly.loop_exit527:                               ; preds = %polly.loop_exit534.loopexit.us, %polly.loop_header519
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 32
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond833.not = icmp eq i64 %polly.indvar_next523, 38
  br i1 %exitcond833.not, label %polly.loop_header519.1, label %polly.loop_header519

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin864 = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 -1168)
  %160 = shl nsw i64 %polly.indvar689, 5
  %161 = add nsw i64 %smin864, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond867.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %162 = mul nsw i64 %polly.indvar695, -32
  %smin914 = call i64 @llvm.smin.i64(i64 %162, i64 -1168)
  %163 = add nsw i64 %smin914, 1200
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 -1168)
  %164 = shl nsw i64 %polly.indvar695, 5
  %165 = add nsw i64 %smin860, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -32
  %exitcond866.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond866.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %166 = add nuw nsw i64 %polly.indvar701, %160
  %167 = trunc i64 %166 to i32
  %168 = mul nuw nsw i64 %166, 9600
  %min.iters.check = icmp eq i64 %163, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph915

vector.ph915:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %164, i32 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert924 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat925 = shufflevector <4 x i32> %broadcast.splatinsert924, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph915
  %index916 = phi i64 [ 0, %vector.ph915 ], [ %index.next917, %vector.body913 ]
  %vec.ind920 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next921, %vector.body913 ]
  %169 = add nuw nsw <4 x i64> %vec.ind920, %broadcast.splat923
  %170 = trunc <4 x i64> %169 to <4 x i32>
  %171 = mul <4 x i32> %broadcast.splat925, %170
  %172 = add <4 x i32> %171, <i32 3, i32 3, i32 3, i32 3>
  %173 = urem <4 x i32> %172, <i32 1200, i32 1200, i32 1200, i32 1200>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %176 = extractelement <4 x i64> %169, i32 0
  %177 = shl i64 %176, 3
  %178 = add nuw nsw i64 %177, %168
  %179 = getelementptr i8, i8* %call, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %175, <4 x double>* %180, align 8, !alias.scope !89, !noalias !91
  %index.next917 = add i64 %index916, 4
  %vec.ind.next921 = add <4 x i64> %vec.ind920, <i64 4, i64 4, i64 4, i64 4>
  %181 = icmp eq i64 %index.next917, %163
  br i1 %181, label %polly.loop_exit706, label %vector.body913, !llvm.loop !94

polly.loop_exit706:                               ; preds = %vector.body913, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond865.not = icmp eq i64 %polly.indvar701, %161
  br i1 %exitcond865.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %182 = add nuw nsw i64 %polly.indvar707, %164
  %183 = trunc i64 %182 to i32
  %184 = mul i32 %183, %167
  %185 = add i32 %184, 3
  %186 = urem i32 %185, 1200
  %p_conv31.i = sitofp i32 %186 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %187 = shl i64 %182, 3
  %188 = add nuw nsw i64 %187, %168
  %scevgep710 = getelementptr i8, i8* %call, i64 %188
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond861.not = icmp eq i64 %polly.indvar707, %165
  br i1 %exitcond861.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !95

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin854 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 -1168)
  %189 = shl nsw i64 %polly.indvar716, 5
  %190 = add nsw i64 %smin854, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond857.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %191 = mul nsw i64 %polly.indvar722, -32
  %smin929 = call i64 @llvm.smin.i64(i64 %191, i64 -968)
  %192 = add nsw i64 %smin929, 1000
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 -968)
  %193 = shl nsw i64 %polly.indvar722, 5
  %194 = add nsw i64 %smin850, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, -32
  %exitcond856.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond856.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %195 = add nuw nsw i64 %polly.indvar728, %189
  %196 = trunc i64 %195 to i32
  %197 = mul nuw nsw i64 %195, 8000
  %min.iters.check930 = icmp eq i64 %192, 0
  br i1 %min.iters.check930, label %polly.loop_header731, label %vector.ph931

vector.ph931:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert940 = insertelement <4 x i64> poison, i64 %193, i32 0
  %broadcast.splat941 = shufflevector <4 x i64> %broadcast.splatinsert940, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %196, i32 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph931
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next935, %vector.body928 ]
  %vec.ind938 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph931 ], [ %vec.ind.next939, %vector.body928 ]
  %198 = add nuw nsw <4 x i64> %vec.ind938, %broadcast.splat941
  %199 = trunc <4 x i64> %198 to <4 x i32>
  %200 = mul <4 x i32> %broadcast.splat943, %199
  %201 = add <4 x i32> %200, <i32 2, i32 2, i32 2, i32 2>
  %202 = urem <4 x i32> %201, <i32 1000, i32 1000, i32 1000, i32 1000>
  %203 = sitofp <4 x i32> %202 to <4 x double>
  %204 = fmul fast <4 x double> %203, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %205 = extractelement <4 x i64> %198, i32 0
  %206 = shl i64 %205, 3
  %207 = add nuw nsw i64 %206, %197
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %204, <4 x double>* %209, align 8, !alias.scope !93, !noalias !96
  %index.next935 = add i64 %index934, 4
  %vec.ind.next939 = add <4 x i64> %vec.ind938, <i64 4, i64 4, i64 4, i64 4>
  %210 = icmp eq i64 %index.next935, %192
  br i1 %210, label %polly.loop_exit733, label %vector.body928, !llvm.loop !97

polly.loop_exit733:                               ; preds = %vector.body928, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond855.not = icmp eq i64 %polly.indvar728, %190
  br i1 %exitcond855.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %211 = add nuw nsw i64 %polly.indvar734, %193
  %212 = trunc i64 %211 to i32
  %213 = mul i32 %212, %196
  %214 = add i32 %213, 2
  %215 = urem i32 %214, 1000
  %p_conv10.i = sitofp i32 %215 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %216 = shl i64 %211, 3
  %217 = add nuw nsw i64 %216, %197
  %scevgep737 = getelementptr i8, i8* %call2, i64 %217
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond851.not = icmp eq i64 %polly.indvar734, %194
  br i1 %exitcond851.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !98

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv842 = phi i64 [ %indvars.iv.next843, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin844 = call i64 @llvm.smin.i64(i64 %indvars.iv842, i64 -1168)
  %218 = shl nsw i64 %polly.indvar742, 5
  %219 = add nsw i64 %smin844, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond847.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %220 = mul nsw i64 %polly.indvar748, -32
  %smin947 = call i64 @llvm.smin.i64(i64 %220, i64 -968)
  %221 = add nsw i64 %smin947, 1000
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 -968)
  %222 = shl nsw i64 %polly.indvar748, 5
  %223 = add nsw i64 %smin840, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next839 = add nsw i64 %indvars.iv838, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond846.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %224 = add nuw nsw i64 %polly.indvar754, %218
  %225 = trunc i64 %224 to i32
  %226 = mul nuw nsw i64 %224, 8000
  %min.iters.check948 = icmp eq i64 %221, 0
  br i1 %min.iters.check948, label %polly.loop_header757, label %vector.ph949

vector.ph949:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert958 = insertelement <4 x i64> poison, i64 %222, i32 0
  %broadcast.splat959 = shufflevector <4 x i64> %broadcast.splatinsert958, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert960 = insertelement <4 x i32> poison, i32 %225, i32 0
  %broadcast.splat961 = shufflevector <4 x i32> %broadcast.splatinsert960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph949
  %index952 = phi i64 [ 0, %vector.ph949 ], [ %index.next953, %vector.body946 ]
  %vec.ind956 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph949 ], [ %vec.ind.next957, %vector.body946 ]
  %227 = add nuw nsw <4 x i64> %vec.ind956, %broadcast.splat959
  %228 = trunc <4 x i64> %227 to <4 x i32>
  %229 = mul <4 x i32> %broadcast.splat961, %228
  %230 = add <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %231 = urem <4 x i32> %230, <i32 1200, i32 1200, i32 1200, i32 1200>
  %232 = sitofp <4 x i32> %231 to <4 x double>
  %233 = fmul fast <4 x double> %232, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %234 = extractelement <4 x i64> %227, i32 0
  %235 = shl i64 %234, 3
  %236 = add nuw nsw i64 %235, %226
  %237 = getelementptr i8, i8* %call1, i64 %236
  %238 = bitcast i8* %237 to <4 x double>*
  store <4 x double> %233, <4 x double>* %238, align 8, !alias.scope !92, !noalias !99
  %index.next953 = add i64 %index952, 4
  %vec.ind.next957 = add <4 x i64> %vec.ind956, <i64 4, i64 4, i64 4, i64 4>
  %239 = icmp eq i64 %index.next953, %221
  br i1 %239, label %polly.loop_exit759, label %vector.body946, !llvm.loop !100

polly.loop_exit759:                               ; preds = %vector.body946, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond845.not = icmp eq i64 %polly.indvar754, %219
  br i1 %exitcond845.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %240 = add nuw nsw i64 %polly.indvar760, %222
  %241 = trunc i64 %240 to i32
  %242 = mul i32 %241, %225
  %243 = add i32 %242, 1
  %244 = urem i32 %243, 1200
  %p_conv.i = sitofp i32 %244 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %245 = shl i64 %240, 3
  %246 = add nuw nsw i64 %245, %226
  %scevgep764 = getelementptr i8, i8* %call1, i64 %246
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond841.not = icmp eq i64 %polly.indvar760, %223
  br i1 %exitcond841.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !101

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit219.1 ], [ -256, %polly.loop_exit219 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 8, %polly.loop_exit219 ]
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 -1168)
  %247 = add nsw i64 %smin783.1, 1199
  %smax.1 = call i64 @llvm.smax.i64(i64 %247, i64 0)
  %248 = mul nsw i64 %polly.indvar214.1, -32
  %polly.loop_guard.1873 = icmp sgt i64 %248, -1200
  %249 = shl nsw i64 %polly.indvar214.1, 5
  br i1 %polly.loop_guard.1873, label %polly.loop_header217.us.1, label %polly.loop_exit219.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_header211.1, %polly.loop_exit225.loopexit.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit225.loopexit.us.1 ], [ 0, %polly.loop_header211.1 ]
  %250 = add nuw nsw i64 %polly.indvar220.us.1, %98
  %251 = shl i64 %250, 3
  br label %polly.loop_header223.us.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit231.us.1, %polly.loop_header217.us.1
  %indvars.iv777.1 = phi i64 [ %indvars.iv.1, %polly.loop_header217.us.1 ], [ %indvars.iv.next778.1, %polly.loop_exit231.us.1 ]
  %polly.indvar226.us.1 = phi i64 [ 0, %polly.loop_header217.us.1 ], [ %polly.indvar_next227.us.1, %polly.loop_exit231.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv777.1, i64 255)
  %252 = add nuw nsw i64 %polly.indvar226.us.1, %249
  %253 = mul nuw nsw i64 %252, 8000
  %254 = add nuw nsw i64 %253, %251
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %254
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %254
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !64, !noalias !70
  %255 = mul nuw nsw i64 %252, 9600
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ 0, %polly.loop_header223.us.1 ], [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ]
  %256 = add nuw nsw i64 %polly.indvar232.us.1, 256
  %257 = mul nuw nsw i64 %256, 8000
  %258 = add nuw nsw i64 %257, %251
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %258
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %258
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %259 = shl i64 %256, 3
  %260 = add nuw nsw i64 %259, %255
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %260
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.us.1:                          ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %indvars.iv.next778.1 = add nuw nsw i64 %indvars.iv777.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar226.us.1, %smax.1
  br i1 %exitcond784.1.not, label %polly.loop_exit225.loopexit.us.1, label %polly.loop_header223.us.1

polly.loop_exit225.loopexit.us.1:                 ; preds = %polly.loop_exit231.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond788.1.not = icmp eq i64 %polly.indvar_next221.us.1, %97
  br i1 %exitcond788.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.us.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.loopexit.us.1, %polly.loop_header211.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 32
  %indvars.iv.next782.1 = add nsw i64 %indvars.iv781.1, -32
  %exitcond789.1.not = icmp eq i64 %polly.indvar_next215.1, 38
  br i1 %exitcond789.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %indvars.iv781.2 = phi i64 [ %indvars.iv.next782.2, %polly.loop_exit219.2 ], [ -512, %polly.loop_exit219.1 ]
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 16, %polly.loop_exit219.1 ]
  %smin783.2 = call i64 @llvm.smin.i64(i64 %indvars.iv781.2, i64 -1168)
  %261 = add nsw i64 %smin783.2, 1199
  %smax.2 = call i64 @llvm.smax.i64(i64 %261, i64 0)
  %262 = mul nsw i64 %polly.indvar214.2, -32
  %polly.loop_guard.2874 = icmp sgt i64 %262, -1200
  %263 = shl nsw i64 %polly.indvar214.2, 5
  br i1 %polly.loop_guard.2874, label %polly.loop_header217.us.2, label %polly.loop_exit219.2

polly.loop_header217.us.2:                        ; preds = %polly.loop_header211.2, %polly.loop_exit225.loopexit.us.2
  %polly.indvar220.us.2 = phi i64 [ %polly.indvar_next221.us.2, %polly.loop_exit225.loopexit.us.2 ], [ 0, %polly.loop_header211.2 ]
  %264 = add nuw nsw i64 %polly.indvar220.us.2, %98
  %265 = shl i64 %264, 3
  br label %polly.loop_header223.us.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit231.us.2, %polly.loop_header217.us.2
  %indvars.iv777.2 = phi i64 [ %indvars.iv.2, %polly.loop_header217.us.2 ], [ %indvars.iv.next778.2, %polly.loop_exit231.us.2 ]
  %polly.indvar226.us.2 = phi i64 [ 0, %polly.loop_header217.us.2 ], [ %polly.indvar_next227.us.2, %polly.loop_exit231.us.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv777.2, i64 255)
  %266 = add nuw nsw i64 %polly.indvar226.us.2, %263
  %267 = mul nuw nsw i64 %266, 8000
  %268 = add nuw nsw i64 %267, %265
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %268
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %268
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !64, !noalias !70
  %269 = mul nuw nsw i64 %266, 9600
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ 0, %polly.loop_header223.us.2 ], [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ]
  %270 = add nuw nsw i64 %polly.indvar232.us.2, 512
  %271 = mul nuw nsw i64 %270, 8000
  %272 = add nuw nsw i64 %271, %265
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %272
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %272
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %273 = shl i64 %270, 3
  %274 = add nuw nsw i64 %273, %269
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %274
  %scevgep247248.us.2 = bitcast i8* %scevgep247.us.2 to double*
  %_p_scalar_249.us.2 = load double, double* %scevgep247248.us.2, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_249.us.2
  store double %p_add42.i118.us.2, double* %scevgep247248.us.2, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.us.2, label %polly.loop_header229.us.2

polly.loop_exit231.us.2:                          ; preds = %polly.loop_header229.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %indvars.iv.next778.2 = add nuw nsw i64 %indvars.iv777.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar226.us.2, %smax.2
  br i1 %exitcond784.2.not, label %polly.loop_exit225.loopexit.us.2, label %polly.loop_header223.us.2

polly.loop_exit225.loopexit.us.2:                 ; preds = %polly.loop_exit231.us.2
  %polly.indvar_next221.us.2 = add nuw nsw i64 %polly.indvar220.us.2, 1
  %exitcond788.2.not = icmp eq i64 %polly.indvar_next221.us.2, %97
  br i1 %exitcond788.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.us.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.loopexit.us.2, %polly.loop_header211.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 32
  %indvars.iv.next782.2 = add nsw i64 %indvars.iv781.2, -32
  %exitcond789.2.not = icmp eq i64 %polly.indvar_next215.2, 38
  br i1 %exitcond789.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %indvars.iv781.3 = phi i64 [ %indvars.iv.next782.3, %polly.loop_exit219.3 ], [ -768, %polly.loop_exit219.2 ]
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 24, %polly.loop_exit219.2 ]
  %smin783.3 = call i64 @llvm.smin.i64(i64 %indvars.iv781.3, i64 -1168)
  %275 = add nsw i64 %smin783.3, 1199
  %smax.3 = call i64 @llvm.smax.i64(i64 %275, i64 0)
  %276 = mul nsw i64 %polly.indvar214.3, -32
  %polly.loop_guard.3875 = icmp sgt i64 %276, -1200
  %277 = shl nsw i64 %polly.indvar214.3, 5
  br i1 %polly.loop_guard.3875, label %polly.loop_header217.us.3, label %polly.loop_exit219.3

polly.loop_header217.us.3:                        ; preds = %polly.loop_header211.3, %polly.loop_exit225.loopexit.us.3
  %polly.indvar220.us.3 = phi i64 [ %polly.indvar_next221.us.3, %polly.loop_exit225.loopexit.us.3 ], [ 0, %polly.loop_header211.3 ]
  %278 = add nuw nsw i64 %polly.indvar220.us.3, %98
  %279 = shl i64 %278, 3
  br label %polly.loop_header223.us.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit231.us.3, %polly.loop_header217.us.3
  %indvars.iv777.3 = phi i64 [ %indvars.iv.3, %polly.loop_header217.us.3 ], [ %indvars.iv.next778.3, %polly.loop_exit231.us.3 ]
  %polly.indvar226.us.3 = phi i64 [ 0, %polly.loop_header217.us.3 ], [ %polly.indvar_next227.us.3, %polly.loop_exit231.us.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv777.3, i64 255)
  %280 = add nuw nsw i64 %polly.indvar226.us.3, %277
  %281 = mul nuw nsw i64 %280, 8000
  %282 = add nuw nsw i64 %281, %279
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %282
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %282
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !64, !noalias !70
  %283 = mul nuw nsw i64 %280, 9600
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ 0, %polly.loop_header223.us.3 ], [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ]
  %284 = add nuw nsw i64 %polly.indvar232.us.3, 768
  %285 = mul nuw nsw i64 %284, 8000
  %286 = add nuw nsw i64 %285, %279
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %286
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %286
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %287 = shl i64 %284, 3
  %288 = add nuw nsw i64 %287, %283
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %288
  %scevgep247248.us.3 = bitcast i8* %scevgep247.us.3 to double*
  %_p_scalar_249.us.3 = load double, double* %scevgep247248.us.3, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_249.us.3
  store double %p_add42.i118.us.3, double* %scevgep247248.us.3, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.us.3, label %polly.loop_header229.us.3

polly.loop_exit231.us.3:                          ; preds = %polly.loop_header229.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %indvars.iv.next778.3 = add nuw nsw i64 %indvars.iv777.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar226.us.3, %smax.3
  br i1 %exitcond784.3.not, label %polly.loop_exit225.loopexit.us.3, label %polly.loop_header223.us.3

polly.loop_exit225.loopexit.us.3:                 ; preds = %polly.loop_exit231.us.3
  %polly.indvar_next221.us.3 = add nuw nsw i64 %polly.indvar220.us.3, 1
  %exitcond788.3.not = icmp eq i64 %polly.indvar_next221.us.3, %97
  br i1 %exitcond788.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.us.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.loopexit.us.3, %polly.loop_header211.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 32
  %indvars.iv.next782.3 = add nsw i64 %indvars.iv781.3, -32
  %exitcond789.3.not = icmp eq i64 %polly.indvar_next215.3, 38
  br i1 %exitcond789.3.not, label %polly.loop_header211.4, label %polly.loop_header211.3

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.3, %polly.loop_exit219.4
  %indvars.iv781.4 = phi i64 [ %indvars.iv.next782.4, %polly.loop_exit219.4 ], [ -1024, %polly.loop_exit219.3 ]
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %polly.loop_exit219.4 ], [ 0, %polly.loop_exit219.3 ]
  %polly.indvar214.4 = phi i64 [ %polly.indvar_next215.4, %polly.loop_exit219.4 ], [ 32, %polly.loop_exit219.3 ]
  %smin783.4 = call i64 @llvm.smin.i64(i64 %indvars.iv781.4, i64 -1168)
  %289 = add nsw i64 %smin783.4, 1199
  %smax.4 = call i64 @llvm.smax.i64(i64 %289, i64 0)
  %290 = mul nsw i64 %polly.indvar214.4, -32
  %polly.loop_guard.4876 = icmp sgt i64 %290, -1200
  %291 = shl nsw i64 %polly.indvar214.4, 5
  br i1 %polly.loop_guard.4876, label %polly.loop_header217.us.4, label %polly.loop_exit219.4

polly.loop_header217.us.4:                        ; preds = %polly.loop_header211.4, %polly.loop_exit225.loopexit.us.4
  %polly.indvar220.us.4 = phi i64 [ %polly.indvar_next221.us.4, %polly.loop_exit225.loopexit.us.4 ], [ 0, %polly.loop_header211.4 ]
  %292 = add nuw nsw i64 %polly.indvar220.us.4, %98
  %293 = shl i64 %292, 3
  br label %polly.loop_header223.us.4

polly.loop_header223.us.4:                        ; preds = %polly.loop_exit231.us.4, %polly.loop_header217.us.4
  %indvars.iv777.4 = phi i64 [ %indvars.iv.4, %polly.loop_header217.us.4 ], [ %indvars.iv.next778.4, %polly.loop_exit231.us.4 ]
  %polly.indvar226.us.4 = phi i64 [ 0, %polly.loop_header217.us.4 ], [ %polly.indvar_next227.us.4, %polly.loop_exit231.us.4 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv777.4, i64 255)
  %294 = add nuw nsw i64 %polly.indvar226.us.4, %291
  %295 = mul nuw nsw i64 %294, 8000
  %296 = add nuw nsw i64 %295, %293
  %scevgep238.us.4 = getelementptr i8, i8* %call2, i64 %296
  %scevgep238239.us.4 = bitcast i8* %scevgep238.us.4 to double*
  %_p_scalar_240.us.4 = load double, double* %scevgep238239.us.4, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.4 = getelementptr i8, i8* %call1, i64 %296
  %scevgep244245.us.4 = bitcast i8* %scevgep244.us.4 to double*
  %_p_scalar_246.us.4 = load double, double* %scevgep244245.us.4, align 8, !alias.scope !64, !noalias !70
  %297 = mul nuw nsw i64 %294, 9600
  br label %polly.loop_header229.us.4

polly.loop_header229.us.4:                        ; preds = %polly.loop_header229.us.4, %polly.loop_header223.us.4
  %polly.indvar232.us.4 = phi i64 [ 0, %polly.loop_header223.us.4 ], [ %polly.indvar_next233.us.4, %polly.loop_header229.us.4 ]
  %298 = add nuw nsw i64 %polly.indvar232.us.4, 1024
  %299 = mul nuw nsw i64 %298, 8000
  %300 = add nuw nsw i64 %299, %293
  %scevgep235.us.4 = getelementptr i8, i8* %call1, i64 %300
  %scevgep235236.us.4 = bitcast i8* %scevgep235.us.4 to double*
  %_p_scalar_237.us.4 = load double, double* %scevgep235236.us.4, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_240.us.4, %_p_scalar_237.us.4
  %scevgep241.us.4 = getelementptr i8, i8* %call2, i64 %300
  %scevgep241242.us.4 = bitcast i8* %scevgep241.us.4 to double*
  %_p_scalar_243.us.4 = load double, double* %scevgep241242.us.4, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_246.us.4, %_p_scalar_243.us.4
  %301 = shl i64 %298, 3
  %302 = add nuw nsw i64 %301, %297
  %scevgep247.us.4 = getelementptr i8, i8* %call, i64 %302
  %scevgep247248.us.4 = bitcast i8* %scevgep247.us.4 to double*
  %_p_scalar_249.us.4 = load double, double* %scevgep247248.us.4, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.4 = fadd fast double %p_mul37.i114.us.4, %p_mul27.i112.us.4
  %p_reass.mul.i117.us.4 = fmul fast double %p_reass.add.i116.us.4, 1.500000e+00
  %p_add42.i118.us.4 = fadd fast double %p_reass.mul.i117.us.4, %_p_scalar_249.us.4
  store double %p_add42.i118.us.4, double* %scevgep247248.us.4, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.4 = add nuw nsw i64 %polly.indvar232.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar232.us.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit231.us.4, label %polly.loop_header229.us.4

polly.loop_exit231.us.4:                          ; preds = %polly.loop_header229.us.4
  %polly.indvar_next227.us.4 = add nuw nsw i64 %polly.indvar226.us.4, 1
  %indvars.iv.next778.4 = add nuw nsw i64 %indvars.iv777.4, 1
  %exitcond784.4.not = icmp eq i64 %polly.indvar226.us.4, %smax.4
  br i1 %exitcond784.4.not, label %polly.loop_exit225.loopexit.us.4, label %polly.loop_header223.us.4

polly.loop_exit225.loopexit.us.4:                 ; preds = %polly.loop_exit231.us.4
  %polly.indvar_next221.us.4 = add nuw nsw i64 %polly.indvar220.us.4, 1
  %exitcond788.4.not = icmp eq i64 %polly.indvar_next221.us.4, %97
  br i1 %exitcond788.4.not, label %polly.loop_exit219.4, label %polly.loop_header217.us.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.loopexit.us.4, %polly.loop_header211.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 32
  %indvars.iv.next782.4 = add nsw i64 %indvars.iv781.4, -32
  %exitcond789.4.not = icmp eq i64 %polly.indvar_next215.4, 38
  br i1 %exitcond789.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, -32
  %exitcond791.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond791.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header364.1:                           ; preds = %polly.loop_exit372, %polly.loop_exit372.1
  %indvars.iv802.1 = phi i64 [ %indvars.iv.next803.1, %polly.loop_exit372.1 ], [ -256, %polly.loop_exit372 ]
  %indvars.iv794.1 = phi i64 [ %indvars.iv.next795.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_exit372 ]
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 8, %polly.loop_exit372 ]
  %smin804.1 = call i64 @llvm.smin.i64(i64 %indvars.iv802.1, i64 -1168)
  %303 = add nsw i64 %smin804.1, 1199
  %smax805.1 = call i64 @llvm.smax.i64(i64 %303, i64 0)
  %304 = mul nsw i64 %polly.indvar367.1, -32
  %polly.loop_guard380.1878 = icmp sgt i64 %304, -1200
  %305 = shl nsw i64 %polly.indvar367.1, 5
  br i1 %polly.loop_guard380.1878, label %polly.loop_header370.us.1, label %polly.loop_exit372.1

polly.loop_header370.us.1:                        ; preds = %polly.loop_header364.1, %polly.loop_exit379.loopexit.us.1
  %polly.indvar373.us.1 = phi i64 [ %polly.indvar_next374.us.1, %polly.loop_exit379.loopexit.us.1 ], [ 0, %polly.loop_header364.1 ]
  %306 = add nuw nsw i64 %polly.indvar373.us.1, %122
  %307 = shl i64 %306, 3
  br label %polly.loop_header377.us.1

polly.loop_header377.us.1:                        ; preds = %polly.loop_exit386.us.1, %polly.loop_header370.us.1
  %indvars.iv796.1 = phi i64 [ %indvars.iv794.1, %polly.loop_header370.us.1 ], [ %indvars.iv.next797.1, %polly.loop_exit386.us.1 ]
  %polly.indvar381.us.1 = phi i64 [ 0, %polly.loop_header370.us.1 ], [ %polly.indvar_next382.us.1, %polly.loop_exit386.us.1 ]
  %smin798.1 = call i64 @llvm.smin.i64(i64 %indvars.iv796.1, i64 255)
  %308 = add nuw nsw i64 %polly.indvar381.us.1, %305
  %309 = mul nuw nsw i64 %308, 8000
  %310 = add nuw nsw i64 %309, %307
  %scevgep393.us.1 = getelementptr i8, i8* %call2, i64 %310
  %scevgep393394.us.1 = bitcast i8* %scevgep393.us.1 to double*
  %_p_scalar_395.us.1 = load double, double* %scevgep393394.us.1, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.1 = getelementptr i8, i8* %call1, i64 %310
  %scevgep399400.us.1 = bitcast i8* %scevgep399.us.1 to double*
  %_p_scalar_401.us.1 = load double, double* %scevgep399400.us.1, align 8, !alias.scope !74, !noalias !79
  %311 = mul nuw nsw i64 %308, 9600
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar387.us.1 = phi i64 [ 0, %polly.loop_header377.us.1 ], [ %polly.indvar_next388.us.1, %polly.loop_header384.us.1 ]
  %312 = add nuw nsw i64 %polly.indvar387.us.1, 256
  %313 = mul nuw nsw i64 %312, 8000
  %314 = add nuw nsw i64 %313, %307
  %scevgep390.us.1 = getelementptr i8, i8* %call1, i64 %314
  %scevgep390391.us.1 = bitcast i8* %scevgep390.us.1 to double*
  %_p_scalar_392.us.1 = load double, double* %scevgep390391.us.1, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_395.us.1, %_p_scalar_392.us.1
  %scevgep396.us.1 = getelementptr i8, i8* %call2, i64 %314
  %scevgep396397.us.1 = bitcast i8* %scevgep396.us.1 to double*
  %_p_scalar_398.us.1 = load double, double* %scevgep396397.us.1, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_401.us.1, %_p_scalar_398.us.1
  %315 = shl i64 %312, 3
  %316 = add nuw nsw i64 %315, %311
  %scevgep402.us.1 = getelementptr i8, i8* %call, i64 %316
  %scevgep402403.us.1 = bitcast i8* %scevgep402.us.1 to double*
  %_p_scalar_404.us.1 = load double, double* %scevgep402403.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_404.us.1
  store double %p_add42.i79.us.1, double* %scevgep402403.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.1 = add nuw nsw i64 %polly.indvar387.us.1, 1
  %exitcond799.1.not = icmp eq i64 %polly.indvar387.us.1, %smin798.1
  br i1 %exitcond799.1.not, label %polly.loop_exit386.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.us.1:                          ; preds = %polly.loop_header384.us.1
  %polly.indvar_next382.us.1 = add nuw nsw i64 %polly.indvar381.us.1, 1
  %indvars.iv.next797.1 = add nuw nsw i64 %indvars.iv796.1, 1
  %exitcond806.1.not = icmp eq i64 %polly.indvar381.us.1, %smax805.1
  br i1 %exitcond806.1.not, label %polly.loop_exit379.loopexit.us.1, label %polly.loop_header377.us.1

polly.loop_exit379.loopexit.us.1:                 ; preds = %polly.loop_exit386.us.1
  %polly.indvar_next374.us.1 = add nuw nsw i64 %polly.indvar373.us.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next374.us.1, %121
  br i1 %exitcond810.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.us.1

polly.loop_exit372.1:                             ; preds = %polly.loop_exit379.loopexit.us.1, %polly.loop_header364.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %indvars.iv.next795.1 = add nuw nsw i64 %indvars.iv794.1, 32
  %indvars.iv.next803.1 = add nsw i64 %indvars.iv802.1, -32
  %exitcond811.1.not = icmp eq i64 %polly.indvar_next368.1, 38
  br i1 %exitcond811.1.not, label %polly.loop_header364.2, label %polly.loop_header364.1

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.1, %polly.loop_exit372.2
  %indvars.iv802.2 = phi i64 [ %indvars.iv.next803.2, %polly.loop_exit372.2 ], [ -512, %polly.loop_exit372.1 ]
  %indvars.iv794.2 = phi i64 [ %indvars.iv.next795.2, %polly.loop_exit372.2 ], [ 0, %polly.loop_exit372.1 ]
  %polly.indvar367.2 = phi i64 [ %polly.indvar_next368.2, %polly.loop_exit372.2 ], [ 16, %polly.loop_exit372.1 ]
  %smin804.2 = call i64 @llvm.smin.i64(i64 %indvars.iv802.2, i64 -1168)
  %317 = add nsw i64 %smin804.2, 1199
  %smax805.2 = call i64 @llvm.smax.i64(i64 %317, i64 0)
  %318 = mul nsw i64 %polly.indvar367.2, -32
  %polly.loop_guard380.2879 = icmp sgt i64 %318, -1200
  %319 = shl nsw i64 %polly.indvar367.2, 5
  br i1 %polly.loop_guard380.2879, label %polly.loop_header370.us.2, label %polly.loop_exit372.2

polly.loop_header370.us.2:                        ; preds = %polly.loop_header364.2, %polly.loop_exit379.loopexit.us.2
  %polly.indvar373.us.2 = phi i64 [ %polly.indvar_next374.us.2, %polly.loop_exit379.loopexit.us.2 ], [ 0, %polly.loop_header364.2 ]
  %320 = add nuw nsw i64 %polly.indvar373.us.2, %122
  %321 = shl i64 %320, 3
  br label %polly.loop_header377.us.2

polly.loop_header377.us.2:                        ; preds = %polly.loop_exit386.us.2, %polly.loop_header370.us.2
  %indvars.iv796.2 = phi i64 [ %indvars.iv794.2, %polly.loop_header370.us.2 ], [ %indvars.iv.next797.2, %polly.loop_exit386.us.2 ]
  %polly.indvar381.us.2 = phi i64 [ 0, %polly.loop_header370.us.2 ], [ %polly.indvar_next382.us.2, %polly.loop_exit386.us.2 ]
  %smin798.2 = call i64 @llvm.smin.i64(i64 %indvars.iv796.2, i64 255)
  %322 = add nuw nsw i64 %polly.indvar381.us.2, %319
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %321
  %scevgep393.us.2 = getelementptr i8, i8* %call2, i64 %324
  %scevgep393394.us.2 = bitcast i8* %scevgep393.us.2 to double*
  %_p_scalar_395.us.2 = load double, double* %scevgep393394.us.2, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.2 = getelementptr i8, i8* %call1, i64 %324
  %scevgep399400.us.2 = bitcast i8* %scevgep399.us.2 to double*
  %_p_scalar_401.us.2 = load double, double* %scevgep399400.us.2, align 8, !alias.scope !74, !noalias !79
  %325 = mul nuw nsw i64 %322, 9600
  br label %polly.loop_header384.us.2

polly.loop_header384.us.2:                        ; preds = %polly.loop_header384.us.2, %polly.loop_header377.us.2
  %polly.indvar387.us.2 = phi i64 [ 0, %polly.loop_header377.us.2 ], [ %polly.indvar_next388.us.2, %polly.loop_header384.us.2 ]
  %326 = add nuw nsw i64 %polly.indvar387.us.2, 512
  %327 = mul nuw nsw i64 %326, 8000
  %328 = add nuw nsw i64 %327, %321
  %scevgep390.us.2 = getelementptr i8, i8* %call1, i64 %328
  %scevgep390391.us.2 = bitcast i8* %scevgep390.us.2 to double*
  %_p_scalar_392.us.2 = load double, double* %scevgep390391.us.2, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_395.us.2, %_p_scalar_392.us.2
  %scevgep396.us.2 = getelementptr i8, i8* %call2, i64 %328
  %scevgep396397.us.2 = bitcast i8* %scevgep396.us.2 to double*
  %_p_scalar_398.us.2 = load double, double* %scevgep396397.us.2, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_401.us.2, %_p_scalar_398.us.2
  %329 = shl i64 %326, 3
  %330 = add nuw nsw i64 %329, %325
  %scevgep402.us.2 = getelementptr i8, i8* %call, i64 %330
  %scevgep402403.us.2 = bitcast i8* %scevgep402.us.2 to double*
  %_p_scalar_404.us.2 = load double, double* %scevgep402403.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_404.us.2
  store double %p_add42.i79.us.2, double* %scevgep402403.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.2 = add nuw nsw i64 %polly.indvar387.us.2, 1
  %exitcond799.2.not = icmp eq i64 %polly.indvar387.us.2, %smin798.2
  br i1 %exitcond799.2.not, label %polly.loop_exit386.us.2, label %polly.loop_header384.us.2

polly.loop_exit386.us.2:                          ; preds = %polly.loop_header384.us.2
  %polly.indvar_next382.us.2 = add nuw nsw i64 %polly.indvar381.us.2, 1
  %indvars.iv.next797.2 = add nuw nsw i64 %indvars.iv796.2, 1
  %exitcond806.2.not = icmp eq i64 %polly.indvar381.us.2, %smax805.2
  br i1 %exitcond806.2.not, label %polly.loop_exit379.loopexit.us.2, label %polly.loop_header377.us.2

polly.loop_exit379.loopexit.us.2:                 ; preds = %polly.loop_exit386.us.2
  %polly.indvar_next374.us.2 = add nuw nsw i64 %polly.indvar373.us.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next374.us.2, %121
  br i1 %exitcond810.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.us.2

polly.loop_exit372.2:                             ; preds = %polly.loop_exit379.loopexit.us.2, %polly.loop_header364.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %indvars.iv.next795.2 = add nuw nsw i64 %indvars.iv794.2, 32
  %indvars.iv.next803.2 = add nsw i64 %indvars.iv802.2, -32
  %exitcond811.2.not = icmp eq i64 %polly.indvar_next368.2, 38
  br i1 %exitcond811.2.not, label %polly.loop_header364.3, label %polly.loop_header364.2

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.2, %polly.loop_exit372.3
  %indvars.iv802.3 = phi i64 [ %indvars.iv.next803.3, %polly.loop_exit372.3 ], [ -768, %polly.loop_exit372.2 ]
  %indvars.iv794.3 = phi i64 [ %indvars.iv.next795.3, %polly.loop_exit372.3 ], [ 0, %polly.loop_exit372.2 ]
  %polly.indvar367.3 = phi i64 [ %polly.indvar_next368.3, %polly.loop_exit372.3 ], [ 24, %polly.loop_exit372.2 ]
  %smin804.3 = call i64 @llvm.smin.i64(i64 %indvars.iv802.3, i64 -1168)
  %331 = add nsw i64 %smin804.3, 1199
  %smax805.3 = call i64 @llvm.smax.i64(i64 %331, i64 0)
  %332 = mul nsw i64 %polly.indvar367.3, -32
  %polly.loop_guard380.3880 = icmp sgt i64 %332, -1200
  %333 = shl nsw i64 %polly.indvar367.3, 5
  br i1 %polly.loop_guard380.3880, label %polly.loop_header370.us.3, label %polly.loop_exit372.3

polly.loop_header370.us.3:                        ; preds = %polly.loop_header364.3, %polly.loop_exit379.loopexit.us.3
  %polly.indvar373.us.3 = phi i64 [ %polly.indvar_next374.us.3, %polly.loop_exit379.loopexit.us.3 ], [ 0, %polly.loop_header364.3 ]
  %334 = add nuw nsw i64 %polly.indvar373.us.3, %122
  %335 = shl i64 %334, 3
  br label %polly.loop_header377.us.3

polly.loop_header377.us.3:                        ; preds = %polly.loop_exit386.us.3, %polly.loop_header370.us.3
  %indvars.iv796.3 = phi i64 [ %indvars.iv794.3, %polly.loop_header370.us.3 ], [ %indvars.iv.next797.3, %polly.loop_exit386.us.3 ]
  %polly.indvar381.us.3 = phi i64 [ 0, %polly.loop_header370.us.3 ], [ %polly.indvar_next382.us.3, %polly.loop_exit386.us.3 ]
  %smin798.3 = call i64 @llvm.smin.i64(i64 %indvars.iv796.3, i64 255)
  %336 = add nuw nsw i64 %polly.indvar381.us.3, %333
  %337 = mul nuw nsw i64 %336, 8000
  %338 = add nuw nsw i64 %337, %335
  %scevgep393.us.3 = getelementptr i8, i8* %call2, i64 %338
  %scevgep393394.us.3 = bitcast i8* %scevgep393.us.3 to double*
  %_p_scalar_395.us.3 = load double, double* %scevgep393394.us.3, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.3 = getelementptr i8, i8* %call1, i64 %338
  %scevgep399400.us.3 = bitcast i8* %scevgep399.us.3 to double*
  %_p_scalar_401.us.3 = load double, double* %scevgep399400.us.3, align 8, !alias.scope !74, !noalias !79
  %339 = mul nuw nsw i64 %336, 9600
  br label %polly.loop_header384.us.3

polly.loop_header384.us.3:                        ; preds = %polly.loop_header384.us.3, %polly.loop_header377.us.3
  %polly.indvar387.us.3 = phi i64 [ 0, %polly.loop_header377.us.3 ], [ %polly.indvar_next388.us.3, %polly.loop_header384.us.3 ]
  %340 = add nuw nsw i64 %polly.indvar387.us.3, 768
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %335
  %scevgep390.us.3 = getelementptr i8, i8* %call1, i64 %342
  %scevgep390391.us.3 = bitcast i8* %scevgep390.us.3 to double*
  %_p_scalar_392.us.3 = load double, double* %scevgep390391.us.3, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_395.us.3, %_p_scalar_392.us.3
  %scevgep396.us.3 = getelementptr i8, i8* %call2, i64 %342
  %scevgep396397.us.3 = bitcast i8* %scevgep396.us.3 to double*
  %_p_scalar_398.us.3 = load double, double* %scevgep396397.us.3, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_401.us.3, %_p_scalar_398.us.3
  %343 = shl i64 %340, 3
  %344 = add nuw nsw i64 %343, %339
  %scevgep402.us.3 = getelementptr i8, i8* %call, i64 %344
  %scevgep402403.us.3 = bitcast i8* %scevgep402.us.3 to double*
  %_p_scalar_404.us.3 = load double, double* %scevgep402403.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_404.us.3
  store double %p_add42.i79.us.3, double* %scevgep402403.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.3 = add nuw nsw i64 %polly.indvar387.us.3, 1
  %exitcond799.3.not = icmp eq i64 %polly.indvar387.us.3, %smin798.3
  br i1 %exitcond799.3.not, label %polly.loop_exit386.us.3, label %polly.loop_header384.us.3

polly.loop_exit386.us.3:                          ; preds = %polly.loop_header384.us.3
  %polly.indvar_next382.us.3 = add nuw nsw i64 %polly.indvar381.us.3, 1
  %indvars.iv.next797.3 = add nuw nsw i64 %indvars.iv796.3, 1
  %exitcond806.3.not = icmp eq i64 %polly.indvar381.us.3, %smax805.3
  br i1 %exitcond806.3.not, label %polly.loop_exit379.loopexit.us.3, label %polly.loop_header377.us.3

polly.loop_exit379.loopexit.us.3:                 ; preds = %polly.loop_exit386.us.3
  %polly.indvar_next374.us.3 = add nuw nsw i64 %polly.indvar373.us.3, 1
  %exitcond810.3.not = icmp eq i64 %polly.indvar_next374.us.3, %121
  br i1 %exitcond810.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.us.3

polly.loop_exit372.3:                             ; preds = %polly.loop_exit379.loopexit.us.3, %polly.loop_header364.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %indvars.iv.next795.3 = add nuw nsw i64 %indvars.iv794.3, 32
  %indvars.iv.next803.3 = add nsw i64 %indvars.iv802.3, -32
  %exitcond811.3.not = icmp eq i64 %polly.indvar_next368.3, 38
  br i1 %exitcond811.3.not, label %polly.loop_header364.4, label %polly.loop_header364.3

polly.loop_header364.4:                           ; preds = %polly.loop_exit372.3, %polly.loop_exit372.4
  %indvars.iv802.4 = phi i64 [ %indvars.iv.next803.4, %polly.loop_exit372.4 ], [ -1024, %polly.loop_exit372.3 ]
  %indvars.iv794.4 = phi i64 [ %indvars.iv.next795.4, %polly.loop_exit372.4 ], [ 0, %polly.loop_exit372.3 ]
  %polly.indvar367.4 = phi i64 [ %polly.indvar_next368.4, %polly.loop_exit372.4 ], [ 32, %polly.loop_exit372.3 ]
  %smin804.4 = call i64 @llvm.smin.i64(i64 %indvars.iv802.4, i64 -1168)
  %345 = add nsw i64 %smin804.4, 1199
  %smax805.4 = call i64 @llvm.smax.i64(i64 %345, i64 0)
  %346 = mul nsw i64 %polly.indvar367.4, -32
  %polly.loop_guard380.4881 = icmp sgt i64 %346, -1200
  %347 = shl nsw i64 %polly.indvar367.4, 5
  br i1 %polly.loop_guard380.4881, label %polly.loop_header370.us.4, label %polly.loop_exit372.4

polly.loop_header370.us.4:                        ; preds = %polly.loop_header364.4, %polly.loop_exit379.loopexit.us.4
  %polly.indvar373.us.4 = phi i64 [ %polly.indvar_next374.us.4, %polly.loop_exit379.loopexit.us.4 ], [ 0, %polly.loop_header364.4 ]
  %348 = add nuw nsw i64 %polly.indvar373.us.4, %122
  %349 = shl i64 %348, 3
  br label %polly.loop_header377.us.4

polly.loop_header377.us.4:                        ; preds = %polly.loop_exit386.us.4, %polly.loop_header370.us.4
  %indvars.iv796.4 = phi i64 [ %indvars.iv794.4, %polly.loop_header370.us.4 ], [ %indvars.iv.next797.4, %polly.loop_exit386.us.4 ]
  %polly.indvar381.us.4 = phi i64 [ 0, %polly.loop_header370.us.4 ], [ %polly.indvar_next382.us.4, %polly.loop_exit386.us.4 ]
  %smin798.4 = call i64 @llvm.smin.i64(i64 %indvars.iv796.4, i64 255)
  %350 = add nuw nsw i64 %polly.indvar381.us.4, %347
  %351 = mul nuw nsw i64 %350, 8000
  %352 = add nuw nsw i64 %351, %349
  %scevgep393.us.4 = getelementptr i8, i8* %call2, i64 %352
  %scevgep393394.us.4 = bitcast i8* %scevgep393.us.4 to double*
  %_p_scalar_395.us.4 = load double, double* %scevgep393394.us.4, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.4 = getelementptr i8, i8* %call1, i64 %352
  %scevgep399400.us.4 = bitcast i8* %scevgep399.us.4 to double*
  %_p_scalar_401.us.4 = load double, double* %scevgep399400.us.4, align 8, !alias.scope !74, !noalias !79
  %353 = mul nuw nsw i64 %350, 9600
  br label %polly.loop_header384.us.4

polly.loop_header384.us.4:                        ; preds = %polly.loop_header384.us.4, %polly.loop_header377.us.4
  %polly.indvar387.us.4 = phi i64 [ 0, %polly.loop_header377.us.4 ], [ %polly.indvar_next388.us.4, %polly.loop_header384.us.4 ]
  %354 = add nuw nsw i64 %polly.indvar387.us.4, 1024
  %355 = mul nuw nsw i64 %354, 8000
  %356 = add nuw nsw i64 %355, %349
  %scevgep390.us.4 = getelementptr i8, i8* %call1, i64 %356
  %scevgep390391.us.4 = bitcast i8* %scevgep390.us.4 to double*
  %_p_scalar_392.us.4 = load double, double* %scevgep390391.us.4, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_395.us.4, %_p_scalar_392.us.4
  %scevgep396.us.4 = getelementptr i8, i8* %call2, i64 %356
  %scevgep396397.us.4 = bitcast i8* %scevgep396.us.4 to double*
  %_p_scalar_398.us.4 = load double, double* %scevgep396397.us.4, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_401.us.4, %_p_scalar_398.us.4
  %357 = shl i64 %354, 3
  %358 = add nuw nsw i64 %357, %353
  %scevgep402.us.4 = getelementptr i8, i8* %call, i64 %358
  %scevgep402403.us.4 = bitcast i8* %scevgep402.us.4 to double*
  %_p_scalar_404.us.4 = load double, double* %scevgep402403.us.4, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_404.us.4
  store double %p_add42.i79.us.4, double* %scevgep402403.us.4, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.4 = add nuw nsw i64 %polly.indvar387.us.4, 1
  %exitcond799.4.not = icmp eq i64 %polly.indvar387.us.4, %smin798.4
  br i1 %exitcond799.4.not, label %polly.loop_exit386.us.4, label %polly.loop_header384.us.4

polly.loop_exit386.us.4:                          ; preds = %polly.loop_header384.us.4
  %polly.indvar_next382.us.4 = add nuw nsw i64 %polly.indvar381.us.4, 1
  %indvars.iv.next797.4 = add nuw nsw i64 %indvars.iv796.4, 1
  %exitcond806.4.not = icmp eq i64 %polly.indvar381.us.4, %smax805.4
  br i1 %exitcond806.4.not, label %polly.loop_exit379.loopexit.us.4, label %polly.loop_header377.us.4

polly.loop_exit379.loopexit.us.4:                 ; preds = %polly.loop_exit386.us.4
  %polly.indvar_next374.us.4 = add nuw nsw i64 %polly.indvar373.us.4, 1
  %exitcond810.4.not = icmp eq i64 %polly.indvar_next374.us.4, %121
  br i1 %exitcond810.4.not, label %polly.loop_exit372.4, label %polly.loop_header370.us.4

polly.loop_exit372.4:                             ; preds = %polly.loop_exit379.loopexit.us.4, %polly.loop_header364.4
  %polly.indvar_next368.4 = add nuw nsw i64 %polly.indvar367.4, 1
  %indvars.iv.next795.4 = add nuw nsw i64 %indvars.iv794.4, 32
  %indvars.iv.next803.4 = add nsw i64 %indvars.iv802.4, -32
  %exitcond811.4.not = icmp eq i64 %polly.indvar_next368.4, 38
  br i1 %exitcond811.4.not, label %polly.loop_exit366.4, label %polly.loop_header364.4

polly.loop_exit366.4:                             ; preds = %polly.loop_exit372.4
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -32
  %exitcond813.not = icmp eq i64 %polly.indvar_next356, 32
  br i1 %exitcond813.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header519.1:                           ; preds = %polly.loop_exit527, %polly.loop_exit527.1
  %indvars.iv824.1 = phi i64 [ %indvars.iv.next825.1, %polly.loop_exit527.1 ], [ -256, %polly.loop_exit527 ]
  %indvars.iv816.1 = phi i64 [ %indvars.iv.next817.1, %polly.loop_exit527.1 ], [ 0, %polly.loop_exit527 ]
  %polly.indvar522.1 = phi i64 [ %polly.indvar_next523.1, %polly.loop_exit527.1 ], [ 8, %polly.loop_exit527 ]
  %smin826.1 = call i64 @llvm.smin.i64(i64 %indvars.iv824.1, i64 -1168)
  %359 = add nsw i64 %smin826.1, 1199
  %smax827.1 = call i64 @llvm.smax.i64(i64 %359, i64 0)
  %360 = mul nsw i64 %polly.indvar522.1, -32
  %polly.loop_guard535.1883 = icmp sgt i64 %360, -1200
  %361 = shl nsw i64 %polly.indvar522.1, 5
  br i1 %polly.loop_guard535.1883, label %polly.loop_header525.us.1, label %polly.loop_exit527.1

polly.loop_header525.us.1:                        ; preds = %polly.loop_header519.1, %polly.loop_exit534.loopexit.us.1
  %polly.indvar528.us.1 = phi i64 [ %polly.indvar_next529.us.1, %polly.loop_exit534.loopexit.us.1 ], [ 0, %polly.loop_header519.1 ]
  %362 = add nuw nsw i64 %polly.indvar528.us.1, %146
  %363 = shl i64 %362, 3
  br label %polly.loop_header532.us.1

polly.loop_header532.us.1:                        ; preds = %polly.loop_exit541.us.1, %polly.loop_header525.us.1
  %indvars.iv818.1 = phi i64 [ %indvars.iv816.1, %polly.loop_header525.us.1 ], [ %indvars.iv.next819.1, %polly.loop_exit541.us.1 ]
  %polly.indvar536.us.1 = phi i64 [ 0, %polly.loop_header525.us.1 ], [ %polly.indvar_next537.us.1, %polly.loop_exit541.us.1 ]
  %smin820.1 = call i64 @llvm.smin.i64(i64 %indvars.iv818.1, i64 255)
  %364 = add nuw nsw i64 %polly.indvar536.us.1, %361
  %365 = mul nuw nsw i64 %364, 8000
  %366 = add nuw nsw i64 %365, %363
  %scevgep548.us.1 = getelementptr i8, i8* %call2, i64 %366
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.1 = getelementptr i8, i8* %call1, i64 %366
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !83, !noalias !88
  %367 = mul nuw nsw i64 %364, 9600
  br label %polly.loop_header539.us.1

polly.loop_header539.us.1:                        ; preds = %polly.loop_header539.us.1, %polly.loop_header532.us.1
  %polly.indvar542.us.1 = phi i64 [ 0, %polly.loop_header532.us.1 ], [ %polly.indvar_next543.us.1, %polly.loop_header539.us.1 ]
  %368 = add nuw nsw i64 %polly.indvar542.us.1, 256
  %369 = mul nuw nsw i64 %368, 8000
  %370 = add nuw nsw i64 %369, %363
  %scevgep545.us.1 = getelementptr i8, i8* %call1, i64 %370
  %scevgep545546.us.1 = bitcast i8* %scevgep545.us.1 to double*
  %_p_scalar_547.us.1 = load double, double* %scevgep545546.us.1, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_547.us.1
  %scevgep551.us.1 = getelementptr i8, i8* %call2, i64 %370
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %371 = shl i64 %368, 3
  %372 = add nuw nsw i64 %371, %367
  %scevgep557.us.1 = getelementptr i8, i8* %call, i64 %372
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_559.us.1
  store double %p_add42.i.us.1, double* %scevgep557558.us.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.1 = add nuw nsw i64 %polly.indvar542.us.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar542.us.1, %smin820.1
  br i1 %exitcond821.1.not, label %polly.loop_exit541.us.1, label %polly.loop_header539.us.1

polly.loop_exit541.us.1:                          ; preds = %polly.loop_header539.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %indvars.iv.next819.1 = add nuw nsw i64 %indvars.iv818.1, 1
  %exitcond828.1.not = icmp eq i64 %polly.indvar536.us.1, %smax827.1
  br i1 %exitcond828.1.not, label %polly.loop_exit534.loopexit.us.1, label %polly.loop_header532.us.1

polly.loop_exit534.loopexit.us.1:                 ; preds = %polly.loop_exit541.us.1
  %polly.indvar_next529.us.1 = add nuw nsw i64 %polly.indvar528.us.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next529.us.1, %145
  br i1 %exitcond832.1.not, label %polly.loop_exit527.1, label %polly.loop_header525.us.1

polly.loop_exit527.1:                             ; preds = %polly.loop_exit534.loopexit.us.1, %polly.loop_header519.1
  %polly.indvar_next523.1 = add nuw nsw i64 %polly.indvar522.1, 1
  %indvars.iv.next817.1 = add nuw nsw i64 %indvars.iv816.1, 32
  %indvars.iv.next825.1 = add nsw i64 %indvars.iv824.1, -32
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next523.1, 38
  br i1 %exitcond833.1.not, label %polly.loop_header519.2, label %polly.loop_header519.1

polly.loop_header519.2:                           ; preds = %polly.loop_exit527.1, %polly.loop_exit527.2
  %indvars.iv824.2 = phi i64 [ %indvars.iv.next825.2, %polly.loop_exit527.2 ], [ -512, %polly.loop_exit527.1 ]
  %indvars.iv816.2 = phi i64 [ %indvars.iv.next817.2, %polly.loop_exit527.2 ], [ 0, %polly.loop_exit527.1 ]
  %polly.indvar522.2 = phi i64 [ %polly.indvar_next523.2, %polly.loop_exit527.2 ], [ 16, %polly.loop_exit527.1 ]
  %smin826.2 = call i64 @llvm.smin.i64(i64 %indvars.iv824.2, i64 -1168)
  %373 = add nsw i64 %smin826.2, 1199
  %smax827.2 = call i64 @llvm.smax.i64(i64 %373, i64 0)
  %374 = mul nsw i64 %polly.indvar522.2, -32
  %polly.loop_guard535.2884 = icmp sgt i64 %374, -1200
  %375 = shl nsw i64 %polly.indvar522.2, 5
  br i1 %polly.loop_guard535.2884, label %polly.loop_header525.us.2, label %polly.loop_exit527.2

polly.loop_header525.us.2:                        ; preds = %polly.loop_header519.2, %polly.loop_exit534.loopexit.us.2
  %polly.indvar528.us.2 = phi i64 [ %polly.indvar_next529.us.2, %polly.loop_exit534.loopexit.us.2 ], [ 0, %polly.loop_header519.2 ]
  %376 = add nuw nsw i64 %polly.indvar528.us.2, %146
  %377 = shl i64 %376, 3
  br label %polly.loop_header532.us.2

polly.loop_header532.us.2:                        ; preds = %polly.loop_exit541.us.2, %polly.loop_header525.us.2
  %indvars.iv818.2 = phi i64 [ %indvars.iv816.2, %polly.loop_header525.us.2 ], [ %indvars.iv.next819.2, %polly.loop_exit541.us.2 ]
  %polly.indvar536.us.2 = phi i64 [ 0, %polly.loop_header525.us.2 ], [ %polly.indvar_next537.us.2, %polly.loop_exit541.us.2 ]
  %smin820.2 = call i64 @llvm.smin.i64(i64 %indvars.iv818.2, i64 255)
  %378 = add nuw nsw i64 %polly.indvar536.us.2, %375
  %379 = mul nuw nsw i64 %378, 8000
  %380 = add nuw nsw i64 %379, %377
  %scevgep548.us.2 = getelementptr i8, i8* %call2, i64 %380
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.2 = getelementptr i8, i8* %call1, i64 %380
  %scevgep554555.us.2 = bitcast i8* %scevgep554.us.2 to double*
  %_p_scalar_556.us.2 = load double, double* %scevgep554555.us.2, align 8, !alias.scope !83, !noalias !88
  %381 = mul nuw nsw i64 %378, 9600
  br label %polly.loop_header539.us.2

polly.loop_header539.us.2:                        ; preds = %polly.loop_header539.us.2, %polly.loop_header532.us.2
  %polly.indvar542.us.2 = phi i64 [ 0, %polly.loop_header532.us.2 ], [ %polly.indvar_next543.us.2, %polly.loop_header539.us.2 ]
  %382 = add nuw nsw i64 %polly.indvar542.us.2, 512
  %383 = mul nuw nsw i64 %382, 8000
  %384 = add nuw nsw i64 %383, %377
  %scevgep545.us.2 = getelementptr i8, i8* %call1, i64 %384
  %scevgep545546.us.2 = bitcast i8* %scevgep545.us.2 to double*
  %_p_scalar_547.us.2 = load double, double* %scevgep545546.us.2, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_547.us.2
  %scevgep551.us.2 = getelementptr i8, i8* %call2, i64 %384
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_556.us.2, %_p_scalar_553.us.2
  %385 = shl i64 %382, 3
  %386 = add nuw nsw i64 %385, %381
  %scevgep557.us.2 = getelementptr i8, i8* %call, i64 %386
  %scevgep557558.us.2 = bitcast i8* %scevgep557.us.2 to double*
  %_p_scalar_559.us.2 = load double, double* %scevgep557558.us.2, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_559.us.2
  store double %p_add42.i.us.2, double* %scevgep557558.us.2, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.2 = add nuw nsw i64 %polly.indvar542.us.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar542.us.2, %smin820.2
  br i1 %exitcond821.2.not, label %polly.loop_exit541.us.2, label %polly.loop_header539.us.2

polly.loop_exit541.us.2:                          ; preds = %polly.loop_header539.us.2
  %polly.indvar_next537.us.2 = add nuw nsw i64 %polly.indvar536.us.2, 1
  %indvars.iv.next819.2 = add nuw nsw i64 %indvars.iv818.2, 1
  %exitcond828.2.not = icmp eq i64 %polly.indvar536.us.2, %smax827.2
  br i1 %exitcond828.2.not, label %polly.loop_exit534.loopexit.us.2, label %polly.loop_header532.us.2

polly.loop_exit534.loopexit.us.2:                 ; preds = %polly.loop_exit541.us.2
  %polly.indvar_next529.us.2 = add nuw nsw i64 %polly.indvar528.us.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next529.us.2, %145
  br i1 %exitcond832.2.not, label %polly.loop_exit527.2, label %polly.loop_header525.us.2

polly.loop_exit527.2:                             ; preds = %polly.loop_exit534.loopexit.us.2, %polly.loop_header519.2
  %polly.indvar_next523.2 = add nuw nsw i64 %polly.indvar522.2, 1
  %indvars.iv.next817.2 = add nuw nsw i64 %indvars.iv816.2, 32
  %indvars.iv.next825.2 = add nsw i64 %indvars.iv824.2, -32
  %exitcond833.2.not = icmp eq i64 %polly.indvar_next523.2, 38
  br i1 %exitcond833.2.not, label %polly.loop_header519.3, label %polly.loop_header519.2

polly.loop_header519.3:                           ; preds = %polly.loop_exit527.2, %polly.loop_exit527.3
  %indvars.iv824.3 = phi i64 [ %indvars.iv.next825.3, %polly.loop_exit527.3 ], [ -768, %polly.loop_exit527.2 ]
  %indvars.iv816.3 = phi i64 [ %indvars.iv.next817.3, %polly.loop_exit527.3 ], [ 0, %polly.loop_exit527.2 ]
  %polly.indvar522.3 = phi i64 [ %polly.indvar_next523.3, %polly.loop_exit527.3 ], [ 24, %polly.loop_exit527.2 ]
  %smin826.3 = call i64 @llvm.smin.i64(i64 %indvars.iv824.3, i64 -1168)
  %387 = add nsw i64 %smin826.3, 1199
  %smax827.3 = call i64 @llvm.smax.i64(i64 %387, i64 0)
  %388 = mul nsw i64 %polly.indvar522.3, -32
  %polly.loop_guard535.3885 = icmp sgt i64 %388, -1200
  %389 = shl nsw i64 %polly.indvar522.3, 5
  br i1 %polly.loop_guard535.3885, label %polly.loop_header525.us.3, label %polly.loop_exit527.3

polly.loop_header525.us.3:                        ; preds = %polly.loop_header519.3, %polly.loop_exit534.loopexit.us.3
  %polly.indvar528.us.3 = phi i64 [ %polly.indvar_next529.us.3, %polly.loop_exit534.loopexit.us.3 ], [ 0, %polly.loop_header519.3 ]
  %390 = add nuw nsw i64 %polly.indvar528.us.3, %146
  %391 = shl i64 %390, 3
  br label %polly.loop_header532.us.3

polly.loop_header532.us.3:                        ; preds = %polly.loop_exit541.us.3, %polly.loop_header525.us.3
  %indvars.iv818.3 = phi i64 [ %indvars.iv816.3, %polly.loop_header525.us.3 ], [ %indvars.iv.next819.3, %polly.loop_exit541.us.3 ]
  %polly.indvar536.us.3 = phi i64 [ 0, %polly.loop_header525.us.3 ], [ %polly.indvar_next537.us.3, %polly.loop_exit541.us.3 ]
  %smin820.3 = call i64 @llvm.smin.i64(i64 %indvars.iv818.3, i64 255)
  %392 = add nuw nsw i64 %polly.indvar536.us.3, %389
  %393 = mul nuw nsw i64 %392, 8000
  %394 = add nuw nsw i64 %393, %391
  %scevgep548.us.3 = getelementptr i8, i8* %call2, i64 %394
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.3 = getelementptr i8, i8* %call1, i64 %394
  %scevgep554555.us.3 = bitcast i8* %scevgep554.us.3 to double*
  %_p_scalar_556.us.3 = load double, double* %scevgep554555.us.3, align 8, !alias.scope !83, !noalias !88
  %395 = mul nuw nsw i64 %392, 9600
  br label %polly.loop_header539.us.3

polly.loop_header539.us.3:                        ; preds = %polly.loop_header539.us.3, %polly.loop_header532.us.3
  %polly.indvar542.us.3 = phi i64 [ 0, %polly.loop_header532.us.3 ], [ %polly.indvar_next543.us.3, %polly.loop_header539.us.3 ]
  %396 = add nuw nsw i64 %polly.indvar542.us.3, 768
  %397 = mul nuw nsw i64 %396, 8000
  %398 = add nuw nsw i64 %397, %391
  %scevgep545.us.3 = getelementptr i8, i8* %call1, i64 %398
  %scevgep545546.us.3 = bitcast i8* %scevgep545.us.3 to double*
  %_p_scalar_547.us.3 = load double, double* %scevgep545546.us.3, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_547.us.3
  %scevgep551.us.3 = getelementptr i8, i8* %call2, i64 %398
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_556.us.3, %_p_scalar_553.us.3
  %399 = shl i64 %396, 3
  %400 = add nuw nsw i64 %399, %395
  %scevgep557.us.3 = getelementptr i8, i8* %call, i64 %400
  %scevgep557558.us.3 = bitcast i8* %scevgep557.us.3 to double*
  %_p_scalar_559.us.3 = load double, double* %scevgep557558.us.3, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_559.us.3
  store double %p_add42.i.us.3, double* %scevgep557558.us.3, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.3 = add nuw nsw i64 %polly.indvar542.us.3, 1
  %exitcond821.3.not = icmp eq i64 %polly.indvar542.us.3, %smin820.3
  br i1 %exitcond821.3.not, label %polly.loop_exit541.us.3, label %polly.loop_header539.us.3

polly.loop_exit541.us.3:                          ; preds = %polly.loop_header539.us.3
  %polly.indvar_next537.us.3 = add nuw nsw i64 %polly.indvar536.us.3, 1
  %indvars.iv.next819.3 = add nuw nsw i64 %indvars.iv818.3, 1
  %exitcond828.3.not = icmp eq i64 %polly.indvar536.us.3, %smax827.3
  br i1 %exitcond828.3.not, label %polly.loop_exit534.loopexit.us.3, label %polly.loop_header532.us.3

polly.loop_exit534.loopexit.us.3:                 ; preds = %polly.loop_exit541.us.3
  %polly.indvar_next529.us.3 = add nuw nsw i64 %polly.indvar528.us.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar_next529.us.3, %145
  br i1 %exitcond832.3.not, label %polly.loop_exit527.3, label %polly.loop_header525.us.3

polly.loop_exit527.3:                             ; preds = %polly.loop_exit534.loopexit.us.3, %polly.loop_header519.3
  %polly.indvar_next523.3 = add nuw nsw i64 %polly.indvar522.3, 1
  %indvars.iv.next817.3 = add nuw nsw i64 %indvars.iv816.3, 32
  %indvars.iv.next825.3 = add nsw i64 %indvars.iv824.3, -32
  %exitcond833.3.not = icmp eq i64 %polly.indvar_next523.3, 38
  br i1 %exitcond833.3.not, label %polly.loop_header519.4, label %polly.loop_header519.3

polly.loop_header519.4:                           ; preds = %polly.loop_exit527.3, %polly.loop_exit527.4
  %indvars.iv824.4 = phi i64 [ %indvars.iv.next825.4, %polly.loop_exit527.4 ], [ -1024, %polly.loop_exit527.3 ]
  %indvars.iv816.4 = phi i64 [ %indvars.iv.next817.4, %polly.loop_exit527.4 ], [ 0, %polly.loop_exit527.3 ]
  %polly.indvar522.4 = phi i64 [ %polly.indvar_next523.4, %polly.loop_exit527.4 ], [ 32, %polly.loop_exit527.3 ]
  %smin826.4 = call i64 @llvm.smin.i64(i64 %indvars.iv824.4, i64 -1168)
  %401 = add nsw i64 %smin826.4, 1199
  %smax827.4 = call i64 @llvm.smax.i64(i64 %401, i64 0)
  %402 = mul nsw i64 %polly.indvar522.4, -32
  %polly.loop_guard535.4886 = icmp sgt i64 %402, -1200
  %403 = shl nsw i64 %polly.indvar522.4, 5
  br i1 %polly.loop_guard535.4886, label %polly.loop_header525.us.4, label %polly.loop_exit527.4

polly.loop_header525.us.4:                        ; preds = %polly.loop_header519.4, %polly.loop_exit534.loopexit.us.4
  %polly.indvar528.us.4 = phi i64 [ %polly.indvar_next529.us.4, %polly.loop_exit534.loopexit.us.4 ], [ 0, %polly.loop_header519.4 ]
  %404 = add nuw nsw i64 %polly.indvar528.us.4, %146
  %405 = shl i64 %404, 3
  br label %polly.loop_header532.us.4

polly.loop_header532.us.4:                        ; preds = %polly.loop_exit541.us.4, %polly.loop_header525.us.4
  %indvars.iv818.4 = phi i64 [ %indvars.iv816.4, %polly.loop_header525.us.4 ], [ %indvars.iv.next819.4, %polly.loop_exit541.us.4 ]
  %polly.indvar536.us.4 = phi i64 [ 0, %polly.loop_header525.us.4 ], [ %polly.indvar_next537.us.4, %polly.loop_exit541.us.4 ]
  %smin820.4 = call i64 @llvm.smin.i64(i64 %indvars.iv818.4, i64 255)
  %406 = add nuw nsw i64 %polly.indvar536.us.4, %403
  %407 = mul nuw nsw i64 %406, 8000
  %408 = add nuw nsw i64 %407, %405
  %scevgep548.us.4 = getelementptr i8, i8* %call2, i64 %408
  %scevgep548549.us.4 = bitcast i8* %scevgep548.us.4 to double*
  %_p_scalar_550.us.4 = load double, double* %scevgep548549.us.4, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.4 = getelementptr i8, i8* %call1, i64 %408
  %scevgep554555.us.4 = bitcast i8* %scevgep554.us.4 to double*
  %_p_scalar_556.us.4 = load double, double* %scevgep554555.us.4, align 8, !alias.scope !83, !noalias !88
  %409 = mul nuw nsw i64 %406, 9600
  br label %polly.loop_header539.us.4

polly.loop_header539.us.4:                        ; preds = %polly.loop_header539.us.4, %polly.loop_header532.us.4
  %polly.indvar542.us.4 = phi i64 [ 0, %polly.loop_header532.us.4 ], [ %polly.indvar_next543.us.4, %polly.loop_header539.us.4 ]
  %410 = add nuw nsw i64 %polly.indvar542.us.4, 1024
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %405
  %scevgep545.us.4 = getelementptr i8, i8* %call1, i64 %412
  %scevgep545546.us.4 = bitcast i8* %scevgep545.us.4 to double*
  %_p_scalar_547.us.4 = load double, double* %scevgep545546.us.4, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_550.us.4, %_p_scalar_547.us.4
  %scevgep551.us.4 = getelementptr i8, i8* %call2, i64 %412
  %scevgep551552.us.4 = bitcast i8* %scevgep551.us.4 to double*
  %_p_scalar_553.us.4 = load double, double* %scevgep551552.us.4, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_556.us.4, %_p_scalar_553.us.4
  %413 = shl i64 %410, 3
  %414 = add nuw nsw i64 %413, %409
  %scevgep557.us.4 = getelementptr i8, i8* %call, i64 %414
  %scevgep557558.us.4 = bitcast i8* %scevgep557.us.4 to double*
  %_p_scalar_559.us.4 = load double, double* %scevgep557558.us.4, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_559.us.4
  store double %p_add42.i.us.4, double* %scevgep557558.us.4, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.4 = add nuw nsw i64 %polly.indvar542.us.4, 1
  %exitcond821.4.not = icmp eq i64 %polly.indvar542.us.4, %smin820.4
  br i1 %exitcond821.4.not, label %polly.loop_exit541.us.4, label %polly.loop_header539.us.4

polly.loop_exit541.us.4:                          ; preds = %polly.loop_header539.us.4
  %polly.indvar_next537.us.4 = add nuw nsw i64 %polly.indvar536.us.4, 1
  %indvars.iv.next819.4 = add nuw nsw i64 %indvars.iv818.4, 1
  %exitcond828.4.not = icmp eq i64 %polly.indvar536.us.4, %smax827.4
  br i1 %exitcond828.4.not, label %polly.loop_exit534.loopexit.us.4, label %polly.loop_header532.us.4

polly.loop_exit534.loopexit.us.4:                 ; preds = %polly.loop_exit541.us.4
  %polly.indvar_next529.us.4 = add nuw nsw i64 %polly.indvar528.us.4, 1
  %exitcond832.4.not = icmp eq i64 %polly.indvar_next529.us.4, %145
  br i1 %exitcond832.4.not, label %polly.loop_exit527.4, label %polly.loop_header525.us.4

polly.loop_exit527.4:                             ; preds = %polly.loop_exit534.loopexit.us.4, %polly.loop_header519.4
  %polly.indvar_next523.4 = add nuw nsw i64 %polly.indvar522.4, 1
  %indvars.iv.next817.4 = add nuw nsw i64 %indvars.iv816.4, 32
  %indvars.iv.next825.4 = add nsw i64 %indvars.iv824.4, -32
  %exitcond833.4.not = icmp eq i64 %polly.indvar_next523.4, 38
  br i1 %exitcond833.4.not, label %polly.loop_exit521.4, label %polly.loop_header519.4

polly.loop_exit521.4:                             ; preds = %polly.loop_exit527.4
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond835.not = icmp eq i64 %polly.indvar_next511, 32
  br i1 %exitcond835.not, label %kernel_syr2k.exit, label %polly.loop_header507
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
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!24 = !{!"llvm.loop.tile.size", i32 256}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 32}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !22, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.interchange.enable", i1 true}
!48 = !{!"llvm.loop.interchange.depth", i32 5}
!49 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !22, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !68, !13}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!61, !64}
!70 = !{!61, !65}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !74}
!79 = !{!71, !75}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !83}
!88 = !{!80, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !68, !13}
!96 = !{!92, !89}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !68, !13}
!99 = !{!93, !89}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !68, !13}
