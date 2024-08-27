; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10417.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10417.c"
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
  %scevgep889 = getelementptr i8, i8* %call2, i64 %12
  %scevgep888 = getelementptr i8, i8* %call2, i64 %11
  %scevgep887 = getelementptr i8, i8* %call1, i64 %12
  %scevgep886 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep886, %scevgep889
  %bound1 = icmp ult i8* %scevgep888, %scevgep887
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
  br i1 %exitcond18.not.i, label %vector.ph893, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph893:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert900 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat901 = shufflevector <4 x i64> %broadcast.splatinsert900, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph893
  %index894 = phi i64 [ 0, %vector.ph893 ], [ %index.next895, %vector.body892 ]
  %vec.ind898 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph893 ], [ %vec.ind.next899, %vector.body892 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind898, %broadcast.splat901
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv7.i, i64 %index894
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next895 = add i64 %index894, 4
  %vec.ind.next899 = add <4 x i64> %vec.ind898, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next895, 1200
  br i1 %40, label %for.inc41.i, label %vector.body892, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body892
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph893, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit753
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header495, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check956 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check956, label %for.body3.i46.preheader1033, label %vector.ph957

vector.ph957:                                     ; preds = %for.body3.i46.preheader
  %n.vec959 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph957
  %index960 = phi i64 [ 0, %vector.ph957 ], [ %index.next961, %vector.body955 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %index960
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next961 = add i64 %index960, 4
  %46 = icmp eq i64 %index.next961, %n.vec959
  br i1 %46, label %middle.block953, label %vector.body955, !llvm.loop !18

middle.block953:                                  ; preds = %vector.body955
  %cmp.n963 = icmp eq i64 %indvars.iv21.i, %n.vec959
  br i1 %cmp.n963, label %for.inc6.i, label %for.body3.i46.preheader1033

for.body3.i46.preheader1033:                      ; preds = %for.body3.i46.preheader, %middle.block953
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec959, %middle.block953 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1033, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1033 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block953, %for.cond1.preheader.i45
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
  %min.iters.check979 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check979, label %for.body3.i60.preheader1031, label %vector.ph980

vector.ph980:                                     ; preds = %for.body3.i60.preheader
  %n.vec982 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph980
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next984, %vector.body978 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %index983
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load987 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load987, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next984 = add i64 %index983, 4
  %57 = icmp eq i64 %index.next984, %n.vec982
  br i1 %57, label %middle.block976, label %vector.body978, !llvm.loop !51

middle.block976:                                  ; preds = %vector.body978
  %cmp.n986 = icmp eq i64 %indvars.iv21.i52, %n.vec982
  br i1 %cmp.n986, label %for.inc6.i63, label %for.body3.i60.preheader1031

for.body3.i60.preheader1031:                      ; preds = %for.body3.i60.preheader, %middle.block976
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec982, %middle.block976 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1031, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1031 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block976, %for.cond1.preheader.i54
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
  %min.iters.check1005 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1005, label %for.body3.i99.preheader1029, label %vector.ph1006

vector.ph1006:                                    ; preds = %for.body3.i99.preheader
  %n.vec1008 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %index1009
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1013 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1013, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1010 = add i64 %index1009, 4
  %68 = icmp eq i64 %index.next1010, %n.vec1008
  br i1 %68, label %middle.block1002, label %vector.body1004, !llvm.loop !53

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1012 = icmp eq i64 %indvars.iv21.i91, %n.vec1008
  br i1 %cmp.n1012, label %for.inc6.i102, label %for.body3.i99.preheader1029

for.body3.i99.preheader1029:                      ; preds = %for.body3.i99.preheader, %middle.block1002
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1008, %middle.block1002 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1029, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1029 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call718, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1002, %for.cond1.preheader.i93
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
  %indvar1017 = phi i64 [ %indvar.next1018, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1017, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1019 = icmp ult i64 %88, 4
  br i1 %min.iters.check1019, label %polly.loop_header191.preheader, label %vector.ph1020

vector.ph1020:                                    ; preds = %polly.loop_header
  %n.vec1022 = and i64 %88, -4
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1020
  %index1023 = phi i64 [ 0, %vector.ph1020 ], [ %index.next1024, %vector.body1016 ]
  %90 = shl nuw nsw i64 %index1023, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1027 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1027, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1024 = add i64 %index1023, 4
  %95 = icmp eq i64 %index.next1024, %n.vec1022
  br i1 %95, label %middle.block1014, label %vector.body1016, !llvm.loop !64

middle.block1014:                                 ; preds = %vector.body1016
  %cmp.n1026 = icmp eq i64 %88, %n.vec1022
  br i1 %cmp.n1026, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1014
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1022, %middle.block1014 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1014
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1018 = add i64 %indvar1017, 1
  br i1 %exitcond798.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond797.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit207 ], [ 25, %polly.loop_exit193 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nsw i64 %polly.indvar202, -100
  %98 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 100
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 25
  %exitcond796.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond796.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %99 = shl i64 %polly.indvar208, 6
  %100 = shl i64 %polly.indvar208, 6
  %101 = shl i64 %polly.indvar208, 6
  %102 = or i64 %101, 8
  %103 = shl i64 %polly.indvar208, 6
  %104 = or i64 %103, 16
  %105 = shl i64 %polly.indvar208, 6
  %106 = or i64 %105, 24
  %107 = shl i64 %polly.indvar208, 6
  %108 = or i64 %107, 32
  %109 = shl i64 %polly.indvar208, 6
  %110 = or i64 %109, 40
  %111 = shl i64 %polly.indvar208, 6
  %112 = or i64 %111, 48
  %113 = or i64 %99, 56
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next209, 125
  br i1 %exitcond795.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %indvars.iv785, %polly.loop_header205 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %114 = shl nsw i64 %polly.indvar214, 2
  %115 = add nsw i64 %114, %97
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %polly.loop_guard = icmp slt i64 %117, 100
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv783, i64 0)
  %118 = add i64 %smax, %indvars.iv787
  %119 = sub nsw i64 %98, %114
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, 4
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, -4
  %exitcond794.not = icmp eq i64 %polly.indvar_next215, %indvars.iv792
  br i1 %exitcond794.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv789 = phi i64 [ %118, %polly.loop_header217.preheader ], [ %indvars.iv.next790, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %117, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv789, i64 3)
  %120 = add nsw i64 %polly.indvar220, %119
  %polly.loop_guard233875 = icmp sgt i64 %120, -1
  %121 = add nuw nsw i64 %polly.indvar220, %98
  %122 = mul i64 %121, 8000
  %123 = mul i64 %121, 9600
  br i1 %polly.loop_guard233875, label %polly.loop_header223.us.preheader, label %polly.loop_exit225

polly.loop_header223.us.preheader:                ; preds = %polly.loop_header217
  %124 = add i64 %100, %122
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %124
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us.preheader, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us.preheader ]
  %125 = add nuw nsw i64 %polly.indvar234.us, %114
  %126 = mul nuw nsw i64 %125, 8000
  %127 = add nuw nsw i64 %126, %100
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %127
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %123
  %scevgep249.us = getelementptr i8, i8* %call, i64 %129
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
  %130 = add i64 %102, %122
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %130
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %130
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_exit225:                               ; preds = %polly.loop_header230.us.7, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 99
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar991 = phi i64 [ %indvar.next992, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %131 = add i64 %indvar991, 1
  %132 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check993 = icmp ult i64 %131, 4
  br i1 %min.iters.check993, label %polly.loop_header344.preheader, label %vector.ph994

vector.ph994:                                     ; preds = %polly.loop_header338
  %n.vec996 = and i64 %131, -4
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body990 ]
  %133 = shl nuw nsw i64 %index997, 3
  %134 = getelementptr i8, i8* %scevgep350, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !69, !noalias !71
  %136 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !69, !noalias !71
  %index.next998 = add i64 %index997, 4
  %138 = icmp eq i64 %index.next998, %n.vec996
  br i1 %138, label %middle.block988, label %vector.body990, !llvm.loop !74

middle.block988:                                  ; preds = %vector.body990
  %cmp.n1000 = icmp eq i64 %131, %n.vec996
  br i1 %cmp.n1000, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block988
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec996, %middle.block988 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block988
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next992 = add i64 %indvar991, 1
  br i1 %exitcond819.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %139
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond818.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit362 ], [ 25, %polly.loop_exit346 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %140 = mul nsw i64 %polly.indvar357, -100
  %141 = mul nuw nsw i64 %polly.indvar357, 100
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit368
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next800 = add nsw i64 %indvars.iv799, -100
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 100
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 25
  %exitcond817.not = icmp eq i64 %polly.indvar_next358, 12
  br i1 %exitcond817.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit368 ]
  %142 = shl i64 %polly.indvar363, 6
  %143 = shl i64 %polly.indvar363, 6
  %144 = shl i64 %polly.indvar363, 6
  %145 = or i64 %144, 8
  %146 = shl i64 %polly.indvar363, 6
  %147 = or i64 %146, 16
  %148 = shl i64 %polly.indvar363, 6
  %149 = or i64 %148, 24
  %150 = shl i64 %polly.indvar363, 6
  %151 = or i64 %150, 32
  %152 = shl i64 %polly.indvar363, 6
  %153 = or i64 %152, 40
  %154 = shl i64 %polly.indvar363, 6
  %155 = or i64 %154, 48
  %156 = or i64 %142, 56
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_exit375
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next364, 125
  br i1 %exitcond816.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header366:                             ; preds = %polly.loop_exit375, %polly.loop_header360
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit375 ], [ %indvars.iv804, %polly.loop_header360 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit375 ], [ %indvars.iv799, %polly.loop_header360 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit375 ], [ 0, %polly.loop_header360 ]
  %157 = shl nsw i64 %polly.indvar369, 2
  %158 = add nsw i64 %157, %140
  %159 = icmp sgt i64 %158, 0
  %160 = select i1 %159, i64 %158, i64 0
  %polly.loop_guard376 = icmp slt i64 %160, 100
  br i1 %polly.loop_guard376, label %polly.loop_header373.preheader, label %polly.loop_exit375

