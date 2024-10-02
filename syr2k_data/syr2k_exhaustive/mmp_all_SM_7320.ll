; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7320.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7320.c"
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
  %scevgep921 = getelementptr i8, i8* %call2, i64 %12
  %scevgep920 = getelementptr i8, i8* %call2, i64 %11
  %scevgep919 = getelementptr i8, i8* %call1, i64 %12
  %scevgep918 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep918, %scevgep921
  %bound1 = icmp ult i8* %scevgep920, %scevgep919
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
  br i1 %exitcond18.not.i, label %vector.ph925, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph925:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert932 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat933 = shufflevector <4 x i64> %broadcast.splatinsert932, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body924

vector.body924:                                   ; preds = %vector.body924, %vector.ph925
  %index926 = phi i64 [ 0, %vector.ph925 ], [ %index.next927, %vector.body924 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph925 ], [ %vec.ind.next931, %vector.body924 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind930, %broadcast.splat933
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv7.i, i64 %index926
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next927, 1200
  br i1 %40, label %for.inc41.i, label %vector.body924, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body924
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph925, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit805
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start445, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check988 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check988, label %for.body3.i46.preheader1062, label %vector.ph989

vector.ph989:                                     ; preds = %for.body3.i46.preheader
  %n.vec991 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph989
  %index992 = phi i64 [ 0, %vector.ph989 ], [ %index.next993, %vector.body987 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %index992
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next993 = add i64 %index992, 4
  %46 = icmp eq i64 %index.next993, %n.vec991
  br i1 %46, label %middle.block985, label %vector.body987, !llvm.loop !18

middle.block985:                                  ; preds = %vector.body987
  %cmp.n995 = icmp eq i64 %indvars.iv21.i, %n.vec991
  br i1 %cmp.n995, label %for.inc6.i, label %for.body3.i46.preheader1062

for.body3.i46.preheader1062:                      ; preds = %for.body3.i46.preheader, %middle.block985
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec991, %middle.block985 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1062, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1062 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block985, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

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
  %min.iters.check1011 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1011, label %for.body3.i60.preheader1061, label %vector.ph1012

vector.ph1012:                                    ; preds = %for.body3.i60.preheader
  %n.vec1014 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1010 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %index1015
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1019 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1019, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1016 = add i64 %index1015, 4
  %57 = icmp eq i64 %index.next1016, %n.vec1014
  br i1 %57, label %middle.block1008, label %vector.body1010, !llvm.loop !53

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1018 = icmp eq i64 %indvars.iv21.i52, %n.vec1014
  br i1 %cmp.n1018, label %for.inc6.i63, label %for.body3.i60.preheader1061

for.body3.i60.preheader1061:                      ; preds = %for.body3.i60.preheader, %middle.block1008
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1014, %middle.block1008 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1061, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1061 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1008, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

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
  %min.iters.check1037 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1037, label %for.body3.i99.preheader1060, label %vector.ph1038

vector.ph1038:                                    ; preds = %for.body3.i99.preheader
  %n.vec1040 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1036 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %index1041
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1045 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1045, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1042 = add i64 %index1041, 4
  %68 = icmp eq i64 %index.next1042, %n.vec1040
  br i1 %68, label %middle.block1034, label %vector.body1036, !llvm.loop !55

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %indvars.iv21.i91, %n.vec1040
  br i1 %cmp.n1044, label %for.inc6.i102, label %for.body3.i99.preheader1060

for.body3.i99.preheader1060:                      ; preds = %for.body3.i99.preheader, %middle.block1034
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1040, %middle.block1034 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1060, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1060 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1034, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call770, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1049 = phi i64 [ %indvar.next1050, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1049, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1051 = icmp ult i64 %88, 4
  br i1 %min.iters.check1051, label %polly.loop_header191.preheader, label %vector.ph1052

vector.ph1052:                                    ; preds = %polly.loop_header
  %n.vec1054 = and i64 %88, -4
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %vector.ph1052
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1056, %vector.body1048 ]
  %90 = shl nuw nsw i64 %index1055, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1059 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1059, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1056 = add i64 %index1055, 4
  %95 = icmp eq i64 %index.next1056, %n.vec1054
  br i1 %95, label %middle.block1046, label %vector.body1048, !llvm.loop !67

middle.block1046:                                 ; preds = %vector.body1048
  %cmp.n1058 = icmp eq i64 %88, %n.vec1054
  br i1 %cmp.n1058, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1046
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1054, %middle.block1046 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1046
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1050 = add i64 %indvar1049, 1
  br i1 %exitcond843.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

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
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !65, !noalias !70
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond840.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit223 ], [ 1, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar218, 50
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next219, 24
  br i1 %exitcond839.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %98 = mul nuw nsw i64 %polly.indvar224, 50
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next225, 20
  br i1 %exitcond838.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %99 = mul nuw nsw i64 %polly.indvar230, 50
  %100 = sub nsw i64 %97, %99
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -50
  %exitcond837.not = icmp eq i64 %polly.indvar_next231, %indvars.iv835
  br i1 %exitcond837.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit241, %polly.loop_header227
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit241 ], [ %indvars.iv829, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 49)
  %101 = add nsw i64 %polly.indvar236, %100
  %polly.loop_guard913 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar236, %97
  %103 = mul nuw nsw i64 %102, 8000
  %104 = mul nuw nsw i64 %102, 9600
  br i1 %polly.loop_guard913, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header233 ]
  %105 = add nuw nsw i64 %polly.indvar242.us, %98
  %106 = shl i64 %105, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %105, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %102
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %107 = add nuw nsw i64 %106, %103
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %107
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !64, !noalias !71
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %108 = add nuw nsw i64 %polly.indvar248.us, %99
  %109 = mul nuw nsw i64 %108, 8000
  %110 = add nuw nsw i64 %109, %106
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %110
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !64, !noalias !71
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %108, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %111 = shl i64 %108, 3
  %112 = add nuw nsw i64 %111, %104
  %scevgep265.us = getelementptr i8, i8* %call, i64 %112
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next249.us = add nuw nsw i64 %polly.indvar248.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar248.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit247.loopexit.us, label %polly.loop_header245.us

