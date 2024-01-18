; ModuleID = 'syr2k_exhaustive/mmp_all_SM_10302.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_10302.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index894
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index960
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check979 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check979, label %for.body3.i60.preheader1031, label %vector.ph980

vector.ph980:                                     ; preds = %for.body3.i60.preheader
  %n.vec982 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph980
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next984, %vector.body978 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index983
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %min.iters.check1005 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1005, label %for.body3.i99.preheader1029, label %vector.ph1006

vector.ph1006:                                    ; preds = %for.body3.i99.preheader
  %n.vec1008 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1010, %vector.body1004 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1009
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %exitcond800.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1018 = add i64 %indvar1017, 1
  br i1 %exitcond800.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond799.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond799.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %pexp.p_div_q = lshr i64 %polly.indvar202, 1
  %97 = add nuw nsw i64 %pexp.p_div_q, %polly.indvar202
  %.inv = icmp ult i64 %97, 18
  %98 = mul nsw i64 %polly.indvar202, -96
  %99 = icmp slt i64 %98, -1104
  %100 = select i1 %99, i64 %98, i64 -1104
  %101 = add nsw i64 %100, 1199
  %102 = mul nuw nsw i64 %polly.indvar202, 96
  %.op = add nuw i64 %97, 2
  %103 = select i1 %.inv, i64 %.op, i64 19
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 96
  %exitcond798.not = icmp eq i64 %polly.indvar_next203, 13
  br i1 %exitcond798.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %104 = shl i64 %polly.indvar208, 6
  %105 = shl i64 %polly.indvar208, 6
  %106 = shl i64 %polly.indvar208, 6
  %107 = or i64 %106, 8
  %108 = shl i64 %polly.indvar208, 6
  %109 = or i64 %108, 16
  %110 = shl i64 %polly.indvar208, 6
  %111 = or i64 %110, 24
  %112 = shl i64 %polly.indvar208, 6
  %113 = or i64 %112, 32
  %114 = shl i64 %polly.indvar208, 6
  %115 = or i64 %114, 40
  %116 = shl i64 %polly.indvar208, 6
  %117 = or i64 %116, 48
  %118 = or i64 %104, 56
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next209, 125
  br i1 %exitcond797.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit219 ], [ %indvars.iv789, %polly.loop_header205 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %119 = shl nsw i64 %polly.indvar214, 6
  %120 = add nsw i64 %119, %98
  %121 = icmp sgt i64 %120, 0
  %122 = select i1 %121, i64 %120, i64 0
  %polly.loop_guard.not = icmp sgt i64 %122, %101
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv787, i64 0)
  %123 = add i64 %smax, %indvars.iv791
  %124 = sub nsw i64 %102, %119
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw i64 %polly.indvar214, 1
  %indvars.iv.next788 = add i64 %indvars.iv787, 64
  %indvars.iv.next792 = add i64 %indvars.iv791, -64
  %exitcond796.not = icmp eq i64 %polly.indvar_next215, %103
  br i1 %exitcond796.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv793 = phi i64 [ %123, %polly.loop_header217.preheader ], [ %indvars.iv.next794, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %122, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 63)
  %125 = add nsw i64 %polly.indvar220, %124
  %polly.loop_guard233873 = icmp sgt i64 %125, -1
  %126 = add nuw nsw i64 %polly.indvar220, %102
  %127 = mul i64 %126, 8000
  %128 = mul i64 %126, 9600
  br i1 %polly.loop_guard233873, label %polly.loop_header223.us.preheader, label %polly.loop_exit225

polly.loop_header223.us.preheader:                ; preds = %polly.loop_header217
  %129 = add i64 %105, %127
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %129
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us.preheader, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us.preheader ]
  %130 = add nuw nsw i64 %polly.indvar234.us, %119
  %131 = mul i64 %130, 8000
  %132 = add i64 %131, %105
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %132
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %133 = shl i64 %130, 3
  %134 = add i64 %133, %128
  %scevgep249.us = getelementptr i8, i8* %call, i64 %134
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
  %135 = add i64 %107, %127
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %135
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %135
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_exit225:                               ; preds = %polly.loop_header230.us.7, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %101
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar991 = phi i64 [ %indvar.next992, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %136 = add i64 %indvar991, 1
  %137 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check993 = icmp ult i64 %136, 4
  br i1 %min.iters.check993, label %polly.loop_header344.preheader, label %vector.ph994

vector.ph994:                                     ; preds = %polly.loop_header338
  %n.vec996 = and i64 %136, -4
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body990 ]
  %138 = shl nuw nsw i64 %index997, 3
  %139 = getelementptr i8, i8* %scevgep350, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !69, !noalias !71
  %141 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !69, !noalias !71
  %index.next998 = add i64 %index997, 4
  %143 = icmp eq i64 %index.next998, %n.vec996
  br i1 %143, label %middle.block988, label %vector.body990, !llvm.loop !74

middle.block988:                                  ; preds = %vector.body990
  %cmp.n1000 = icmp eq i64 %136, %n.vec996
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
  %144 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %144
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond818.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %pexp.p_div_q366 = lshr i64 %polly.indvar357, 1
  %145 = add nuw nsw i64 %pexp.p_div_q366, %polly.indvar357
  %.inv774 = icmp ult i64 %145, 18
  %146 = mul nsw i64 %polly.indvar357, -96
  %147 = icmp slt i64 %146, -1104
  %148 = select i1 %147, i64 %146, i64 -1104
  %149 = add nsw i64 %148, 1199
  %150 = mul nuw nsw i64 %polly.indvar357, 96
  %.op874 = add nuw i64 %145, 2
  %151 = select i1 %.inv774, i64 %.op874, i64 19
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -96
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 96
  %exitcond817.not = icmp eq i64 %polly.indvar_next358, 13
  br i1 %exitcond817.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit369 ]
  %152 = shl i64 %polly.indvar363, 6
  %153 = shl i64 %polly.indvar363, 6
  %154 = shl i64 %polly.indvar363, 6
  %155 = or i64 %154, 8
  %156 = shl i64 %polly.indvar363, 6
  %157 = or i64 %156, 16
  %158 = shl i64 %polly.indvar363, 6
  %159 = or i64 %158, 24
  %160 = shl i64 %polly.indvar363, 6
  %161 = or i64 %160, 32
  %162 = shl i64 %polly.indvar363, 6
  %163 = or i64 %162, 40
  %164 = shl i64 %polly.indvar363, 6
  %165 = or i64 %164, 48
  %166 = or i64 %152, 56
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next364, 125
  br i1 %exitcond816.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit376 ], [ %indvars.iv806, %polly.loop_header360 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit376 ], [ %indvars.iv801, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %167 = shl nsw i64 %polly.indvar370, 6
  %168 = add nsw i64 %167, %146
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %169, i64 %168, i64 0
  %polly.loop_guard377.not = icmp sgt i64 %170, %149
  br i1 %polly.loop_guard377.not, label %polly.loop_exit376, label %polly.loop_header374.preheader

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax805 = call i64 @llvm.smax.i64(i64 %indvars.iv803, i64 0)
  %171 = add i64 %smax805, %indvars.iv808
  %172 = sub nsw i64 %150, %167
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw i64 %polly.indvar370, 1
  %indvars.iv.next804 = add i64 %indvars.iv803, 64
  %indvars.iv.next809 = add i64 %indvars.iv808, -64
  %exitcond815.not = icmp eq i64 %polly.indvar_next371, %151
  br i1 %exitcond815.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv810 = phi i64 [ %171, %polly.loop_header374.preheader ], [ %indvars.iv.next811, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %170, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 63)
  %173 = add nsw i64 %polly.indvar378, %172
  %polly.loop_guard391875 = icmp sgt i64 %173, -1
  %174 = add nuw nsw i64 %polly.indvar378, %150
  %175 = mul i64 %174, 8000
  %176 = mul i64 %174, 9600
  br i1 %polly.loop_guard391875, label %polly.loop_header381.us.preheader, label %polly.loop_exit383

polly.loop_header381.us.preheader:                ; preds = %polly.loop_header374
  %177 = add i64 %153, %175
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %177
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %177
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us.preheader, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us.preheader ]
  %178 = add nuw nsw i64 %polly.indvar392.us, %167
  %179 = mul i64 %178, 8000
  %180 = add i64 %179, %153
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %180
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %180
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %181 = shl i64 %178, 3
  %182 = add i64 %181, %176
  %scevgep407.us = getelementptr i8, i8* %call, i64 %182
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us = add nuw nsw i64 %polly.indvar392.us, 1
  %exitcond813.not = icmp eq i64 %polly.indvar392.us, %smin812
  br i1 %exitcond813.not, label %polly.loop_exit390.loopexit.us, label %polly.loop_header388.us

