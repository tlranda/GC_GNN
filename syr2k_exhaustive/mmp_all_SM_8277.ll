; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8277.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8277.c"
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
  %scevgep897 = getelementptr i8, i8* %call2, i64 %12
  %scevgep896 = getelementptr i8, i8* %call2, i64 %11
  %scevgep895 = getelementptr i8, i8* %call1, i64 %12
  %scevgep894 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep894, %scevgep897
  %bound1 = icmp ult i8* %scevgep896, %scevgep895
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
  br i1 %exitcond18.not.i, label %vector.ph901, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph901:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert908 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat909 = shufflevector <4 x i64> %broadcast.splatinsert908, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body900

vector.body900:                                   ; preds = %vector.body900, %vector.ph901
  %index902 = phi i64 [ 0, %vector.ph901 ], [ %index.next903, %vector.body900 ]
  %vec.ind906 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph901 ], [ %vec.ind.next907, %vector.body900 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind906, %broadcast.splat909
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index902
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next903 = add i64 %index902, 4
  %vec.ind.next907 = add <4 x i64> %vec.ind906, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next903, 1200
  br i1 %40, label %for.inc41.i, label %vector.body900, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body900
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph901, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check964 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check964, label %for.body3.i46.preheader1041, label %vector.ph965

vector.ph965:                                     ; preds = %for.body3.i46.preheader
  %n.vec967 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next969, %vector.body963 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index968
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next969 = add i64 %index968, 4
  %46 = icmp eq i64 %index.next969, %n.vec967
  br i1 %46, label %middle.block961, label %vector.body963, !llvm.loop !18

middle.block961:                                  ; preds = %vector.body963
  %cmp.n971 = icmp eq i64 %indvars.iv21.i, %n.vec967
  br i1 %cmp.n971, label %for.inc6.i, label %for.body3.i46.preheader1041

for.body3.i46.preheader1041:                      ; preds = %for.body3.i46.preheader, %middle.block961
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec967, %middle.block961 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1041, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1041 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block961, %for.cond1.preheader.i45
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
  %min.iters.check987 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check987, label %for.body3.i60.preheader1039, label %vector.ph988

vector.ph988:                                     ; preds = %for.body3.i60.preheader
  %n.vec990 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph988
  %index991 = phi i64 [ 0, %vector.ph988 ], [ %index.next992, %vector.body986 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index991
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load995 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load995, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next992 = add i64 %index991, 4
  %57 = icmp eq i64 %index.next992, %n.vec990
  br i1 %57, label %middle.block984, label %vector.body986, !llvm.loop !54

middle.block984:                                  ; preds = %vector.body986
  %cmp.n994 = icmp eq i64 %indvars.iv21.i52, %n.vec990
  br i1 %cmp.n994, label %for.inc6.i63, label %for.body3.i60.preheader1039

for.body3.i60.preheader1039:                      ; preds = %for.body3.i60.preheader, %middle.block984
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec990, %middle.block984 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1039, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1039 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block984, %for.cond1.preheader.i54
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
  %min.iters.check1013 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1013, label %for.body3.i99.preheader1037, label %vector.ph1014

vector.ph1014:                                    ; preds = %for.body3.i99.preheader
  %n.vec1016 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1018, %vector.body1012 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1017
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1021 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1021, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1018 = add i64 %index1017, 4
  %68 = icmp eq i64 %index.next1018, %n.vec1016
  br i1 %68, label %middle.block1010, label %vector.body1012, !llvm.loop !56

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1020 = icmp eq i64 %indvars.iv21.i91, %n.vec1016
  br i1 %cmp.n1020, label %for.inc6.i102, label %for.body3.i99.preheader1037

for.body3.i99.preheader1037:                      ; preds = %for.body3.i99.preheader, %middle.block1010
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1016, %middle.block1010 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1037, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1037 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1010, %for.cond1.preheader.i93
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1025 = phi i64 [ %indvar.next1026, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1025, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1027 = icmp ult i64 %88, 4
  br i1 %min.iters.check1027, label %polly.loop_header191.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %polly.loop_header
  %n.vec1030 = and i64 %88, -4
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1024 ]
  %90 = shl nuw nsw i64 %index1031, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1032 = add i64 %index1031, 4
  %95 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %95, label %middle.block1022, label %vector.body1024, !llvm.loop !67

middle.block1022:                                 ; preds = %vector.body1024
  %cmp.n1034 = icmp eq i64 %88, %n.vec1030
  br i1 %cmp.n1034, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1022
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1030, %middle.block1022 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1022
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1026 = add i64 %indvar1025, 1
  br i1 %exitcond802.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond801.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %smin797 = call i64 @llvm.smin.i64(i64 %indvars.iv795, i64 -968)
  %97 = shl nsw i64 %polly.indvar202, 5
  %98 = add nsw i64 %smin797, 999
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -32
  %exitcond800.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond800.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %polly.indvar208, 3
  %100 = add nuw i64 %indvars.iv785, %99
  %101 = shl nuw nsw i64 %100, 4
  %102 = sub i64 %indvars.iv, %101
  %103 = add i64 %indvars.iv789, %101
  %104 = mul nuw nsw i64 %polly.indvar208, 3
  %105 = add nuw nsw i64 %104, %99
  %106 = mul nuw nsw i64 %polly.indvar208, 50
  %107 = mul nsw i64 %polly.indvar208, -50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 3
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -50
  %exitcond799.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond799.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit219 ], [ %103, %polly.loop_header205 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %102, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %105, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv787, i64 0)
  %108 = add i64 %smax, %indvars.iv791
  %109 = shl nsw i64 %polly.indvar214, 4
  %110 = sub nsw i64 %106, %109
  %111 = icmp sgt i64 %110, 0
  %112 = select i1 %111, i64 %110, i64 0
  %polly.loop_guard = icmp slt i64 %112, 16
  br i1 %polly.loop_guard, label %polly.loop_header217.us, label %polly.loop_exit219

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit225.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit225.loopexit.us ], [ 0, %polly.loop_header211 ]
  %113 = add nuw nsw i64 %polly.indvar220.us, %97
  %114 = shl i64 %113, 3
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_exit232.us
  %indvars.iv793 = phi i64 [ %108, %polly.loop_header217.us ], [ %indvars.iv.next794, %polly.loop_exit232.us ]
  %polly.indvar226.us = phi i64 [ %112, %polly.loop_header217.us ], [ %polly.indvar_next227.us, %polly.loop_exit232.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 49)
  %115 = add nuw i64 %polly.indvar226.us, %109
  %116 = add i64 %115, %107
  %polly.loop_guard233.us883 = icmp sgt i64 %116, -1
  br i1 %polly.loop_guard233.us883, label %polly.loop_header230.preheader.us, label %polly.loop_exit232.us