polly.loop_exit247.loopexit.us:                   ; preds = %polly.loop_header245.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next243.us, 50
  br i1 %exitcond833.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next237, 50
  br i1 %exitcond834.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1023 = phi i64 [ %indvar.next1024, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %113 = add i64 %indvar1023, 1
  %114 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %114
  %min.iters.check1025 = icmp ult i64 %113, 4
  br i1 %min.iters.check1025, label %polly.loop_header362.preheader, label %vector.ph1026

vector.ph1026:                                    ; preds = %polly.loop_header356
  %n.vec1028 = and i64 %113, -4
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %vector.ph1026
  %index1029 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1030, %vector.body1022 ]
  %115 = shl nuw nsw i64 %index1029, 3
  %116 = getelementptr i8, i8* %scevgep368, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1033 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !72, !noalias !74
  %118 = fmul fast <4 x double> %wide.load1033, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %119 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %118, <4 x double>* %119, align 8, !alias.scope !72, !noalias !74
  %index.next1030 = add i64 %index1029, 4
  %120 = icmp eq i64 %index.next1030, %n.vec1028
  br i1 %120, label %middle.block1020, label %vector.body1022, !llvm.loop !78

middle.block1020:                                 ; preds = %vector.body1022
  %cmp.n1032 = icmp eq i64 %113, %n.vec1028
  br i1 %cmp.n1032, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1020
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1028, %middle.block1020 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1020
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1024 = add i64 %indvar1023, 1
  br i1 %exitcond862.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %121 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %121
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond861.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !79

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond860.not, label %polly.loop_header388, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %polly.access.mul.call2385 = mul nuw nsw i64 %polly.indvar381, 1000
  %polly.access.add.call2386 = add nuw nsw i64 %polly.access.mul.call2385, %polly.indvar375
  %polly.access.call2387 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2386
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !76, !noalias !80
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond859.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit396 ], [ 1, %polly.loop_exit380 ]
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %122 = mul nuw nsw i64 %polly.indvar391, 50
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit402
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 50
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next392, 24
  br i1 %exitcond858.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_exit402 ]
  %123 = mul nuw nsw i64 %polly.indvar397, 50
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next398, 20
  br i1 %exitcond857.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit408 ], [ %indvars.iv844, %polly.loop_header394 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ 0, %polly.loop_header394 ]
  %124 = mul nuw nsw i64 %polly.indvar403, 50
  %125 = sub nsw i64 %122, %124
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit414
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -50
  %exitcond856.not = icmp eq i64 %polly.indvar_next404, %indvars.iv854
  br i1 %exitcond856.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit414, %polly.loop_header400
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit414 ], [ %indvars.iv846, %polly.loop_header400 ]
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header400 ]
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv848, i64 49)
  %126 = add nsw i64 %polly.indvar409, %125
  %polly.loop_guard422914 = icmp sgt i64 %126, -1
  %127 = add nuw nsw i64 %polly.indvar409, %122
  %128 = mul nuw nsw i64 %127, 8000
  %129 = mul nuw nsw i64 %127, 9600
  br i1 %polly.loop_guard422914, label %polly.loop_header412.us, label %polly.loop_exit414