polly.loop_exit390.loopexit.us:                   ; preds = %polly.loop_header388.us
  %183 = add i64 %155, %175
  %scevgep398.us.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.1 = getelementptr i8, i8* %call1, i64 %183
  %scevgep404405.us.1 = bitcast i8* %scevgep404.us.1 to double*
  %_p_scalar_406.us.1 = load double, double* %scevgep404405.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.1

polly.loop_exit383:                               ; preds = %polly.loop_header388.us.7, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380.not.not = icmp ult i64 %polly.indvar378, %149
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  br i1 %polly.loop_cond380.not.not, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check967 = icmp ult i64 %184, 4
  br i1 %min.iters.check967, label %polly.loop_header502.preheader, label %vector.ph968

vector.ph968:                                     ; preds = %polly.loop_header496
  %n.vec970 = and i64 %184, -4
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %186 = shl nuw nsw i64 %index971, 3
  %187 = getelementptr i8, i8* %scevgep508, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load975 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !78, !noalias !80
  %189 = fmul fast <4 x double> %wide.load975, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !78, !noalias !80
  %index.next972 = add i64 %index971, 4
  %191 = icmp eq i64 %index.next972, %n.vec970
  br i1 %191, label %middle.block964, label %vector.body966, !llvm.loop !83

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %184, %n.vec970
  br i1 %cmp.n974, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block964
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec970, %middle.block964 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block964
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond838.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %192
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond837.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %pexp.p_div_q524 = lshr i64 %polly.indvar515, 1
  %193 = add nuw nsw i64 %pexp.p_div_q524, %polly.indvar515
  %.inv775 = icmp ult i64 %193, 18
  %194 = mul nsw i64 %polly.indvar515, -96
  %195 = icmp slt i64 %194, -1104
  %196 = select i1 %195, i64 %194, i64 -1104
  %197 = add nsw i64 %196, 1199
  %198 = mul nuw nsw i64 %polly.indvar515, 96
  %.op876 = add nuw i64 %193, 2
  %199 = select i1 %.inv775, i64 %.op876, i64 19
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -96
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 96
  %exitcond836.not = icmp eq i64 %polly.indvar_next516, 13
  br i1 %exitcond836.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %polly.indvar521 = phi i64 [ 0, %polly.loop_header512 ], [ %polly.indvar_next522, %polly.loop_exit527 ]
  %200 = shl i64 %polly.indvar521, 6
  %201 = shl i64 %polly.indvar521, 6
  %202 = shl i64 %polly.indvar521, 6
  %203 = or i64 %202, 8
  %204 = shl i64 %polly.indvar521, 6
  %205 = or i64 %204, 16
  %206 = shl i64 %polly.indvar521, 6
  %207 = or i64 %206, 24
  %208 = shl i64 %polly.indvar521, 6
  %209 = or i64 %208, 32
  %210 = shl i64 %polly.indvar521, 6
  %211 = or i64 %210, 40
  %212 = shl i64 %polly.indvar521, 6
  %213 = or i64 %212, 48
  %214 = or i64 %200, 56
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next522, 125
  br i1 %exitcond835.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit534 ], [ %indvars.iv825, %polly.loop_header518 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit534 ], [ %indvars.iv820, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %215 = shl nsw i64 %polly.indvar528, 6
  %216 = add nsw i64 %215, %194
  %217 = icmp sgt i64 %216, 0
  %218 = select i1 %217, i64 %216, i64 0
  %polly.loop_guard535.not = icmp sgt i64 %218, %197
  br i1 %polly.loop_guard535.not, label %polly.loop_exit534, label %polly.loop_header532.preheader

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax824 = call i64 @llvm.smax.i64(i64 %indvars.iv822, i64 0)
  %219 = add i64 %smax824, %indvars.iv827
  %220 = sub nsw i64 %198, %215
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw i64 %polly.indvar528, 1
  %indvars.iv.next823 = add i64 %indvars.iv822, 64
  %indvars.iv.next828 = add i64 %indvars.iv827, -64
  %exitcond834.not = icmp eq i64 %polly.indvar_next529, %199
  br i1 %exitcond834.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv829 = phi i64 [ %219, %polly.loop_header532.preheader ], [ %indvars.iv.next830, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %218, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 63)
  %221 = add nsw i64 %polly.indvar536, %220
  %polly.loop_guard549877 = icmp sgt i64 %221, -1
  %222 = add nuw nsw i64 %polly.indvar536, %198
  %223 = mul i64 %222, 8000
  %224 = mul i64 %222, 9600
  br i1 %polly.loop_guard549877, label %polly.loop_header539.us.preheader, label %polly.loop_exit541

polly.loop_header539.us.preheader:                ; preds = %polly.loop_header532
  %225 = add i64 %201, %223
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %225
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %225
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us.preheader, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us.preheader ]
  %226 = add nuw nsw i64 %polly.indvar550.us, %215
  %227 = mul i64 %226, 8000
  %228 = add i64 %227, %201
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %228
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %228
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %229 = shl i64 %226, 3
  %230 = add i64 %229, %224
  %scevgep565.us = getelementptr i8, i8* %call, i64 %230
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond832.not = icmp eq i64 %polly.indvar550.us, %smin831
  br i1 %exitcond832.not, label %polly.loop_exit548.loopexit.us, label %polly.loop_header546.us

polly.loop_exit548.loopexit.us:                   ; preds = %polly.loop_header546.us
  %231 = add i64 %203, %223
  %scevgep556.us.1 = getelementptr i8, i8* %call2, i64 %231
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.1 = getelementptr i8, i8* %call1, i64 %231
  %scevgep562563.us.1 = bitcast i8* %scevgep562.us.1 to double*
  %_p_scalar_564.us.1 = load double, double* %scevgep562563.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.1

polly.loop_exit541:                               ; preds = %polly.loop_header546.us.7, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538.not.not = icmp ult i64 %polly.indvar536, %197
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  br i1 %polly.loop_cond538.not.not, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -1168)
  %232 = shl nsw i64 %polly.indvar697, 5
  %233 = add nsw i64 %smin865, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond868.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv859 = phi i64 [ %indvars.iv.next860, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %234 = mul nsw i64 %polly.indvar703, -32
  %smin905 = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin905, 1200
  %smin861 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 -1168)
  %236 = shl nsw i64 %polly.indvar703, 5
  %237 = add nsw i64 %smin861, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -32
  %exitcond867.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond867.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %238 = add nuw nsw i64 %polly.indvar709, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph906