polly.loop_header230.us:                          ; preds = %polly.loop_header230.preheader.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header230.preheader.us ]
  %117 = add nuw nsw i64 %polly.indvar234.us, %106
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %114
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %119
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %119
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %124
  %scevgep249.us = getelementptr i8, i8* %call, i64 %121
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.us, label %polly.loop_header230.us

polly.loop_exit232.us:                            ; preds = %polly.loop_header230.us, %polly.loop_header223.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %polly.loop_cond228.us = icmp ult i64 %polly.indvar226.us, 15
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  br i1 %polly.loop_cond228.us, label %polly.loop_header223.us, label %polly.loop_exit225.loopexit.us

polly.loop_header230.preheader.us:                ; preds = %polly.loop_header223.us
  %122 = mul i64 %115, 8000
  %123 = add i64 %122, %114
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %123
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !66, !noalias !71
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %123
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !65, !noalias !70
  %124 = mul i64 %115, 9600
  br label %polly.loop_header230.us

polly.loop_exit225.loopexit.us:                   ; preds = %polly.loop_exit232.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond798.not = icmp eq i64 %polly.indvar220.us, %98
  br i1 %exitcond798.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit225.loopexit.us, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 74
  %indvars.iv.next788 = add i64 %indvars.iv787, -16
  %indvars.iv.next792 = add i64 %indvars.iv791, 16
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar999 = phi i64 [ %indvar.next1000, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %125 = add i64 %indvar999, 1
  %126 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check1001 = icmp ult i64 %125, 4
  br i1 %min.iters.check1001, label %polly.loop_header344.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %polly.loop_header338
  %n.vec1004 = and i64 %125, -4
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1006, %vector.body998 ]
  %127 = shl nuw nsw i64 %index1005, 3
  %128 = getelementptr i8, i8* %scevgep350, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1009 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !72, !noalias !74
  %130 = fmul fast <4 x double> %wide.load1009, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !72, !noalias !74
  %index.next1006 = add i64 %index1005, 4
  %132 = icmp eq i64 %index.next1006, %n.vec1004
  br i1 %132, label %middle.block996, label %vector.body998, !llvm.loop !77

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1008 = icmp eq i64 %125, %n.vec1004
  br i1 %cmp.n1008, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block996
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1004, %middle.block996 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block996
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next1000 = add i64 %indvar999, 1
  br i1 %exitcond825.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %133
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond824.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !78

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 -968)
  %134 = shl nsw i64 %polly.indvar357, 5
  %135 = add nsw i64 %smin820, 999
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -32
  %exitcond823.not = icmp eq i64 %polly.indvar_next358, 32
  br i1 %exitcond823.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %136 = lshr i64 %polly.indvar363, 3
  %137 = add nuw i64 %indvars.iv805, %136
  %138 = shl nuw nsw i64 %137, 4
  %139 = sub i64 %indvars.iv803, %138
  %140 = add i64 %indvars.iv810, %138
  %141 = mul nuw nsw i64 %polly.indvar363, 3
  %142 = add nuw nsw i64 %141, %136
  %143 = mul nuw nsw i64 %polly.indvar363, 50
  %144 = mul nsw i64 %polly.indvar363, -50
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 50
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 3
  %indvars.iv.next811 = add nsw i64 %indvars.iv810, -50
  %exitcond822.not = icmp eq i64 %polly.indvar_next364, 24
  br i1 %exitcond822.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header360
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit375 ], [ %140, %polly.loop_header360 ]
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit375 ], [ %139, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ %142, %polly.loop_header360 ]
  %smax809 = call i64 @llvm.smax.i64(i64 %indvars.iv807, i64 0)
  %145 = add i64 %smax809, %indvars.iv812
  %146 = shl nsw i64 %polly.indvar370, 4
  %147 = sub nsw i64 %143, %146
  %148 = icmp sgt i64 %147, 0
  %149 = select i1 %148, i64 %147, i64 0
  %polly.loop_guard383 = icmp slt i64 %149, 16
  br i1 %polly.loop_guard383, label %polly.loop_header373.us, label %polly.loop_exit375