polly.loop_header412.us:                          ; preds = %polly.loop_header406, %polly.loop_exit421.loopexit.us
  %polly.indvar415.us = phi i64 [ %polly.indvar_next416.us, %polly.loop_exit421.loopexit.us ], [ 0, %polly.loop_header406 ]
  %130 = add nuw nsw i64 %polly.indvar415.us, %123
  %131 = shl i64 %130, 3
  %polly.access.mul.Packed_MemRef_call2273429.us = mul nuw nsw i64 %130, 1200
  %polly.access.add.Packed_MemRef_call2273430.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273429.us, %127
  %polly.access.Packed_MemRef_call2273431.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2273431.us, align 8
  %132 = add nuw nsw i64 %131, %128
  %scevgep437.us = getelementptr i8, i8* %call1, i64 %132
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !75, !noalias !81
  br label %polly.loop_header419.us

polly.loop_header419.us:                          ; preds = %polly.loop_header412.us, %polly.loop_header419.us
  %polly.indvar423.us = phi i64 [ %polly.indvar_next424.us, %polly.loop_header419.us ], [ 0, %polly.loop_header412.us ]
  %133 = add nuw nsw i64 %polly.indvar423.us, %124
  %134 = mul nuw nsw i64 %133, 8000
  %135 = add nuw nsw i64 %134, %131
  %scevgep426.us = getelementptr i8, i8* %call1, i64 %135
  %scevgep426427.us = bitcast i8* %scevgep426.us to double*
  %_p_scalar_428.us = load double, double* %scevgep426427.us, align 8, !alias.scope !75, !noalias !81
  %p_mul27.i73.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %polly.access.add.Packed_MemRef_call2273434.us = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call2273429.us
  %polly.access.Packed_MemRef_call2273435.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2273435.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_439.us, %_p_scalar_436.us
  %136 = shl i64 %133, 3
  %137 = add nuw nsw i64 %136, %129
  %scevgep440.us = getelementptr i8, i8* %call, i64 %137
  %scevgep440441.us = bitcast i8* %scevgep440.us to double*
  %_p_scalar_442.us = load double, double* %scevgep440441.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_442.us
  store double %p_add42.i79.us, double* %scevgep440441.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next424.us = add nuw nsw i64 %polly.indvar423.us, 1
  %exitcond851.not = icmp eq i64 %polly.indvar423.us, %smin850
  br i1 %exitcond851.not, label %polly.loop_exit421.loopexit.us, label %polly.loop_header419.us

polly.loop_exit421.loopexit.us:                   ; preds = %polly.loop_header419.us
  %polly.indvar_next416.us = add nuw nsw i64 %polly.indvar415.us, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next416.us, 50
  br i1 %exitcond852.not, label %polly.loop_exit414, label %polly.loop_header412.us

polly.loop_exit414:                               ; preds = %polly.loop_exit421.loopexit.us, %polly.loop_header406
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next410, 50
  br i1 %exitcond853.not, label %polly.loop_exit408, label %polly.loop_header406

polly.start445:                                   ; preds = %init_array.exit
  %malloccall447 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header531

polly.exiting446:                                 ; preds = %polly.loop_exit571
  tail call void @free(i8* %malloccall447)
  br label %kernel_syr2k.exit

