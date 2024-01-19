; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7991.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7991.c"
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
  br i1 %57, label %middle.block984, label %vector.body986, !llvm.loop !53

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

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
  br i1 %68, label %middle.block1010, label %vector.body1012, !llvm.loop !55

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1035 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1032 = add i64 %index1031, 4
  %95 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %95, label %middle.block1022, label %vector.body1024, !llvm.loop !66

middle.block1022:                                 ; preds = %vector.body1024
  %cmp.n1034 = icmp eq i64 %88, %n.vec1030
  br i1 %cmp.n1034, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1022
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1030, %middle.block1022 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1022
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1026 = add i64 %indvar1025, 1
  br i1 %exitcond799.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond798.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar202, 5
  %98 = shl i64 %polly.indvar202, 5
  %99 = shl i64 %polly.indvar202, 5
  %100 = or i64 %99, 8
  %101 = shl i64 %polly.indvar202, 5
  %102 = or i64 %101, 16
  %103 = or i64 %97, 24
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond797.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %104 = lshr i64 %polly.indvar208, 1
  %105 = add nuw i64 %indvars.iv785, %104
  %106 = shl nuw nsw i64 %105, 2
  %107 = sub i64 %indvars.iv, %106
  %108 = add i64 %indvars.iv789, %106
  %109 = mul nuw nsw i64 %polly.indvar208, 12
  %110 = add nuw nsw i64 %109, %104
  %111 = mul nuw nsw i64 %polly.indvar208, 50
  %112 = mul nsw i64 %polly.indvar208, -50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 50
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 12
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -50
  %exitcond796.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond796.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit219 ], [ %108, %polly.loop_header205 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %107, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %110, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv787, i64 0)
  %113 = add i64 %smax, %indvars.iv791
  %114 = shl nsw i64 %polly.indvar214, 2
  %115 = sub nsw i64 %111, %114
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %polly.loop_guard = icmp slt i64 %117, 4
  br i1 %polly.loop_guard, label %polly.loop_header223.us, label %polly.loop_exit219

polly.loop_header223.us:                          ; preds = %polly.loop_header211, %polly.loop_exit232.us
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit232.us ], [ %113, %polly.loop_header211 ]
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit232.us ], [ %117, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 49)
  %118 = add nuw i64 %polly.indvar226.us, %114
  %119 = add i64 %118, %112
  %polly.loop_guard233.us874 = icmp sgt i64 %119, -1
  br i1 %polly.loop_guard233.us874, label %polly.loop_header230.preheader.us, label %polly.loop_exit232.us

polly.loop_header230.us:                          ; preds = %polly.loop_header230.preheader.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header230.preheader.us ]
  %120 = add nuw nsw i64 %polly.indvar234.us, %111
  %121 = mul nuw nsw i64 %120, 8000
  %122 = add nuw nsw i64 %121, %98
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %122
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !64, !noalias !69
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %122
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !65, !noalias !70
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %123 = shl i64 %120, 3
  %124 = add i64 %123, %127
  %scevgep249.us = getelementptr i8, i8* %call, i64 %124
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar234.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit232.us, label %polly.loop_header230.us

polly.loop_exit232.us:                            ; preds = %polly.loop_header230.us, %polly.loop_header223.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %polly.loop_cond228.us = icmp ult i64 %polly.indvar226.us, 3
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  br i1 %polly.loop_cond228.us, label %polly.loop_header223.us, label %polly.loop_header223.us.1

polly.loop_header230.preheader.us:                ; preds = %polly.loop_header223.us
  %125 = mul i64 %118, 8000
  %126 = add i64 %125, %98
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %126
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !65, !noalias !70
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %126
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !64, !noalias !69
  %127 = mul i64 %118, 9600
  br label %polly.loop_header230.us

polly.loop_exit219:                               ; preds = %polly.loop_exit232.us.3, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 299
  %indvars.iv.next788 = add i64 %indvars.iv787, -4
  %indvars.iv.next792 = add i64 %indvars.iv791, 4
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar999 = phi i64 [ %indvar.next1000, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %128 = add i64 %indvar999, 1
  %129 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1001 = icmp ult i64 %128, 4
  br i1 %min.iters.check1001, label %polly.loop_header344.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %polly.loop_header338
  %n.vec1004 = and i64 %128, -4
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1006, %vector.body998 ]
  %130 = shl nuw nsw i64 %index1005, 3
  %131 = getelementptr i8, i8* %scevgep350, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1009 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !71, !noalias !73
  %133 = fmul fast <4 x double> %wide.load1009, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !71, !noalias !73
  %index.next1006 = add i64 %index1005, 4
  %135 = icmp eq i64 %index.next1006, %n.vec1004
  br i1 %135, label %middle.block996, label %vector.body998, !llvm.loop !76

middle.block996:                                  ; preds = %vector.body998
  %cmp.n1008 = icmp eq i64 %128, %n.vec1004
  br i1 %cmp.n1008, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block996
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec1004, %middle.block996 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block996
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next1000 = add i64 %indvar999, 1
  br i1 %exitcond819.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %136
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond818.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !77

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %137 = shl i64 %polly.indvar357, 5
  %138 = shl i64 %polly.indvar357, 5
  %139 = shl i64 %polly.indvar357, 5
  %140 = or i64 %139, 8
  %141 = shl i64 %polly.indvar357, 5
  %142 = or i64 %141, 16
  %143 = or i64 %137, 24
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next358, 250
  br i1 %exitcond817.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit369 ], [ 0, %polly.loop_header354 ]
  %144 = lshr i64 %polly.indvar363, 1
  %145 = add nuw i64 %indvars.iv802, %144
  %146 = shl nuw nsw i64 %145, 2
  %147 = sub i64 %indvars.iv800, %146
  %148 = add i64 %indvars.iv807, %146
  %149 = mul nuw nsw i64 %polly.indvar363, 12
  %150 = add nuw nsw i64 %149, %144
  %151 = mul nuw nsw i64 %polly.indvar363, 50
  %152 = mul nsw i64 %polly.indvar363, -50
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 50
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 12
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -50
  %exitcond816.not = icmp eq i64 %polly.indvar_next364, 24
  br i1 %exitcond816.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header360
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit375 ], [ %148, %polly.loop_header360 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit375 ], [ %147, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ %150, %polly.loop_header360 ]
  %smax806 = call i64 @llvm.smax.i64(i64 %indvars.iv804, i64 0)
  %153 = add i64 %smax806, %indvars.iv809
  %154 = shl nsw i64 %polly.indvar370, 2
  %155 = sub nsw i64 %151, %154
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %polly.loop_guard383 = icmp slt i64 %157, 4
  br i1 %polly.loop_guard383, label %polly.loop_header380.us, label %polly.loop_exit375