vector.ph906:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert913 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat914 = shufflevector <4 x i64> %broadcast.splatinsert913, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert915 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat916 = shufflevector <4 x i32> %broadcast.splatinsert915, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %vector.ph906
  %index907 = phi i64 [ 0, %vector.ph906 ], [ %index.next908, %vector.body904 ]
  %vec.ind911 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph906 ], [ %vec.ind.next912, %vector.body904 ]
  %241 = add nuw nsw <4 x i64> %vec.ind911, %broadcast.splat914
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat916, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !87, !noalias !89
  %index.next908 = add i64 %index907, 4
  %vec.ind.next912 = add <4 x i64> %vec.ind911, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next908, %235
  br i1 %253, label %polly.loop_exit714, label %vector.body904, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body904, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond866.not = icmp eq i64 %polly.indvar709, %233
  br i1 %exitcond866.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %254 = add nuw nsw i64 %polly.indvar715, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep718 = getelementptr i8, i8* %call, i64 %260
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond862.not = icmp eq i64 %polly.indvar715, %237
  br i1 %exitcond862.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -1168)
  %261 = shl nsw i64 %polly.indvar724, 5
  %262 = add nsw i64 %smin855, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond858.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %263 = mul nsw i64 %polly.indvar730, -32
  %smin920 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin920, 1000
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 -968)
  %265 = shl nsw i64 %polly.indvar730, 5
  %266 = add nsw i64 %smin851, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond857.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %267 = add nuw nsw i64 %polly.indvar736, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check921 = icmp eq i64 %264, 0
  br i1 %min.iters.check921, label %polly.loop_header739, label %vector.ph922

vector.ph922:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert931 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat932 = shufflevector <4 x i64> %broadcast.splatinsert931, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert933 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat934 = shufflevector <4 x i32> %broadcast.splatinsert933, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph922
  %index925 = phi i64 [ 0, %vector.ph922 ], [ %index.next926, %vector.body919 ]
  %vec.ind929 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph922 ], [ %vec.ind.next930, %vector.body919 ]
  %270 = add nuw nsw <4 x i64> %vec.ind929, %broadcast.splat932
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat934, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !91, !noalias !94
  %index.next926 = add i64 %index925, 4
  %vec.ind.next930 = add <4 x i64> %vec.ind929, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next926, %264
  br i1 %282, label %polly.loop_exit741, label %vector.body919, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body919, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond856.not = icmp eq i64 %polly.indvar736, %262
  br i1 %exitcond856.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %283 = add nuw nsw i64 %polly.indvar742, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep745 = getelementptr i8, i8* %call2, i64 %289
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond852.not = icmp eq i64 %polly.indvar742, %266
  br i1 %exitcond852.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -1168)
  %290 = shl nsw i64 %polly.indvar750, 5
  %291 = add nsw i64 %smin845, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond848.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %292 = mul nsw i64 %polly.indvar756, -32
  %smin938 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin938, 1000
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -968)
  %294 = shl nsw i64 %polly.indvar756, 5
  %295 = add nsw i64 %smin841, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond847.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %296 = add nuw nsw i64 %polly.indvar762, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check939 = icmp eq i64 %293, 0
  br i1 %min.iters.check939, label %polly.loop_header765, label %vector.ph940

vector.ph940:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert949 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat950 = shufflevector <4 x i64> %broadcast.splatinsert949, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat952 = shufflevector <4 x i32> %broadcast.splatinsert951, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next944, %vector.body937 ]
  %vec.ind947 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph940 ], [ %vec.ind.next948, %vector.body937 ]
  %299 = add nuw nsw <4 x i64> %vec.ind947, %broadcast.splat950
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat952, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !90, !noalias !97
  %index.next944 = add i64 %index943, 4
  %vec.ind.next948 = add <4 x i64> %vec.ind947, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next944, %293
  br i1 %311, label %polly.loop_exit767, label %vector.body937, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body937, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond846.not = icmp eq i64 %polly.indvar762, %291
  br i1 %exitcond846.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %312 = add nuw nsw i64 %polly.indvar768, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep772 = getelementptr i8, i8* %call1, i64 %318
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond842.not = icmp eq i64 %polly.indvar768, %295
  br i1 %exitcond842.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_exit232.loopexit.us
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_exit232.loopexit.us ]
  %319 = add nuw nsw i64 %polly.indvar234.us.1, %119
  %320 = mul i64 %319, 8000
  %321 = add i64 %320, %107
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %321
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %321
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %322 = shl i64 %319, 3
  %323 = add i64 %322, %128
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %323
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
  %324 = add i64 %109, %127
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %324
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %324
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_exit232.loopexit.us.1
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_exit232.loopexit.us.1 ]
  %325 = add nuw nsw i64 %polly.indvar234.us.2, %119
  %326 = mul i64 %325, 8000
  %327 = add i64 %326, %109
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %328 = shl i64 %325, 3
  %329 = add i64 %328, %128
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %329
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
  %330 = add i64 %111, %127
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %330
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %330
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_exit232.loopexit.us.2
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_exit232.loopexit.us.2 ]
  %331 = add nuw nsw i64 %polly.indvar234.us.3, %119
  %332 = mul i64 %331, 8000
  %333 = add i64 %332, %111
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %333
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %333
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %334 = shl i64 %331, 3
  %335 = add i64 %334, %128
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %335
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
  %336 = add i64 %113, %127
  %scevgep240.us.4 = getelementptr i8, i8* %call2, i64 %336
  %scevgep240241.us.4 = bitcast i8* %scevgep240.us.4 to double*
  %_p_scalar_242.us.4 = load double, double* %scevgep240241.us.4, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.4 = getelementptr i8, i8* %call1, i64 %336
  %scevgep246247.us.4 = bitcast i8* %scevgep246.us.4 to double*
  %_p_scalar_248.us.4 = load double, double* %scevgep246247.us.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.4

polly.loop_header230.us.4:                        ; preds = %polly.loop_header230.us.4, %polly.loop_exit232.loopexit.us.3
  %polly.indvar234.us.4 = phi i64 [ %polly.indvar_next235.us.4, %polly.loop_header230.us.4 ], [ 0, %polly.loop_exit232.loopexit.us.3 ]
  %337 = add nuw nsw i64 %polly.indvar234.us.4, %119
  %338 = mul i64 %337, 8000
  %339 = add i64 %338, %113
  %scevgep237.us.4 = getelementptr i8, i8* %call1, i64 %339
  %scevgep237238.us.4 = bitcast i8* %scevgep237.us.4 to double*
  %_p_scalar_239.us.4 = load double, double* %scevgep237238.us.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_242.us.4, %_p_scalar_239.us.4
  %scevgep243.us.4 = getelementptr i8, i8* %call2, i64 %339
  %scevgep243244.us.4 = bitcast i8* %scevgep243.us.4 to double*
  %_p_scalar_245.us.4 = load double, double* %scevgep243244.us.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_248.us.4, %_p_scalar_245.us.4
  %340 = shl i64 %337, 3
  %341 = add i64 %340, %128
  %scevgep249.us.4 = getelementptr i8, i8* %call, i64 %341
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
  %342 = add i64 %115, %127
  %scevgep240.us.5 = getelementptr i8, i8* %call2, i64 %342
  %scevgep240241.us.5 = bitcast i8* %scevgep240.us.5 to double*
  %_p_scalar_242.us.5 = load double, double* %scevgep240241.us.5, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.5 = getelementptr i8, i8* %call1, i64 %342
  %scevgep246247.us.5 = bitcast i8* %scevgep246.us.5 to double*
  %_p_scalar_248.us.5 = load double, double* %scevgep246247.us.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.5