polly.loop_header373.preheader:                   ; preds = %polly.loop_header366
  %smax803 = call i64 @llvm.smax.i64(i64 %indvars.iv801, i64 0)
  %161 = add i64 %smax803, %indvars.iv806
  %162 = sub nsw i64 %141, %157
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_exit382, %polly.loop_header366
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, 4
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, -4
  %exitcond815.not = icmp eq i64 %polly.indvar_next370, %indvars.iv813
  br i1 %exitcond815.not, label %polly.loop_exit368, label %polly.loop_header366

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_exit382
  %indvars.iv808 = phi i64 [ %161, %polly.loop_header373.preheader ], [ %indvars.iv.next809, %polly.loop_exit382 ]
  %polly.indvar377 = phi i64 [ %160, %polly.loop_header373.preheader ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %smin810 = call i64 @llvm.smin.i64(i64 %indvars.iv808, i64 3)
  %163 = add nsw i64 %polly.indvar377, %162
  %polly.loop_guard390876 = icmp sgt i64 %163, -1
  %164 = add nuw nsw i64 %polly.indvar377, %141
  %165 = mul i64 %164, 8000
  %166 = mul i64 %164, 9600
  br i1 %polly.loop_guard390876, label %polly.loop_header380.us.preheader, label %polly.loop_exit382

polly.loop_header380.us.preheader:                ; preds = %polly.loop_header373
  %167 = add i64 %143, %165
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us = getelementptr i8, i8* %call1, i64 %167
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us

polly.loop_header387.us:                          ; preds = %polly.loop_header380.us.preheader, %polly.loop_header387.us
  %polly.indvar391.us = phi i64 [ %polly.indvar_next392.us, %polly.loop_header387.us ], [ 0, %polly.loop_header380.us.preheader ]
  %168 = add nuw nsw i64 %polly.indvar391.us, %157
  %169 = mul nuw nsw i64 %168, 8000
  %170 = add nuw nsw i64 %169, %143
  %scevgep394.us = getelementptr i8, i8* %call1, i64 %170
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_399.us, %_p_scalar_396.us
  %scevgep400.us = getelementptr i8, i8* %call2, i64 %170
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_405.us, %_p_scalar_402.us
  %171 = shl i64 %168, 3
  %172 = add i64 %171, %166
  %scevgep406.us = getelementptr i8, i8* %call, i64 %172
  %scevgep406407.us = bitcast i8* %scevgep406.us to double*
  %_p_scalar_408.us = load double, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_408.us
  store double %p_add42.i79.us, double* %scevgep406407.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us = add nuw nsw i64 %polly.indvar391.us, 1
  %exitcond811.not = icmp eq i64 %polly.indvar391.us, %smin810
  br i1 %exitcond811.not, label %polly.loop_exit389.loopexit.us, label %polly.loop_header387.us

polly.loop_exit389.loopexit.us:                   ; preds = %polly.loop_header387.us
  %173 = add i64 %145, %165
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %173
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.1 = getelementptr i8, i8* %call1, i64 %173
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.1

polly.loop_exit382:                               ; preds = %polly.loop_header387.us.7, %polly.loop_header373
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %polly.loop_cond379 = icmp ult i64 %polly.indvar377, 99
  %indvars.iv.next809 = add i64 %indvars.iv808, 1
  br i1 %polly.loop_cond379, label %polly.loop_header373, label %polly.loop_exit375

polly.loop_header495:                             ; preds = %init_array.exit, %polly.loop_exit503
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit503 ], [ 0, %init_array.exit ]
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_exit503 ], [ 1, %init_array.exit ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar498, 9600
  %scevgep507 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check967 = icmp ult i64 %174, 4
  br i1 %min.iters.check967, label %polly.loop_header501.preheader, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header495
  %n.vec970 = and i64 %174, -4
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %176 = shl nuw nsw i64 %index971, 3
  %177 = getelementptr i8, i8* %scevgep507, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load975 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !78, !noalias !80
  %179 = fmul fast <4 x double> %wide.load975, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !78, !noalias !80
  %index.next972 = add i64 %index971, 4
  %181 = icmp eq i64 %index.next972, %n.vec970
  br i1 %181, label %middle.block964, label %vector.body966, !llvm.loop !83

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %174, %n.vec970
  br i1 %cmp.n974, label %polly.loop_exit503, label %polly.loop_header501.preheader

polly.loop_header501.preheader:                   ; preds = %polly.loop_header495, %middle.block964
  %polly.indvar504.ph = phi i64 [ 0, %polly.loop_header495 ], [ %n.vec970, %middle.block964 ]
  br label %polly.loop_header501

polly.loop_exit503:                               ; preds = %polly.loop_header501, %middle.block964
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next499, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond840.not, label %polly.loop_header511, label %polly.loop_header495

polly.loop_header501:                             ; preds = %polly.loop_header501.preheader, %polly.loop_header501
  %polly.indvar504 = phi i64 [ %polly.indvar_next505, %polly.loop_header501 ], [ %polly.indvar504.ph, %polly.loop_header501.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar504, 3
  %scevgep508 = getelementptr i8, i8* %scevgep507, i64 %182
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_510, 1.200000e+00
  store double %p_mul.i, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next505 = add nuw nsw i64 %polly.indvar504, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next505, %polly.indvar498
  br i1 %exitcond839.not, label %polly.loop_exit503, label %polly.loop_header501, !llvm.loop !84

polly.loop_header511:                             ; preds = %polly.loop_exit503, %polly.loop_exit519
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit519 ], [ 25, %polly.loop_exit503 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_exit503 ]
  %183 = mul nsw i64 %polly.indvar514, -100
  %184 = mul nuw nsw i64 %polly.indvar514, 100
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -100
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 100
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 25
  %exitcond838.not = icmp eq i64 %polly.indvar_next515, 12
  br i1 %exitcond838.not, label %kernel_syr2k.exit, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %185 = shl i64 %polly.indvar520, 6
  %186 = shl i64 %polly.indvar520, 6
  %187 = shl i64 %polly.indvar520, 6
  %188 = or i64 %187, 8
  %189 = shl i64 %polly.indvar520, 6
  %190 = or i64 %189, 16
  %191 = shl i64 %polly.indvar520, 6
  %192 = or i64 %191, 24
  %193 = shl i64 %polly.indvar520, 6
  %194 = or i64 %193, 32
  %195 = shl i64 %polly.indvar520, 6
  %196 = or i64 %195, 40
  %197 = shl i64 %polly.indvar520, 6
  %198 = or i64 %197, 48
  %199 = or i64 %185, 56
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit532
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next521, 125
  br i1 %exitcond837.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit532, %polly.loop_header517
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit532 ], [ %indvars.iv825, %polly.loop_header517 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit532 ], [ %indvars.iv820, %polly.loop_header517 ]
  %polly.indvar526 = phi i64 [ %polly.indvar_next527, %polly.loop_exit532 ], [ 0, %polly.loop_header517 ]
  %200 = shl nsw i64 %polly.indvar526, 2
  %201 = add nsw i64 %200, %183
  %202 = icmp sgt i64 %201, 0
  %203 = select i1 %202, i64 %201, i64 0
  %polly.loop_guard533 = icmp slt i64 %203, 100
  br i1 %polly.loop_guard533, label %polly.loop_header530.preheader, label %polly.loop_exit532

polly.loop_header530.preheader:                   ; preds = %polly.loop_header523
  %smax824 = call i64 @llvm.smax.i64(i64 %indvars.iv822, i64 0)
  %204 = add i64 %smax824, %indvars.iv827
  %205 = sub nsw i64 %184, %200
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_exit539, %polly.loop_header523
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, 4
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -4
  %exitcond836.not = icmp eq i64 %polly.indvar_next527, %indvars.iv834
  br i1 %exitcond836.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_exit539
  %indvars.iv829 = phi i64 [ %204, %polly.loop_header530.preheader ], [ %indvars.iv.next830, %polly.loop_exit539 ]
  %polly.indvar534 = phi i64 [ %203, %polly.loop_header530.preheader ], [ %polly.indvar_next535, %polly.loop_exit539 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 3)
  %206 = add nsw i64 %polly.indvar534, %205
  %polly.loop_guard547877 = icmp sgt i64 %206, -1
  %207 = add nuw nsw i64 %polly.indvar534, %184
  %208 = mul i64 %207, 8000
  %209 = mul i64 %207, 9600
  br i1 %polly.loop_guard547877, label %polly.loop_header537.us.preheader, label %polly.loop_exit539