polly.loop_header380.us:                          ; preds = %polly.loop_header367, %polly.loop_exit390.us
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %polly.loop_exit390.us ], [ %153, %polly.loop_header367 ]
  %polly.indvar384.us = phi i64 [ %polly.indvar_next385.us, %polly.loop_exit390.us ], [ %157, %polly.loop_header367 ]
  %smin813 = call i64 @llvm.smin.i64(i64 %indvars.iv811, i64 49)
  %158 = add nuw i64 %polly.indvar384.us, %154
  %159 = add i64 %158, %152
  %polly.loop_guard391.us878 = icmp sgt i64 %159, -1
  br i1 %polly.loop_guard391.us878, label %polly.loop_header388.preheader.us, label %polly.loop_exit390.us

polly.loop_header388.us:                          ; preds = %polly.loop_header388.preheader.us, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header388.preheader.us ]
  %160 = add nuw nsw i64 %polly.indvar392.us, %151
  %161 = mul nuw nsw i64 %160, 8000
  %162 = add nuw nsw i64 %161, %138
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %162
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !74, !noalias !78
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %162
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !75, !noalias !79
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %163 = shl i64 %160, 3
  %164 = add i64 %163, %167
  %scevgep407.us = getelementptr i8, i8* %call, i64 %164
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond814.not = icmp eq i64 %polly.indvar392.us, %smin813
  br i1 %exitcond814.not, label %polly.loop_exit390.us, label %polly.loop_header388.us

polly.loop_exit390.us:                            ; preds = %polly.loop_header388.us, %polly.loop_header380.us
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %polly.loop_cond386.us = icmp ult i64 %polly.indvar384.us, 3
  %indvars.iv.next812 = add i64 %indvars.iv811, 1
  br i1 %polly.loop_cond386.us, label %polly.loop_header380.us, label %polly.loop_header380.us.1

polly.loop_header388.preheader.us:                ; preds = %polly.loop_header380.us
  %165 = mul i64 %158, 8000
  %166 = add i64 %165, %138
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %166
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !75, !noalias !79
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %166
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !74, !noalias !78
  %167 = mul i64 %158, 9600
  br label %polly.loop_header388.us

polly.loop_exit375:                               ; preds = %polly.loop_exit390.us.3, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %polly.loop_cond372 = icmp ult i64 %polly.indvar370, 299
  %indvars.iv.next805 = add i64 %indvars.iv804, -4
  %indvars.iv.next810 = add i64 %indvars.iv809, 4
  br i1 %polly.loop_cond372, label %polly.loop_header367, label %polly.loop_exit369

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check975 = icmp ult i64 %168, 4
  br i1 %min.iters.check975, label %polly.loop_header502.preheader, label %vector.ph976

vector.ph976:                                     ; preds = %polly.loop_header496
  %n.vec978 = and i64 %168, -4
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph976
  %index979 = phi i64 [ 0, %vector.ph976 ], [ %index.next980, %vector.body974 ]
  %170 = shl nuw nsw i64 %index979, 3
  %171 = getelementptr i8, i8* %scevgep508, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load983 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !80, !noalias !82
  %173 = fmul fast <4 x double> %wide.load983, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !80, !noalias !82
  %index.next980 = add i64 %index979, 4
  %175 = icmp eq i64 %index.next980, %n.vec978
  br i1 %175, label %middle.block972, label %vector.body974, !llvm.loop !85

middle.block972:                                  ; preds = %vector.body974
  %cmp.n982 = icmp eq i64 %168, %n.vec978
  br i1 %cmp.n982, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block972
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec978, %middle.block972 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block972
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond839.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %176
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond838.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !86

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %177 = shl i64 %polly.indvar515, 5
  %178 = shl i64 %polly.indvar515, 5
  %179 = shl i64 %polly.indvar515, 5
  %180 = or i64 %179, 8
  %181 = shl i64 %polly.indvar515, 5
  %182 = or i64 %181, 16
  %183 = or i64 %177, 24
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next516, 250
  br i1 %exitcond837.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %polly.indvar521 = phi i64 [ %polly.indvar_next522, %polly.loop_exit527 ], [ 0, %polly.loop_header512 ]
  %184 = lshr i64 %polly.indvar521, 1
  %185 = add nuw i64 %indvars.iv822, %184
  %186 = shl nuw nsw i64 %185, 2
  %187 = sub i64 %indvars.iv820, %186
  %188 = add i64 %indvars.iv827, %186
  %189 = mul nuw nsw i64 %polly.indvar521, 12
  %190 = add nuw nsw i64 %189, %184
  %191 = mul nuw nsw i64 %polly.indvar521, 50
  %192 = mul nsw i64 %polly.indvar521, -50
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit533
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 50
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 12
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -50
  %exitcond836.not = icmp eq i64 %polly.indvar_next522, 24
  br i1 %exitcond836.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit533, %polly.loop_header518
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit533 ], [ %188, %polly.loop_header518 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit533 ], [ %187, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit533 ], [ %190, %polly.loop_header518 ]
  %smax826 = call i64 @llvm.smax.i64(i64 %indvars.iv824, i64 0)
  %193 = add i64 %smax826, %indvars.iv829
  %194 = shl nsw i64 %polly.indvar528, 2
  %195 = sub nsw i64 %191, %194
  %196 = icmp sgt i64 %195, 0
  %197 = select i1 %196, i64 %195, i64 0
  %polly.loop_guard541 = icmp slt i64 %197, 4
  br i1 %polly.loop_guard541, label %polly.loop_header538.us, label %polly.loop_exit533

