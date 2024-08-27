; ModuleID = 'syr2k_exhaustive/mmp_all_XL_5330.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_5330.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv7.i, i64 %index926
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit801
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %index992
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check1011 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1011, label %for.body3.i60.preheader1061, label %vector.ph1012

vector.ph1012:                                    ; preds = %for.body3.i60.preheader
  %n.vec1014 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1010 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1015
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1019 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1019, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1016 = add i64 %index1015, 4
  %57 = icmp eq i64 %index.next1016, %n.vec1014
  br i1 %57, label %middle.block1008, label %vector.body1010, !llvm.loop !59

middle.block1008:                                 ; preds = %vector.body1010
  %cmp.n1018 = icmp eq i64 %indvars.iv21.i52, %n.vec1014
  br i1 %cmp.n1018, label %for.inc6.i63, label %for.body3.i60.preheader1061

for.body3.i60.preheader1061:                      ; preds = %for.body3.i60.preheader, %middle.block1008
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1014, %middle.block1008 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1061, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1061 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

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
  %min.iters.check1037 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1037, label %for.body3.i99.preheader1060, label %vector.ph1038

vector.ph1038:                                    ; preds = %for.body3.i99.preheader
  %n.vec1040 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1042, %vector.body1036 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1041
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1045 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1045, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1042 = add i64 %index1041, 4
  %68 = icmp eq i64 %index.next1042, %n.vec1040
  br i1 %68, label %middle.block1034, label %vector.body1036, !llvm.loop !61

middle.block1034:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %indvars.iv21.i91, %n.vec1040
  br i1 %cmp.n1044, label %for.inc6.i102, label %for.body3.i99.preheader1060

for.body3.i99.preheader1060:                      ; preds = %for.body3.i99.preheader, %middle.block1034
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1040, %middle.block1034 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1060, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1060 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  tail call void @free(i8* nonnull %malloccall)
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
  %wide.load1059 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1059, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1056 = add i64 %index1055, 4
  %95 = icmp eq i64 %index.next1056, %n.vec1054
  br i1 %95, label %middle.block1046, label %vector.body1048, !llvm.loop !73

middle.block1046:                                 ; preds = %vector.body1048
  %cmp.n1058 = icmp eq i64 %88, %n.vec1054
  br i1 %cmp.n1058, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1046
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1054, %middle.block1046 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1046
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1050 = add i64 %indvar1049, 1
  br i1 %exitcond850.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond849.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond848.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %101 = shl nsw i64 %polly.indvar208, 6
  br label %polly.loop_header217

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %exitcond847.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond847.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header205
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %102 = add nuw nsw i64 %polly.indvar220, %101
  %polly.access.mul.call2224 = mul nuw nsw i64 %102, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %97, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !71, !noalias !76
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar220
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit219.3
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit235 ], [ 0, %polly.loop_exit219.3 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %299, %polly.loop_exit219.3 ]
  %103 = shl nsw i64 %polly.indvar230, 2
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 63)
  %104 = add nsw i64 %103, %298
  %105 = mul nsw i64 %polly.indvar230, 32000
  %106 = mul nsw i64 %polly.indvar230, 38400
  %indvars.iv.next842 = or i64 %indvars.iv839, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842, i64 63)
  %107 = or i64 %103, 1
  %108 = add nsw i64 %107, %298
  %109 = mul nuw nsw i64 %107, 8000
  %110 = mul nuw nsw i64 %107, 9600
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv.next842, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842.1, i64 63)
  %111 = or i64 %103, 2
  %112 = add nsw i64 %111, %298
  %113 = mul nuw nsw i64 %111, 8000
  %114 = mul nuw nsw i64 %111, 9600
  %indvars.iv.next842.2 = or i64 %indvars.iv839, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842.2, i64 63)
  %115 = or i64 %103, 3
  %116 = add nsw i64 %115, %298
  %117 = mul nuw nsw i64 %115, 8000
  %118 = mul nuw nsw i64 %115, 9600
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit247.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 4
  %exitcond846.not = icmp eq i64 %polly.indvar_next231, 300
  br i1 %exitcond846.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit247.3, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit247.3 ]
  %119 = add nuw nsw i64 %polly.indvar236, %97
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar236, 1200
  %polly.access.add.Packed_MemRef_call2255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %104
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %121 = add nuw nsw i64 %105, %120
  %scevgep262 = getelementptr i8, i8* %call1, i64 %121
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !70, !noalias !77
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.access.add.Packed_MemRef_call2255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %108
  %polly.access.Packed_MemRef_call2256.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.1
  %_p_scalar_257.1 = load double, double* %polly.access.Packed_MemRef_call2256.1, align 8
  %122 = add nuw nsw i64 %109, %120
  %scevgep262.1 = getelementptr i8, i8* %call1, i64 %122
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !70, !noalias !77
  br label %polly.loop_header245.1

polly.loop_header245:                             ; preds = %polly.loop_header245, %polly.loop_header233
  %polly.indvar248 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next249, %polly.loop_header245 ]
  %123 = add nuw nsw i64 %polly.indvar248, %101
  %124 = mul nuw nsw i64 %123, 8000
  %125 = add nuw nsw i64 %124, %120
  %scevgep251 = getelementptr i8, i8* %call1, i64 %125
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.add.Packed_MemRef_call2259 = add nuw nsw i64 %polly.indvar248, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %126 = shl i64 %123, 3
  %127 = add nuw nsw i64 %126, %106
  %scevgep265 = getelementptr i8, i8* %call, i64 %127
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond843.not = icmp eq i64 %polly.indvar248, %smin
  br i1 %exitcond843.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* nonnull %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1023 = phi i64 [ %indvar.next1024, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %128 = add i64 %indvar1023, 1
  %129 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1025 = icmp ult i64 %128, 4
  br i1 %min.iters.check1025, label %polly.loop_header362.preheader, label %vector.ph1026

vector.ph1026:                                    ; preds = %polly.loop_header356
  %n.vec1028 = and i64 %128, -4
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %vector.ph1026
  %index1029 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1030, %vector.body1022 ]
  %130 = shl nuw nsw i64 %index1029, 3
  %131 = getelementptr i8, i8* %scevgep368, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1033 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !78, !noalias !80
  %133 = fmul fast <4 x double> %wide.load1033, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !78, !noalias !80
  %index.next1030 = add i64 %index1029, 4
  %135 = icmp eq i64 %index.next1030, %n.vec1028
  br i1 %135, label %middle.block1020, label %vector.body1022, !llvm.loop !84