polly.loop_header537.us.preheader:                ; preds = %polly.loop_header530
  %210 = add i64 %186, %208
  %scevgep554.us = getelementptr i8, i8* %call2, i64 %210
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us = getelementptr i8, i8* %call1, i64 %210
  %scevgep560561.us = bitcast i8* %scevgep560.us to double*
  %_p_scalar_562.us = load double, double* %scevgep560561.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us

polly.loop_header544.us:                          ; preds = %polly.loop_header537.us.preheader, %polly.loop_header544.us
  %polly.indvar548.us = phi i64 [ %polly.indvar_next549.us, %polly.loop_header544.us ], [ 0, %polly.loop_header537.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar548.us, %200
  %212 = mul nuw nsw i64 %211, 8000
  %213 = add nuw nsw i64 %212, %186
  %scevgep551.us = getelementptr i8, i8* %call1, i64 %213
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %scevgep557.us = getelementptr i8, i8* %call2, i64 %213
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_562.us, %_p_scalar_559.us
  %214 = shl i64 %211, 3
  %215 = add i64 %214, %209
  %scevgep563.us = getelementptr i8, i8* %call, i64 %215
  %scevgep563564.us = bitcast i8* %scevgep563.us to double*
  %_p_scalar_565.us = load double, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_565.us
  store double %p_add42.i.us, double* %scevgep563564.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us = add nuw nsw i64 %polly.indvar548.us, 1
  %exitcond832.not = icmp eq i64 %polly.indvar548.us, %smin831
  br i1 %exitcond832.not, label %polly.loop_exit546.loopexit.us, label %polly.loop_header544.us

polly.loop_exit546.loopexit.us:                   ; preds = %polly.loop_header544.us
  %216 = add i64 %188, %208
  %scevgep554.us.1 = getelementptr i8, i8* %call2, i64 %216
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.1 = getelementptr i8, i8* %call1, i64 %216
  %scevgep560561.us.1 = bitcast i8* %scevgep560.us.1 to double*
  %_p_scalar_562.us.1 = load double, double* %scevgep560561.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.1

polly.loop_exit539:                               ; preds = %polly.loop_header544.us.7, %polly.loop_header530
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %polly.loop_cond536 = icmp ult i64 %polly.indvar534, 99
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  br i1 %polly.loop_cond536, label %polly.loop_header530, label %polly.loop_exit532

polly.loop_header692:                             ; preds = %entry, %polly.loop_exit700
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit700 ], [ 0, %entry ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %entry ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 -1168)
  %217 = shl nsw i64 %polly.indvar695, 5
  %218 = add nsw i64 %smin867, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -32
  %exitcond870.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond870.not, label %polly.loop_header719, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %polly.loop_header692 ]
  %219 = mul nsw i64 %polly.indvar701, -32
  %smin905 = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin905, 1200
  %smin863 = call i64 @llvm.smin.i64(i64 %indvars.iv861, i64 -1168)
  %221 = shl nsw i64 %polly.indvar701, 5
  %222 = add nsw i64 %smin863, 1199
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit712
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next702, 38
  br i1 %exitcond869.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_exit712, %polly.loop_header698
  %polly.indvar707 = phi i64 [ 0, %polly.loop_header698 ], [ %polly.indvar_next708, %polly.loop_exit712 ]
  %223 = add nuw nsw i64 %polly.indvar707, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header710, label %vector.ph906

vector.ph906:                                     ; preds = %polly.loop_header704
  %broadcast.splatinsert913 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat914 = shufflevector <4 x i64> %broadcast.splatinsert913, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert915 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat916 = shufflevector <4 x i32> %broadcast.splatinsert915, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %vector.ph906
  %index907 = phi i64 [ 0, %vector.ph906 ], [ %index.next908, %vector.body904 ]
  %vec.ind911 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph906 ], [ %vec.ind.next912, %vector.body904 ]
  %226 = add nuw nsw <4 x i64> %vec.ind911, %broadcast.splat914
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat916, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !87, !noalias !89
  %index.next908 = add i64 %index907, 4
  %vec.ind.next912 = add <4 x i64> %vec.ind911, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next908, %220
  br i1 %238, label %polly.loop_exit712, label %vector.body904, !llvm.loop !92

polly.loop_exit712:                               ; preds = %vector.body904, %polly.loop_header710
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond868.not = icmp eq i64 %polly.indvar707, %218
  br i1 %exitcond868.not, label %polly.loop_exit706, label %polly.loop_header704

polly.loop_header710:                             ; preds = %polly.loop_header704, %polly.loop_header710
  %polly.indvar713 = phi i64 [ %polly.indvar_next714, %polly.loop_header710 ], [ 0, %polly.loop_header704 ]
  %239 = add nuw nsw i64 %polly.indvar713, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep716 = getelementptr i8, i8* %call, i64 %245
  %scevgep716717 = bitcast i8* %scevgep716 to double*
  store double %p_div33.i, double* %scevgep716717, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next714 = add nuw nsw i64 %polly.indvar713, 1
  %exitcond864.not = icmp eq i64 %polly.indvar713, %222
  br i1 %exitcond864.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !93

polly.loop_header719:                             ; preds = %polly.loop_exit700, %polly.loop_exit727
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_exit700 ]
  %smin857 = call i64 @llvm.smin.i64(i64 %indvars.iv855, i64 -1168)
  %246 = shl nsw i64 %polly.indvar722, 5
  %247 = add nsw i64 %smin857, 1199
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next856 = add nsw i64 %indvars.iv855, -32
  %exitcond860.not = icmp eq i64 %polly.indvar_next723, 38
  br i1 %exitcond860.not, label %polly.loop_header745, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_header719 ]
  %248 = mul nsw i64 %polly.indvar728, -32
  %smin920 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin920, 1000
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 -968)
  %250 = shl nsw i64 %polly.indvar728, 5
  %251 = add nsw i64 %smin853, 999
  br label %polly.loop_header731

polly.loop_exit733:                               ; preds = %polly.loop_exit739
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond859.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_exit739, %polly.loop_header725
  %polly.indvar734 = phi i64 [ 0, %polly.loop_header725 ], [ %polly.indvar_next735, %polly.loop_exit739 ]
  %252 = add nuw nsw i64 %polly.indvar734, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check921 = icmp eq i64 %249, 0
  br i1 %min.iters.check921, label %polly.loop_header737, label %vector.ph922

vector.ph922:                                     ; preds = %polly.loop_header731
  %broadcast.splatinsert931 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat932 = shufflevector <4 x i64> %broadcast.splatinsert931, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert933 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat934 = shufflevector <4 x i32> %broadcast.splatinsert933, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph922
  %index925 = phi i64 [ 0, %vector.ph922 ], [ %index.next926, %vector.body919 ]
  %vec.ind929 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph922 ], [ %vec.ind.next930, %vector.body919 ]
  %255 = add nuw nsw <4 x i64> %vec.ind929, %broadcast.splat932
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat934, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !91, !noalias !94
  %index.next926 = add i64 %index925, 4
  %vec.ind.next930 = add <4 x i64> %vec.ind929, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next926, %249
  br i1 %267, label %polly.loop_exit739, label %vector.body919, !llvm.loop !95

polly.loop_exit739:                               ; preds = %vector.body919, %polly.loop_header737
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond858.not = icmp eq i64 %polly.indvar734, %247
  br i1 %exitcond858.not, label %polly.loop_exit733, label %polly.loop_header731

polly.loop_header737:                             ; preds = %polly.loop_header731, %polly.loop_header737
  %polly.indvar740 = phi i64 [ %polly.indvar_next741, %polly.loop_header737 ], [ 0, %polly.loop_header731 ]
  %268 = add nuw nsw i64 %polly.indvar740, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep743 = getelementptr i8, i8* %call2, i64 %274
  %scevgep743744 = bitcast i8* %scevgep743 to double*
  store double %p_div12.i, double* %scevgep743744, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next741 = add nuw nsw i64 %polly.indvar740, 1
  %exitcond854.not = icmp eq i64 %polly.indvar740, %251
  br i1 %exitcond854.not, label %polly.loop_exit739, label %polly.loop_header737, !llvm.loop !96

polly.loop_header745:                             ; preds = %polly.loop_exit727, %polly.loop_exit753
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_exit727 ]
  %smin847 = call i64 @llvm.smin.i64(i64 %indvars.iv845, i64 -1168)
  %275 = shl nsw i64 %polly.indvar748, 5
  %276 = add nsw i64 %smin847, 1199
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -32
  %exitcond850.not = icmp eq i64 %polly.indvar_next749, 38
  br i1 %exitcond850.not, label %init_array.exit, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_header745 ]
  %277 = mul nsw i64 %polly.indvar754, -32
  %smin938 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin938, 1000
  %smin843 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 -968)
  %279 = shl nsw i64 %polly.indvar754, 5
  %280 = add nsw i64 %smin843, 999
  br label %polly.loop_header757