polly.loop_header531:                             ; preds = %polly.loop_exit539, %polly.start445
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit539 ], [ 0, %polly.start445 ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit539 ], [ 1, %polly.start445 ]
  %138 = add i64 %indvar, 1
  %139 = mul nuw nsw i64 %polly.indvar534, 9600
  %scevgep543 = getelementptr i8, i8* %call, i64 %139
  %min.iters.check999 = icmp ult i64 %138, 4
  br i1 %min.iters.check999, label %polly.loop_header537.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %polly.loop_header531
  %n.vec1002 = and i64 %138, -4
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body998 ]
  %140 = shl nuw nsw i64 %index1003, 3
  %141 = getelementptr i8, i8* %scevgep543, i64 %140
  %142 = bitcast i8* %141 to <4 x double>*
  %wide.load1007 = load <4 x double>, <4 x double>* %142, align 8, !alias.scope !82, !noalias !84
  %143 = fmul fast <4 x double> %wide.load1007, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %144 = bitcast i8* %141 to <4 x double>*
  store <4 x double> %143, <4 x double>* %144, align 8, !alias.scope !82, !noalias !84
  %index.next1004 = add i64 %index1003, 4
  %145 = icmp eq i64 %index.next1004, %n.vec1002
  br i1 %145, label %middle.block996, label %vector.body998, !llvm.loop !88

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1006 = icmp eq i64 %138, %n.vec1002
  br i1 %cmp.n1006, label %polly.loop_exit539, label %polly.loop_header537.preheader

polly.loop_header537.preheader:                   ; preds = %polly.loop_header531, %middle.block996
  %polly.indvar540.ph = phi i64 [ 0, %polly.loop_header531 ], [ %n.vec1002, %middle.block996 ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537, %middle.block996
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next535, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond881.not, label %polly.loop_header547.preheader, label %polly.loop_header531

polly.loop_header547.preheader:                   ; preds = %polly.loop_exit539
  %Packed_MemRef_call2448 = bitcast i8* %malloccall447 to double*
  br label %polly.loop_header547

polly.loop_header537:                             ; preds = %polly.loop_header537.preheader, %polly.loop_header537
  %polly.indvar540 = phi i64 [ %polly.indvar_next541, %polly.loop_header537 ], [ %polly.indvar540.ph, %polly.loop_header537.preheader ]
  %146 = shl nuw nsw i64 %polly.indvar540, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %146
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_546, 1.200000e+00
  store double %p_mul.i, double* %scevgep544545, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next541, %polly.indvar534
  br i1 %exitcond880.not, label %polly.loop_exit539, label %polly.loop_header537, !llvm.loop !89

polly.loop_header547:                             ; preds = %polly.loop_header547.preheader, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header547.preheader ]
  %polly.access.mul.Packed_MemRef_call2448 = mul nuw nsw i64 %polly.indvar550, 1200
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_header553
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next551, 1000
  br i1 %exitcond879.not, label %polly.loop_header563, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_header553, %polly.loop_header547
  %polly.indvar556 = phi i64 [ 0, %polly.loop_header547 ], [ %polly.indvar_next557, %polly.loop_header553 ]
  %polly.access.mul.call2560 = mul nuw nsw i64 %polly.indvar556, 1000
  %polly.access.add.call2561 = add nuw nsw i64 %polly.access.mul.call2560, %polly.indvar550
  %polly.access.call2562 = getelementptr double, double* %polly.access.cast.call2632, i64 %polly.access.add.call2561
  %polly.access.call2562.load = load double, double* %polly.access.call2562, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call2448 = add nuw nsw i64 %polly.indvar556, %polly.access.mul.Packed_MemRef_call2448
  %polly.access.Packed_MemRef_call2448 = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448
  store double %polly.access.call2562.load, double* %polly.access.Packed_MemRef_call2448, align 8
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next557, 1200
  br i1 %exitcond878.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header563:                             ; preds = %polly.loop_exit555, %polly.loop_exit571
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit571 ], [ 1, %polly.loop_exit555 ]
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit571 ], [ 0, %polly.loop_exit555 ]
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_exit571 ], [ 0, %polly.loop_exit555 ]
  %147 = mul nuw nsw i64 %polly.indvar566, 50
  br label %polly.loop_header569

polly.loop_exit571:                               ; preds = %polly.loop_exit577
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 50
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next567, 24
  br i1 %exitcond877.not, label %polly.exiting446, label %polly.loop_header563