middle.block1020:                                 ; preds = %vector.body1022
  %cmp.n1032 = icmp eq i64 %128, %n.vec1028
  br i1 %cmp.n1032, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1020
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1028, %middle.block1020 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1020
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1024 = add i64 %indvar1023, 1
  br i1 %exitcond867.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %136
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond866.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !85

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %137 = shl nsw i64 %polly.indvar375, 2
  %138 = or i64 %137, 1
  %139 = or i64 %137, 2
  %140 = or i64 %137, 3
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next376, 250
  br i1 %exitcond865.not, label %polly.exiting271, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit402 ], [ 1200, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %141 = shl nsw i64 %polly.indvar381, 6
  br label %polly.loop_header390

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -64
  %exitcond864.not = icmp eq i64 %polly.indvar_next382, 19
  br i1 %exitcond864.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header378
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %142 = add nuw nsw i64 %polly.indvar393, %141
  %polly.access.mul.call2397 = mul nuw nsw i64 %142, 1000
  %polly.access.add.call2398 = add nuw nsw i64 %137, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !82, !noalias !86
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.indvar393
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next394, %indvars.iv851
  br i1 %exitcond853.not, label %polly.loop_header390.1, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_exit392.3
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit408 ], [ 0, %polly.loop_exit392.3 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ %321, %polly.loop_exit392.3 ]
  %143 = shl nsw i64 %polly.indvar403, 2
  %smin859 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 63)
  %144 = add nsw i64 %143, %320
  %145 = mul nsw i64 %polly.indvar403, 32000
  %146 = mul nsw i64 %polly.indvar403, 38400
  %indvars.iv.next858 = or i64 %indvars.iv855, 1
  %smin859.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next858, i64 63)
  %147 = or i64 %143, 1
  %148 = add nsw i64 %147, %320
  %149 = mul nuw nsw i64 %147, 8000
  %150 = mul nuw nsw i64 %147, 9600
  %indvars.iv.next858.1 = add nuw nsw i64 %indvars.iv.next858, 1
  %smin859.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next858.1, i64 63)
  %151 = or i64 %143, 2
  %152 = add nsw i64 %151, %320
  %153 = mul nuw nsw i64 %151, 8000
  %154 = mul nuw nsw i64 %151, 9600
  %indvars.iv.next858.2 = or i64 %indvars.iv855, 3
  %smin859.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next858.2, i64 63)
  %155 = or i64 %143, 3
  %156 = add nsw i64 %155, %320
  %157 = mul nuw nsw i64 %155, 8000
  %158 = mul nuw nsw i64 %155, 9600
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit420.3
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 4
  %exitcond863.not = icmp eq i64 %polly.indvar_next404, 300
  br i1 %exitcond863.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit420.3, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit420.3 ]
  %159 = add nuw nsw i64 %polly.indvar409, %137
  %160 = shl i64 %159, 3
  %polly.access.mul.Packed_MemRef_call2273427 = mul nuw nsw i64 %polly.indvar409, 1200
  %polly.access.add.Packed_MemRef_call2273428 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %144
  %polly.access.Packed_MemRef_call2273429 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428
  %_p_scalar_430 = load double, double* %polly.access.Packed_MemRef_call2273429, align 8
  %161 = add nuw nsw i64 %145, %160
  %scevgep435 = getelementptr i8, i8* %call1, i64 %161
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !81, !noalias !87
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.access.add.Packed_MemRef_call2273428.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %148
  %polly.access.Packed_MemRef_call2273429.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.1
  %_p_scalar_430.1 = load double, double* %polly.access.Packed_MemRef_call2273429.1, align 8
  %162 = add nuw nsw i64 %149, %160
  %scevgep435.1 = getelementptr i8, i8* %call1, i64 %162
  %scevgep435436.1 = bitcast i8* %scevgep435.1 to double*
  %_p_scalar_437.1 = load double, double* %scevgep435436.1, align 8, !alias.scope !81, !noalias !87
  br label %polly.loop_header418.1

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header406
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %163 = add nuw nsw i64 %polly.indvar421, %141
  %164 = mul nuw nsw i64 %163, 8000
  %165 = add nuw nsw i64 %164, %160
  %scevgep424 = getelementptr i8, i8* %call1, i64 %165
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73 = fmul fast double %_p_scalar_430, %_p_scalar_426
  %polly.access.add.Packed_MemRef_call2273432 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432
  %_p_scalar_434 = load double, double* %polly.access.Packed_MemRef_call2273433, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_437, %_p_scalar_434
  %166 = shl i64 %163, 3
  %167 = add nuw nsw i64 %166, %146
  %scevgep438 = getelementptr i8, i8* %call, i64 %167
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond860.not = icmp eq i64 %polly.indvar421, %smin859
  br i1 %exitcond860.not, label %polly.loop_exit420, label %polly.loop_header418

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar532, 9600
  %scevgep541 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check999 = icmp ult i64 %168, 4
  br i1 %min.iters.check999, label %polly.loop_header535.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %polly.loop_header529
  %n.vec1002 = and i64 %168, -4
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body998 ]
  %170 = shl nuw nsw i64 %index1003, 3
  %171 = getelementptr i8, i8* %scevgep541, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1007 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !88, !noalias !90
  %173 = fmul fast <4 x double> %wide.load1007, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !88, !noalias !90
  %index.next1004 = add i64 %index1003, 4
  %175 = icmp eq i64 %index.next1004, %n.vec1002
  br i1 %175, label %middle.block996, label %vector.body998, !llvm.loop !94

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1006 = icmp eq i64 %168, %n.vec1002
  br i1 %cmp.n1006, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block996
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1002, %middle.block996 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block996
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next533, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond884.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call2446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %176
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond883.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !95

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_exit553 ], [ 0, %polly.loop_header545.preheader ]
  %177 = shl nsw i64 %polly.indvar548, 2
  %178 = or i64 %177, 1
  %179 = or i64 %177, 2
  %180 = or i64 %177, 3
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_exit575
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next549, 250
  br i1 %exitcond882.not, label %polly.exiting444, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_exit575, %polly.loop_header545
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit575 ], [ 1200, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit575 ], [ 0, %polly.loop_header545 ]
  %181 = shl nsw i64 %polly.indvar554, 6
  br label %polly.loop_header563

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, -64
  %exitcond881.not = icmp eq i64 %polly.indvar_next555, 19
  br i1 %exitcond881.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header551
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %182 = add nuw nsw i64 %polly.indvar566, %181
  %polly.access.mul.call2570 = mul nuw nsw i64 %182, 1000
  %polly.access.add.call2571 = add nuw nsw i64 %177, %polly.access.mul.call2570
  %polly.access.call2572 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571
  %polly.access.call2572.load = load double, double* %polly.access.call2572, align 8, !alias.scope !92, !noalias !96
  %polly.access.Packed_MemRef_call2446 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.indvar566
  store double %polly.access.call2572.load, double* %polly.access.Packed_MemRef_call2446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next567, %indvars.iv868
  br i1 %exitcond870.not, label %polly.loop_header563.1, label %polly.loop_header563

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_exit565.3
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit581 ], [ 0, %polly.loop_exit565.3 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ %343, %polly.loop_exit565.3 ]
  %183 = shl nsw i64 %polly.indvar576, 2
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 63)
  %184 = add nsw i64 %183, %342
  %185 = mul nsw i64 %polly.indvar576, 32000
  %186 = mul nsw i64 %polly.indvar576, 38400
  %indvars.iv.next875 = or i64 %indvars.iv872, 1
  %smin876.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next875, i64 63)
  %187 = or i64 %183, 1
  %188 = add nsw i64 %187, %342
  %189 = mul nuw nsw i64 %187, 8000
  %190 = mul nuw nsw i64 %187, 9600
  %indvars.iv.next875.1 = add nuw nsw i64 %indvars.iv.next875, 1
  %smin876.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next875.1, i64 63)
  %191 = or i64 %183, 2
  %192 = add nsw i64 %191, %342
  %193 = mul nuw nsw i64 %191, 8000
  %194 = mul nuw nsw i64 %191, 9600
  %indvars.iv.next875.2 = or i64 %indvars.iv872, 3
  %smin876.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next875.2, i64 63)
  %195 = or i64 %183, 3
  %196 = add nsw i64 %195, %342
  %197 = mul nuw nsw i64 %195, 8000
  %198 = mul nuw nsw i64 %195, 9600
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit593.3
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 4
  %exitcond880.not = icmp eq i64 %polly.indvar_next577, 300
  br i1 %exitcond880.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit593.3, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit593.3 ]
  %199 = add nuw nsw i64 %polly.indvar582, %177
  %200 = shl i64 %199, 3
  %polly.access.mul.Packed_MemRef_call2446600 = mul nuw nsw i64 %polly.indvar582, 1200
  %polly.access.add.Packed_MemRef_call2446601 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %184
  %polly.access.Packed_MemRef_call2446602 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601
  %_p_scalar_603 = load double, double* %polly.access.Packed_MemRef_call2446602, align 8
  %201 = add nuw nsw i64 %185, %200
  %scevgep608 = getelementptr i8, i8* %call1, i64 %201
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !91, !noalias !97
  br label %polly.loop_header591