polly.loop_exit759:                               ; preds = %polly.loop_exit765
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond849.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_exit765, %polly.loop_header751
  %polly.indvar760 = phi i64 [ 0, %polly.loop_header751 ], [ %polly.indvar_next761, %polly.loop_exit765 ]
  %281 = add nuw nsw i64 %polly.indvar760, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check939 = icmp eq i64 %278, 0
  br i1 %min.iters.check939, label %polly.loop_header763, label %vector.ph940

vector.ph940:                                     ; preds = %polly.loop_header757
  %broadcast.splatinsert949 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat950 = shufflevector <4 x i64> %broadcast.splatinsert949, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next944, %vector.body937 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph940 ], [ %vec.ind.next948, %vector.body937 ]
  %284 = add nuw nsw <4 x i64> %vec.ind947, %broadcast.splat950
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat952, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !90, !noalias !97
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next944, %278
  br i1 %296, label %polly.loop_exit765, label %vector.body937, !llvm.loop !98

polly.loop_exit765:                               ; preds = %vector.body937, %polly.loop_header763
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond848.not = icmp eq i64 %polly.indvar760, %276
  br i1 %exitcond848.not, label %polly.loop_exit759, label %polly.loop_header757

polly.loop_header763:                             ; preds = %polly.loop_header757, %polly.loop_header763
  %polly.indvar766 = phi i64 [ %polly.indvar_next767, %polly.loop_header763 ], [ 0, %polly.loop_header757 ]
  %297 = add nuw nsw i64 %polly.indvar766, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep770 = getelementptr i8, i8* %call1, i64 %303
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div.i, double* %scevgep770771, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next767 = add nuw nsw i64 %polly.indvar766, 1
  %exitcond844.not = icmp eq i64 %polly.indvar766, %280
  br i1 %exitcond844.not, label %polly.loop_exit765, label %polly.loop_header763, !llvm.loop !99

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_exit232.loopexit.us
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_exit232.loopexit.us ]
  %304 = add nuw nsw i64 %polly.indvar234.us.1, %114
  %305 = mul nuw nsw i64 %304, 8000
  %306 = add nuw nsw i64 %305, %102
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %306
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %306
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %307 = shl i64 %304, 3
  %308 = add i64 %307, %123
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %308
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
  %309 = add i64 %104, %122
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %309
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %309
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_exit232.loopexit.us.1
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_exit232.loopexit.us.1 ]
  %310 = add nuw nsw i64 %polly.indvar234.us.2, %114
  %311 = mul nuw nsw i64 %310, 8000
  %312 = add nuw nsw i64 %311, %104
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %312
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %312
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %313 = shl i64 %310, 3
  %314 = add i64 %313, %123
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %314
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
  %315 = add i64 %106, %122
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %315
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %315
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_exit232.loopexit.us.2
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_exit232.loopexit.us.2 ]
  %316 = add nuw nsw i64 %polly.indvar234.us.3, %114
  %317 = mul nuw nsw i64 %316, 8000
  %318 = add nuw nsw i64 %317, %106
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %318
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %318
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %319 = shl i64 %316, 3
  %320 = add i64 %319, %123
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %320
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
  %321 = add i64 %108, %122
  %scevgep240.us.4 = getelementptr i8, i8* %call2, i64 %321
  %scevgep240241.us.4 = bitcast i8* %scevgep240.us.4 to double*
  %_p_scalar_242.us.4 = load double, double* %scevgep240241.us.4, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.4 = getelementptr i8, i8* %call1, i64 %321
  %scevgep246247.us.4 = bitcast i8* %scevgep246.us.4 to double*
  %_p_scalar_248.us.4 = load double, double* %scevgep246247.us.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.4

polly.loop_header230.us.4:                        ; preds = %polly.loop_header230.us.4, %polly.loop_exit232.loopexit.us.3
  %polly.indvar234.us.4 = phi i64 [ %polly.indvar_next235.us.4, %polly.loop_header230.us.4 ], [ 0, %polly.loop_exit232.loopexit.us.3 ]
  %322 = add nuw nsw i64 %polly.indvar234.us.4, %114
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %108
  %scevgep237.us.4 = getelementptr i8, i8* %call1, i64 %324
  %scevgep237238.us.4 = bitcast i8* %scevgep237.us.4 to double*
  %_p_scalar_239.us.4 = load double, double* %scevgep237238.us.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_242.us.4, %_p_scalar_239.us.4
  %scevgep243.us.4 = getelementptr i8, i8* %call2, i64 %324
  %scevgep243244.us.4 = bitcast i8* %scevgep243.us.4 to double*
  %_p_scalar_245.us.4 = load double, double* %scevgep243244.us.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_248.us.4, %_p_scalar_245.us.4
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %123
  %scevgep249.us.4 = getelementptr i8, i8* %call, i64 %326
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
  %327 = add i64 %110, %122
  %scevgep240.us.5 = getelementptr i8, i8* %call2, i64 %327
  %scevgep240241.us.5 = bitcast i8* %scevgep240.us.5 to double*
  %_p_scalar_242.us.5 = load double, double* %scevgep240241.us.5, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.5 = getelementptr i8, i8* %call1, i64 %327
  %scevgep246247.us.5 = bitcast i8* %scevgep246.us.5 to double*
  %_p_scalar_248.us.5 = load double, double* %scevgep246247.us.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.5

polly.loop_header230.us.5:                        ; preds = %polly.loop_header230.us.5, %polly.loop_exit232.loopexit.us.4
  %polly.indvar234.us.5 = phi i64 [ %polly.indvar_next235.us.5, %polly.loop_header230.us.5 ], [ 0, %polly.loop_exit232.loopexit.us.4 ]
  %328 = add nuw nsw i64 %polly.indvar234.us.5, %114
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %110
  %scevgep237.us.5 = getelementptr i8, i8* %call1, i64 %330
  %scevgep237238.us.5 = bitcast i8* %scevgep237.us.5 to double*
  %_p_scalar_239.us.5 = load double, double* %scevgep237238.us.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.5 = fmul fast double %_p_scalar_242.us.5, %_p_scalar_239.us.5
  %scevgep243.us.5 = getelementptr i8, i8* %call2, i64 %330
  %scevgep243244.us.5 = bitcast i8* %scevgep243.us.5 to double*
  %_p_scalar_245.us.5 = load double, double* %scevgep243244.us.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.5 = fmul fast double %_p_scalar_248.us.5, %_p_scalar_245.us.5
  %331 = shl i64 %328, 3
  %332 = add i64 %331, %123
  %scevgep249.us.5 = getelementptr i8, i8* %call, i64 %332
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
  %333 = add i64 %112, %122
  %scevgep240.us.6 = getelementptr i8, i8* %call2, i64 %333
  %scevgep240241.us.6 = bitcast i8* %scevgep240.us.6 to double*
  %_p_scalar_242.us.6 = load double, double* %scevgep240241.us.6, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.6 = getelementptr i8, i8* %call1, i64 %333
  %scevgep246247.us.6 = bitcast i8* %scevgep246.us.6 to double*
  %_p_scalar_248.us.6 = load double, double* %scevgep246247.us.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.6

polly.loop_header230.us.6:                        ; preds = %polly.loop_header230.us.6, %polly.loop_exit232.loopexit.us.5
  %polly.indvar234.us.6 = phi i64 [ %polly.indvar_next235.us.6, %polly.loop_header230.us.6 ], [ 0, %polly.loop_exit232.loopexit.us.5 ]
  %334 = add nuw nsw i64 %polly.indvar234.us.6, %114
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %112
  %scevgep237.us.6 = getelementptr i8, i8* %call1, i64 %336
  %scevgep237238.us.6 = bitcast i8* %scevgep237.us.6 to double*
  %_p_scalar_239.us.6 = load double, double* %scevgep237238.us.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.6 = fmul fast double %_p_scalar_242.us.6, %_p_scalar_239.us.6
  %scevgep243.us.6 = getelementptr i8, i8* %call2, i64 %336
  %scevgep243244.us.6 = bitcast i8* %scevgep243.us.6 to double*
  %_p_scalar_245.us.6 = load double, double* %scevgep243244.us.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.6 = fmul fast double %_p_scalar_248.us.6, %_p_scalar_245.us.6
  %337 = shl i64 %334, 3
  %338 = add i64 %337, %123
  %scevgep249.us.6 = getelementptr i8, i8* %call, i64 %338
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
  %339 = add i64 %113, %122
  %scevgep240.us.7 = getelementptr i8, i8* %call2, i64 %339
  %scevgep240241.us.7 = bitcast i8* %scevgep240.us.7 to double*
  %_p_scalar_242.us.7 = load double, double* %scevgep240241.us.7, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.7 = getelementptr i8, i8* %call1, i64 %339
  %scevgep246247.us.7 = bitcast i8* %scevgep246.us.7 to double*
  %_p_scalar_248.us.7 = load double, double* %scevgep246247.us.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.7