polly.loop_header373.us:                          ; preds = %polly.loop_header367, %polly.loop_exit382.loopexit.us
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.loopexit.us ], [ 0, %polly.loop_header367 ]
  %150 = add nuw nsw i64 %polly.indvar376.us, %134
  %151 = shl i64 %150, 3
  br label %polly.loop_header380.us

polly.loop_header380.us:                          ; preds = %polly.loop_header373.us, %polly.loop_exit390.us
  %indvars.iv814 = phi i64 [ %145, %polly.loop_header373.us ], [ %indvars.iv.next815, %polly.loop_exit390.us ]
  %polly.indvar384.us = phi i64 [ %149, %polly.loop_header373.us ], [ %polly.indvar_next385.us, %polly.loop_exit390.us ]
  %smin816 = call i64 @llvm.smin.i64(i64 %indvars.iv814, i64 49)
  %152 = add nuw i64 %polly.indvar384.us, %146
  %153 = add i64 %152, %144
  %polly.loop_guard391.us884 = icmp sgt i64 %153, -1
  br i1 %polly.loop_guard391.us884, label %polly.loop_header388.preheader.us, label %polly.loop_exit390.us

polly.loop_header388.us:                          ; preds = %polly.loop_header388.preheader.us, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header388.preheader.us ]
  %154 = add nuw nsw i64 %polly.indvar392.us, %143
  %155 = mul nuw nsw i64 %154, 8000
  %156 = add nuw nsw i64 %155, %151
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %156
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %156
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %157 = shl i64 %154, 3
  %158 = add i64 %157, %161
  %scevgep407.us = getelementptr i8, i8* %call, i64 %158
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond817.not = icmp eq i64 %polly.indvar392.us, %smin816
  br i1 %exitcond817.not, label %polly.loop_exit390.us, label %polly.loop_header388.us