polly.loop_header538.us:                          ; preds = %polly.loop_header525, %polly.loop_exit548.us
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit548.us ], [ %193, %polly.loop_header525 ]
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_exit548.us ], [ %197, %polly.loop_header525 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 49)
  %198 = add nuw i64 %polly.indvar542.us, %194
  %199 = add i64 %198, %192
  %polly.loop_guard549.us882 = icmp sgt i64 %199, -1
  br i1 %polly.loop_guard549.us882, label %polly.loop_header546.preheader.us, label %polly.loop_exit548.us

polly.loop_header546.us:                          ; preds = %polly.loop_header546.preheader.us, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header546.preheader.us ]
  %200 = add nuw nsw i64 %polly.indvar550.us, %191
  %201 = mul nuw nsw i64 %200, 8000
  %202 = add nuw nsw i64 %201, %178
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %202
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !83, !noalias !87
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %202
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !84, !noalias !88
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %203 = shl i64 %200, 3
  %204 = add i64 %203, %207
  %scevgep565.us = getelementptr i8, i8* %call, i64 %204
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond834.not = icmp eq i64 %polly.indvar550.us, %smin833
  br i1 %exitcond834.not, label %polly.loop_exit548.us, label %polly.loop_header546.us

polly.loop_exit548.us:                            ; preds = %polly.loop_header546.us, %polly.loop_header538.us
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %polly.loop_cond544.us = icmp ult i64 %polly.indvar542.us, 3
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond544.us, label %polly.loop_header538.us, label %polly.loop_header538.us.1

polly.loop_header546.preheader.us:                ; preds = %polly.loop_header538.us
  %205 = mul i64 %198, 8000
  %206 = add i64 %205, %178
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %206
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !84, !noalias !88
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %206
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !83, !noalias !87
  %207 = mul i64 %198, 9600
  br label %polly.loop_header546.us

polly.loop_exit533:                               ; preds = %polly.loop_exit548.us.3, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %polly.loop_cond530 = icmp ult i64 %polly.indvar528, 299
  %indvars.iv.next825 = add i64 %indvars.iv824, -4
  %indvars.iv.next830 = add i64 %indvars.iv829, 4
  br i1 %polly.loop_cond530, label %polly.loop_header525, label %polly.loop_exit527

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -1168)
  %208 = shl nsw i64 %polly.indvar697, 5
  %209 = add nsw i64 %smin866, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond869.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %210 = mul nsw i64 %polly.indvar703, -32
  %smin913 = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin913, 1200
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 -1168)
  %212 = shl nsw i64 %polly.indvar703, 5
  %213 = add nsw i64 %smin862, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond868.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %214 = add nuw nsw i64 %polly.indvar709, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph914

vector.ph914:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert921 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat922 = shufflevector <4 x i64> %broadcast.splatinsert921, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert923 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat924 = shufflevector <4 x i32> %broadcast.splatinsert923, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph914
  %index915 = phi i64 [ 0, %vector.ph914 ], [ %index.next916, %vector.body912 ]
  %vec.ind919 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph914 ], [ %vec.ind.next920, %vector.body912 ]
  %217 = add nuw nsw <4 x i64> %vec.ind919, %broadcast.splat922
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat924, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !89, !noalias !91
  %index.next916 = add i64 %index915, 4
  %vec.ind.next920 = add <4 x i64> %vec.ind919, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next916, %211
  br i1 %229, label %polly.loop_exit714, label %vector.body912, !llvm.loop !94

polly.loop_exit714:                               ; preds = %vector.body912, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond867.not = icmp eq i64 %polly.indvar709, %209
  br i1 %exitcond867.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %230 = add nuw nsw i64 %polly.indvar715, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep718 = getelementptr i8, i8* %call, i64 %236
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond863.not = icmp eq i64 %polly.indvar715, %213
  br i1 %exitcond863.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !95

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -1168)
  %237 = shl nsw i64 %polly.indvar724, 5
  %238 = add nsw i64 %smin856, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond859.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %239 = mul nsw i64 %polly.indvar730, -32
  %smin928 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin928, 1000
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -968)
  %241 = shl nsw i64 %polly.indvar730, 5
  %242 = add nsw i64 %smin852, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond858.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %243 = add nuw nsw i64 %polly.indvar736, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check929 = icmp eq i64 %240, 0
  br i1 %min.iters.check929, label %polly.loop_header739, label %vector.ph930

vector.ph930:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert939 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat940 = shufflevector <4 x i64> %broadcast.splatinsert939, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert941 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat942 = shufflevector <4 x i32> %broadcast.splatinsert941, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph930
  %index933 = phi i64 [ 0, %vector.ph930 ], [ %index.next934, %vector.body927 ]
  %vec.ind937 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph930 ], [ %vec.ind.next938, %vector.body927 ]
  %246 = add nuw nsw <4 x i64> %vec.ind937, %broadcast.splat940
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat942, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !93, !noalias !96
  %index.next934 = add i64 %index933, 4
  %vec.ind.next938 = add <4 x i64> %vec.ind937, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next934, %240
  br i1 %258, label %polly.loop_exit741, label %vector.body927, !llvm.loop !97

polly.loop_exit741:                               ; preds = %vector.body927, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond857.not = icmp eq i64 %polly.indvar736, %238
  br i1 %exitcond857.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %259 = add nuw nsw i64 %polly.indvar742, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep745 = getelementptr i8, i8* %call2, i64 %265
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond853.not = icmp eq i64 %polly.indvar742, %242
  br i1 %exitcond853.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !98

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %266 = shl nsw i64 %polly.indvar750, 5
  %267 = add nsw i64 %smin846, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond849.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %268 = mul nsw i64 %polly.indvar756, -32
  %smin946 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin946, 1000
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -968)
  %270 = shl nsw i64 %polly.indvar756, 5
  %271 = add nsw i64 %smin842, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond848.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %272 = add nuw nsw i64 %polly.indvar762, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check947 = icmp eq i64 %269, 0
  br i1 %min.iters.check947, label %polly.loop_header765, label %vector.ph948