polly.loop_header230.us.7:                        ; preds = %polly.loop_header230.us.7, %polly.loop_exit232.loopexit.us.6
  %polly.indvar234.us.7 = phi i64 [ %polly.indvar_next235.us.7, %polly.loop_header230.us.7 ], [ 0, %polly.loop_exit232.loopexit.us.6 ]
  %340 = add nuw nsw i64 %polly.indvar234.us.7, %114
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %113
  %scevgep237.us.7 = getelementptr i8, i8* %call1, i64 %342
  %scevgep237238.us.7 = bitcast i8* %scevgep237.us.7 to double*
  %_p_scalar_239.us.7 = load double, double* %scevgep237238.us.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.7 = fmul fast double %_p_scalar_242.us.7, %_p_scalar_239.us.7
  %scevgep243.us.7 = getelementptr i8, i8* %call2, i64 %342
  %scevgep243244.us.7 = bitcast i8* %scevgep243.us.7 to double*
  %_p_scalar_245.us.7 = load double, double* %scevgep243244.us.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.7 = fmul fast double %_p_scalar_248.us.7, %_p_scalar_245.us.7
  %343 = shl i64 %340, 3
  %344 = add i64 %343, %123
  %scevgep249.us.7 = getelementptr i8, i8* %call, i64 %344
  %scevgep249250.us.7 = bitcast i8* %scevgep249.us.7 to double*
  %_p_scalar_251.us.7 = load double, double* %scevgep249250.us.7, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.7 = fadd fast double %p_mul37.i114.us.7, %p_mul27.i112.us.7
  %p_reass.mul.i117.us.7 = fmul fast double %p_reass.add.i116.us.7, 1.500000e+00
  %p_add42.i118.us.7 = fadd fast double %p_reass.mul.i117.us.7, %_p_scalar_251.us.7
  store double %p_add42.i118.us.7, double* %scevgep249250.us.7, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.7 = add nuw nsw i64 %polly.indvar234.us.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar234.us.7, %smin
  br i1 %exitcond.7.not, label %polly.loop_exit225, label %polly.loop_header230.us.7

polly.loop_header387.us.1:                        ; preds = %polly.loop_header387.us.1, %polly.loop_exit389.loopexit.us
  %polly.indvar391.us.1 = phi i64 [ %polly.indvar_next392.us.1, %polly.loop_header387.us.1 ], [ 0, %polly.loop_exit389.loopexit.us ]
  %345 = add nuw nsw i64 %polly.indvar391.us.1, %157
  %346 = mul nuw nsw i64 %345, 8000
  %347 = add nuw nsw i64 %346, %145
  %scevgep394.us.1 = getelementptr i8, i8* %call1, i64 %347
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_399.us.1, %_p_scalar_396.us.1
  %scevgep400.us.1 = getelementptr i8, i8* %call2, i64 %347
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_405.us.1, %_p_scalar_402.us.1
  %348 = shl i64 %345, 3
  %349 = add i64 %348, %166
  %scevgep406.us.1 = getelementptr i8, i8* %call, i64 %349
  %scevgep406407.us.1 = bitcast i8* %scevgep406.us.1 to double*
  %_p_scalar_408.us.1 = load double, double* %scevgep406407.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_408.us.1
  store double %p_add42.i79.us.1, double* %scevgep406407.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.1 = add nuw nsw i64 %polly.indvar391.us.1, 1
  %exitcond811.1.not = icmp eq i64 %polly.indvar391.us.1, %smin810
  br i1 %exitcond811.1.not, label %polly.loop_exit389.loopexit.us.1, label %polly.loop_header387.us.1

polly.loop_exit389.loopexit.us.1:                 ; preds = %polly.loop_header387.us.1
  %350 = add i64 %147, %165
  %scevgep397.us.2 = getelementptr i8, i8* %call2, i64 %350
  %scevgep397398.us.2 = bitcast i8* %scevgep397.us.2 to double*
  %_p_scalar_399.us.2 = load double, double* %scevgep397398.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.2 = getelementptr i8, i8* %call1, i64 %350
  %scevgep403404.us.2 = bitcast i8* %scevgep403.us.2 to double*
  %_p_scalar_405.us.2 = load double, double* %scevgep403404.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.2

polly.loop_header387.us.2:                        ; preds = %polly.loop_header387.us.2, %polly.loop_exit389.loopexit.us.1
  %polly.indvar391.us.2 = phi i64 [ %polly.indvar_next392.us.2, %polly.loop_header387.us.2 ], [ 0, %polly.loop_exit389.loopexit.us.1 ]
  %351 = add nuw nsw i64 %polly.indvar391.us.2, %157
  %352 = mul nuw nsw i64 %351, 8000
  %353 = add nuw nsw i64 %352, %147
  %scevgep394.us.2 = getelementptr i8, i8* %call1, i64 %353
  %scevgep394395.us.2 = bitcast i8* %scevgep394.us.2 to double*
  %_p_scalar_396.us.2 = load double, double* %scevgep394395.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_399.us.2, %_p_scalar_396.us.2
  %scevgep400.us.2 = getelementptr i8, i8* %call2, i64 %353
  %scevgep400401.us.2 = bitcast i8* %scevgep400.us.2 to double*
  %_p_scalar_402.us.2 = load double, double* %scevgep400401.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_405.us.2, %_p_scalar_402.us.2
  %354 = shl i64 %351, 3
  %355 = add i64 %354, %166
  %scevgep406.us.2 = getelementptr i8, i8* %call, i64 %355
  %scevgep406407.us.2 = bitcast i8* %scevgep406.us.2 to double*
  %_p_scalar_408.us.2 = load double, double* %scevgep406407.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_408.us.2
  store double %p_add42.i79.us.2, double* %scevgep406407.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.2 = add nuw nsw i64 %polly.indvar391.us.2, 1
  %exitcond811.2.not = icmp eq i64 %polly.indvar391.us.2, %smin810
  br i1 %exitcond811.2.not, label %polly.loop_exit389.loopexit.us.2, label %polly.loop_header387.us.2

polly.loop_exit389.loopexit.us.2:                 ; preds = %polly.loop_header387.us.2
  %356 = add i64 %149, %165
  %scevgep397.us.3 = getelementptr i8, i8* %call2, i64 %356
  %scevgep397398.us.3 = bitcast i8* %scevgep397.us.3 to double*
  %_p_scalar_399.us.3 = load double, double* %scevgep397398.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.3 = getelementptr i8, i8* %call1, i64 %356
  %scevgep403404.us.3 = bitcast i8* %scevgep403.us.3 to double*
  %_p_scalar_405.us.3 = load double, double* %scevgep403404.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.3

polly.loop_header387.us.3:                        ; preds = %polly.loop_header387.us.3, %polly.loop_exit389.loopexit.us.2
  %polly.indvar391.us.3 = phi i64 [ %polly.indvar_next392.us.3, %polly.loop_header387.us.3 ], [ 0, %polly.loop_exit389.loopexit.us.2 ]
  %357 = add nuw nsw i64 %polly.indvar391.us.3, %157
  %358 = mul nuw nsw i64 %357, 8000
  %359 = add nuw nsw i64 %358, %149
  %scevgep394.us.3 = getelementptr i8, i8* %call1, i64 %359
  %scevgep394395.us.3 = bitcast i8* %scevgep394.us.3 to double*
  %_p_scalar_396.us.3 = load double, double* %scevgep394395.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_399.us.3, %_p_scalar_396.us.3
  %scevgep400.us.3 = getelementptr i8, i8* %call2, i64 %359
  %scevgep400401.us.3 = bitcast i8* %scevgep400.us.3 to double*
  %_p_scalar_402.us.3 = load double, double* %scevgep400401.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_405.us.3, %_p_scalar_402.us.3
  %360 = shl i64 %357, 3
  %361 = add i64 %360, %166
  %scevgep406.us.3 = getelementptr i8, i8* %call, i64 %361
  %scevgep406407.us.3 = bitcast i8* %scevgep406.us.3 to double*
  %_p_scalar_408.us.3 = load double, double* %scevgep406407.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_408.us.3
  store double %p_add42.i79.us.3, double* %scevgep406407.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.3 = add nuw nsw i64 %polly.indvar391.us.3, 1
  %exitcond811.3.not = icmp eq i64 %polly.indvar391.us.3, %smin810
  br i1 %exitcond811.3.not, label %polly.loop_exit389.loopexit.us.3, label %polly.loop_header387.us.3

polly.loop_exit389.loopexit.us.3:                 ; preds = %polly.loop_header387.us.3
  %362 = add i64 %151, %165
  %scevgep397.us.4 = getelementptr i8, i8* %call2, i64 %362
  %scevgep397398.us.4 = bitcast i8* %scevgep397.us.4 to double*
  %_p_scalar_399.us.4 = load double, double* %scevgep397398.us.4, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.4 = getelementptr i8, i8* %call1, i64 %362
  %scevgep403404.us.4 = bitcast i8* %scevgep403.us.4 to double*
  %_p_scalar_405.us.4 = load double, double* %scevgep403404.us.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.4