polly.loop_exit390.us:                            ; preds = %polly.loop_header388.us, %polly.loop_header380.us
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %polly.loop_cond386.us = icmp ult i64 %polly.indvar384.us, 15
  %indvars.iv.next815 = add i64 %indvars.iv814, 1
  br i1 %polly.loop_cond386.us, label %polly.loop_header380.us, label %polly.loop_exit382.loopexit.us

polly.loop_header388.preheader.us:                ; preds = %polly.loop_header380.us
  %159 = mul i64 %152, 8000
  %160 = add i64 %159, %151
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %160
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !76, !noalias !80
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %160
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !75, !noalias !79
  %161 = mul i64 %152, 9600
  br label %polly.loop_header388.us

polly.loop_exit382.loopexit.us:                   ; preds = %polly.loop_exit390.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %exitcond821.not = icmp eq i64 %polly.indvar376.us, %135
  br i1 %exitcond821.not, label %polly.loop_exit375, label %polly.loop_header373.us

polly.loop_exit375:                               ; preds = %polly.loop_exit382.loopexit.us, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %polly.loop_cond372 = icmp ult i64 %polly.indvar370, 74
  %indvars.iv.next808 = add i64 %indvars.iv807, -16
  %indvars.iv.next813 = add i64 %indvars.iv812, 16
  br i1 %polly.loop_cond372, label %polly.loop_header367, label %polly.loop_exit369

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check975 = icmp ult i64 %162, 4
  br i1 %min.iters.check975, label %polly.loop_header502.preheader, label %vector.ph976

vector.ph976:                                     ; preds = %polly.loop_header496
  %n.vec978 = and i64 %162, -4
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next980, %vector.body974 ]
  %164 = shl nuw nsw i64 %index979, 3
  %165 = getelementptr i8, i8* %scevgep508, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load983 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !81, !noalias !83
  %167 = fmul fast <4 x double> %wide.load983, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !81, !noalias !83
  %index.next980 = add i64 %index979, 4
  %169 = icmp eq i64 %index.next980, %n.vec978
  br i1 %169, label %middle.block972, label %vector.body974, !llvm.loop !86

middle.block972:                                  ; preds = %vector.body974
  %cmp.n982 = icmp eq i64 %162, %n.vec978
  br i1 %cmp.n982, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block972
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec978, %middle.block972 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block972
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond848.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %170 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %170
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond847.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !87

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %smin843 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 -968)
  %171 = shl nsw i64 %polly.indvar515, 5
  %172 = add nsw i64 %smin843, 999
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next516, 32
  br i1 %exitcond846.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %polly.indvar521 = phi i64 [ %polly.indvar_next522, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %173 = lshr i64 %polly.indvar521, 3
  %174 = add nuw i64 %indvars.iv828, %173
  %175 = shl nuw nsw i64 %174, 4
  %176 = sub i64 %indvars.iv826, %175
  %177 = add i64 %indvars.iv833, %175
  %178 = mul nuw nsw i64 %polly.indvar521, 3
  %179 = add nuw nsw i64 %178, %173
  %180 = mul nuw nsw i64 %polly.indvar521, 50
  %181 = mul nsw i64 %polly.indvar521, -50
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit533
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 50
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 3
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -50
  %exitcond845.not = icmp eq i64 %polly.indvar_next522, 24
  br i1 %exitcond845.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit533, %polly.loop_header518
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit533 ], [ %177, %polly.loop_header518 ]
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit533 ], [ %176, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit533 ], [ %179, %polly.loop_header518 ]
  %smax832 = call i64 @llvm.smax.i64(i64 %indvars.iv830, i64 0)
  %182 = add i64 %smax832, %indvars.iv835
  %183 = shl nsw i64 %polly.indvar528, 4
  %184 = sub nsw i64 %180, %183
  %185 = icmp sgt i64 %184, 0
  %186 = select i1 %185, i64 %184, i64 0
  %polly.loop_guard541 = icmp slt i64 %186, 16
  br i1 %polly.loop_guard541, label %polly.loop_header531.us, label %polly.loop_exit533

polly.loop_header531.us:                          ; preds = %polly.loop_header525, %polly.loop_exit540.loopexit.us
  %polly.indvar534.us = phi i64 [ %polly.indvar_next535.us, %polly.loop_exit540.loopexit.us ], [ 0, %polly.loop_header525 ]
  %187 = add nuw nsw i64 %polly.indvar534.us, %171
  %188 = shl i64 %187, 3
  br label %polly.loop_header538.us