polly.loop_header230.us.5:                        ; preds = %polly.loop_header230.us.5, %polly.loop_exit232.loopexit.us.4
  %polly.indvar234.us.5 = phi i64 [ %polly.indvar_next235.us.5, %polly.loop_header230.us.5 ], [ 0, %polly.loop_exit232.loopexit.us.4 ]
  %343 = add nuw nsw i64 %polly.indvar234.us.5, %119
  %344 = mul i64 %343, 8000
  %345 = add i64 %344, %115
  %scevgep237.us.5 = getelementptr i8, i8* %call1, i64 %345
  %scevgep237238.us.5 = bitcast i8* %scevgep237.us.5 to double*
  %_p_scalar_239.us.5 = load double, double* %scevgep237238.us.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.5 = fmul fast double %_p_scalar_242.us.5, %_p_scalar_239.us.5
  %scevgep243.us.5 = getelementptr i8, i8* %call2, i64 %345
  %scevgep243244.us.5 = bitcast i8* %scevgep243.us.5 to double*
  %_p_scalar_245.us.5 = load double, double* %scevgep243244.us.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.5 = fmul fast double %_p_scalar_248.us.5, %_p_scalar_245.us.5
  %346 = shl i64 %343, 3
  %347 = add i64 %346, %128
  %scevgep249.us.5 = getelementptr i8, i8* %call, i64 %347
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
  %348 = add i64 %117, %127
  %scevgep240.us.6 = getelementptr i8, i8* %call2, i64 %348
  %scevgep240241.us.6 = bitcast i8* %scevgep240.us.6 to double*
  %_p_scalar_242.us.6 = load double, double* %scevgep240241.us.6, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.6 = getelementptr i8, i8* %call1, i64 %348
  %scevgep246247.us.6 = bitcast i8* %scevgep246.us.6 to double*
  %_p_scalar_248.us.6 = load double, double* %scevgep246247.us.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.6

polly.loop_header230.us.6:                        ; preds = %polly.loop_header230.us.6, %polly.loop_exit232.loopexit.us.5
  %polly.indvar234.us.6 = phi i64 [ %polly.indvar_next235.us.6, %polly.loop_header230.us.6 ], [ 0, %polly.loop_exit232.loopexit.us.5 ]
  %349 = add nuw nsw i64 %polly.indvar234.us.6, %119
  %350 = mul i64 %349, 8000
  %351 = add i64 %350, %117
  %scevgep237.us.6 = getelementptr i8, i8* %call1, i64 %351
  %scevgep237238.us.6 = bitcast i8* %scevgep237.us.6 to double*
  %_p_scalar_239.us.6 = load double, double* %scevgep237238.us.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.6 = fmul fast double %_p_scalar_242.us.6, %_p_scalar_239.us.6
  %scevgep243.us.6 = getelementptr i8, i8* %call2, i64 %351
  %scevgep243244.us.6 = bitcast i8* %scevgep243.us.6 to double*
  %_p_scalar_245.us.6 = load double, double* %scevgep243244.us.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.6 = fmul fast double %_p_scalar_248.us.6, %_p_scalar_245.us.6
  %352 = shl i64 %349, 3
  %353 = add i64 %352, %128
  %scevgep249.us.6 = getelementptr i8, i8* %call, i64 %353
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
  %354 = add i64 %118, %127
  %scevgep240.us.7 = getelementptr i8, i8* %call2, i64 %354
  %scevgep240241.us.7 = bitcast i8* %scevgep240.us.7 to double*
  %_p_scalar_242.us.7 = load double, double* %scevgep240241.us.7, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.7 = getelementptr i8, i8* %call1, i64 %354
  %scevgep246247.us.7 = bitcast i8* %scevgep246.us.7 to double*
  %_p_scalar_248.us.7 = load double, double* %scevgep246247.us.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.7

polly.loop_header230.us.7:                        ; preds = %polly.loop_header230.us.7, %polly.loop_exit232.loopexit.us.6
  %polly.indvar234.us.7 = phi i64 [ %polly.indvar_next235.us.7, %polly.loop_header230.us.7 ], [ 0, %polly.loop_exit232.loopexit.us.6 ]
  %355 = add nuw nsw i64 %polly.indvar234.us.7, %119
  %356 = mul i64 %355, 8000
  %357 = add i64 %356, %118
  %scevgep237.us.7 = getelementptr i8, i8* %call1, i64 %357
  %scevgep237238.us.7 = bitcast i8* %scevgep237.us.7 to double*
  %_p_scalar_239.us.7 = load double, double* %scevgep237238.us.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.7 = fmul fast double %_p_scalar_242.us.7, %_p_scalar_239.us.7
  %scevgep243.us.7 = getelementptr i8, i8* %call2, i64 %357
  %scevgep243244.us.7 = bitcast i8* %scevgep243.us.7 to double*
  %_p_scalar_245.us.7 = load double, double* %scevgep243244.us.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.7 = fmul fast double %_p_scalar_248.us.7, %_p_scalar_245.us.7
  %358 = shl i64 %355, 3
  %359 = add i64 %358, %128
  %scevgep249.us.7 = getelementptr i8, i8* %call, i64 %359
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
  %360 = add nuw nsw i64 %polly.indvar392.us.1, %167
  %361 = mul i64 %360, 8000
  %362 = add i64 %361, %155
  %scevgep395.us.1 = getelementptr i8, i8* %call1, i64 %362
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_400.us.1, %_p_scalar_397.us.1
  %scevgep401.us.1 = getelementptr i8, i8* %call2, i64 %362
  %scevgep401402.us.1 = bitcast i8* %scevgep401.us.1 to double*
  %_p_scalar_403.us.1 = load double, double* %scevgep401402.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_406.us.1, %_p_scalar_403.us.1
  %363 = shl i64 %360, 3
  %364 = add i64 %363, %176
  %scevgep407.us.1 = getelementptr i8, i8* %call, i64 %364
  %scevgep407408.us.1 = bitcast i8* %scevgep407.us.1 to double*
  %_p_scalar_409.us.1 = load double, double* %scevgep407408.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_409.us.1
  store double %p_add42.i79.us.1, double* %scevgep407408.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.1 = add nuw nsw i64 %polly.indvar392.us.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar392.us.1, %smin812
  br i1 %exitcond813.1.not, label %polly.loop_exit390.loopexit.us.1, label %polly.loop_header388.us.1

polly.loop_exit390.loopexit.us.1:                 ; preds = %polly.loop_header388.us.1
  %365 = add i64 %157, %175
  %scevgep398.us.2 = getelementptr i8, i8* %call2, i64 %365
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.2 = getelementptr i8, i8* %call1, i64 %365
  %scevgep404405.us.2 = bitcast i8* %scevgep404.us.2 to double*
  %_p_scalar_406.us.2 = load double, double* %scevgep404405.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.2