vector.ph948:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert957 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat958 = shufflevector <4 x i64> %broadcast.splatinsert957, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat960 = shufflevector <4 x i32> %broadcast.splatinsert959, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph948
  %index951 = phi i64 [ 0, %vector.ph948 ], [ %index.next952, %vector.body945 ]
  %vec.ind955 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph948 ], [ %vec.ind.next956, %vector.body945 ]
  %275 = add nuw nsw <4 x i64> %vec.ind955, %broadcast.splat958
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat960, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !92, !noalias !99
  %index.next952 = add i64 %index951, 4
  %vec.ind.next956 = add <4 x i64> %vec.ind955, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next952, %269
  br i1 %287, label %polly.loop_exit767, label %vector.body945, !llvm.loop !100

polly.loop_exit767:                               ; preds = %vector.body945, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond847.not = icmp eq i64 %polly.indvar762, %267
  br i1 %exitcond847.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %288 = add nuw nsw i64 %polly.indvar768, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep772 = getelementptr i8, i8* %call1, i64 %294
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond843.not = icmp eq i64 %polly.indvar768, %271
  br i1 %exitcond843.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !101

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit232.us, %polly.loop_exit232.us.1
  %indvars.iv793.1 = phi i64 [ %indvars.iv.next794.1, %polly.loop_exit232.us.1 ], [ %113, %polly.loop_exit232.us ]
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit232.us.1 ], [ %117, %polly.loop_exit232.us ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1, i64 49)
  %295 = add nuw i64 %polly.indvar226.us.1, %114
  %296 = add i64 %295, %112
  %polly.loop_guard233.us.1875 = icmp sgt i64 %296, -1
  br i1 %polly.loop_guard233.us.1875, label %polly.loop_header230.preheader.us.1, label %polly.loop_exit232.us.1

polly.loop_header230.preheader.us.1:              ; preds = %polly.loop_header223.us.1
  %297 = mul i64 %295, 8000
  %298 = add i64 %297, %100
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %298
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !65, !noalias !70
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %298
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !64, !noalias !69
  %299 = mul i64 %295, 9600
  br label %polly.loop_header230.us.1

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_header230.preheader.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header230.preheader.us.1 ]
  %300 = add nuw nsw i64 %polly.indvar234.us.1, %111
  %301 = mul nuw nsw i64 %300, 8000
  %302 = add nuw nsw i64 %301, %100
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %302
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !64, !noalias !69
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %302
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !65, !noalias !70
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %303 = shl i64 %300, 3
  %304 = add i64 %303, %299
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %304
  %scevgep249250.us.1 = bitcast i8* %scevgep249.us.1 to double*
  %_p_scalar_251.us.1 = load double, double* %scevgep249250.us.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_251.us.1
  store double %p_add42.i118.us.1, double* %scevgep249250.us.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar234.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit232.us.1, label %polly.loop_header230.us.1

polly.loop_exit232.us.1:                          ; preds = %polly.loop_header230.us.1, %polly.loop_header223.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %polly.loop_cond228.us.1 = icmp ult i64 %polly.indvar226.us.1, 3
  %indvars.iv.next794.1 = add i64 %indvars.iv793.1, 1
  br i1 %polly.loop_cond228.us.1, label %polly.loop_header223.us.1, label %polly.loop_header223.us.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit232.us.1, %polly.loop_exit232.us.2
  %indvars.iv793.2 = phi i64 [ %indvars.iv.next794.2, %polly.loop_exit232.us.2 ], [ %113, %polly.loop_exit232.us.1 ]
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit232.us.2 ], [ %117, %polly.loop_exit232.us.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv793.2, i64 49)
  %305 = add nuw i64 %polly.indvar226.us.2, %114
  %306 = add i64 %305, %112
  %polly.loop_guard233.us.2876 = icmp sgt i64 %306, -1
  br i1 %polly.loop_guard233.us.2876, label %polly.loop_header230.preheader.us.2, label %polly.loop_exit232.us.2

polly.loop_header230.preheader.us.2:              ; preds = %polly.loop_header223.us.2
  %307 = mul i64 %305, 8000
  %308 = add i64 %307, %102
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %308
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !65, !noalias !70
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !64, !noalias !69
  %309 = mul i64 %305, 9600
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_header230.preheader.us.2
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_header230.preheader.us.2 ]
  %310 = add nuw nsw i64 %polly.indvar234.us.2, %111
  %311 = mul nuw nsw i64 %310, 8000
  %312 = add nuw nsw i64 %311, %102
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %312
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !64, !noalias !69
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %312
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !65, !noalias !70
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %313 = shl i64 %310, 3
  %314 = add i64 %313, %309
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %314
  %scevgep249250.us.2 = bitcast i8* %scevgep249.us.2 to double*
  %_p_scalar_251.us.2 = load double, double* %scevgep249250.us.2, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_251.us.2
  store double %p_add42.i118.us.2, double* %scevgep249250.us.2, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar234.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit232.us.2, label %polly.loop_header230.us.2

polly.loop_exit232.us.2:                          ; preds = %polly.loop_header230.us.2, %polly.loop_header223.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %polly.loop_cond228.us.2 = icmp ult i64 %polly.indvar226.us.2, 3
  %indvars.iv.next794.2 = add i64 %indvars.iv793.2, 1
  br i1 %polly.loop_cond228.us.2, label %polly.loop_header223.us.2, label %polly.loop_header223.us.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit232.us.2, %polly.loop_exit232.us.3
  %indvars.iv793.3 = phi i64 [ %indvars.iv.next794.3, %polly.loop_exit232.us.3 ], [ %113, %polly.loop_exit232.us.2 ]
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit232.us.3 ], [ %117, %polly.loop_exit232.us.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv793.3, i64 49)
  %315 = add nuw i64 %polly.indvar226.us.3, %114
  %316 = add i64 %315, %112
  %polly.loop_guard233.us.3877 = icmp sgt i64 %316, -1
  br i1 %polly.loop_guard233.us.3877, label %polly.loop_header230.preheader.us.3, label %polly.loop_exit232.us.3