polly.loop_header387.us.4:                        ; preds = %polly.loop_header387.us.4, %polly.loop_exit389.loopexit.us.3
  %polly.indvar391.us.4 = phi i64 [ %polly.indvar_next392.us.4, %polly.loop_header387.us.4 ], [ 0, %polly.loop_exit389.loopexit.us.3 ]
  %363 = add nuw nsw i64 %polly.indvar391.us.4, %157
  %364 = mul nuw nsw i64 %363, 8000
  %365 = add nuw nsw i64 %364, %151
  %scevgep394.us.4 = getelementptr i8, i8* %call1, i64 %365
  %scevgep394395.us.4 = bitcast i8* %scevgep394.us.4 to double*
  %_p_scalar_396.us.4 = load double, double* %scevgep394395.us.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_399.us.4, %_p_scalar_396.us.4
  %scevgep400.us.4 = getelementptr i8, i8* %call2, i64 %365
  %scevgep400401.us.4 = bitcast i8* %scevgep400.us.4 to double*
  %_p_scalar_402.us.4 = load double, double* %scevgep400401.us.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_405.us.4, %_p_scalar_402.us.4
  %366 = shl i64 %363, 3
  %367 = add i64 %366, %166
  %scevgep406.us.4 = getelementptr i8, i8* %call, i64 %367
  %scevgep406407.us.4 = bitcast i8* %scevgep406.us.4 to double*
  %_p_scalar_408.us.4 = load double, double* %scevgep406407.us.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_408.us.4
  store double %p_add42.i79.us.4, double* %scevgep406407.us.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.4 = add nuw nsw i64 %polly.indvar391.us.4, 1
  %exitcond811.4.not = icmp eq i64 %polly.indvar391.us.4, %smin810
  br i1 %exitcond811.4.not, label %polly.loop_exit389.loopexit.us.4, label %polly.loop_header387.us.4

polly.loop_exit389.loopexit.us.4:                 ; preds = %polly.loop_header387.us.4
  %368 = add i64 %153, %165
  %scevgep397.us.5 = getelementptr i8, i8* %call2, i64 %368
  %scevgep397398.us.5 = bitcast i8* %scevgep397.us.5 to double*
  %_p_scalar_399.us.5 = load double, double* %scevgep397398.us.5, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.5 = getelementptr i8, i8* %call1, i64 %368
  %scevgep403404.us.5 = bitcast i8* %scevgep403.us.5 to double*
  %_p_scalar_405.us.5 = load double, double* %scevgep403404.us.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.5

polly.loop_header387.us.5:                        ; preds = %polly.loop_header387.us.5, %polly.loop_exit389.loopexit.us.4
  %polly.indvar391.us.5 = phi i64 [ %polly.indvar_next392.us.5, %polly.loop_header387.us.5 ], [ 0, %polly.loop_exit389.loopexit.us.4 ]
  %369 = add nuw nsw i64 %polly.indvar391.us.5, %157
  %370 = mul nuw nsw i64 %369, 8000
  %371 = add nuw nsw i64 %370, %153
  %scevgep394.us.5 = getelementptr i8, i8* %call1, i64 %371
  %scevgep394395.us.5 = bitcast i8* %scevgep394.us.5 to double*
  %_p_scalar_396.us.5 = load double, double* %scevgep394395.us.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.5 = fmul fast double %_p_scalar_399.us.5, %_p_scalar_396.us.5
  %scevgep400.us.5 = getelementptr i8, i8* %call2, i64 %371
  %scevgep400401.us.5 = bitcast i8* %scevgep400.us.5 to double*
  %_p_scalar_402.us.5 = load double, double* %scevgep400401.us.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.5 = fmul fast double %_p_scalar_405.us.5, %_p_scalar_402.us.5
  %372 = shl i64 %369, 3
  %373 = add i64 %372, %166
  %scevgep406.us.5 = getelementptr i8, i8* %call, i64 %373
  %scevgep406407.us.5 = bitcast i8* %scevgep406.us.5 to double*
  %_p_scalar_408.us.5 = load double, double* %scevgep406407.us.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.5 = fadd fast double %p_mul37.i75.us.5, %p_mul27.i73.us.5
  %p_reass.mul.i78.us.5 = fmul fast double %p_reass.add.i77.us.5, 1.500000e+00
  %p_add42.i79.us.5 = fadd fast double %p_reass.mul.i78.us.5, %_p_scalar_408.us.5
  store double %p_add42.i79.us.5, double* %scevgep406407.us.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.5 = add nuw nsw i64 %polly.indvar391.us.5, 1
  %exitcond811.5.not = icmp eq i64 %polly.indvar391.us.5, %smin810
  br i1 %exitcond811.5.not, label %polly.loop_exit389.loopexit.us.5, label %polly.loop_header387.us.5

polly.loop_exit389.loopexit.us.5:                 ; preds = %polly.loop_header387.us.5
  %374 = add i64 %155, %165
  %scevgep397.us.6 = getelementptr i8, i8* %call2, i64 %374
  %scevgep397398.us.6 = bitcast i8* %scevgep397.us.6 to double*
  %_p_scalar_399.us.6 = load double, double* %scevgep397398.us.6, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.6 = getelementptr i8, i8* %call1, i64 %374
  %scevgep403404.us.6 = bitcast i8* %scevgep403.us.6 to double*
  %_p_scalar_405.us.6 = load double, double* %scevgep403404.us.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.6

polly.loop_header387.us.6:                        ; preds = %polly.loop_header387.us.6, %polly.loop_exit389.loopexit.us.5
  %polly.indvar391.us.6 = phi i64 [ %polly.indvar_next392.us.6, %polly.loop_header387.us.6 ], [ 0, %polly.loop_exit389.loopexit.us.5 ]
  %375 = add nuw nsw i64 %polly.indvar391.us.6, %157
  %376 = mul nuw nsw i64 %375, 8000
  %377 = add nuw nsw i64 %376, %155
  %scevgep394.us.6 = getelementptr i8, i8* %call1, i64 %377
  %scevgep394395.us.6 = bitcast i8* %scevgep394.us.6 to double*
  %_p_scalar_396.us.6 = load double, double* %scevgep394395.us.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.6 = fmul fast double %_p_scalar_399.us.6, %_p_scalar_396.us.6
  %scevgep400.us.6 = getelementptr i8, i8* %call2, i64 %377
  %scevgep400401.us.6 = bitcast i8* %scevgep400.us.6 to double*
  %_p_scalar_402.us.6 = load double, double* %scevgep400401.us.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.6 = fmul fast double %_p_scalar_405.us.6, %_p_scalar_402.us.6
  %378 = shl i64 %375, 3
  %379 = add i64 %378, %166
  %scevgep406.us.6 = getelementptr i8, i8* %call, i64 %379
  %scevgep406407.us.6 = bitcast i8* %scevgep406.us.6 to double*
  %_p_scalar_408.us.6 = load double, double* %scevgep406407.us.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.6 = fadd fast double %p_mul37.i75.us.6, %p_mul27.i73.us.6
  %p_reass.mul.i78.us.6 = fmul fast double %p_reass.add.i77.us.6, 1.500000e+00
  %p_add42.i79.us.6 = fadd fast double %p_reass.mul.i78.us.6, %_p_scalar_408.us.6
  store double %p_add42.i79.us.6, double* %scevgep406407.us.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.6 = add nuw nsw i64 %polly.indvar391.us.6, 1
  %exitcond811.6.not = icmp eq i64 %polly.indvar391.us.6, %smin810
  br i1 %exitcond811.6.not, label %polly.loop_exit389.loopexit.us.6, label %polly.loop_header387.us.6

polly.loop_exit389.loopexit.us.6:                 ; preds = %polly.loop_header387.us.6
  %380 = add i64 %156, %165
  %scevgep397.us.7 = getelementptr i8, i8* %call2, i64 %380
  %scevgep397398.us.7 = bitcast i8* %scevgep397.us.7 to double*
  %_p_scalar_399.us.7 = load double, double* %scevgep397398.us.7, align 8, !alias.scope !73, !noalias !76
  %scevgep403.us.7 = getelementptr i8, i8* %call1, i64 %380
  %scevgep403404.us.7 = bitcast i8* %scevgep403.us.7 to double*
  %_p_scalar_405.us.7 = load double, double* %scevgep403404.us.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header387.us.7