polly.loop_header388.us.2:                        ; preds = %polly.loop_header388.us.2, %polly.loop_exit390.loopexit.us.1
  %polly.indvar392.us.2 = phi i64 [ %polly.indvar_next393.us.2, %polly.loop_header388.us.2 ], [ 0, %polly.loop_exit390.loopexit.us.1 ]
  %366 = add nuw nsw i64 %polly.indvar392.us.2, %167
  %367 = mul i64 %366, 8000
  %368 = add i64 %367, %157
  %scevgep395.us.2 = getelementptr i8, i8* %call1, i64 %368
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_400.us.2, %_p_scalar_397.us.2
  %scevgep401.us.2 = getelementptr i8, i8* %call2, i64 %368
  %scevgep401402.us.2 = bitcast i8* %scevgep401.us.2 to double*
  %_p_scalar_403.us.2 = load double, double* %scevgep401402.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_406.us.2, %_p_scalar_403.us.2
  %369 = shl i64 %366, 3
  %370 = add i64 %369, %176
  %scevgep407.us.2 = getelementptr i8, i8* %call, i64 %370
  %scevgep407408.us.2 = bitcast i8* %scevgep407.us.2 to double*
  %_p_scalar_409.us.2 = load double, double* %scevgep407408.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_409.us.2
  store double %p_add42.i79.us.2, double* %scevgep407408.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.2 = add nuw nsw i64 %polly.indvar392.us.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar392.us.2, %smin812
  br i1 %exitcond813.2.not, label %polly.loop_exit390.loopexit.us.2, label %polly.loop_header388.us.2

polly.loop_exit390.loopexit.us.2:                 ; preds = %polly.loop_header388.us.2
  %371 = add i64 %159, %175
  %scevgep398.us.3 = getelementptr i8, i8* %call2, i64 %371
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.3 = getelementptr i8, i8* %call1, i64 %371
  %scevgep404405.us.3 = bitcast i8* %scevgep404.us.3 to double*
  %_p_scalar_406.us.3 = load double, double* %scevgep404405.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.3

polly.loop_header388.us.3:                        ; preds = %polly.loop_header388.us.3, %polly.loop_exit390.loopexit.us.2
  %polly.indvar392.us.3 = phi i64 [ %polly.indvar_next393.us.3, %polly.loop_header388.us.3 ], [ 0, %polly.loop_exit390.loopexit.us.2 ]
  %372 = add nuw nsw i64 %polly.indvar392.us.3, %167
  %373 = mul i64 %372, 8000
  %374 = add i64 %373, %159
  %scevgep395.us.3 = getelementptr i8, i8* %call1, i64 %374
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_400.us.3, %_p_scalar_397.us.3
  %scevgep401.us.3 = getelementptr i8, i8* %call2, i64 %374
  %scevgep401402.us.3 = bitcast i8* %scevgep401.us.3 to double*
  %_p_scalar_403.us.3 = load double, double* %scevgep401402.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_406.us.3, %_p_scalar_403.us.3
  %375 = shl i64 %372, 3
  %376 = add i64 %375, %176
  %scevgep407.us.3 = getelementptr i8, i8* %call, i64 %376
  %scevgep407408.us.3 = bitcast i8* %scevgep407.us.3 to double*
  %_p_scalar_409.us.3 = load double, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_409.us.3
  store double %p_add42.i79.us.3, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.3 = add nuw nsw i64 %polly.indvar392.us.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar392.us.3, %smin812
  br i1 %exitcond813.3.not, label %polly.loop_exit390.loopexit.us.3, label %polly.loop_header388.us.3

polly.loop_exit390.loopexit.us.3:                 ; preds = %polly.loop_header388.us.3
  %377 = add i64 %161, %175
  %scevgep398.us.4 = getelementptr i8, i8* %call2, i64 %377
  %scevgep398399.us.4 = bitcast i8* %scevgep398.us.4 to double*
  %_p_scalar_400.us.4 = load double, double* %scevgep398399.us.4, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.4 = getelementptr i8, i8* %call1, i64 %377
  %scevgep404405.us.4 = bitcast i8* %scevgep404.us.4 to double*
  %_p_scalar_406.us.4 = load double, double* %scevgep404405.us.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.4

polly.loop_header388.us.4:                        ; preds = %polly.loop_header388.us.4, %polly.loop_exit390.loopexit.us.3
  %polly.indvar392.us.4 = phi i64 [ %polly.indvar_next393.us.4, %polly.loop_header388.us.4 ], [ 0, %polly.loop_exit390.loopexit.us.3 ]
  %378 = add nuw nsw i64 %polly.indvar392.us.4, %167
  %379 = mul i64 %378, 8000
  %380 = add i64 %379, %161
  %scevgep395.us.4 = getelementptr i8, i8* %call1, i64 %380
  %scevgep395396.us.4 = bitcast i8* %scevgep395.us.4 to double*
  %_p_scalar_397.us.4 = load double, double* %scevgep395396.us.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_400.us.4, %_p_scalar_397.us.4
  %scevgep401.us.4 = getelementptr i8, i8* %call2, i64 %380
  %scevgep401402.us.4 = bitcast i8* %scevgep401.us.4 to double*
  %_p_scalar_403.us.4 = load double, double* %scevgep401402.us.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_406.us.4, %_p_scalar_403.us.4
  %381 = shl i64 %378, 3
  %382 = add i64 %381, %176
  %scevgep407.us.4 = getelementptr i8, i8* %call, i64 %382
  %scevgep407408.us.4 = bitcast i8* %scevgep407.us.4 to double*
  %_p_scalar_409.us.4 = load double, double* %scevgep407408.us.4, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.4 = fadd fast double %p_mul37.i75.us.4, %p_mul27.i73.us.4
  %p_reass.mul.i78.us.4 = fmul fast double %p_reass.add.i77.us.4, 1.500000e+00
  %p_add42.i79.us.4 = fadd fast double %p_reass.mul.i78.us.4, %_p_scalar_409.us.4
  store double %p_add42.i79.us.4, double* %scevgep407408.us.4, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.4 = add nuw nsw i64 %polly.indvar392.us.4, 1
  %exitcond813.4.not = icmp eq i64 %polly.indvar392.us.4, %smin812
  br i1 %exitcond813.4.not, label %polly.loop_exit390.loopexit.us.4, label %polly.loop_header388.us.4

polly.loop_exit390.loopexit.us.4:                 ; preds = %polly.loop_header388.us.4
  %383 = add i64 %163, %175
  %scevgep398.us.5 = getelementptr i8, i8* %call2, i64 %383
  %scevgep398399.us.5 = bitcast i8* %scevgep398.us.5 to double*
  %_p_scalar_400.us.5 = load double, double* %scevgep398399.us.5, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.5 = getelementptr i8, i8* %call1, i64 %383
  %scevgep404405.us.5 = bitcast i8* %scevgep404.us.5 to double*
  %_p_scalar_406.us.5 = load double, double* %scevgep404405.us.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.5