polly.loop_header230.preheader.us.3:              ; preds = %polly.loop_header223.us.3
  %317 = mul i64 %315, 8000
  %318 = add i64 %317, %103
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %318
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !65, !noalias !70
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %318
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !64, !noalias !69
  %319 = mul i64 %315, 9600
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_header230.preheader.us.3
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_header230.preheader.us.3 ]
  %320 = add nuw nsw i64 %polly.indvar234.us.3, %111
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %103
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %322
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !64, !noalias !69
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %322
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !65, !noalias !70
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %323 = shl i64 %320, 3
  %324 = add i64 %323, %319
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %324
  %scevgep249250.us.3 = bitcast i8* %scevgep249.us.3 to double*
  %_p_scalar_251.us.3 = load double, double* %scevgep249250.us.3, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_251.us.3
  store double %p_add42.i118.us.3, double* %scevgep249250.us.3, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next235.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar234.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit232.us.3, label %polly.loop_header230.us.3

polly.loop_exit232.us.3:                          ; preds = %polly.loop_header230.us.3, %polly.loop_header223.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %polly.loop_cond228.us.3 = icmp ult i64 %polly.indvar226.us.3, 3
  %indvars.iv.next794.3 = add i64 %indvars.iv793.3, 1
  br i1 %polly.loop_cond228.us.3, label %polly.loop_header223.us.3, label %polly.loop_exit219

polly.loop_header380.us.1:                        ; preds = %polly.loop_exit390.us, %polly.loop_exit390.us.1
  %indvars.iv811.1 = phi i64 [ %indvars.iv.next812.1, %polly.loop_exit390.us.1 ], [ %153, %polly.loop_exit390.us ]
  %polly.indvar384.us.1 = phi i64 [ %polly.indvar_next385.us.1, %polly.loop_exit390.us.1 ], [ %157, %polly.loop_exit390.us ]
  %smin813.1 = call i64 @llvm.smin.i64(i64 %indvars.iv811.1, i64 49)
  %325 = add nuw i64 %polly.indvar384.us.1, %154
  %326 = add i64 %325, %152
  %polly.loop_guard391.us.1879 = icmp sgt i64 %326, -1
  br i1 %polly.loop_guard391.us.1879, label %polly.loop_header388.preheader.us.1, label %polly.loop_exit390.us.1

polly.loop_header388.preheader.us.1:              ; preds = %polly.loop_header380.us.1
  %327 = mul i64 %325, 8000
  %328 = add i64 %327, %140
  %scevgep398.us.1 = getelementptr i8, i8* %call2, i64 %328
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !75, !noalias !79
  %scevgep404.us.1 = getelementptr i8, i8* %call1, i64 %328
  %scevgep404405.us.1 = bitcast i8* %scevgep404.us.1 to double*
  %_p_scalar_406.us.1 = load double, double* %scevgep404405.us.1, align 8, !alias.scope !74, !noalias !78
  %329 = mul i64 %325, 9600
  br label %polly.loop_header388.us.1

polly.loop_header388.us.1:                        ; preds = %polly.loop_header388.us.1, %polly.loop_header388.preheader.us.1
  %polly.indvar392.us.1 = phi i64 [ %polly.indvar_next393.us.1, %polly.loop_header388.us.1 ], [ 0, %polly.loop_header388.preheader.us.1 ]
  %330 = add nuw nsw i64 %polly.indvar392.us.1, %151
  %331 = mul nuw nsw i64 %330, 8000
  %332 = add nuw nsw i64 %331, %140
  %scevgep395.us.1 = getelementptr i8, i8* %call1, i64 %332
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !74, !noalias !78
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_400.us.1, %_p_scalar_397.us.1
  %scevgep401.us.1 = getelementptr i8, i8* %call2, i64 %332
  %scevgep401402.us.1 = bitcast i8* %scevgep401.us.1 to double*
  %_p_scalar_403.us.1 = load double, double* %scevgep401402.us.1, align 8, !alias.scope !75, !noalias !79
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_406.us.1, %_p_scalar_403.us.1
  %333 = shl i64 %330, 3
  %334 = add i64 %333, %329
  %scevgep407.us.1 = getelementptr i8, i8* %call, i64 %334
  %scevgep407408.us.1 = bitcast i8* %scevgep407.us.1 to double*
  %_p_scalar_409.us.1 = load double, double* %scevgep407408.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_409.us.1
  store double %p_add42.i79.us.1, double* %scevgep407408.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next393.us.1 = add nuw nsw i64 %polly.indvar392.us.1, 1
  %exitcond814.1.not = icmp eq i64 %polly.indvar392.us.1, %smin813.1
  br i1 %exitcond814.1.not, label %polly.loop_exit390.us.1, label %polly.loop_header388.us.1

polly.loop_exit390.us.1:                          ; preds = %polly.loop_header388.us.1, %polly.loop_header380.us.1
  %polly.indvar_next385.us.1 = add nuw nsw i64 %polly.indvar384.us.1, 1
  %polly.loop_cond386.us.1 = icmp ult i64 %polly.indvar384.us.1, 3
  %indvars.iv.next812.1 = add i64 %indvars.iv811.1, 1
  br i1 %polly.loop_cond386.us.1, label %polly.loop_header380.us.1, label %polly.loop_header380.us.2

polly.loop_header380.us.2:                        ; preds = %polly.loop_exit390.us.1, %polly.loop_exit390.us.2
  %indvars.iv811.2 = phi i64 [ %indvars.iv.next812.2, %polly.loop_exit390.us.2 ], [ %153, %polly.loop_exit390.us.1 ]
  %polly.indvar384.us.2 = phi i64 [ %polly.indvar_next385.us.2, %polly.loop_exit390.us.2 ], [ %157, %polly.loop_exit390.us.1 ]
  %smin813.2 = call i64 @llvm.smin.i64(i64 %indvars.iv811.2, i64 49)
  %335 = add nuw i64 %polly.indvar384.us.2, %154
  %336 = add i64 %335, %152
  %polly.loop_guard391.us.2880 = icmp sgt i64 %336, -1
  br i1 %polly.loop_guard391.us.2880, label %polly.loop_header388.preheader.us.2, label %polly.loop_exit390.us.2