polly.loop_exit593:                               ; preds = %polly.loop_header591
  %polly.access.add.Packed_MemRef_call2446601.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %188
  %polly.access.Packed_MemRef_call2446602.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.1
  %_p_scalar_603.1 = load double, double* %polly.access.Packed_MemRef_call2446602.1, align 8
  %202 = add nuw nsw i64 %189, %200
  %scevgep608.1 = getelementptr i8, i8* %call1, i64 %202
  %scevgep608609.1 = bitcast i8* %scevgep608.1 to double*
  %_p_scalar_610.1 = load double, double* %scevgep608609.1, align 8, !alias.scope !91, !noalias !97
  br label %polly.loop_header591.1

polly.loop_header591:                             ; preds = %polly.loop_header591, %polly.loop_header579
  %polly.indvar594 = phi i64 [ 0, %polly.loop_header579 ], [ %polly.indvar_next595, %polly.loop_header591 ]
  %203 = add nuw nsw i64 %polly.indvar594, %181
  %204 = mul nuw nsw i64 %203, 8000
  %205 = add nuw nsw i64 %204, %200
  %scevgep597 = getelementptr i8, i8* %call1, i64 %205
  %scevgep597598 = bitcast i8* %scevgep597 to double*
  %_p_scalar_599 = load double, double* %scevgep597598, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i = fmul fast double %_p_scalar_603, %_p_scalar_599
  %polly.access.add.Packed_MemRef_call2446605 = add nuw nsw i64 %polly.indvar594, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2446606, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_607
  %206 = shl i64 %203, 3
  %207 = add nuw nsw i64 %206, %186
  %scevgep611 = getelementptr i8, i8* %call, i64 %207
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond877.not = icmp eq i64 %polly.indvar594, %smin876
  br i1 %exitcond877.not, label %polly.loop_exit593, label %polly.loop_header591

polly.loop_header740:                             ; preds = %entry, %polly.loop_exit748
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit748 ], [ 0, %entry ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %entry ]
  %smin911 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 -1168)
  %208 = shl nsw i64 %polly.indvar743, 5
  %209 = add nsw i64 %smin911, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, -32
  %exitcond914.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond914.not, label %polly.loop_header767, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %polly.loop_header740 ]
  %210 = mul nsw i64 %polly.indvar749, -32
  %smin937 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin937, 1200
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 -1168)
  %212 = shl nsw i64 %polly.indvar749, 5
  %213 = add nsw i64 %smin907, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next906 = add nsw i64 %indvars.iv905, -32
  %exitcond913.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond913.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %polly.indvar755 = phi i64 [ 0, %polly.loop_header746 ], [ %polly.indvar_next756, %polly.loop_exit760 ]
  %214 = add nuw nsw i64 %polly.indvar755, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header758, label %vector.ph938

vector.ph938:                                     ; preds = %polly.loop_header752
  %broadcast.splatinsert945 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat946 = shufflevector <4 x i64> %broadcast.splatinsert945, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert947 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat948 = shufflevector <4 x i32> %broadcast.splatinsert947, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph938
  %index939 = phi i64 [ 0, %vector.ph938 ], [ %index.next940, %vector.body936 ]
  %vec.ind943 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph938 ], [ %vec.ind.next944, %vector.body936 ]
  %217 = add nuw nsw <4 x i64> %vec.ind943, %broadcast.splat946
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat948, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !98, !noalias !100
  %index.next940 = add i64 %index939, 4
  %vec.ind.next944 = add <4 x i64> %vec.ind943, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next940, %211
  br i1 %229, label %polly.loop_exit760, label %vector.body936, !llvm.loop !103