polly.loop_header569:                             ; preds = %polly.loop_exit577, %polly.loop_header563
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header563 ], [ %polly.indvar_next573, %polly.loop_exit577 ]
  %148 = mul nuw nsw i64 %polly.indvar572, 50
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next573, 20
  br i1 %exitcond876.not, label %polly.loop_exit571, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_header569
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit583 ], [ %indvars.iv863, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %149 = mul nuw nsw i64 %polly.indvar578, 50
  %150 = sub nsw i64 %147, %149
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -50
  %exitcond875.not = icmp eq i64 %polly.indvar_next579, %indvars.iv873
  br i1 %exitcond875.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit589 ], [ %indvars.iv865, %polly.loop_header575 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header575 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 49)
  %151 = add nsw i64 %polly.indvar584, %150
  %polly.loop_guard597915 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar584, %147
  %153 = mul nuw nsw i64 %152, 8000
  %154 = mul nuw nsw i64 %152, 9600
  br i1 %polly.loop_guard597915, label %polly.loop_header587.us, label %polly.loop_exit589

polly.loop_header587.us:                          ; preds = %polly.loop_header581, %polly.loop_exit596.loopexit.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_exit596.loopexit.us ], [ 0, %polly.loop_header581 ]
  %155 = add nuw nsw i64 %polly.indvar590.us, %148
  %156 = shl i64 %155, 3
  %polly.access.mul.Packed_MemRef_call2448604.us = mul nuw nsw i64 %155, 1200
  %polly.access.add.Packed_MemRef_call2448605.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2448604.us, %152
  %polly.access.Packed_MemRef_call2448606.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448605.us
  %_p_scalar_607.us = load double, double* %polly.access.Packed_MemRef_call2448606.us, align 8
  %157 = add nuw nsw i64 %156, %153
  %scevgep612.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep612613.us = bitcast i8* %scevgep612.us to double*
  %_p_scalar_614.us = load double, double* %scevgep612613.us, align 8, !alias.scope !85, !noalias !91
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_header594.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_header594.us ], [ 0, %polly.loop_header587.us ]
  %158 = add nuw nsw i64 %polly.indvar598.us, %149
  %159 = mul nuw nsw i64 %158, 8000
  %160 = add nuw nsw i64 %159, %156
  %scevgep601.us = getelementptr i8, i8* %call1, i64 %160
  %scevgep601602.us = bitcast i8* %scevgep601.us to double*
  %_p_scalar_603.us = load double, double* %scevgep601602.us, align 8, !alias.scope !85, !noalias !91
  %p_mul27.i.us = fmul fast double %_p_scalar_607.us, %_p_scalar_603.us
  %polly.access.add.Packed_MemRef_call2448609.us = add nuw nsw i64 %158, %polly.access.mul.Packed_MemRef_call2448604.us
  %polly.access.Packed_MemRef_call2448610.us = getelementptr double, double* %Packed_MemRef_call2448, i64 %polly.access.add.Packed_MemRef_call2448609.us
  %_p_scalar_611.us = load double, double* %polly.access.Packed_MemRef_call2448610.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_614.us, %_p_scalar_611.us
  %161 = shl i64 %158, 3
  %162 = add nuw nsw i64 %161, %154
  %scevgep615.us = getelementptr i8, i8* %call, i64 %162
  %scevgep615616.us = bitcast i8* %scevgep615.us to double*
  %_p_scalar_617.us = load double, double* %scevgep615616.us, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_617.us
  store double %p_add42.i.us, double* %scevgep615616.us, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond870.not = icmp eq i64 %polly.indvar598.us, %smin869
  br i1 %exitcond870.not, label %polly.loop_exit596.loopexit.us, label %polly.loop_header594.us

polly.loop_exit596.loopexit.us:                   ; preds = %polly.loop_header594.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next591.us, 50
  br i1 %exitcond871.not, label %polly.loop_exit589, label %polly.loop_header587.us