polly.loop_header388.preheader.us.2:              ; preds = %polly.loop_header380.us.2
  %337 = mul i64 %335, 8000
  %338 = add i64 %337, %142
  %scevgep398.us.2 = getelementptr i8, i8* %call2, i64 %338
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !75, !noalias !79
  %scevgep404.us.2 = getelementptr i8, i8* %call1, i64 %338
  %scevgep404405.us.2 = bitcast i8* %scevgep404.us.2 to double*
  %_p_scalar_406.us.2 = load double, double* %scevgep404405.us.2, align 8, !alias.scope !74, !noalias !78
  %339 = mul i64 %335, 9600
  br label %polly.loop_header388.us.2

polly.loop_header388.us.2:                        ; preds = %polly.loop_header388.us.2, %polly.loop_header388.preheader.us.2
  %polly.indvar392.us.2 = phi i64 [ %polly.indvar_next393.us.2, %polly.loop_header388.us.2 ], [ 0, %polly.loop_header388.preheader.us.2 ]
  %340 = add nuw nsw i64 %polly.indvar392.us.2, %151
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %142
  %scevgep395.us.2 = getelementptr i8, i8* %call1, i64 %342
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !74, !noalias !78
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_400.us.2, %_p_scalar_397.us.2
  %scevgep401.us.2 = getelementptr i8, i8* %call2, i64 %342
  %scevgep401402.us.2 = bitcast i8* %scevgep401.us.2 to double*
  %_p_scalar_403.us.2 = load double, double* %scevgep401402.us.2, align 8, !alias.scope !75, !noalias !79
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_406.us.2, %_p_scalar_403.us.2
  %343 = shl i64 %340, 3
  %344 = add i64 %343, %339
  %scevgep407.us.2 = getelementptr i8, i8* %call, i64 %344
  %scevgep407408.us.2 = bitcast i8* %scevgep407.us.2 to double*
  %_p_scalar_409.us.2 = load double, double* %scevgep407408.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_409.us.2
  store double %p_add42.i79.us.2, double* %scevgep407408.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next393.us.2 = add nuw nsw i64 %polly.indvar392.us.2, 1
  %exitcond814.2.not = icmp eq i64 %polly.indvar392.us.2, %smin813.2
  br i1 %exitcond814.2.not, label %polly.loop_exit390.us.2, label %polly.loop_header388.us.2

polly.loop_exit390.us.2:                          ; preds = %polly.loop_header388.us.2, %polly.loop_header380.us.2
  %polly.indvar_next385.us.2 = add nuw nsw i64 %polly.indvar384.us.2, 1
  %polly.loop_cond386.us.2 = icmp ult i64 %polly.indvar384.us.2, 3
  %indvars.iv.next812.2 = add i64 %indvars.iv811.2, 1
  br i1 %polly.loop_cond386.us.2, label %polly.loop_header380.us.2, label %polly.loop_header380.us.3

polly.loop_header380.us.3:                        ; preds = %polly.loop_exit390.us.2, %polly.loop_exit390.us.3
  %indvars.iv811.3 = phi i64 [ %indvars.iv.next812.3, %polly.loop_exit390.us.3 ], [ %153, %polly.loop_exit390.us.2 ]
  %polly.indvar384.us.3 = phi i64 [ %polly.indvar_next385.us.3, %polly.loop_exit390.us.3 ], [ %157, %polly.loop_exit390.us.2 ]
  %smin813.3 = call i64 @llvm.smin.i64(i64 %indvars.iv811.3, i64 49)
  %345 = add nuw i64 %polly.indvar384.us.3, %154
  %346 = add i64 %345, %152
  %polly.loop_guard391.us.3881 = icmp sgt i64 %346, -1
  br i1 %polly.loop_guard391.us.3881, label %polly.loop_header388.preheader.us.3, label %polly.loop_exit390.us.3

polly.loop_header388.preheader.us.3:              ; preds = %polly.loop_header380.us.3
  %347 = mul i64 %345, 8000
  %348 = add i64 %347, %143
  %scevgep398.us.3 = getelementptr i8, i8* %call2, i64 %348
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !75, !noalias !79
  %scevgep404.us.3 = getelementptr i8, i8* %call1, i64 %348
  %scevgep404405.us.3 = bitcast i8* %scevgep404.us.3 to double*
  %_p_scalar_406.us.3 = load double, double* %scevgep404405.us.3, align 8, !alias.scope !74, !noalias !78
  %349 = mul i64 %345, 9600
  br label %polly.loop_header388.us.3

polly.loop_header388.us.3:                        ; preds = %polly.loop_header388.us.3, %polly.loop_header388.preheader.us.3
  %polly.indvar392.us.3 = phi i64 [ %polly.indvar_next393.us.3, %polly.loop_header388.us.3 ], [ 0, %polly.loop_header388.preheader.us.3 ]
  %350 = add nuw nsw i64 %polly.indvar392.us.3, %151
  %351 = mul nuw nsw i64 %350, 8000
  %352 = add nuw nsw i64 %351, %143
  %scevgep395.us.3 = getelementptr i8, i8* %call1, i64 %352
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !74, !noalias !78
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_400.us.3, %_p_scalar_397.us.3
  %scevgep401.us.3 = getelementptr i8, i8* %call2, i64 %352
  %scevgep401402.us.3 = bitcast i8* %scevgep401.us.3 to double*
  %_p_scalar_403.us.3 = load double, double* %scevgep401402.us.3, align 8, !alias.scope !75, !noalias !79
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_406.us.3, %_p_scalar_403.us.3
  %353 = shl i64 %350, 3
  %354 = add i64 %353, %349
  %scevgep407.us.3 = getelementptr i8, i8* %call, i64 %354
  %scevgep407408.us.3 = bitcast i8* %scevgep407.us.3 to double*
  %_p_scalar_409.us.3 = load double, double* %scevgep407408.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_409.us.3
  store double %p_add42.i79.us.3, double* %scevgep407408.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next393.us.3 = add nuw nsw i64 %polly.indvar392.us.3, 1
  %exitcond814.3.not = icmp eq i64 %polly.indvar392.us.3, %smin813.3
  br i1 %exitcond814.3.not, label %polly.loop_exit390.us.3, label %polly.loop_header388.us.3