polly.loop_header388.us.5:                        ; preds = %polly.loop_header388.us.5, %polly.loop_exit390.loopexit.us.4
  %polly.indvar392.us.5 = phi i64 [ %polly.indvar_next393.us.5, %polly.loop_header388.us.5 ], [ 0, %polly.loop_exit390.loopexit.us.4 ]
  %384 = add nuw nsw i64 %polly.indvar392.us.5, %167
  %385 = mul i64 %384, 8000
  %386 = add i64 %385, %163
  %scevgep395.us.5 = getelementptr i8, i8* %call1, i64 %386
  %scevgep395396.us.5 = bitcast i8* %scevgep395.us.5 to double*
  %_p_scalar_397.us.5 = load double, double* %scevgep395396.us.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.5 = fmul fast double %_p_scalar_400.us.5, %_p_scalar_397.us.5
  %scevgep401.us.5 = getelementptr i8, i8* %call2, i64 %386
  %scevgep401402.us.5 = bitcast i8* %scevgep401.us.5 to double*
  %_p_scalar_403.us.5 = load double, double* %scevgep401402.us.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.5 = fmul fast double %_p_scalar_406.us.5, %_p_scalar_403.us.5
  %387 = shl i64 %384, 3
  %388 = add i64 %387, %176
  %scevgep407.us.5 = getelementptr i8, i8* %call, i64 %388
  %scevgep407408.us.5 = bitcast i8* %scevgep407.us.5 to double*
  %_p_scalar_409.us.5 = load double, double* %scevgep407408.us.5, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.5 = fadd fast double %p_mul37.i75.us.5, %p_mul27.i73.us.5
  %p_reass.mul.i78.us.5 = fmul fast double %p_reass.add.i77.us.5, 1.500000e+00
  %p_add42.i79.us.5 = fadd fast double %p_reass.mul.i78.us.5, %_p_scalar_409.us.5
  store double %p_add42.i79.us.5, double* %scevgep407408.us.5, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.5 = add nuw nsw i64 %polly.indvar392.us.5, 1
  %exitcond813.5.not = icmp eq i64 %polly.indvar392.us.5, %smin812
  br i1 %exitcond813.5.not, label %polly.loop_exit390.loopexit.us.5, label %polly.loop_header388.us.5

polly.loop_exit390.loopexit.us.5:                 ; preds = %polly.loop_header388.us.5
  %389 = add i64 %165, %175
  %scevgep398.us.6 = getelementptr i8, i8* %call2, i64 %389
  %scevgep398399.us.6 = bitcast i8* %scevgep398.us.6 to double*
  %_p_scalar_400.us.6 = load double, double* %scevgep398399.us.6, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.6 = getelementptr i8, i8* %call1, i64 %389
  %scevgep404405.us.6 = bitcast i8* %scevgep404.us.6 to double*
  %_p_scalar_406.us.6 = load double, double* %scevgep404405.us.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.6

polly.loop_header388.us.6:                        ; preds = %polly.loop_header388.us.6, %polly.loop_exit390.loopexit.us.5
  %polly.indvar392.us.6 = phi i64 [ %polly.indvar_next393.us.6, %polly.loop_header388.us.6 ], [ 0, %polly.loop_exit390.loopexit.us.5 ]
  %390 = add nuw nsw i64 %polly.indvar392.us.6, %167
  %391 = mul i64 %390, 8000
  %392 = add i64 %391, %165
  %scevgep395.us.6 = getelementptr i8, i8* %call1, i64 %392
  %scevgep395396.us.6 = bitcast i8* %scevgep395.us.6 to double*
  %_p_scalar_397.us.6 = load double, double* %scevgep395396.us.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.6 = fmul fast double %_p_scalar_400.us.6, %_p_scalar_397.us.6
  %scevgep401.us.6 = getelementptr i8, i8* %call2, i64 %392
  %scevgep401402.us.6 = bitcast i8* %scevgep401.us.6 to double*
  %_p_scalar_403.us.6 = load double, double* %scevgep401402.us.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.6 = fmul fast double %_p_scalar_406.us.6, %_p_scalar_403.us.6
  %393 = shl i64 %390, 3
  %394 = add i64 %393, %176
  %scevgep407.us.6 = getelementptr i8, i8* %call, i64 %394
  %scevgep407408.us.6 = bitcast i8* %scevgep407.us.6 to double*
  %_p_scalar_409.us.6 = load double, double* %scevgep407408.us.6, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.6 = fadd fast double %p_mul37.i75.us.6, %p_mul27.i73.us.6
  %p_reass.mul.i78.us.6 = fmul fast double %p_reass.add.i77.us.6, 1.500000e+00
  %p_add42.i79.us.6 = fadd fast double %p_reass.mul.i78.us.6, %_p_scalar_409.us.6
  store double %p_add42.i79.us.6, double* %scevgep407408.us.6, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.6 = add nuw nsw i64 %polly.indvar392.us.6, 1
  %exitcond813.6.not = icmp eq i64 %polly.indvar392.us.6, %smin812
  br i1 %exitcond813.6.not, label %polly.loop_exit390.loopexit.us.6, label %polly.loop_header388.us.6

polly.loop_exit390.loopexit.us.6:                 ; preds = %polly.loop_header388.us.6
  %395 = add i64 %166, %175
  %scevgep398.us.7 = getelementptr i8, i8* %call2, i64 %395
  %scevgep398399.us.7 = bitcast i8* %scevgep398.us.7 to double*
  %_p_scalar_400.us.7 = load double, double* %scevgep398399.us.7, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.7 = getelementptr i8, i8* %call1, i64 %395
  %scevgep404405.us.7 = bitcast i8* %scevgep404.us.7 to double*
  %_p_scalar_406.us.7 = load double, double* %scevgep404405.us.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.7

polly.loop_header388.us.7:                        ; preds = %polly.loop_header388.us.7, %polly.loop_exit390.loopexit.us.6
  %polly.indvar392.us.7 = phi i64 [ %polly.indvar_next393.us.7, %polly.loop_header388.us.7 ], [ 0, %polly.loop_exit390.loopexit.us.6 ]
  %396 = add nuw nsw i64 %polly.indvar392.us.7, %167
  %397 = mul i64 %396, 8000
  %398 = add i64 %397, %166
  %scevgep395.us.7 = getelementptr i8, i8* %call1, i64 %398
  %scevgep395396.us.7 = bitcast i8* %scevgep395.us.7 to double*
  %_p_scalar_397.us.7 = load double, double* %scevgep395396.us.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.7 = fmul fast double %_p_scalar_400.us.7, %_p_scalar_397.us.7
  %scevgep401.us.7 = getelementptr i8, i8* %call2, i64 %398
  %scevgep401402.us.7 = bitcast i8* %scevgep401.us.7 to double*
  %_p_scalar_403.us.7 = load double, double* %scevgep401402.us.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.7 = fmul fast double %_p_scalar_406.us.7, %_p_scalar_403.us.7
  %399 = shl i64 %396, 3
  %400 = add i64 %399, %176
  %scevgep407.us.7 = getelementptr i8, i8* %call, i64 %400
  %scevgep407408.us.7 = bitcast i8* %scevgep407.us.7 to double*
  %_p_scalar_409.us.7 = load double, double* %scevgep407408.us.7, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.7 = fadd fast double %p_mul37.i75.us.7, %p_mul27.i73.us.7
  %p_reass.mul.i78.us.7 = fmul fast double %p_reass.add.i77.us.7, 1.500000e+00
  %p_add42.i79.us.7 = fadd fast double %p_reass.mul.i78.us.7, %_p_scalar_409.us.7
  store double %p_add42.i79.us.7, double* %scevgep407408.us.7, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.7 = add nuw nsw i64 %polly.indvar392.us.7, 1
  %exitcond813.7.not = icmp eq i64 %polly.indvar392.us.7, %smin812
  br i1 %exitcond813.7.not, label %polly.loop_exit383, label %polly.loop_header388.us.7