polly.loop_exit589:                               ; preds = %polly.loop_exit596.loopexit.us, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next585, 50
  br i1 %exitcond872.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header744:                             ; preds = %entry, %polly.loop_exit752
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit752 ], [ 0, %entry ]
  %polly.indvar747 = phi i64 [ %polly.indvar_next748, %polly.loop_exit752 ], [ 0, %entry ]
  %smin908 = call i64 @llvm.smin.i64(i64 %indvars.iv906, i64 -1168)
  %163 = shl nsw i64 %polly.indvar747, 5
  %164 = add nsw i64 %smin908, 1199
  br label %polly.loop_header750

polly.loop_exit752:                               ; preds = %polly.loop_exit758
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %indvars.iv.next907 = add nsw i64 %indvars.iv906, -32
  %exitcond911.not = icmp eq i64 %polly.indvar_next748, 38
  br i1 %exitcond911.not, label %polly.loop_header771, label %polly.loop_header744

polly.loop_header750:                             ; preds = %polly.loop_exit758, %polly.loop_header744
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %polly.loop_header744 ]
  %165 = mul nsw i64 %polly.indvar753, -32
  %smin937 = call i64 @llvm.smin.i64(i64 %165, i64 -1168)
  %166 = add nsw i64 %smin937, 1200
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %167 = shl nsw i64 %polly.indvar753, 5
  %168 = add nsw i64 %smin904, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond910.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond910.not, label %polly.loop_exit752, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %polly.indvar759 = phi i64 [ 0, %polly.loop_header750 ], [ %polly.indvar_next760, %polly.loop_exit764 ]
  %169 = add nuw nsw i64 %polly.indvar759, %163
  %170 = trunc i64 %169 to i32
  %171 = mul nuw nsw i64 %169, 9600
  %min.iters.check = icmp eq i64 %166, 0
  br i1 %min.iters.check, label %polly.loop_header762, label %vector.ph938

vector.ph938:                                     ; preds = %polly.loop_header756
  %broadcast.splatinsert945 = insertelement <4 x i64> poison, i64 %167, i32 0
  %broadcast.splat946 = shufflevector <4 x i64> %broadcast.splatinsert945, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert947 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat948 = shufflevector <4 x i32> %broadcast.splatinsert947, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph938
  %index939 = phi i64 [ 0, %vector.ph938 ], [ %index.next940, %vector.body936 ]
  %vec.ind943 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph938 ], [ %vec.ind.next944, %vector.body936 ]
  %172 = add nuw nsw <4 x i64> %vec.ind943, %broadcast.splat946
  %173 = trunc <4 x i64> %172 to <4 x i32>
  %174 = mul <4 x i32> %broadcast.splat948, %173
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 1200, i32 1200, i32 1200, i32 1200>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %179 = extractelement <4 x i64> %172, i32 0
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %171
  %182 = getelementptr i8, i8* %call, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  store <4 x double> %178, <4 x double>* %183, align 8, !alias.scope !92, !noalias !94
  %index.next940 = add i64 %index939, 4
  %vec.ind.next944 = add <4 x i64> %vec.ind943, <i64 4, i64 4, i64 4, i64 4>
  %184 = icmp eq i64 %index.next940, %166
  br i1 %184, label %polly.loop_exit764, label %vector.body936, !llvm.loop !97

polly.loop_exit764:                               ; preds = %vector.body936, %polly.loop_header762
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %exitcond909.not = icmp eq i64 %polly.indvar759, %164
  br i1 %exitcond909.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_header756, %polly.loop_header762
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_header762 ], [ 0, %polly.loop_header756 ]
  %185 = add nuw nsw i64 %polly.indvar765, %167
  %186 = trunc i64 %185 to i32
  %187 = mul i32 %186, %170
  %188 = add i32 %187, 3
  %189 = urem i32 %188, 1200
  %p_conv31.i = sitofp i32 %189 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %190 = shl i64 %185, 3
  %191 = add nuw nsw i64 %190, %171
  %scevgep768 = getelementptr i8, i8* %call, i64 %191
  %scevgep768769 = bitcast i8* %scevgep768 to double*
  store double %p_div33.i, double* %scevgep768769, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond905.not = icmp eq i64 %polly.indvar765, %168
  br i1 %exitcond905.not, label %polly.loop_exit764, label %polly.loop_header762, !llvm.loop !98