polly.loop_exit390.us.3:                          ; preds = %polly.loop_header388.us.3, %polly.loop_header380.us.3
  %polly.indvar_next385.us.3 = add nuw nsw i64 %polly.indvar384.us.3, 1
  %polly.loop_cond386.us.3 = icmp ult i64 %polly.indvar384.us.3, 3
  %indvars.iv.next812.3 = add i64 %indvars.iv811.3, 1
  br i1 %polly.loop_cond386.us.3, label %polly.loop_header380.us.3, label %polly.loop_exit375

polly.loop_header538.us.1:                        ; preds = %polly.loop_exit548.us, %polly.loop_exit548.us.1
  %indvars.iv831.1 = phi i64 [ %indvars.iv.next832.1, %polly.loop_exit548.us.1 ], [ %193, %polly.loop_exit548.us ]
  %polly.indvar542.us.1 = phi i64 [ %polly.indvar_next543.us.1, %polly.loop_exit548.us.1 ], [ %197, %polly.loop_exit548.us ]
  %smin833.1 = call i64 @llvm.smin.i64(i64 %indvars.iv831.1, i64 49)
  %355 = add nuw i64 %polly.indvar542.us.1, %194
  %356 = add i64 %355, %192
  %polly.loop_guard549.us.1883 = icmp sgt i64 %356, -1
  br i1 %polly.loop_guard549.us.1883, label %polly.loop_header546.preheader.us.1, label %polly.loop_exit548.us.1

polly.loop_header546.preheader.us.1:              ; preds = %polly.loop_header538.us.1
  %357 = mul i64 %355, 8000
  %358 = add i64 %357, %180
  %scevgep556.us.1 = getelementptr i8, i8* %call2, i64 %358
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !84, !noalias !88
  %scevgep562.us.1 = getelementptr i8, i8* %call1, i64 %358
  %scevgep562563.us.1 = bitcast i8* %scevgep562.us.1 to double*
  %_p_scalar_564.us.1 = load double, double* %scevgep562563.us.1, align 8, !alias.scope !83, !noalias !87
  %359 = mul i64 %355, 9600
  br label %polly.loop_header546.us.1

polly.loop_header546.us.1:                        ; preds = %polly.loop_header546.us.1, %polly.loop_header546.preheader.us.1
  %polly.indvar550.us.1 = phi i64 [ %polly.indvar_next551.us.1, %polly.loop_header546.us.1 ], [ 0, %polly.loop_header546.preheader.us.1 ]
  %360 = add nuw nsw i64 %polly.indvar550.us.1, %191
  %361 = mul nuw nsw i64 %360, 8000
  %362 = add nuw nsw i64 %361, %180
  %scevgep553.us.1 = getelementptr i8, i8* %call1, i64 %362
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !83, !noalias !87
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %scevgep559.us.1 = getelementptr i8, i8* %call2, i64 %362
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !84, !noalias !88
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_564.us.1, %_p_scalar_561.us.1
  %363 = shl i64 %360, 3
  %364 = add i64 %363, %359
  %scevgep565.us.1 = getelementptr i8, i8* %call, i64 %364
  %scevgep565566.us.1 = bitcast i8* %scevgep565.us.1 to double*
  %_p_scalar_567.us.1 = load double, double* %scevgep565566.us.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_567.us.1
  store double %p_add42.i.us.1, double* %scevgep565566.us.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next551.us.1 = add nuw nsw i64 %polly.indvar550.us.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar550.us.1, %smin833.1
  br i1 %exitcond834.1.not, label %polly.loop_exit548.us.1, label %polly.loop_header546.us.1

polly.loop_exit548.us.1:                          ; preds = %polly.loop_header546.us.1, %polly.loop_header538.us.1
  %polly.indvar_next543.us.1 = add nuw nsw i64 %polly.indvar542.us.1, 1
  %polly.loop_cond544.us.1 = icmp ult i64 %polly.indvar542.us.1, 3
  %indvars.iv.next832.1 = add i64 %indvars.iv831.1, 1
  br i1 %polly.loop_cond544.us.1, label %polly.loop_header538.us.1, label %polly.loop_header538.us.2

polly.loop_header538.us.2:                        ; preds = %polly.loop_exit548.us.1, %polly.loop_exit548.us.2
  %indvars.iv831.2 = phi i64 [ %indvars.iv.next832.2, %polly.loop_exit548.us.2 ], [ %193, %polly.loop_exit548.us.1 ]
  %polly.indvar542.us.2 = phi i64 [ %polly.indvar_next543.us.2, %polly.loop_exit548.us.2 ], [ %197, %polly.loop_exit548.us.1 ]
  %smin833.2 = call i64 @llvm.smin.i64(i64 %indvars.iv831.2, i64 49)
  %365 = add nuw i64 %polly.indvar542.us.2, %194
  %366 = add i64 %365, %192
  %polly.loop_guard549.us.2884 = icmp sgt i64 %366, -1
  br i1 %polly.loop_guard549.us.2884, label %polly.loop_header546.preheader.us.2, label %polly.loop_exit548.us.2

polly.loop_header546.preheader.us.2:              ; preds = %polly.loop_header538.us.2
  %367 = mul i64 %365, 8000
  %368 = add i64 %367, %182
  %scevgep556.us.2 = getelementptr i8, i8* %call2, i64 %368
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !84, !noalias !88
  %scevgep562.us.2 = getelementptr i8, i8* %call1, i64 %368
  %scevgep562563.us.2 = bitcast i8* %scevgep562.us.2 to double*
  %_p_scalar_564.us.2 = load double, double* %scevgep562563.us.2, align 8, !alias.scope !83, !noalias !87
  %369 = mul i64 %365, 9600
  br label %polly.loop_header546.us.2