polly.loop_header546.us.1:                        ; preds = %polly.loop_header546.us.1, %polly.loop_exit548.loopexit.us
  %polly.indvar550.us.1 = phi i64 [ %polly.indvar_next551.us.1, %polly.loop_header546.us.1 ], [ 0, %polly.loop_exit548.loopexit.us ]
  %401 = add nuw nsw i64 %polly.indvar550.us.1, %215
  %402 = mul i64 %401, 8000
  %403 = add i64 %402, %203
  %scevgep553.us.1 = getelementptr i8, i8* %call1, i64 %403
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %scevgep559.us.1 = getelementptr i8, i8* %call2, i64 %403
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_564.us.1, %_p_scalar_561.us.1
  %404 = shl i64 %401, 3
  %405 = add i64 %404, %224
  %scevgep565.us.1 = getelementptr i8, i8* %call, i64 %405
  %scevgep565566.us.1 = bitcast i8* %scevgep565.us.1 to double*
  %_p_scalar_567.us.1 = load double, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_567.us.1
  store double %p_add42.i.us.1, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.1 = add nuw nsw i64 %polly.indvar550.us.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar550.us.1, %smin831
  br i1 %exitcond832.1.not, label %polly.loop_exit548.loopexit.us.1, label %polly.loop_header546.us.1

polly.loop_exit548.loopexit.us.1:                 ; preds = %polly.loop_header546.us.1
  %406 = add i64 %205, %223
  %scevgep556.us.2 = getelementptr i8, i8* %call2, i64 %406
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.2 = getelementptr i8, i8* %call1, i64 %406
  %scevgep562563.us.2 = bitcast i8* %scevgep562.us.2 to double*
  %_p_scalar_564.us.2 = load double, double* %scevgep562563.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.2

polly.loop_header546.us.2:                        ; preds = %polly.loop_header546.us.2, %polly.loop_exit548.loopexit.us.1
  %polly.indvar550.us.2 = phi i64 [ %polly.indvar_next551.us.2, %polly.loop_header546.us.2 ], [ 0, %polly.loop_exit548.loopexit.us.1 ]
  %407 = add nuw nsw i64 %polly.indvar550.us.2, %215
  %408 = mul i64 %407, 8000
  %409 = add i64 %408, %205
  %scevgep553.us.2 = getelementptr i8, i8* %call1, i64 %409
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %scevgep559.us.2 = getelementptr i8, i8* %call2, i64 %409
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_564.us.2, %_p_scalar_561.us.2
  %410 = shl i64 %407, 3
  %411 = add i64 %410, %224
  %scevgep565.us.2 = getelementptr i8, i8* %call, i64 %411
  %scevgep565566.us.2 = bitcast i8* %scevgep565.us.2 to double*
  %_p_scalar_567.us.2 = load double, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_567.us.2
  store double %p_add42.i.us.2, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.2 = add nuw nsw i64 %polly.indvar550.us.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar550.us.2, %smin831
  br i1 %exitcond832.2.not, label %polly.loop_exit548.loopexit.us.2, label %polly.loop_header546.us.2

polly.loop_exit548.loopexit.us.2:                 ; preds = %polly.loop_header546.us.2
  %412 = add i64 %207, %223
  %scevgep556.us.3 = getelementptr i8, i8* %call2, i64 %412
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.3 = getelementptr i8, i8* %call1, i64 %412
  %scevgep562563.us.3 = bitcast i8* %scevgep562.us.3 to double*
  %_p_scalar_564.us.3 = load double, double* %scevgep562563.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.3

polly.loop_header546.us.3:                        ; preds = %polly.loop_header546.us.3, %polly.loop_exit548.loopexit.us.2
  %polly.indvar550.us.3 = phi i64 [ %polly.indvar_next551.us.3, %polly.loop_header546.us.3 ], [ 0, %polly.loop_exit548.loopexit.us.2 ]
  %413 = add nuw nsw i64 %polly.indvar550.us.3, %215
  %414 = mul i64 %413, 8000
  %415 = add i64 %414, %207
  %scevgep553.us.3 = getelementptr i8, i8* %call1, i64 %415
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %scevgep559.us.3 = getelementptr i8, i8* %call2, i64 %415
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_564.us.3, %_p_scalar_561.us.3
  %416 = shl i64 %413, 3
  %417 = add i64 %416, %224
  %scevgep565.us.3 = getelementptr i8, i8* %call, i64 %417
  %scevgep565566.us.3 = bitcast i8* %scevgep565.us.3 to double*
  %_p_scalar_567.us.3 = load double, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_567.us.3
  store double %p_add42.i.us.3, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.3 = add nuw nsw i64 %polly.indvar550.us.3, 1
  %exitcond832.3.not = icmp eq i64 %polly.indvar550.us.3, %smin831
  br i1 %exitcond832.3.not, label %polly.loop_exit548.loopexit.us.3, label %polly.loop_header546.us.3

polly.loop_exit548.loopexit.us.3:                 ; preds = %polly.loop_header546.us.3
  %418 = add i64 %209, %223
  %scevgep556.us.4 = getelementptr i8, i8* %call2, i64 %418
  %scevgep556557.us.4 = bitcast i8* %scevgep556.us.4 to double*
  %_p_scalar_558.us.4 = load double, double* %scevgep556557.us.4, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.4 = getelementptr i8, i8* %call1, i64 %418
  %scevgep562563.us.4 = bitcast i8* %scevgep562.us.4 to double*
  %_p_scalar_564.us.4 = load double, double* %scevgep562563.us.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.4

polly.loop_header546.us.4:                        ; preds = %polly.loop_header546.us.4, %polly.loop_exit548.loopexit.us.3
  %polly.indvar550.us.4 = phi i64 [ %polly.indvar_next551.us.4, %polly.loop_header546.us.4 ], [ 0, %polly.loop_exit548.loopexit.us.3 ]
  %419 = add nuw nsw i64 %polly.indvar550.us.4, %215
  %420 = mul i64 %419, 8000
  %421 = add i64 %420, %209
  %scevgep553.us.4 = getelementptr i8, i8* %call1, i64 %421
  %scevgep553554.us.4 = bitcast i8* %scevgep553.us.4 to double*
  %_p_scalar_555.us.4 = load double, double* %scevgep553554.us.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_558.us.4, %_p_scalar_555.us.4
  %scevgep559.us.4 = getelementptr i8, i8* %call2, i64 %421
  %scevgep559560.us.4 = bitcast i8* %scevgep559.us.4 to double*
  %_p_scalar_561.us.4 = load double, double* %scevgep559560.us.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_564.us.4, %_p_scalar_561.us.4
  %422 = shl i64 %419, 3
  %423 = add i64 %422, %224
  %scevgep565.us.4 = getelementptr i8, i8* %call, i64 %423
  %scevgep565566.us.4 = bitcast i8* %scevgep565.us.4 to double*
  %_p_scalar_567.us.4 = load double, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_567.us.4
  store double %p_add42.i.us.4, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.4 = add nuw nsw i64 %polly.indvar550.us.4, 1
  %exitcond832.4.not = icmp eq i64 %polly.indvar550.us.4, %smin831
  br i1 %exitcond832.4.not, label %polly.loop_exit548.loopexit.us.4, label %polly.loop_header546.us.4

polly.loop_exit548.loopexit.us.4:                 ; preds = %polly.loop_header546.us.4
  %424 = add i64 %211, %223
  %scevgep556.us.5 = getelementptr i8, i8* %call2, i64 %424
  %scevgep556557.us.5 = bitcast i8* %scevgep556.us.5 to double*
  %_p_scalar_558.us.5 = load double, double* %scevgep556557.us.5, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.5 = getelementptr i8, i8* %call1, i64 %424
  %scevgep562563.us.5 = bitcast i8* %scevgep562.us.5 to double*
  %_p_scalar_564.us.5 = load double, double* %scevgep562563.us.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.5