polly.loop_header538.us:                          ; preds = %polly.loop_header531.us, %polly.loop_exit548.us
  %indvars.iv837 = phi i64 [ %182, %polly.loop_header531.us ], [ %indvars.iv.next838, %polly.loop_exit548.us ]
  %polly.indvar542.us = phi i64 [ %186, %polly.loop_header531.us ], [ %polly.indvar_next543.us, %polly.loop_exit548.us ]
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 49)
  %189 = add nuw i64 %polly.indvar542.us, %183
  %190 = add i64 %189, %181
  %polly.loop_guard549.us885 = icmp sgt i64 %190, -1
  br i1 %polly.loop_guard549.us885, label %polly.loop_header546.preheader.us, label %polly.loop_exit548.us

polly.loop_header546.us:                          ; preds = %polly.loop_header546.preheader.us, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header546.preheader.us ]
  %191 = add nuw nsw i64 %polly.indvar550.us, %180
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %188
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %193
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %193
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %198
  %scevgep565.us = getelementptr i8, i8* %call, i64 %195
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond840.not = icmp eq i64 %polly.indvar550.us, %smin839
  br i1 %exitcond840.not, label %polly.loop_exit548.us, label %polly.loop_header546.us

polly.loop_exit548.us:                            ; preds = %polly.loop_header546.us, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.us = icmp ult i64 %polly.indvar542.us, 15
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  br i1 %polly.loop_cond544.us, label %polly.loop_header538.us, label %polly.loop_exit540.loopexit.us

polly.loop_header546.preheader.us:                ; preds = %polly.loop_header538.us
  %196 = mul i64 %189, 8000
  %197 = add i64 %196, %188
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %197
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !85, !noalias !89
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %197
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !84, !noalias !88
  %198 = mul i64 %189, 9600
  br label %polly.loop_header546.us

polly.loop_exit540.loopexit.us:                   ; preds = %polly.loop_exit548.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond844.not = icmp eq i64 %polly.indvar534.us, %172
  br i1 %exitcond844.not, label %polly.loop_exit533, label %polly.loop_header531.us

polly.loop_exit533:                               ; preds = %polly.loop_exit540.loopexit.us, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %polly.loop_cond530 = icmp ult i64 %polly.indvar528, 74
  %indvars.iv.next831 = add i64 %indvars.iv830, -16
  %indvars.iv.next836 = add i64 %indvars.iv835, 16
  br i1 %polly.loop_cond530, label %polly.loop_header525, label %polly.loop_exit527

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 -1168)
  %199 = shl nsw i64 %polly.indvar697, 5
  %200 = add nsw i64 %smin875, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next874 = add nsw i64 %indvars.iv873, -32
  %exitcond878.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond878.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %201 = mul nsw i64 %polly.indvar703, -32
  %smin913 = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin913, 1200
  %smin871 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 -1168)
  %203 = shl nsw i64 %polly.indvar703, 5
  %204 = add nsw i64 %smin871, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -32
  %exitcond877.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond877.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %205 = add nuw nsw i64 %polly.indvar709, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph914

vector.ph914:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert921 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat922 = shufflevector <4 x i64> %broadcast.splatinsert921, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph914
  %index915 = phi i64 [ 0, %vector.ph914 ], [ %index.next916, %vector.body912 ]
  %vec.ind919 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph914 ], [ %vec.ind.next920, %vector.body912 ]
  %208 = add nuw nsw <4 x i64> %vec.ind919, %broadcast.splat922
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat924, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !90, !noalias !92
  %index.next916 = add i64 %index915, 4
  %vec.ind.next920 = add <4 x i64> %vec.ind919, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next916, %202
  br i1 %220, label %polly.loop_exit714, label %vector.body912, !llvm.loop !95