polly.loop_header387.us.7:                        ; preds = %polly.loop_header387.us.7, %polly.loop_exit389.loopexit.us.6
  %polly.indvar391.us.7 = phi i64 [ %polly.indvar_next392.us.7, %polly.loop_header387.us.7 ], [ 0, %polly.loop_exit389.loopexit.us.6 ]
  %381 = add nuw nsw i64 %polly.indvar391.us.7, %157
  %382 = mul nuw nsw i64 %381, 8000
  %383 = add nuw nsw i64 %382, %156
  %scevgep394.us.7 = getelementptr i8, i8* %call1, i64 %383
  %scevgep394395.us.7 = bitcast i8* %scevgep394.us.7 to double*
  %_p_scalar_396.us.7 = load double, double* %scevgep394395.us.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.7 = fmul fast double %_p_scalar_399.us.7, %_p_scalar_396.us.7
  %scevgep400.us.7 = getelementptr i8, i8* %call2, i64 %383
  %scevgep400401.us.7 = bitcast i8* %scevgep400.us.7 to double*
  %_p_scalar_402.us.7 = load double, double* %scevgep400401.us.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.7 = fmul fast double %_p_scalar_405.us.7, %_p_scalar_402.us.7
  %384 = shl i64 %381, 3
  %385 = add i64 %384, %166
  %scevgep406.us.7 = getelementptr i8, i8* %call, i64 %385
  %scevgep406407.us.7 = bitcast i8* %scevgep406.us.7 to double*
  %_p_scalar_408.us.7 = load double, double* %scevgep406407.us.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.7 = fadd fast double %p_mul37.i75.us.7, %p_mul27.i73.us.7
  %p_reass.mul.i78.us.7 = fmul fast double %p_reass.add.i77.us.7, 1.500000e+00
  %p_add42.i79.us.7 = fadd fast double %p_reass.mul.i78.us.7, %_p_scalar_408.us.7
  store double %p_add42.i79.us.7, double* %scevgep406407.us.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next392.us.7 = add nuw nsw i64 %polly.indvar391.us.7, 1
  %exitcond811.7.not = icmp eq i64 %polly.indvar391.us.7, %smin810
  br i1 %exitcond811.7.not, label %polly.loop_exit382, label %polly.loop_header387.us.7

polly.loop_header544.us.1:                        ; preds = %polly.loop_header544.us.1, %polly.loop_exit546.loopexit.us
  %polly.indvar548.us.1 = phi i64 [ %polly.indvar_next549.us.1, %polly.loop_header544.us.1 ], [ 0, %polly.loop_exit546.loopexit.us ]
  %386 = add nuw nsw i64 %polly.indvar548.us.1, %200
  %387 = mul nuw nsw i64 %386, 8000
  %388 = add nuw nsw i64 %387, %188
  %scevgep551.us.1 = getelementptr i8, i8* %call1, i64 %388
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %scevgep557.us.1 = getelementptr i8, i8* %call2, i64 %388
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_562.us.1, %_p_scalar_559.us.1
  %389 = shl i64 %386, 3
  %390 = add i64 %389, %209
  %scevgep563.us.1 = getelementptr i8, i8* %call, i64 %390
  %scevgep563564.us.1 = bitcast i8* %scevgep563.us.1 to double*
  %_p_scalar_565.us.1 = load double, double* %scevgep563564.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_565.us.1
  store double %p_add42.i.us.1, double* %scevgep563564.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.1 = add nuw nsw i64 %polly.indvar548.us.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar548.us.1, %smin831
  br i1 %exitcond832.1.not, label %polly.loop_exit546.loopexit.us.1, label %polly.loop_header544.us.1

polly.loop_exit546.loopexit.us.1:                 ; preds = %polly.loop_header544.us.1
  %391 = add i64 %190, %208
  %scevgep554.us.2 = getelementptr i8, i8* %call2, i64 %391
  %scevgep554555.us.2 = bitcast i8* %scevgep554.us.2 to double*
  %_p_scalar_556.us.2 = load double, double* %scevgep554555.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.2 = getelementptr i8, i8* %call1, i64 %391
  %scevgep560561.us.2 = bitcast i8* %scevgep560.us.2 to double*
  %_p_scalar_562.us.2 = load double, double* %scevgep560561.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.2

polly.loop_header544.us.2:                        ; preds = %polly.loop_header544.us.2, %polly.loop_exit546.loopexit.us.1
  %polly.indvar548.us.2 = phi i64 [ %polly.indvar_next549.us.2, %polly.loop_header544.us.2 ], [ 0, %polly.loop_exit546.loopexit.us.1 ]
  %392 = add nuw nsw i64 %polly.indvar548.us.2, %200
  %393 = mul nuw nsw i64 %392, 8000
  %394 = add nuw nsw i64 %393, %190
  %scevgep551.us.2 = getelementptr i8, i8* %call1, i64 %394
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_556.us.2, %_p_scalar_553.us.2
  %scevgep557.us.2 = getelementptr i8, i8* %call2, i64 %394
  %scevgep557558.us.2 = bitcast i8* %scevgep557.us.2 to double*
  %_p_scalar_559.us.2 = load double, double* %scevgep557558.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_562.us.2, %_p_scalar_559.us.2
  %395 = shl i64 %392, 3
  %396 = add i64 %395, %209
  %scevgep563.us.2 = getelementptr i8, i8* %call, i64 %396
  %scevgep563564.us.2 = bitcast i8* %scevgep563.us.2 to double*
  %_p_scalar_565.us.2 = load double, double* %scevgep563564.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_565.us.2
  store double %p_add42.i.us.2, double* %scevgep563564.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.2 = add nuw nsw i64 %polly.indvar548.us.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar548.us.2, %smin831
  br i1 %exitcond832.2.not, label %polly.loop_exit546.loopexit.us.2, label %polly.loop_header544.us.2

polly.loop_exit546.loopexit.us.2:                 ; preds = %polly.loop_header544.us.2
  %397 = add i64 %192, %208
  %scevgep554.us.3 = getelementptr i8, i8* %call2, i64 %397
  %scevgep554555.us.3 = bitcast i8* %scevgep554.us.3 to double*
  %_p_scalar_556.us.3 = load double, double* %scevgep554555.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.3 = getelementptr i8, i8* %call1, i64 %397
  %scevgep560561.us.3 = bitcast i8* %scevgep560.us.3 to double*
  %_p_scalar_562.us.3 = load double, double* %scevgep560561.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.3

polly.loop_header544.us.3:                        ; preds = %polly.loop_header544.us.3, %polly.loop_exit546.loopexit.us.2
  %polly.indvar548.us.3 = phi i64 [ %polly.indvar_next549.us.3, %polly.loop_header544.us.3 ], [ 0, %polly.loop_exit546.loopexit.us.2 ]
  %398 = add nuw nsw i64 %polly.indvar548.us.3, %200
  %399 = mul nuw nsw i64 %398, 8000
  %400 = add nuw nsw i64 %399, %192
  %scevgep551.us.3 = getelementptr i8, i8* %call1, i64 %400
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_556.us.3, %_p_scalar_553.us.3
  %scevgep557.us.3 = getelementptr i8, i8* %call2, i64 %400
  %scevgep557558.us.3 = bitcast i8* %scevgep557.us.3 to double*
  %_p_scalar_559.us.3 = load double, double* %scevgep557558.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_562.us.3, %_p_scalar_559.us.3
  %401 = shl i64 %398, 3
  %402 = add i64 %401, %209
  %scevgep563.us.3 = getelementptr i8, i8* %call, i64 %402
  %scevgep563564.us.3 = bitcast i8* %scevgep563.us.3 to double*
  %_p_scalar_565.us.3 = load double, double* %scevgep563564.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_565.us.3
  store double %p_add42.i.us.3, double* %scevgep563564.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.3 = add nuw nsw i64 %polly.indvar548.us.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar548.us.3, %smin831
  br i1 %exitcond832.3.not, label %polly.loop_exit546.loopexit.us.3, label %polly.loop_header544.us.3

polly.loop_exit546.loopexit.us.3:                 ; preds = %polly.loop_header544.us.3
  %403 = add i64 %194, %208
  %scevgep554.us.4 = getelementptr i8, i8* %call2, i64 %403
  %scevgep554555.us.4 = bitcast i8* %scevgep554.us.4 to double*
  %_p_scalar_556.us.4 = load double, double* %scevgep554555.us.4, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.4 = getelementptr i8, i8* %call1, i64 %403
  %scevgep560561.us.4 = bitcast i8* %scevgep560.us.4 to double*
  %_p_scalar_562.us.4 = load double, double* %scevgep560561.us.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.4

polly.loop_header544.us.4:                        ; preds = %polly.loop_header544.us.4, %polly.loop_exit546.loopexit.us.3
  %polly.indvar548.us.4 = phi i64 [ %polly.indvar_next549.us.4, %polly.loop_header544.us.4 ], [ 0, %polly.loop_exit546.loopexit.us.3 ]
  %404 = add nuw nsw i64 %polly.indvar548.us.4, %200
  %405 = mul nuw nsw i64 %404, 8000
  %406 = add nuw nsw i64 %405, %194
  %scevgep551.us.4 = getelementptr i8, i8* %call1, i64 %406
  %scevgep551552.us.4 = bitcast i8* %scevgep551.us.4 to double*
  %_p_scalar_553.us.4 = load double, double* %scevgep551552.us.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_556.us.4, %_p_scalar_553.us.4
  %scevgep557.us.4 = getelementptr i8, i8* %call2, i64 %406
  %scevgep557558.us.4 = bitcast i8* %scevgep557.us.4 to double*
  %_p_scalar_559.us.4 = load double, double* %scevgep557558.us.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_562.us.4, %_p_scalar_559.us.4
  %407 = shl i64 %404, 3
  %408 = add i64 %407, %209
  %scevgep563.us.4 = getelementptr i8, i8* %call, i64 %408
  %scevgep563564.us.4 = bitcast i8* %scevgep563.us.4 to double*
  %_p_scalar_565.us.4 = load double, double* %scevgep563564.us.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_565.us.4
  store double %p_add42.i.us.4, double* %scevgep563564.us.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.4 = add nuw nsw i64 %polly.indvar548.us.4, 1
  %exitcond832.4.not = icmp eq i64 %polly.indvar548.us.4, %smin831
  br i1 %exitcond832.4.not, label %polly.loop_exit546.loopexit.us.4, label %polly.loop_header544.us.4