polly.loop_header546.us.5:                        ; preds = %polly.loop_header546.us.5, %polly.loop_exit548.loopexit.us.4
  %polly.indvar550.us.5 = phi i64 [ %polly.indvar_next551.us.5, %polly.loop_header546.us.5 ], [ 0, %polly.loop_exit548.loopexit.us.4 ]
  %425 = add nuw nsw i64 %polly.indvar550.us.5, %215
  %426 = mul i64 %425, 8000
  %427 = add i64 %426, %211
  %scevgep553.us.5 = getelementptr i8, i8* %call1, i64 %427
  %scevgep553554.us.5 = bitcast i8* %scevgep553.us.5 to double*
  %_p_scalar_555.us.5 = load double, double* %scevgep553554.us.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.5 = fmul fast double %_p_scalar_558.us.5, %_p_scalar_555.us.5
  %scevgep559.us.5 = getelementptr i8, i8* %call2, i64 %427
  %scevgep559560.us.5 = bitcast i8* %scevgep559.us.5 to double*
  %_p_scalar_561.us.5 = load double, double* %scevgep559560.us.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.5 = fmul fast double %_p_scalar_564.us.5, %_p_scalar_561.us.5
  %428 = shl i64 %425, 3
  %429 = add i64 %428, %224
  %scevgep565.us.5 = getelementptr i8, i8* %call, i64 %429
  %scevgep565566.us.5 = bitcast i8* %scevgep565.us.5 to double*
  %_p_scalar_567.us.5 = load double, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.5 = fadd fast double %p_mul37.i.us.5, %p_mul27.i.us.5
  %p_reass.mul.i.us.5 = fmul fast double %p_reass.add.i.us.5, 1.500000e+00
  %p_add42.i.us.5 = fadd fast double %p_reass.mul.i.us.5, %_p_scalar_567.us.5
  store double %p_add42.i.us.5, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.5 = add nuw nsw i64 %polly.indvar550.us.5, 1
  %exitcond832.5.not = icmp eq i64 %polly.indvar550.us.5, %smin831
  br i1 %exitcond832.5.not, label %polly.loop_exit548.loopexit.us.5, label %polly.loop_header546.us.5

polly.loop_exit548.loopexit.us.5:                 ; preds = %polly.loop_header546.us.5
  %430 = add i64 %213, %223
  %scevgep556.us.6 = getelementptr i8, i8* %call2, i64 %430
  %scevgep556557.us.6 = bitcast i8* %scevgep556.us.6 to double*
  %_p_scalar_558.us.6 = load double, double* %scevgep556557.us.6, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.6 = getelementptr i8, i8* %call1, i64 %430
  %scevgep562563.us.6 = bitcast i8* %scevgep562.us.6 to double*
  %_p_scalar_564.us.6 = load double, double* %scevgep562563.us.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.6

polly.loop_header546.us.6:                        ; preds = %polly.loop_header546.us.6, %polly.loop_exit548.loopexit.us.5
  %polly.indvar550.us.6 = phi i64 [ %polly.indvar_next551.us.6, %polly.loop_header546.us.6 ], [ 0, %polly.loop_exit548.loopexit.us.5 ]
  %431 = add nuw nsw i64 %polly.indvar550.us.6, %215
  %432 = mul i64 %431, 8000
  %433 = add i64 %432, %213
  %scevgep553.us.6 = getelementptr i8, i8* %call1, i64 %433
  %scevgep553554.us.6 = bitcast i8* %scevgep553.us.6 to double*
  %_p_scalar_555.us.6 = load double, double* %scevgep553554.us.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.6 = fmul fast double %_p_scalar_558.us.6, %_p_scalar_555.us.6
  %scevgep559.us.6 = getelementptr i8, i8* %call2, i64 %433
  %scevgep559560.us.6 = bitcast i8* %scevgep559.us.6 to double*
  %_p_scalar_561.us.6 = load double, double* %scevgep559560.us.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.6 = fmul fast double %_p_scalar_564.us.6, %_p_scalar_561.us.6
  %434 = shl i64 %431, 3
  %435 = add i64 %434, %224
  %scevgep565.us.6 = getelementptr i8, i8* %call, i64 %435
  %scevgep565566.us.6 = bitcast i8* %scevgep565.us.6 to double*
  %_p_scalar_567.us.6 = load double, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.6 = fadd fast double %p_mul37.i.us.6, %p_mul27.i.us.6
  %p_reass.mul.i.us.6 = fmul fast double %p_reass.add.i.us.6, 1.500000e+00
  %p_add42.i.us.6 = fadd fast double %p_reass.mul.i.us.6, %_p_scalar_567.us.6
  store double %p_add42.i.us.6, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.6 = add nuw nsw i64 %polly.indvar550.us.6, 1
  %exitcond832.6.not = icmp eq i64 %polly.indvar550.us.6, %smin831
  br i1 %exitcond832.6.not, label %polly.loop_exit548.loopexit.us.6, label %polly.loop_header546.us.6

polly.loop_exit548.loopexit.us.6:                 ; preds = %polly.loop_header546.us.6
  %436 = add i64 %214, %223
  %scevgep556.us.7 = getelementptr i8, i8* %call2, i64 %436
  %scevgep556557.us.7 = bitcast i8* %scevgep556.us.7 to double*
  %_p_scalar_558.us.7 = load double, double* %scevgep556557.us.7, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.7 = getelementptr i8, i8* %call1, i64 %436
  %scevgep562563.us.7 = bitcast i8* %scevgep562.us.7 to double*
  %_p_scalar_564.us.7 = load double, double* %scevgep562563.us.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.7

polly.loop_header546.us.7:                        ; preds = %polly.loop_header546.us.7, %polly.loop_exit548.loopexit.us.6
  %polly.indvar550.us.7 = phi i64 [ %polly.indvar_next551.us.7, %polly.loop_header546.us.7 ], [ 0, %polly.loop_exit548.loopexit.us.6 ]
  %437 = add nuw nsw i64 %polly.indvar550.us.7, %215
  %438 = mul i64 %437, 8000
  %439 = add i64 %438, %214
  %scevgep553.us.7 = getelementptr i8, i8* %call1, i64 %439
  %scevgep553554.us.7 = bitcast i8* %scevgep553.us.7 to double*
  %_p_scalar_555.us.7 = load double, double* %scevgep553554.us.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.7 = fmul fast double %_p_scalar_558.us.7, %_p_scalar_555.us.7
  %scevgep559.us.7 = getelementptr i8, i8* %call2, i64 %439
  %scevgep559560.us.7 = bitcast i8* %scevgep559.us.7 to double*
  %_p_scalar_561.us.7 = load double, double* %scevgep559560.us.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.7 = fmul fast double %_p_scalar_564.us.7, %_p_scalar_561.us.7
  %440 = shl i64 %437, 3
  %441 = add i64 %440, %224
  %scevgep565.us.7 = getelementptr i8, i8* %call, i64 %441
  %scevgep565566.us.7 = bitcast i8* %scevgep565.us.7 to double*
  %_p_scalar_567.us.7 = load double, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.7 = fadd fast double %p_mul37.i.us.7, %p_mul27.i.us.7
  %p_reass.mul.i.us.7 = fmul fast double %p_reass.add.i.us.7, 1.500000e+00
  %p_add42.i.us.7 = fadd fast double %p_reass.mul.i.us.7, %_p_scalar_567.us.7
  store double %p_add42.i.us.7, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.7 = add nuw nsw i64 %polly.indvar550.us.7, 1
  %exitcond832.7.not = icmp eq i64 %polly.indvar550.us.7, %smin831
  br i1 %exitcond832.7.not, label %polly.loop_exit541, label %polly.loop_header546.us.7
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
!24 = !{!"llvm.loop.tile.size", i32 64}
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
!44 = !{!"llvm.loop.tile.size", i32 96}
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