polly.loop_header546.us.2:                        ; preds = %polly.loop_header546.us.2, %polly.loop_header546.preheader.us.2
  %polly.indvar550.us.2 = phi i64 [ %polly.indvar_next551.us.2, %polly.loop_header546.us.2 ], [ 0, %polly.loop_header546.preheader.us.2 ]
  %370 = add nuw nsw i64 %polly.indvar550.us.2, %191
  %371 = mul nuw nsw i64 %370, 8000
  %372 = add nuw nsw i64 %371, %182
  %scevgep553.us.2 = getelementptr i8, i8* %call1, i64 %372
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !83, !noalias !87
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %scevgep559.us.2 = getelementptr i8, i8* %call2, i64 %372
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !84, !noalias !88
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_564.us.2, %_p_scalar_561.us.2
  %373 = shl i64 %370, 3
  %374 = add i64 %373, %369
  %scevgep565.us.2 = getelementptr i8, i8* %call, i64 %374
  %scevgep565566.us.2 = bitcast i8* %scevgep565.us.2 to double*
  %_p_scalar_567.us.2 = load double, double* %scevgep565566.us.2, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_567.us.2
  store double %p_add42.i.us.2, double* %scevgep565566.us.2, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next551.us.2 = add nuw nsw i64 %polly.indvar550.us.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar550.us.2, %smin833.2
  br i1 %exitcond834.2.not, label %polly.loop_exit548.us.2, label %polly.loop_header546.us.2

polly.loop_exit548.us.2:                          ; preds = %polly.loop_header546.us.2, %polly.loop_header538.us.2
  %polly.indvar_next543.us.2 = add nuw nsw i64 %polly.indvar542.us.2, 1
  %polly.loop_cond544.us.2 = icmp ult i64 %polly.indvar542.us.2, 3
  %indvars.iv.next832.2 = add i64 %indvars.iv831.2, 1
  br i1 %polly.loop_cond544.us.2, label %polly.loop_header538.us.2, label %polly.loop_header538.us.3

polly.loop_header538.us.3:                        ; preds = %polly.loop_exit548.us.2, %polly.loop_exit548.us.3
  %indvars.iv831.3 = phi i64 [ %indvars.iv.next832.3, %polly.loop_exit548.us.3 ], [ %193, %polly.loop_exit548.us.2 ]
  %polly.indvar542.us.3 = phi i64 [ %polly.indvar_next543.us.3, %polly.loop_exit548.us.3 ], [ %197, %polly.loop_exit548.us.2 ]
  %smin833.3 = call i64 @llvm.smin.i64(i64 %indvars.iv831.3, i64 49)
  %375 = add nuw i64 %polly.indvar542.us.3, %194
  %376 = add i64 %375, %192
  %polly.loop_guard549.us.3885 = icmp sgt i64 %376, -1
  br i1 %polly.loop_guard549.us.3885, label %polly.loop_header546.preheader.us.3, label %polly.loop_exit548.us.3

polly.loop_header546.preheader.us.3:              ; preds = %polly.loop_header538.us.3
  %377 = mul i64 %375, 8000
  %378 = add i64 %377, %183
  %scevgep556.us.3 = getelementptr i8, i8* %call2, i64 %378
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !84, !noalias !88
  %scevgep562.us.3 = getelementptr i8, i8* %call1, i64 %378
  %scevgep562563.us.3 = bitcast i8* %scevgep562.us.3 to double*
  %_p_scalar_564.us.3 = load double, double* %scevgep562563.us.3, align 8, !alias.scope !83, !noalias !87
  %379 = mul i64 %375, 9600
  br label %polly.loop_header546.us.3

polly.loop_header546.us.3:                        ; preds = %polly.loop_header546.us.3, %polly.loop_header546.preheader.us.3
  %polly.indvar550.us.3 = phi i64 [ %polly.indvar_next551.us.3, %polly.loop_header546.us.3 ], [ 0, %polly.loop_header546.preheader.us.3 ]
  %380 = add nuw nsw i64 %polly.indvar550.us.3, %191
  %381 = mul nuw nsw i64 %380, 8000
  %382 = add nuw nsw i64 %381, %183
  %scevgep553.us.3 = getelementptr i8, i8* %call1, i64 %382
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !83, !noalias !87
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %scevgep559.us.3 = getelementptr i8, i8* %call2, i64 %382
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !84, !noalias !88
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_564.us.3, %_p_scalar_561.us.3
  %383 = shl i64 %380, 3
  %384 = add i64 %383, %379
  %scevgep565.us.3 = getelementptr i8, i8* %call, i64 %384
  %scevgep565566.us.3 = bitcast i8* %scevgep565.us.3 to double*
  %_p_scalar_567.us.3 = load double, double* %scevgep565566.us.3, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_567.us.3
  store double %p_add42.i.us.3, double* %scevgep565566.us.3, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next551.us.3 = add nuw nsw i64 %polly.indvar550.us.3, 1
  %exitcond834.3.not = icmp eq i64 %polly.indvar550.us.3, %smin833.3
  br i1 %exitcond834.3.not, label %polly.loop_exit548.us.3, label %polly.loop_header546.us.3

polly.loop_exit548.us.3:                          ; preds = %polly.loop_header546.us.3, %polly.loop_header538.us.3
  %polly.indvar_next543.us.3 = add nuw nsw i64 %polly.indvar542.us.3, 1
  %polly.loop_cond544.us.3 = icmp ult i64 %polly.indvar542.us.3, 3
  %indvars.iv.next832.3 = add i64 %indvars.iv831.3, 1
  br i1 %polly.loop_cond544.us.3, label %polly.loop_header538.us.3, label %polly.loop_exit533
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
!33 = !{!"llvm.loop.tile.size", i32 4}
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
!69 = !{!61, !65}
!70 = !{!61, !64}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !75}
!79 = !{!71, !74}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !84}
!88 = !{!80, !83}
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