polly.loop_exit760:                               ; preds = %vector.body936, %polly.loop_header758
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond912.not = icmp eq i64 %polly.indvar755, %209
  br i1 %exitcond912.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_header752, %polly.loop_header758
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_header758 ], [ 0, %polly.loop_header752 ]
  %230 = add nuw nsw i64 %polly.indvar761, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep764 = getelementptr i8, i8* %call, i64 %236
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div33.i, double* %scevgep764765, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond908.not = icmp eq i64 %polly.indvar761, %213
  br i1 %exitcond908.not, label %polly.loop_exit760, label %polly.loop_header758, !llvm.loop !104

polly.loop_header767:                             ; preds = %polly.loop_exit748, %polly.loop_exit775
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_exit748 ]
  %smin901 = call i64 @llvm.smin.i64(i64 %indvars.iv899, i64 -1168)
  %237 = shl nsw i64 %polly.indvar770, 5
  %238 = add nsw i64 %smin901, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, -32
  %exitcond904.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond904.not, label %polly.loop_header793, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %239 = mul nsw i64 %polly.indvar776, -32
  %smin952 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin952, 1000
  %smin897 = call i64 @llvm.smin.i64(i64 %indvars.iv895, i64 -968)
  %241 = shl nsw i64 %polly.indvar776, 5
  %242 = add nsw i64 %smin897, 999
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next896 = add nsw i64 %indvars.iv895, -32
  %exitcond903.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond903.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %243 = add nuw nsw i64 %polly.indvar782, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check953 = icmp eq i64 %240, 0
  br i1 %min.iters.check953, label %polly.loop_header785, label %vector.ph954

vector.ph954:                                     ; preds = %polly.loop_header779
  %broadcast.splatinsert963 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat964 = shufflevector <4 x i64> %broadcast.splatinsert963, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph954
  %index957 = phi i64 [ 0, %vector.ph954 ], [ %index.next958, %vector.body951 ]
  %vec.ind961 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph954 ], [ %vec.ind.next962, %vector.body951 ]
  %246 = add nuw nsw <4 x i64> %vec.ind961, %broadcast.splat964
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat966, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !102, !noalias !105
  %index.next958 = add i64 %index957, 4
  %vec.ind.next962 = add <4 x i64> %vec.ind961, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next958, %240
  br i1 %258, label %polly.loop_exit787, label %vector.body951, !llvm.loop !106

polly.loop_exit787:                               ; preds = %vector.body951, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond902.not = icmp eq i64 %polly.indvar782, %238
  br i1 %exitcond902.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %259 = add nuw nsw i64 %polly.indvar788, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep791 = getelementptr i8, i8* %call2, i64 %265
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div12.i, double* %scevgep791792, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond898.not = icmp eq i64 %polly.indvar788, %242
  br i1 %exitcond898.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !107

polly.loop_header793:                             ; preds = %polly.loop_exit775, %polly.loop_exit801
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_exit775 ]
  %smin891 = call i64 @llvm.smin.i64(i64 %indvars.iv889, i64 -1168)
  %266 = shl nsw i64 %polly.indvar796, 5
  %267 = add nsw i64 %smin891, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -32
  %exitcond894.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond894.not, label %init_array.exit, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_header793 ]
  %268 = mul nsw i64 %polly.indvar802, -32
  %smin970 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin970, 1000
  %smin887 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 -968)
  %270 = shl nsw i64 %polly.indvar802, 5
  %271 = add nsw i64 %smin887, 999
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -32
  %exitcond893.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond893.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %polly.indvar808 = phi i64 [ 0, %polly.loop_header799 ], [ %polly.indvar_next809, %polly.loop_exit813 ]
  %272 = add nuw nsw i64 %polly.indvar808, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check971 = icmp eq i64 %269, 0
  br i1 %min.iters.check971, label %polly.loop_header811, label %vector.ph972

vector.ph972:                                     ; preds = %polly.loop_header805
  %broadcast.splatinsert981 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat982 = shufflevector <4 x i64> %broadcast.splatinsert981, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph972
  %index975 = phi i64 [ 0, %vector.ph972 ], [ %index.next976, %vector.body969 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph972 ], [ %vec.ind.next980, %vector.body969 ]
  %275 = add nuw nsw <4 x i64> %vec.ind979, %broadcast.splat982
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat984, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !101, !noalias !108
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next976, %269
  br i1 %287, label %polly.loop_exit813, label %vector.body969, !llvm.loop !109

polly.loop_exit813:                               ; preds = %vector.body969, %polly.loop_header811
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond892.not = icmp eq i64 %polly.indvar808, %267
  br i1 %exitcond892.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_header805, %polly.loop_header811
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_header811 ], [ 0, %polly.loop_header805 ]
  %288 = add nuw nsw i64 %polly.indvar814, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep818 = getelementptr i8, i8* %call1, i64 %294
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div.i, double* %scevgep818819, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond888.not = icmp eq i64 %polly.indvar814, %271
  br i1 %exitcond888.not, label %polly.loop_exit813, label %polly.loop_header811, !llvm.loop !110

polly.loop_header217.1:                           ; preds = %polly.loop_header217, %polly.loop_header217.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_header217.1 ], [ 0, %polly.loop_header217 ]
  %295 = add nuw nsw i64 %polly.indvar220.1, %101
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %295, 1000
  %polly.access.add.call2225.1 = add nuw nsw i64 %98, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_header217.1, %polly.loop_header217.2
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_header217.2 ], [ 0, %polly.loop_header217.1 ]
  %296 = add nuw nsw i64 %polly.indvar220.2, %101
  %polly.access.mul.call2224.2 = mul nuw nsw i64 %296, 1000
  %polly.access.add.call2225.2 = add nuw nsw i64 %99, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_header217.2, %polly.loop_header217.3
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_header217.3 ], [ 0, %polly.loop_header217.2 ]
  %297 = add nuw nsw i64 %polly.indvar220.3, %101
  %polly.access.mul.call2224.3 = mul nuw nsw i64 %297, 1000
  %polly.access.add.call2225.3 = add nuw nsw i64 %100, %polly.access.mul.call2224.3
  %polly.access.call2226.3 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225.3
  %polly.access.call2226.load.3 = load double, double* %polly.access.call2226.3, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar220.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2226.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %298 = mul nsw i64 %polly.indvar208, -64
  %299 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header227