polly.loop_exit546.loopexit.us.4:                 ; preds = %polly.loop_header544.us.4
  %409 = add i64 %196, %208
  %scevgep554.us.5 = getelementptr i8, i8* %call2, i64 %409
  %scevgep554555.us.5 = bitcast i8* %scevgep554.us.5 to double*
  %_p_scalar_556.us.5 = load double, double* %scevgep554555.us.5, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.5 = getelementptr i8, i8* %call1, i64 %409
  %scevgep560561.us.5 = bitcast i8* %scevgep560.us.5 to double*
  %_p_scalar_562.us.5 = load double, double* %scevgep560561.us.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.5

polly.loop_header544.us.5:                        ; preds = %polly.loop_header544.us.5, %polly.loop_exit546.loopexit.us.4
  %polly.indvar548.us.5 = phi i64 [ %polly.indvar_next549.us.5, %polly.loop_header544.us.5 ], [ 0, %polly.loop_exit546.loopexit.us.4 ]
  %410 = add nuw nsw i64 %polly.indvar548.us.5, %200
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %196
  %scevgep551.us.5 = getelementptr i8, i8* %call1, i64 %412
  %scevgep551552.us.5 = bitcast i8* %scevgep551.us.5 to double*
  %_p_scalar_553.us.5 = load double, double* %scevgep551552.us.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.5 = fmul fast double %_p_scalar_556.us.5, %_p_scalar_553.us.5
  %scevgep557.us.5 = getelementptr i8, i8* %call2, i64 %412
  %scevgep557558.us.5 = bitcast i8* %scevgep557.us.5 to double*
  %_p_scalar_559.us.5 = load double, double* %scevgep557558.us.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.5 = fmul fast double %_p_scalar_562.us.5, %_p_scalar_559.us.5
  %413 = shl i64 %410, 3
  %414 = add i64 %413, %209
  %scevgep563.us.5 = getelementptr i8, i8* %call, i64 %414
  %scevgep563564.us.5 = bitcast i8* %scevgep563.us.5 to double*
  %_p_scalar_565.us.5 = load double, double* %scevgep563564.us.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.5 = fadd fast double %p_mul37.i.us.5, %p_mul27.i.us.5
  %p_reass.mul.i.us.5 = fmul fast double %p_reass.add.i.us.5, 1.500000e+00
  %p_add42.i.us.5 = fadd fast double %p_reass.mul.i.us.5, %_p_scalar_565.us.5
  store double %p_add42.i.us.5, double* %scevgep563564.us.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.5 = add nuw nsw i64 %polly.indvar548.us.5, 1
  %exitcond832.5.not = icmp eq i64 %polly.indvar548.us.5, %smin831
  br i1 %exitcond832.5.not, label %polly.loop_exit546.loopexit.us.5, label %polly.loop_header544.us.5

polly.loop_exit546.loopexit.us.5:                 ; preds = %polly.loop_header544.us.5
  %415 = add i64 %198, %208
  %scevgep554.us.6 = getelementptr i8, i8* %call2, i64 %415
  %scevgep554555.us.6 = bitcast i8* %scevgep554.us.6 to double*
  %_p_scalar_556.us.6 = load double, double* %scevgep554555.us.6, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.6 = getelementptr i8, i8* %call1, i64 %415
  %scevgep560561.us.6 = bitcast i8* %scevgep560.us.6 to double*
  %_p_scalar_562.us.6 = load double, double* %scevgep560561.us.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.6

polly.loop_header544.us.6:                        ; preds = %polly.loop_header544.us.6, %polly.loop_exit546.loopexit.us.5
  %polly.indvar548.us.6 = phi i64 [ %polly.indvar_next549.us.6, %polly.loop_header544.us.6 ], [ 0, %polly.loop_exit546.loopexit.us.5 ]
  %416 = add nuw nsw i64 %polly.indvar548.us.6, %200
  %417 = mul nuw nsw i64 %416, 8000
  %418 = add nuw nsw i64 %417, %198
  %scevgep551.us.6 = getelementptr i8, i8* %call1, i64 %418
  %scevgep551552.us.6 = bitcast i8* %scevgep551.us.6 to double*
  %_p_scalar_553.us.6 = load double, double* %scevgep551552.us.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.6 = fmul fast double %_p_scalar_556.us.6, %_p_scalar_553.us.6
  %scevgep557.us.6 = getelementptr i8, i8* %call2, i64 %418
  %scevgep557558.us.6 = bitcast i8* %scevgep557.us.6 to double*
  %_p_scalar_559.us.6 = load double, double* %scevgep557558.us.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.6 = fmul fast double %_p_scalar_562.us.6, %_p_scalar_559.us.6
  %419 = shl i64 %416, 3
  %420 = add i64 %419, %209
  %scevgep563.us.6 = getelementptr i8, i8* %call, i64 %420
  %scevgep563564.us.6 = bitcast i8* %scevgep563.us.6 to double*
  %_p_scalar_565.us.6 = load double, double* %scevgep563564.us.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.6 = fadd fast double %p_mul37.i.us.6, %p_mul27.i.us.6
  %p_reass.mul.i.us.6 = fmul fast double %p_reass.add.i.us.6, 1.500000e+00
  %p_add42.i.us.6 = fadd fast double %p_reass.mul.i.us.6, %_p_scalar_565.us.6
  store double %p_add42.i.us.6, double* %scevgep563564.us.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.6 = add nuw nsw i64 %polly.indvar548.us.6, 1
  %exitcond832.6.not = icmp eq i64 %polly.indvar548.us.6, %smin831
  br i1 %exitcond832.6.not, label %polly.loop_exit546.loopexit.us.6, label %polly.loop_header544.us.6

polly.loop_exit546.loopexit.us.6:                 ; preds = %polly.loop_header544.us.6
  %421 = add i64 %199, %208
  %scevgep554.us.7 = getelementptr i8, i8* %call2, i64 %421
  %scevgep554555.us.7 = bitcast i8* %scevgep554.us.7 to double*
  %_p_scalar_556.us.7 = load double, double* %scevgep554555.us.7, align 8, !alias.scope !82, !noalias !85
  %scevgep560.us.7 = getelementptr i8, i8* %call1, i64 %421
  %scevgep560561.us.7 = bitcast i8* %scevgep560.us.7 to double*
  %_p_scalar_562.us.7 = load double, double* %scevgep560561.us.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header544.us.7

polly.loop_header544.us.7:                        ; preds = %polly.loop_header544.us.7, %polly.loop_exit546.loopexit.us.6
  %polly.indvar548.us.7 = phi i64 [ %polly.indvar_next549.us.7, %polly.loop_header544.us.7 ], [ 0, %polly.loop_exit546.loopexit.us.6 ]
  %422 = add nuw nsw i64 %polly.indvar548.us.7, %200
  %423 = mul nuw nsw i64 %422, 8000
  %424 = add nuw nsw i64 %423, %199
  %scevgep551.us.7 = getelementptr i8, i8* %call1, i64 %424
  %scevgep551552.us.7 = bitcast i8* %scevgep551.us.7 to double*
  %_p_scalar_553.us.7 = load double, double* %scevgep551552.us.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.7 = fmul fast double %_p_scalar_556.us.7, %_p_scalar_553.us.7
  %scevgep557.us.7 = getelementptr i8, i8* %call2, i64 %424
  %scevgep557558.us.7 = bitcast i8* %scevgep557.us.7 to double*
  %_p_scalar_559.us.7 = load double, double* %scevgep557558.us.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.7 = fmul fast double %_p_scalar_562.us.7, %_p_scalar_559.us.7
  %425 = shl i64 %422, 3
  %426 = add i64 %425, %209
  %scevgep563.us.7 = getelementptr i8, i8* %call, i64 %426
  %scevgep563564.us.7 = bitcast i8* %scevgep563.us.7 to double*
  %_p_scalar_565.us.7 = load double, double* %scevgep563564.us.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.7 = fadd fast double %p_mul37.i.us.7, %p_mul27.i.us.7
  %p_reass.mul.i.us.7 = fmul fast double %p_reass.add.i.us.7, 1.500000e+00
  %p_add42.i.us.7 = fadd fast double %p_reass.mul.i.us.7, %_p_scalar_565.us.7
  store double %p_add42.i.us.7, double* %scevgep563564.us.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next549.us.7 = add nuw nsw i64 %polly.indvar548.us.7, 1
  %exitcond832.7.not = icmp eq i64 %polly.indvar548.us.7, %smin831
  br i1 %exitcond832.7.not, label %polly.loop_exit539, label %polly.loop_header544.us.7
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
!24 = !{!"llvm.loop.tile.size", i32 4}
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
!44 = !{!"llvm.loop.tile.size", i32 100}
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