polly.loop_header771:                             ; preds = %polly.loop_exit752, %polly.loop_exit779
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %polly.indvar774 = phi i64 [ %polly.indvar_next775, %polly.loop_exit779 ], [ 0, %polly.loop_exit752 ]
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -1168)
  %192 = shl nsw i64 %polly.indvar774, 5
  %193 = add nsw i64 %smin898, 1199
  br label %polly.loop_header777

polly.loop_exit779:                               ; preds = %polly.loop_exit785
  %polly.indvar_next775 = add nuw nsw i64 %polly.indvar774, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -32
  %exitcond901.not = icmp eq i64 %polly.indvar_next775, 38
  br i1 %exitcond901.not, label %polly.loop_header797, label %polly.loop_header771

polly.loop_header777:                             ; preds = %polly.loop_exit785, %polly.loop_header771
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_header771 ]
  %194 = mul nsw i64 %polly.indvar780, -32
  %smin952 = call i64 @llvm.smin.i64(i64 %194, i64 -968)
  %195 = add nsw i64 %smin952, 1000
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -968)
  %196 = shl nsw i64 %polly.indvar780, 5
  %197 = add nsw i64 %smin894, 999
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond900.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond900.not, label %polly.loop_exit779, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %polly.indvar786 = phi i64 [ 0, %polly.loop_header777 ], [ %polly.indvar_next787, %polly.loop_exit791 ]
  %198 = add nuw nsw i64 %polly.indvar786, %192
  %199 = trunc i64 %198 to i32
  %200 = mul nuw nsw i64 %198, 8000
  %min.iters.check953 = icmp eq i64 %195, 0
  br i1 %min.iters.check953, label %polly.loop_header789, label %vector.ph954

vector.ph954:                                     ; preds = %polly.loop_header783
  %broadcast.splatinsert963 = insertelement <4 x i64> poison, i64 %196, i32 0
  %broadcast.splat964 = shufflevector <4 x i64> %broadcast.splatinsert963, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %199, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph954
  %index957 = phi i64 [ 0, %vector.ph954 ], [ %index.next958, %vector.body951 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph954 ], [ %vec.ind.next962, %vector.body951 ]
  %201 = add nuw nsw <4 x i64> %vec.ind961, %broadcast.splat964
  %202 = trunc <4 x i64> %201 to <4 x i32>
  %203 = mul <4 x i32> %broadcast.splat966, %202
  %204 = add <4 x i32> %203, <i32 2, i32 2, i32 2, i32 2>
  %205 = urem <4 x i32> %204, <i32 1000, i32 1000, i32 1000, i32 1000>
  %206 = sitofp <4 x i32> %205 to <4 x double>
  %207 = fmul fast <4 x double> %206, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %208 = extractelement <4 x i64> %201, i32 0
  %209 = shl i64 %208, 3
  %210 = add nuw nsw i64 %209, %200
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %207, <4 x double>* %212, align 8, !alias.scope !96, !noalias !99
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %213 = icmp eq i64 %index.next958, %195
  br i1 %213, label %polly.loop_exit791, label %vector.body951, !llvm.loop !100

polly.loop_exit791:                               ; preds = %vector.body951, %polly.loop_header789
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %exitcond899.not = icmp eq i64 %polly.indvar786, %193
  br i1 %exitcond899.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_header783, %polly.loop_header789
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_header789 ], [ 0, %polly.loop_header783 ]
  %214 = add nuw nsw i64 %polly.indvar792, %196
  %215 = trunc i64 %214 to i32
  %216 = mul i32 %215, %199
  %217 = add i32 %216, 2
  %218 = urem i32 %217, 1000
  %p_conv10.i = sitofp i32 %218 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %219 = shl i64 %214, 3
  %220 = add nuw nsw i64 %219, %200
  %scevgep795 = getelementptr i8, i8* %call2, i64 %220
  %scevgep795796 = bitcast i8* %scevgep795 to double*
  store double %p_div12.i, double* %scevgep795796, align 8, !alias.scope !96, !noalias !99
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond895.not = icmp eq i64 %polly.indvar792, %197
  br i1 %exitcond895.not, label %polly.loop_exit791, label %polly.loop_header789, !llvm.loop !101