polly.loop_header245.1:                           ; preds = %polly.loop_header245.1, %polly.loop_exit247
  %polly.indvar248.1 = phi i64 [ 0, %polly.loop_exit247 ], [ %polly.indvar_next249.1, %polly.loop_header245.1 ]
  %300 = add nuw nsw i64 %polly.indvar248.1, %101
  %301 = mul nuw nsw i64 %300, 8000
  %302 = add nuw nsw i64 %301, %120
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %302
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_257.1, %_p_scalar_253.1
  %polly.access.add.Packed_MemRef_call2259.1 = add nuw nsw i64 %polly.indvar248.1, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call2260.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_264.1, %_p_scalar_261.1
  %303 = shl i64 %300, 3
  %304 = add nuw nsw i64 %303, %110
  %scevgep265.1 = getelementptr i8, i8* %call, i64 %304
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_267.1
  store double %p_add42.i118.1, double* %scevgep265266.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249.1 = add nuw nsw i64 %polly.indvar248.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar248.1, %smin.1
  br i1 %exitcond843.1.not, label %polly.loop_exit247.1, label %polly.loop_header245.1

polly.loop_exit247.1:                             ; preds = %polly.loop_header245.1
  %polly.access.add.Packed_MemRef_call2255.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %112
  %polly.access.Packed_MemRef_call2256.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.2
  %_p_scalar_257.2 = load double, double* %polly.access.Packed_MemRef_call2256.2, align 8
  %305 = add nuw nsw i64 %113, %120
  %scevgep262.2 = getelementptr i8, i8* %call1, i64 %305
  %scevgep262263.2 = bitcast i8* %scevgep262.2 to double*
  %_p_scalar_264.2 = load double, double* %scevgep262263.2, align 8, !alias.scope !70, !noalias !77
  br label %polly.loop_header245.2

polly.loop_header245.2:                           ; preds = %polly.loop_header245.2, %polly.loop_exit247.1
  %polly.indvar248.2 = phi i64 [ 0, %polly.loop_exit247.1 ], [ %polly.indvar_next249.2, %polly.loop_header245.2 ]
  %306 = add nuw nsw i64 %polly.indvar248.2, %101
  %307 = mul nuw nsw i64 %306, 8000
  %308 = add nuw nsw i64 %307, %120
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.2 = fmul fast double %_p_scalar_257.2, %_p_scalar_253.2
  %polly.access.add.Packed_MemRef_call2259.2 = add nuw nsw i64 %polly.indvar248.2, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call2260.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_264.2, %_p_scalar_261.2
  %309 = shl i64 %306, 3
  %310 = add nuw nsw i64 %309, %114
  %scevgep265.2 = getelementptr i8, i8* %call, i64 %310
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_267.2
  store double %p_add42.i118.2, double* %scevgep265266.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249.2 = add nuw nsw i64 %polly.indvar248.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar248.2, %smin.2
  br i1 %exitcond843.2.not, label %polly.loop_exit247.2, label %polly.loop_header245.2

polly.loop_exit247.2:                             ; preds = %polly.loop_header245.2
  %polly.access.add.Packed_MemRef_call2255.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %116
  %polly.access.Packed_MemRef_call2256.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.3
  %_p_scalar_257.3 = load double, double* %polly.access.Packed_MemRef_call2256.3, align 8
  %311 = add nuw nsw i64 %117, %120
  %scevgep262.3 = getelementptr i8, i8* %call1, i64 %311
  %scevgep262263.3 = bitcast i8* %scevgep262.3 to double*
  %_p_scalar_264.3 = load double, double* %scevgep262263.3, align 8, !alias.scope !70, !noalias !77
  br label %polly.loop_header245.3

polly.loop_header245.3:                           ; preds = %polly.loop_header245.3, %polly.loop_exit247.2
  %polly.indvar248.3 = phi i64 [ 0, %polly.loop_exit247.2 ], [ %polly.indvar_next249.3, %polly.loop_header245.3 ]
  %312 = add nuw nsw i64 %polly.indvar248.3, %101
  %313 = mul nuw nsw i64 %312, 8000
  %314 = add nuw nsw i64 %313, %120
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %314
  %scevgep251252.3 = bitcast i8* %scevgep251.3 to double*
  %_p_scalar_253.3 = load double, double* %scevgep251252.3, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.3 = fmul fast double %_p_scalar_257.3, %_p_scalar_253.3
  %polly.access.add.Packed_MemRef_call2259.3 = add nuw nsw i64 %polly.indvar248.3, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call2260.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_264.3, %_p_scalar_261.3
  %315 = shl i64 %312, 3
  %316 = add nuw nsw i64 %315, %118
  %scevgep265.3 = getelementptr i8, i8* %call, i64 %316
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_267.3
  store double %p_add42.i118.3, double* %scevgep265266.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next249.3 = add nuw nsw i64 %polly.indvar248.3, 1
  %exitcond843.3.not = icmp eq i64 %polly.indvar248.3, %smin.3
  br i1 %exitcond843.3.not, label %polly.loop_exit247.3, label %polly.loop_header245.3

polly.loop_exit247.3:                             ; preds = %polly.loop_header245.3
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next237, 4
  br i1 %exitcond845.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header390.1:                           ; preds = %polly.loop_header390, %polly.loop_header390.1
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_header390.1 ], [ 0, %polly.loop_header390 ]
  %317 = add nuw nsw i64 %polly.indvar393.1, %141
  %polly.access.mul.call2397.1 = mul nuw nsw i64 %317, 1000
  %polly.access.add.call2398.1 = add nuw nsw i64 %138, %polly.access.mul.call2397.1
  %polly.access.call2399.1 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398.1
  %polly.access.call2399.load.1 = load double, double* %polly.access.call2399.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2273.1 = add nuw nsw i64 %polly.indvar393.1, 1200
  %polly.access.Packed_MemRef_call2273.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.1
  store double %polly.access.call2399.load.1, double* %polly.access.Packed_MemRef_call2273.1, align 8
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next394.1, %indvars.iv851
  br i1 %exitcond853.1.not, label %polly.loop_header390.2, label %polly.loop_header390.1