polly.loop_exit714:                               ; preds = %vector.body912, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond876.not = icmp eq i64 %polly.indvar709, %200
  br i1 %exitcond876.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %221 = add nuw nsw i64 %polly.indvar715, %203
  %222 = trunc i64 %221 to i32
  %223 = mul i32 %222, %206
  %224 = add i32 %223, 3
  %225 = urem i32 %224, 1200
  %p_conv31.i = sitofp i32 %225 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %226 = shl i64 %221, 3
  %227 = add nuw nsw i64 %226, %207
  %scevgep718 = getelementptr i8, i8* %call, i64 %227
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond872.not = icmp eq i64 %polly.indvar715, %204
  br i1 %exitcond872.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !96

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -1168)
  %228 = shl nsw i64 %polly.indvar724, 5
  %229 = add nsw i64 %smin865, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond868.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv859 = phi i64 [ %indvars.iv.next860, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %230 = mul nsw i64 %polly.indvar730, -32
  %smin928 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin928, 1000
  %smin861 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 -968)
  %232 = shl nsw i64 %polly.indvar730, 5
  %233 = add nsw i64 %smin861, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond867.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %234 = add nuw nsw i64 %polly.indvar736, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check929 = icmp eq i64 %231, 0
  br i1 %min.iters.check929, label %polly.loop_header739, label %vector.ph930

vector.ph930:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert939 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat940 = shufflevector <4 x i64> %broadcast.splatinsert939, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert941 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat942 = shufflevector <4 x i32> %broadcast.splatinsert941, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph930
  %index933 = phi i64 [ 0, %vector.ph930 ], [ %index.next934, %vector.body927 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph930 ], [ %vec.ind.next938, %vector.body927 ]
  %237 = add nuw nsw <4 x i64> %vec.ind937, %broadcast.splat940
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat942, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !94, !noalias !97
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next934, %231
  br i1 %249, label %polly.loop_exit741, label %vector.body927, !llvm.loop !98

polly.loop_exit741:                               ; preds = %vector.body927, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond866.not = icmp eq i64 %polly.indvar736, %229
  br i1 %exitcond866.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %250 = add nuw nsw i64 %polly.indvar742, %232
  %251 = trunc i64 %250 to i32
  %252 = mul i32 %251, %235
  %253 = add i32 %252, 2
  %254 = urem i32 %253, 1000
  %p_conv10.i = sitofp i32 %254 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %255 = shl i64 %250, 3
  %256 = add nuw nsw i64 %255, %236
  %scevgep745 = getelementptr i8, i8* %call2, i64 %256
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond862.not = icmp eq i64 %polly.indvar742, %233
  br i1 %exitcond862.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !99

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -1168)
  %257 = shl nsw i64 %polly.indvar750, 5
  %258 = add nsw i64 %smin855, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond858.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %259 = mul nsw i64 %polly.indvar756, -32
  %smin946 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin946, 1000
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 -968)
  %261 = shl nsw i64 %polly.indvar756, 5
  %262 = add nsw i64 %smin851, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond857.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %263 = add nuw nsw i64 %polly.indvar762, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check947 = icmp eq i64 %260, 0
  br i1 %min.iters.check947, label %polly.loop_header765, label %vector.ph948

vector.ph948:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph948
  %index951 = phi i64 [ 0, %vector.ph948 ], [ %index.next952, %vector.body945 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph948 ], [ %vec.ind.next956, %vector.body945 ]
  %266 = add nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat960, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !93, !noalias !100
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next952, %260
  br i1 %278, label %polly.loop_exit767, label %vector.body945, !llvm.loop !101

polly.loop_exit767:                               ; preds = %vector.body945, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond856.not = icmp eq i64 %polly.indvar762, %258
  br i1 %exitcond856.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %279 = add nuw nsw i64 %polly.indvar768, %261
  %280 = trunc i64 %279 to i32
  %281 = mul i32 %280, %264
  %282 = add i32 %281, 1
  %283 = urem i32 %282, 1200
  %p_conv.i = sitofp i32 %283 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %284 = shl i64 %279, 3
  %285 = add nuw nsw i64 %284, %265
  %scevgep772 = getelementptr i8, i8* %call1, i64 %285
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond852.not = icmp eq i64 %polly.indvar768, %262
  br i1 %exitcond852.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !102
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
!24 = !{!"llvm.loop.tile.size", i32 50}
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
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 16}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !66}
!71 = !{!62, !65}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !76}
!80 = !{!72, !75}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !85}
!89 = !{!81, !84}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !69, !13}
!97 = !{!93, !90}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !69, !13}
!100 = !{!94, !90}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !69, !13}