polly.loop_header797:                             ; preds = %polly.loop_exit779, %polly.loop_exit805
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %polly.loop_exit779 ]
  %smin888 = call i64 @llvm.smin.i64(i64 %indvars.iv886, i64 -1168)
  %221 = shl nsw i64 %polly.indvar800, 5
  %222 = add nsw i64 %smin888, 1199
  br label %polly.loop_header803

polly.loop_exit805:                               ; preds = %polly.loop_exit811
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -32
  %exitcond891.not = icmp eq i64 %polly.indvar_next801, 38
  br i1 %exitcond891.not, label %init_array.exit, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_exit811, %polly.loop_header797
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_header797 ]
  %223 = mul nsw i64 %polly.indvar806, -32
  %smin970 = call i64 @llvm.smin.i64(i64 %223, i64 -968)
  %224 = add nsw i64 %smin970, 1000
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -968)
  %225 = shl nsw i64 %polly.indvar806, 5
  %226 = add nsw i64 %smin884, 999
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond890.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond890.not, label %polly.loop_exit805, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %polly.indvar812 = phi i64 [ 0, %polly.loop_header803 ], [ %polly.indvar_next813, %polly.loop_exit817 ]
  %227 = add nuw nsw i64 %polly.indvar812, %221
  %228 = trunc i64 %227 to i32
  %229 = mul nuw nsw i64 %227, 8000
  %min.iters.check971 = icmp eq i64 %224, 0
  br i1 %min.iters.check971, label %polly.loop_header815, label %vector.ph972

vector.ph972:                                     ; preds = %polly.loop_header809
  %broadcast.splatinsert981 = insertelement <4 x i64> poison, i64 %225, i32 0
  %broadcast.splat982 = shufflevector <4 x i64> %broadcast.splatinsert981, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph972
  %index975 = phi i64 [ 0, %vector.ph972 ], [ %index.next976, %vector.body969 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph972 ], [ %vec.ind.next980, %vector.body969 ]
  %230 = add nuw nsw <4 x i64> %vec.ind979, %broadcast.splat982
  %231 = trunc <4 x i64> %230 to <4 x i32>
  %232 = mul <4 x i32> %broadcast.splat984, %231
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 1200, i32 1200, i32 1200, i32 1200>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %237 = extractelement <4 x i64> %230, i32 0
  %238 = shl i64 %237, 3
  %239 = add nuw nsw i64 %238, %229
  %240 = getelementptr i8, i8* %call1, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %236, <4 x double>* %241, align 8, !alias.scope !95, !noalias !102
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %242 = icmp eq i64 %index.next976, %224
  br i1 %242, label %polly.loop_exit817, label %vector.body969, !llvm.loop !103

polly.loop_exit817:                               ; preds = %vector.body969, %polly.loop_header815
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %exitcond889.not = icmp eq i64 %polly.indvar812, %222
  br i1 %exitcond889.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_header809, %polly.loop_header815
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_header815 ], [ 0, %polly.loop_header809 ]
  %243 = add nuw nsw i64 %polly.indvar818, %225
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, %228
  %246 = add i32 %245, 1
  %247 = urem i32 %246, 1200
  %p_conv.i = sitofp i32 %247 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %248 = shl i64 %243, 3
  %249 = add nuw nsw i64 %248, %229
  %scevgep822 = getelementptr i8, i8* %call1, i64 %249
  %scevgep822823 = bitcast i8* %scevgep822 to double*
  store double %p_div.i, double* %scevgep822823, align 8, !alias.scope !95, !noalias !102
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond885.not = icmp eq i64 %polly.indvar818, %226
  br i1 %exitcond885.not, label %polly.loop_exit817, label %polly.loop_header815, !llvm.loop !104
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !23, !41, !42, !43, !25, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.data.pack.enable", i1 true}
!48 = !{!"llvm.data.pack.array", !21}
!49 = !{!"llvm.data.pack.allocate", !"malloc"}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !52}
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
!63 = !{!64, !65, !66}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !62, !"polly.alias.scope.Packed_MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!61, !64, !66}
!71 = !{!61, !65, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !69, !13}
!80 = !{!72, !75, !77}
!81 = !{!72, !76, !77}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !69, !13}
!90 = !{!82, !85, !87}
!91 = !{!82, !86, !87}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !69, !13}
!99 = !{!95, !92}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !69, !13}
!102 = !{!96, !92}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !69, !13}