polly.loop_header390.2:                           ; preds = %polly.loop_header390.1, %polly.loop_header390.2
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_header390.2 ], [ 0, %polly.loop_header390.1 ]
  %318 = add nuw nsw i64 %polly.indvar393.2, %141
  %polly.access.mul.call2397.2 = mul nuw nsw i64 %318, 1000
  %polly.access.add.call2398.2 = add nuw nsw i64 %139, %polly.access.mul.call2397.2
  %polly.access.call2399.2 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398.2
  %polly.access.call2399.load.2 = load double, double* %polly.access.call2399.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2273.2 = add nuw nsw i64 %polly.indvar393.2, 2400
  %polly.access.Packed_MemRef_call2273.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.2
  store double %polly.access.call2399.load.2, double* %polly.access.Packed_MemRef_call2273.2, align 8
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar_next394.2, %indvars.iv851
  br i1 %exitcond853.2.not, label %polly.loop_header390.3, label %polly.loop_header390.2

polly.loop_header390.3:                           ; preds = %polly.loop_header390.2, %polly.loop_header390.3
  %polly.indvar393.3 = phi i64 [ %polly.indvar_next394.3, %polly.loop_header390.3 ], [ 0, %polly.loop_header390.2 ]
  %319 = add nuw nsw i64 %polly.indvar393.3, %141
  %polly.access.mul.call2397.3 = mul nuw nsw i64 %319, 1000
  %polly.access.add.call2398.3 = add nuw nsw i64 %140, %polly.access.mul.call2397.3
  %polly.access.call2399.3 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398.3
  %polly.access.call2399.load.3 = load double, double* %polly.access.call2399.3, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2273.3 = add nuw nsw i64 %polly.indvar393.3, 3600
  %polly.access.Packed_MemRef_call2273.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273.3
  store double %polly.access.call2399.load.3, double* %polly.access.Packed_MemRef_call2273.3, align 8
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %exitcond853.3.not = icmp eq i64 %polly.indvar_next394.3, %indvars.iv851
  br i1 %exitcond853.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_header390.3
  %320 = mul nsw i64 %polly.indvar381, -64
  %321 = shl nsw i64 %polly.indvar381, 4
  br label %polly.loop_header400

polly.loop_header418.1:                           ; preds = %polly.loop_header418.1, %polly.loop_exit420
  %polly.indvar421.1 = phi i64 [ 0, %polly.loop_exit420 ], [ %polly.indvar_next422.1, %polly.loop_header418.1 ]
  %322 = add nuw nsw i64 %polly.indvar421.1, %141
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %160
  %scevgep424.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep424425.1 = bitcast i8* %scevgep424.1 to double*
  %_p_scalar_426.1 = load double, double* %scevgep424425.1, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.1 = fmul fast double %_p_scalar_430.1, %_p_scalar_426.1
  %polly.access.add.Packed_MemRef_call2273432.1 = add nuw nsw i64 %polly.indvar421.1, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.1
  %_p_scalar_434.1 = load double, double* %polly.access.Packed_MemRef_call2273433.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_434.1
  %325 = shl i64 %322, 3
  %326 = add nuw nsw i64 %325, %150
  %scevgep438.1 = getelementptr i8, i8* %call, i64 %326
  %scevgep438439.1 = bitcast i8* %scevgep438.1 to double*
  %_p_scalar_440.1 = load double, double* %scevgep438439.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_440.1
  store double %p_add42.i79.1, double* %scevgep438439.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next422.1 = add nuw nsw i64 %polly.indvar421.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar421.1, %smin859.1
  br i1 %exitcond860.1.not, label %polly.loop_exit420.1, label %polly.loop_header418.1

polly.loop_exit420.1:                             ; preds = %polly.loop_header418.1
  %polly.access.add.Packed_MemRef_call2273428.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %152
  %polly.access.Packed_MemRef_call2273429.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.2
  %_p_scalar_430.2 = load double, double* %polly.access.Packed_MemRef_call2273429.2, align 8
  %327 = add nuw nsw i64 %153, %160
  %scevgep435.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep435436.2 = bitcast i8* %scevgep435.2 to double*
  %_p_scalar_437.2 = load double, double* %scevgep435436.2, align 8, !alias.scope !81, !noalias !87
  br label %polly.loop_header418.2

polly.loop_header418.2:                           ; preds = %polly.loop_header418.2, %polly.loop_exit420.1
  %polly.indvar421.2 = phi i64 [ 0, %polly.loop_exit420.1 ], [ %polly.indvar_next422.2, %polly.loop_header418.2 ]
  %328 = add nuw nsw i64 %polly.indvar421.2, %141
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %160
  %scevgep424.2 = getelementptr i8, i8* %call1, i64 %330
  %scevgep424425.2 = bitcast i8* %scevgep424.2 to double*
  %_p_scalar_426.2 = load double, double* %scevgep424425.2, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.2 = fmul fast double %_p_scalar_430.2, %_p_scalar_426.2
  %polly.access.add.Packed_MemRef_call2273432.2 = add nuw nsw i64 %polly.indvar421.2, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.2
  %_p_scalar_434.2 = load double, double* %polly.access.Packed_MemRef_call2273433.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_437.2, %_p_scalar_434.2
  %331 = shl i64 %328, 3
  %332 = add nuw nsw i64 %331, %154
  %scevgep438.2 = getelementptr i8, i8* %call, i64 %332
  %scevgep438439.2 = bitcast i8* %scevgep438.2 to double*
  %_p_scalar_440.2 = load double, double* %scevgep438439.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_440.2
  store double %p_add42.i79.2, double* %scevgep438439.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next422.2 = add nuw nsw i64 %polly.indvar421.2, 1
  %exitcond860.2.not = icmp eq i64 %polly.indvar421.2, %smin859.2
  br i1 %exitcond860.2.not, label %polly.loop_exit420.2, label %polly.loop_header418.2

polly.loop_exit420.2:                             ; preds = %polly.loop_header418.2
  %polly.access.add.Packed_MemRef_call2273428.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %156
  %polly.access.Packed_MemRef_call2273429.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.3
  %_p_scalar_430.3 = load double, double* %polly.access.Packed_MemRef_call2273429.3, align 8
  %333 = add nuw nsw i64 %157, %160
  %scevgep435.3 = getelementptr i8, i8* %call1, i64 %333
  %scevgep435436.3 = bitcast i8* %scevgep435.3 to double*
  %_p_scalar_437.3 = load double, double* %scevgep435436.3, align 8, !alias.scope !81, !noalias !87
  br label %polly.loop_header418.3

polly.loop_header418.3:                           ; preds = %polly.loop_header418.3, %polly.loop_exit420.2
  %polly.indvar421.3 = phi i64 [ 0, %polly.loop_exit420.2 ], [ %polly.indvar_next422.3, %polly.loop_header418.3 ]
  %334 = add nuw nsw i64 %polly.indvar421.3, %141
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %160
  %scevgep424.3 = getelementptr i8, i8* %call1, i64 %336
  %scevgep424425.3 = bitcast i8* %scevgep424.3 to double*
  %_p_scalar_426.3 = load double, double* %scevgep424425.3, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.3 = fmul fast double %_p_scalar_430.3, %_p_scalar_426.3
  %polly.access.add.Packed_MemRef_call2273432.3 = add nuw nsw i64 %polly.indvar421.3, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.3
  %_p_scalar_434.3 = load double, double* %polly.access.Packed_MemRef_call2273433.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_437.3, %_p_scalar_434.3
  %337 = shl i64 %334, 3
  %338 = add nuw nsw i64 %337, %158
  %scevgep438.3 = getelementptr i8, i8* %call, i64 %338
  %scevgep438439.3 = bitcast i8* %scevgep438.3 to double*
  %_p_scalar_440.3 = load double, double* %scevgep438439.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_440.3
  store double %p_add42.i79.3, double* %scevgep438439.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next422.3 = add nuw nsw i64 %polly.indvar421.3, 1
  %exitcond860.3.not = icmp eq i64 %polly.indvar421.3, %smin859.3
  br i1 %exitcond860.3.not, label %polly.loop_exit420.3, label %polly.loop_header418.3

polly.loop_exit420.3:                             ; preds = %polly.loop_header418.3
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next410, 4
  br i1 %exitcond862.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header563.1:                           ; preds = %polly.loop_header563, %polly.loop_header563.1
  %polly.indvar566.1 = phi i64 [ %polly.indvar_next567.1, %polly.loop_header563.1 ], [ 0, %polly.loop_header563 ]
  %339 = add nuw nsw i64 %polly.indvar566.1, %181
  %polly.access.mul.call2570.1 = mul nuw nsw i64 %339, 1000
  %polly.access.add.call2571.1 = add nuw nsw i64 %178, %polly.access.mul.call2570.1
  %polly.access.call2572.1 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571.1
  %polly.access.call2572.load.1 = load double, double* %polly.access.call2572.1, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2446.1 = add nuw nsw i64 %polly.indvar566.1, 1200
  %polly.access.Packed_MemRef_call2446.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446.1
  store double %polly.access.call2572.load.1, double* %polly.access.Packed_MemRef_call2446.1, align 8
  %polly.indvar_next567.1 = add nuw nsw i64 %polly.indvar566.1, 1
  %exitcond870.1.not = icmp eq i64 %polly.indvar_next567.1, %indvars.iv868
  br i1 %exitcond870.1.not, label %polly.loop_header563.2, label %polly.loop_header563.1

polly.loop_header563.2:                           ; preds = %polly.loop_header563.1, %polly.loop_header563.2
  %polly.indvar566.2 = phi i64 [ %polly.indvar_next567.2, %polly.loop_header563.2 ], [ 0, %polly.loop_header563.1 ]
  %340 = add nuw nsw i64 %polly.indvar566.2, %181
  %polly.access.mul.call2570.2 = mul nuw nsw i64 %340, 1000
  %polly.access.add.call2571.2 = add nuw nsw i64 %179, %polly.access.mul.call2570.2
  %polly.access.call2572.2 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571.2
  %polly.access.call2572.load.2 = load double, double* %polly.access.call2572.2, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2446.2 = add nuw nsw i64 %polly.indvar566.2, 2400
  %polly.access.Packed_MemRef_call2446.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446.2
  store double %polly.access.call2572.load.2, double* %polly.access.Packed_MemRef_call2446.2, align 8
  %polly.indvar_next567.2 = add nuw nsw i64 %polly.indvar566.2, 1
  %exitcond870.2.not = icmp eq i64 %polly.indvar_next567.2, %indvars.iv868
  br i1 %exitcond870.2.not, label %polly.loop_header563.3, label %polly.loop_header563.2

polly.loop_header563.3:                           ; preds = %polly.loop_header563.2, %polly.loop_header563.3
  %polly.indvar566.3 = phi i64 [ %polly.indvar_next567.3, %polly.loop_header563.3 ], [ 0, %polly.loop_header563.2 ]
  %341 = add nuw nsw i64 %polly.indvar566.3, %181
  %polly.access.mul.call2570.3 = mul nuw nsw i64 %341, 1000
  %polly.access.add.call2571.3 = add nuw nsw i64 %180, %polly.access.mul.call2570.3
  %polly.access.call2572.3 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571.3
  %polly.access.call2572.load.3 = load double, double* %polly.access.call2572.3, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2446.3 = add nuw nsw i64 %polly.indvar566.3, 3600
  %polly.access.Packed_MemRef_call2446.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446.3
  store double %polly.access.call2572.load.3, double* %polly.access.Packed_MemRef_call2446.3, align 8
  %polly.indvar_next567.3 = add nuw nsw i64 %polly.indvar566.3, 1
  %exitcond870.3.not = icmp eq i64 %polly.indvar_next567.3, %indvars.iv868
  br i1 %exitcond870.3.not, label %polly.loop_exit565.3, label %polly.loop_header563.3

polly.loop_exit565.3:                             ; preds = %polly.loop_header563.3
  %342 = mul nsw i64 %polly.indvar554, -64
  %343 = shl nsw i64 %polly.indvar554, 4
  br label %polly.loop_header573

polly.loop_header591.1:                           ; preds = %polly.loop_header591.1, %polly.loop_exit593
  %polly.indvar594.1 = phi i64 [ 0, %polly.loop_exit593 ], [ %polly.indvar_next595.1, %polly.loop_header591.1 ]
  %344 = add nuw nsw i64 %polly.indvar594.1, %181
  %345 = mul nuw nsw i64 %344, 8000
  %346 = add nuw nsw i64 %345, %200
  %scevgep597.1 = getelementptr i8, i8* %call1, i64 %346
  %scevgep597598.1 = bitcast i8* %scevgep597.1 to double*
  %_p_scalar_599.1 = load double, double* %scevgep597598.1, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.1 = fmul fast double %_p_scalar_603.1, %_p_scalar_599.1
  %polly.access.add.Packed_MemRef_call2446605.1 = add nuw nsw i64 %polly.indvar594.1, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.1
  %_p_scalar_607.1 = load double, double* %polly.access.Packed_MemRef_call2446606.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_610.1, %_p_scalar_607.1
  %347 = shl i64 %344, 3
  %348 = add nuw nsw i64 %347, %190
  %scevgep611.1 = getelementptr i8, i8* %call, i64 %348
  %scevgep611612.1 = bitcast i8* %scevgep611.1 to double*
  %_p_scalar_613.1 = load double, double* %scevgep611612.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_613.1
  store double %p_add42.i.1, double* %scevgep611612.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next595.1 = add nuw nsw i64 %polly.indvar594.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar594.1, %smin876.1
  br i1 %exitcond877.1.not, label %polly.loop_exit593.1, label %polly.loop_header591.1

polly.loop_exit593.1:                             ; preds = %polly.loop_header591.1
  %polly.access.add.Packed_MemRef_call2446601.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %192
  %polly.access.Packed_MemRef_call2446602.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.2
  %_p_scalar_603.2 = load double, double* %polly.access.Packed_MemRef_call2446602.2, align 8
  %349 = add nuw nsw i64 %193, %200
  %scevgep608.2 = getelementptr i8, i8* %call1, i64 %349
  %scevgep608609.2 = bitcast i8* %scevgep608.2 to double*
  %_p_scalar_610.2 = load double, double* %scevgep608609.2, align 8, !alias.scope !91, !noalias !97
  br label %polly.loop_header591.2

polly.loop_header591.2:                           ; preds = %polly.loop_header591.2, %polly.loop_exit593.1
  %polly.indvar594.2 = phi i64 [ 0, %polly.loop_exit593.1 ], [ %polly.indvar_next595.2, %polly.loop_header591.2 ]
  %350 = add nuw nsw i64 %polly.indvar594.2, %181
  %351 = mul nuw nsw i64 %350, 8000
  %352 = add nuw nsw i64 %351, %200
  %scevgep597.2 = getelementptr i8, i8* %call1, i64 %352
  %scevgep597598.2 = bitcast i8* %scevgep597.2 to double*
  %_p_scalar_599.2 = load double, double* %scevgep597598.2, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.2 = fmul fast double %_p_scalar_603.2, %_p_scalar_599.2
  %polly.access.add.Packed_MemRef_call2446605.2 = add nuw nsw i64 %polly.indvar594.2, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.2
  %_p_scalar_607.2 = load double, double* %polly.access.Packed_MemRef_call2446606.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_610.2, %_p_scalar_607.2
  %353 = shl i64 %350, 3
  %354 = add nuw nsw i64 %353, %194
  %scevgep611.2 = getelementptr i8, i8* %call, i64 %354
  %scevgep611612.2 = bitcast i8* %scevgep611.2 to double*
  %_p_scalar_613.2 = load double, double* %scevgep611612.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_613.2
  store double %p_add42.i.2, double* %scevgep611612.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next595.2 = add nuw nsw i64 %polly.indvar594.2, 1
  %exitcond877.2.not = icmp eq i64 %polly.indvar594.2, %smin876.2
  br i1 %exitcond877.2.not, label %polly.loop_exit593.2, label %polly.loop_header591.2

polly.loop_exit593.2:                             ; preds = %polly.loop_header591.2
  %polly.access.add.Packed_MemRef_call2446601.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %196
  %polly.access.Packed_MemRef_call2446602.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.3
  %_p_scalar_603.3 = load double, double* %polly.access.Packed_MemRef_call2446602.3, align 8
  %355 = add nuw nsw i64 %197, %200
  %scevgep608.3 = getelementptr i8, i8* %call1, i64 %355
  %scevgep608609.3 = bitcast i8* %scevgep608.3 to double*
  %_p_scalar_610.3 = load double, double* %scevgep608609.3, align 8, !alias.scope !91, !noalias !97
  br label %polly.loop_header591.3

polly.loop_header591.3:                           ; preds = %polly.loop_header591.3, %polly.loop_exit593.2
  %polly.indvar594.3 = phi i64 [ 0, %polly.loop_exit593.2 ], [ %polly.indvar_next595.3, %polly.loop_header591.3 ]
  %356 = add nuw nsw i64 %polly.indvar594.3, %181
  %357 = mul nuw nsw i64 %356, 8000
  %358 = add nuw nsw i64 %357, %200
  %scevgep597.3 = getelementptr i8, i8* %call1, i64 %358
  %scevgep597598.3 = bitcast i8* %scevgep597.3 to double*
  %_p_scalar_599.3 = load double, double* %scevgep597598.3, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.3 = fmul fast double %_p_scalar_603.3, %_p_scalar_599.3
  %polly.access.add.Packed_MemRef_call2446605.3 = add nuw nsw i64 %polly.indvar594.3, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.3
  %_p_scalar_607.3 = load double, double* %polly.access.Packed_MemRef_call2446606.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_610.3, %_p_scalar_607.3
  %359 = shl i64 %356, 3
  %360 = add nuw nsw i64 %359, %198
  %scevgep611.3 = getelementptr i8, i8* %call, i64 %360
  %scevgep611612.3 = bitcast i8* %scevgep611.3 to double*
  %_p_scalar_613.3 = load double, double* %scevgep611612.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_613.3
  store double %p_add42.i.3, double* %scevgep611612.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next595.3 = add nuw nsw i64 %polly.indvar594.3, 1
  %exitcond877.3.not = icmp eq i64 %polly.indvar594.3, %smin876.3
  br i1 %exitcond877.3.not, label %polly.loop_exit593.3, label %polly.loop_header591.3

polly.loop_exit593.3:                             ; preds = %polly.loop_header591.3
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next583, 4
  br i1 %exitcond879.not, label %polly.loop_exit581, label %polly.loop_header579
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
!34 = !{!"llvm.loop.tile.size", i32 4}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !56}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.interchange.followup_interchanged", !52}
!52 = distinct !{!52, !12, !23, !47, !53, !54, !55}
!53 = !{!"llvm.data.pack.enable", i1 true}
!54 = !{!"llvm.data.pack.array", !21}
!55 = !{!"llvm.data.pack.allocate", !"malloc"}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = !{!67, !71, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !81, !83}
!87 = !{!78, !82, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !91, !93}
!97 = !{!88, !92, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
