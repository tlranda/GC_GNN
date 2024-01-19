; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9693.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9693.c"
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
  %scevgep891 = getelementptr i8, i8* %call2, i64 %12
  %scevgep890 = getelementptr i8, i8* %call2, i64 %11
  %scevgep889 = getelementptr i8, i8* %call1, i64 %12
  %scevgep888 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep888, %scevgep891
  %bound1 = icmp ult i8* %scevgep890, %scevgep889
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
  br i1 %exitcond18.not.i, label %vector.ph895, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph895:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert902 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat903 = shufflevector <4 x i64> %broadcast.splatinsert902, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %vector.ph895
  %index896 = phi i64 [ 0, %vector.ph895 ], [ %index.next897, %vector.body894 ]
  %vec.ind900 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph895 ], [ %vec.ind.next901, %vector.body894 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind900, %broadcast.splat903
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index896
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next897 = add i64 %index896, 4
  %vec.ind.next901 = add <4 x i64> %vec.ind900, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next897, 1200
  br i1 %40, label %for.inc41.i, label %vector.body894, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body894
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph895, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check958 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check958, label %for.body3.i46.preheader1035, label %vector.ph959

vector.ph959:                                     ; preds = %for.body3.i46.preheader
  %n.vec961 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next963, %vector.body957 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index962
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next963 = add i64 %index962, 4
  %46 = icmp eq i64 %index.next963, %n.vec961
  br i1 %46, label %middle.block955, label %vector.body957, !llvm.loop !18

middle.block955:                                  ; preds = %vector.body957
  %cmp.n965 = icmp eq i64 %indvars.iv21.i, %n.vec961
  br i1 %cmp.n965, label %for.inc6.i, label %for.body3.i46.preheader1035

for.body3.i46.preheader1035:                      ; preds = %for.body3.i46.preheader, %middle.block955
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec961, %middle.block955 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1035, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1035 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block955, %for.cond1.preheader.i45
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
  %min.iters.check981 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check981, label %for.body3.i60.preheader1033, label %vector.ph982

vector.ph982:                                     ; preds = %for.body3.i60.preheader
  %n.vec984 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body980 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index985
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load989 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load989, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next986 = add i64 %index985, 4
  %57 = icmp eq i64 %index.next986, %n.vec984
  br i1 %57, label %middle.block978, label %vector.body980, !llvm.loop !51

middle.block978:                                  ; preds = %vector.body980
  %cmp.n988 = icmp eq i64 %indvars.iv21.i52, %n.vec984
  br i1 %cmp.n988, label %for.inc6.i63, label %for.body3.i60.preheader1033

for.body3.i60.preheader1033:                      ; preds = %for.body3.i60.preheader, %middle.block978
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec984, %middle.block978 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1033, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1033 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block978, %for.cond1.preheader.i54
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
  %min.iters.check1007 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1007, label %for.body3.i99.preheader1031, label %vector.ph1008

vector.ph1008:                                    ; preds = %for.body3.i99.preheader
  %n.vec1010 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1006 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1011
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1015 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1015, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1012 = add i64 %index1011, 4
  %68 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %68, label %middle.block1004, label %vector.body1006, !llvm.loop !53

middle.block1004:                                 ; preds = %vector.body1006
  %cmp.n1014 = icmp eq i64 %indvars.iv21.i91, %n.vec1010
  br i1 %cmp.n1014, label %for.inc6.i102, label %for.body3.i99.preheader1031

for.body3.i99.preheader1031:                      ; preds = %for.body3.i99.preheader, %middle.block1004
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1010, %middle.block1004 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1031, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1031 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1004, %for.cond1.preheader.i93
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
  %indvar1019 = phi i64 [ %indvar.next1020, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1019, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1021 = icmp ult i64 %88, 4
  br i1 %min.iters.check1021, label %polly.loop_header191.preheader, label %vector.ph1022

vector.ph1022:                                    ; preds = %polly.loop_header
  %n.vec1024 = and i64 %88, -4
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1022
  %index1025 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1026, %vector.body1018 ]
  %90 = shl nuw nsw i64 %index1025, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1029 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1029, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1026 = add i64 %index1025, 4
  %95 = icmp eq i64 %index.next1026, %n.vec1024
  br i1 %95, label %middle.block1016, label %vector.body1018, !llvm.loop !64

middle.block1016:                                 ; preds = %vector.body1018
  %cmp.n1028 = icmp eq i64 %88, %n.vec1024
  br i1 %cmp.n1028, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1016
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1024, %middle.block1016 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1016
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1020 = add i64 %indvar1019, 1
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
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit207 ], [ 2, %polly.loop_exit193 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = add nuw i64 %indvars.iv794, %97
  %99 = mul nsw i64 %polly.indvar202, -20
  %100 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 20
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond798.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %101 = shl i64 %polly.indvar208, 6
  %102 = shl i64 %polly.indvar208, 6
  %103 = shl i64 %polly.indvar208, 6
  %104 = or i64 %103, 8
  %105 = shl i64 %polly.indvar208, 6
  %106 = or i64 %105, 16
  %107 = shl i64 %polly.indvar208, 6
  %108 = or i64 %107, 24
  %109 = shl i64 %polly.indvar208, 6
  %110 = or i64 %109, 32
  %111 = shl i64 %polly.indvar208, 6
  %112 = or i64 %111, 40
  %113 = shl i64 %polly.indvar208, 6
  %114 = or i64 %113, 48
  %115 = or i64 %101, 56
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next209, 125
  br i1 %exitcond797.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %indvars.iv787, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %116 = shl nsw i64 %polly.indvar214, 4
  %117 = add nsw i64 %116, %99
  %118 = icmp sgt i64 %117, 0
  %119 = select i1 %118, i64 %117, i64 0
  %polly.loop_guard = icmp slt i64 %119, 20
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %120 = add i64 %smax, %indvars.iv789
  %121 = sub nsw i64 %100, %116
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 16
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -16
  %exitcond796 = icmp eq i64 %polly.indvar_next215, %98
  br i1 %exitcond796, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv791 = phi i64 [ %120, %polly.loop_header217.preheader ], [ %indvars.iv.next792, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %119, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 15)
  %122 = add nsw i64 %polly.indvar220, %121
  %polly.loop_guard233877 = icmp sgt i64 %122, -1
  %123 = add nuw nsw i64 %polly.indvar220, %100
  %124 = mul i64 %123, 8000
  %125 = mul i64 %123, 9600
  br i1 %polly.loop_guard233877, label %polly.loop_header223.us.preheader, label %polly.loop_exit225

polly.loop_header223.us.preheader:                ; preds = %polly.loop_header217
  %126 = add i64 %102, %124
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %126
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %126
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us.preheader, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us.preheader ]
  %127 = add nuw nsw i64 %polly.indvar234.us, %116
  %128 = mul nuw nsw i64 %127, 8000
  %129 = add nuw nsw i64 %128, %102
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %129
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %130 = shl i64 %127, 3
  %131 = add i64 %130, %125
  %scevgep249.us = getelementptr i8, i8* %call, i64 %131
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
  %132 = add i64 %104, %124
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %132
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %132
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_exit225:                               ; preds = %polly.loop_header230.us.7, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 19
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar993 = phi i64 [ %indvar.next994, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %133 = add i64 %indvar993, 1
  %134 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %134
  %min.iters.check995 = icmp ult i64 %133, 4
  br i1 %min.iters.check995, label %polly.loop_header344.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %polly.loop_header338
  %n.vec998 = and i64 %133, -4
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body992 ]
  %135 = shl nuw nsw i64 %index999, 3
  %136 = getelementptr i8, i8* %scevgep350, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load1003 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !69, !noalias !71
  %138 = fmul fast <4 x double> %wide.load1003, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %139 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !69, !noalias !71
  %index.next1000 = add i64 %index999, 4
  %140 = icmp eq i64 %index.next1000, %n.vec998
  br i1 %140, label %middle.block990, label %vector.body992, !llvm.loop !74

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1002 = icmp eq i64 %133, %n.vec998
  br i1 %cmp.n1002, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block990
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec998, %middle.block990 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block990
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next994 = add i64 %indvar993, 1
  br i1 %exitcond821.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %141 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %141
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond820.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit362 ], [ 2, %polly.loop_exit346 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %142 = lshr i64 %polly.indvar357, 2
  %143 = add nuw i64 %indvars.iv815, %142
  %144 = mul nsw i64 %polly.indvar357, -20
  %145 = mul nuw nsw i64 %polly.indvar357, 20
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -20
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 20
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next358, 60
  br i1 %exitcond819.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit369 ]
  %146 = shl i64 %polly.indvar363, 6
  %147 = shl i64 %polly.indvar363, 6
  %148 = shl i64 %polly.indvar363, 6
  %149 = or i64 %148, 8
  %150 = shl i64 %polly.indvar363, 6
  %151 = or i64 %150, 16
  %152 = shl i64 %polly.indvar363, 6
  %153 = or i64 %152, 24
  %154 = shl i64 %polly.indvar363, 6
  %155 = or i64 %154, 32
  %156 = shl i64 %polly.indvar363, 6
  %157 = or i64 %156, 40
  %158 = shl i64 %polly.indvar363, 6
  %159 = or i64 %158, 48
  %160 = or i64 %146, 56
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next364, 125
  br i1 %exitcond818.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit376 ], [ %indvars.iv806, %polly.loop_header360 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit376 ], [ %indvars.iv801, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %161 = shl nsw i64 %polly.indvar370, 4
  %162 = add nsw i64 %161, %144
  %163 = icmp sgt i64 %162, 0
  %164 = select i1 %163, i64 %162, i64 0
  %polly.loop_guard377 = icmp slt i64 %164, 20
  br i1 %polly.loop_guard377, label %polly.loop_header374.preheader, label %polly.loop_exit376

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax805 = call i64 @llvm.smax.i64(i64 %indvars.iv803, i64 0)
  %165 = add i64 %smax805, %indvars.iv808
  %166 = sub nsw i64 %145, %161
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 16
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, -16
  %exitcond817 = icmp eq i64 %polly.indvar_next371, %143
  br i1 %exitcond817, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv810 = phi i64 [ %165, %polly.loop_header374.preheader ], [ %indvars.iv.next811, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %164, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 15)
  %167 = add nsw i64 %polly.indvar378, %166
  %polly.loop_guard391878 = icmp sgt i64 %167, -1
  %168 = add nuw nsw i64 %polly.indvar378, %145
  %169 = mul i64 %168, 8000
  %170 = mul i64 %168, 9600
  br i1 %polly.loop_guard391878, label %polly.loop_header381.us.preheader, label %polly.loop_exit383

polly.loop_header381.us.preheader:                ; preds = %polly.loop_header374
  %171 = add i64 %147, %169
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %171
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %171
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us.preheader, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us.preheader ]
  %172 = add nuw nsw i64 %polly.indvar392.us, %161
  %173 = mul nuw nsw i64 %172, 8000
  %174 = add nuw nsw i64 %173, %147
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %174
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %174
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %175 = shl i64 %172, 3
  %176 = add i64 %175, %170
  %scevgep407.us = getelementptr i8, i8* %call, i64 %176
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
  %177 = add i64 %149, %169
  %scevgep398.us.1 = getelementptr i8, i8* %call2, i64 %177
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.1 = getelementptr i8, i8* %call1, i64 %177
  %scevgep404405.us.1 = bitcast i8* %scevgep404.us.1 to double*
  %_p_scalar_406.us.1 = load double, double* %scevgep404405.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.1

polly.loop_exit383:                               ; preds = %polly.loop_header388.us.7, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380 = icmp ult i64 %polly.indvar378, 19
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  br i1 %polly.loop_cond380, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %178 = add i64 %indvar, 1
  %179 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %179
  %min.iters.check969 = icmp ult i64 %178, 4
  br i1 %min.iters.check969, label %polly.loop_header502.preheader, label %vector.ph970

vector.ph970:                                     ; preds = %polly.loop_header496
  %n.vec972 = and i64 %178, -4
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph970
  %index973 = phi i64 [ 0, %vector.ph970 ], [ %index.next974, %vector.body968 ]
  %180 = shl nuw nsw i64 %index973, 3
  %181 = getelementptr i8, i8* %scevgep508, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  %wide.load977 = load <4 x double>, <4 x double>* %182, align 8, !alias.scope !78, !noalias !80
  %183 = fmul fast <4 x double> %wide.load977, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %184 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %183, <4 x double>* %184, align 8, !alias.scope !78, !noalias !80
  %index.next974 = add i64 %index973, 4
  %185 = icmp eq i64 %index.next974, %n.vec972
  br i1 %185, label %middle.block966, label %vector.body968, !llvm.loop !83

middle.block966:                                  ; preds = %vector.body968
  %cmp.n976 = icmp eq i64 %178, %n.vec972
  br i1 %cmp.n976, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block966
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec972, %middle.block966 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block966
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond842.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %186 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %186
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond841.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit520 ], [ 2, %polly.loop_exit504 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %187 = lshr i64 %polly.indvar515, 2
  %188 = add nuw i64 %indvars.iv836, %187
  %189 = mul nsw i64 %polly.indvar515, -20
  %190 = mul nuw nsw i64 %polly.indvar515, 20
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -20
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 20
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next516, 60
  br i1 %exitcond840.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %polly.indvar521 = phi i64 [ 0, %polly.loop_header512 ], [ %polly.indvar_next522, %polly.loop_exit527 ]
  %191 = shl i64 %polly.indvar521, 6
  %192 = shl i64 %polly.indvar521, 6
  %193 = shl i64 %polly.indvar521, 6
  %194 = or i64 %193, 8
  %195 = shl i64 %polly.indvar521, 6
  %196 = or i64 %195, 16
  %197 = shl i64 %polly.indvar521, 6
  %198 = or i64 %197, 24
  %199 = shl i64 %polly.indvar521, 6
  %200 = or i64 %199, 32
  %201 = shl i64 %polly.indvar521, 6
  %202 = or i64 %201, 40
  %203 = shl i64 %polly.indvar521, 6
  %204 = or i64 %203, 48
  %205 = or i64 %191, 56
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next522, 125
  br i1 %exitcond839.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit534 ], [ %indvars.iv827, %polly.loop_header518 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit534 ], [ %indvars.iv822, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %206 = shl nsw i64 %polly.indvar528, 4
  %207 = add nsw i64 %206, %189
  %208 = icmp sgt i64 %207, 0
  %209 = select i1 %208, i64 %207, i64 0
  %polly.loop_guard535 = icmp slt i64 %209, 20
  br i1 %polly.loop_guard535, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax826 = call i64 @llvm.smax.i64(i64 %indvars.iv824, i64 0)
  %210 = add i64 %smax826, %indvars.iv829
  %211 = sub nsw i64 %190, %206
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, 16
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -16
  %exitcond838 = icmp eq i64 %polly.indvar_next529, %188
  br i1 %exitcond838, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv831 = phi i64 [ %210, %polly.loop_header532.preheader ], [ %indvars.iv.next832, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %209, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 15)
  %212 = add nsw i64 %polly.indvar536, %211
  %polly.loop_guard549879 = icmp sgt i64 %212, -1
  %213 = add nuw nsw i64 %polly.indvar536, %190
  %214 = mul i64 %213, 8000
  %215 = mul i64 %213, 9600
  br i1 %polly.loop_guard549879, label %polly.loop_header539.us.preheader, label %polly.loop_exit541

polly.loop_header539.us.preheader:                ; preds = %polly.loop_header532
  %216 = add i64 %192, %214
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %216
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %216
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us.preheader, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar550.us, %206
  %218 = mul nuw nsw i64 %217, 8000
  %219 = add nuw nsw i64 %218, %192
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %219
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %219
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %220 = shl i64 %217, 3
  %221 = add i64 %220, %215
  %scevgep565.us = getelementptr i8, i8* %call, i64 %221
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us = add nuw nsw i64 %polly.indvar550.us, 1
  %exitcond834.not = icmp eq i64 %polly.indvar550.us, %smin833
  br i1 %exitcond834.not, label %polly.loop_exit548.loopexit.us, label %polly.loop_header546.us

polly.loop_exit548.loopexit.us:                   ; preds = %polly.loop_header546.us
  %222 = add i64 %194, %214
  %scevgep556.us.1 = getelementptr i8, i8* %call2, i64 %222
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.1 = getelementptr i8, i8* %call1, i64 %222
  %scevgep562563.us.1 = bitcast i8* %scevgep562.us.1 to double*
  %_p_scalar_564.us.1 = load double, double* %scevgep562563.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.1

polly.loop_exit541:                               ; preds = %polly.loop_header546.us.7, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538 = icmp ult i64 %polly.indvar536, 19
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond538, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 -1168)
  %223 = shl nsw i64 %polly.indvar697, 5
  %224 = add nsw i64 %smin869, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, -32
  %exitcond872.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond872.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %225 = mul nsw i64 %polly.indvar703, -32
  %smin907 = call i64 @llvm.smin.i64(i64 %225, i64 -1168)
  %226 = add nsw i64 %smin907, 1200
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -1168)
  %227 = shl nsw i64 %polly.indvar703, 5
  %228 = add nsw i64 %smin865, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond871.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond871.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %229 = add nuw nsw i64 %polly.indvar709, %223
  %230 = trunc i64 %229 to i32
  %231 = mul nuw nsw i64 %229, 9600
  %min.iters.check = icmp eq i64 %226, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph908

vector.ph908:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert915 = insertelement <4 x i64> poison, i64 %227, i32 0
  %broadcast.splat916 = shufflevector <4 x i64> %broadcast.splatinsert915, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert917 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat918 = shufflevector <4 x i32> %broadcast.splatinsert917, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %vector.ph908
  %index909 = phi i64 [ 0, %vector.ph908 ], [ %index.next910, %vector.body906 ]
  %vec.ind913 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph908 ], [ %vec.ind.next914, %vector.body906 ]
  %232 = add nuw nsw <4 x i64> %vec.ind913, %broadcast.splat916
  %233 = trunc <4 x i64> %232 to <4 x i32>
  %234 = mul <4 x i32> %broadcast.splat918, %233
  %235 = add <4 x i32> %234, <i32 3, i32 3, i32 3, i32 3>
  %236 = urem <4 x i32> %235, <i32 1200, i32 1200, i32 1200, i32 1200>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %239 = extractelement <4 x i64> %232, i32 0
  %240 = shl i64 %239, 3
  %241 = add nuw nsw i64 %240, %231
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %238, <4 x double>* %243, align 8, !alias.scope !87, !noalias !89
  %index.next910 = add i64 %index909, 4
  %vec.ind.next914 = add <4 x i64> %vec.ind913, <i64 4, i64 4, i64 4, i64 4>
  %244 = icmp eq i64 %index.next910, %226
  br i1 %244, label %polly.loop_exit714, label %vector.body906, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body906, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond870.not = icmp eq i64 %polly.indvar709, %224
  br i1 %exitcond870.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %245 = add nuw nsw i64 %polly.indvar715, %227
  %246 = trunc i64 %245 to i32
  %247 = mul i32 %246, %230
  %248 = add i32 %247, 3
  %249 = urem i32 %248, 1200
  %p_conv31.i = sitofp i32 %249 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %250 = shl i64 %245, 3
  %251 = add nuw nsw i64 %250, %231
  %scevgep718 = getelementptr i8, i8* %call, i64 %251
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond866.not = icmp eq i64 %polly.indvar715, %228
  br i1 %exitcond866.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin859 = call i64 @llvm.smin.i64(i64 %indvars.iv857, i64 -1168)
  %252 = shl nsw i64 %polly.indvar724, 5
  %253 = add nsw i64 %smin859, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next858 = add nsw i64 %indvars.iv857, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond862.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %254 = mul nsw i64 %polly.indvar730, -32
  %smin922 = call i64 @llvm.smin.i64(i64 %254, i64 -968)
  %255 = add nsw i64 %smin922, 1000
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -968)
  %256 = shl nsw i64 %polly.indvar730, 5
  %257 = add nsw i64 %smin855, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond861.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond861.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %258 = add nuw nsw i64 %polly.indvar736, %252
  %259 = trunc i64 %258 to i32
  %260 = mul nuw nsw i64 %258, 8000
  %min.iters.check923 = icmp eq i64 %255, 0
  br i1 %min.iters.check923, label %polly.loop_header739, label %vector.ph924

vector.ph924:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert933 = insertelement <4 x i64> poison, i64 %256, i32 0
  %broadcast.splat934 = shufflevector <4 x i64> %broadcast.splatinsert933, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert935 = insertelement <4 x i32> poison, i32 %259, i32 0
  %broadcast.splat936 = shufflevector <4 x i32> %broadcast.splatinsert935, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body921

vector.body921:                                   ; preds = %vector.body921, %vector.ph924
  %index927 = phi i64 [ 0, %vector.ph924 ], [ %index.next928, %vector.body921 ]
  %vec.ind931 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph924 ], [ %vec.ind.next932, %vector.body921 ]
  %261 = add nuw nsw <4 x i64> %vec.ind931, %broadcast.splat934
  %262 = trunc <4 x i64> %261 to <4 x i32>
  %263 = mul <4 x i32> %broadcast.splat936, %262
  %264 = add <4 x i32> %263, <i32 2, i32 2, i32 2, i32 2>
  %265 = urem <4 x i32> %264, <i32 1000, i32 1000, i32 1000, i32 1000>
  %266 = sitofp <4 x i32> %265 to <4 x double>
  %267 = fmul fast <4 x double> %266, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %268 = extractelement <4 x i64> %261, i32 0
  %269 = shl i64 %268, 3
  %270 = add nuw nsw i64 %269, %260
  %271 = getelementptr i8, i8* %call2, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %267, <4 x double>* %272, align 8, !alias.scope !91, !noalias !94
  %index.next928 = add i64 %index927, 4
  %vec.ind.next932 = add <4 x i64> %vec.ind931, <i64 4, i64 4, i64 4, i64 4>
  %273 = icmp eq i64 %index.next928, %255
  br i1 %273, label %polly.loop_exit741, label %vector.body921, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body921, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond860.not = icmp eq i64 %polly.indvar736, %253
  br i1 %exitcond860.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %274 = add nuw nsw i64 %polly.indvar742, %256
  %275 = trunc i64 %274 to i32
  %276 = mul i32 %275, %259
  %277 = add i32 %276, 2
  %278 = urem i32 %277, 1000
  %p_conv10.i = sitofp i32 %278 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %279 = shl i64 %274, 3
  %280 = add nuw nsw i64 %279, %260
  %scevgep745 = getelementptr i8, i8* %call2, i64 %280
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond856.not = icmp eq i64 %polly.indvar742, %257
  br i1 %exitcond856.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin849 = call i64 @llvm.smin.i64(i64 %indvars.iv847, i64 -1168)
  %281 = shl nsw i64 %polly.indvar750, 5
  %282 = add nsw i64 %smin849, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond852.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %283 = mul nsw i64 %polly.indvar756, -32
  %smin940 = call i64 @llvm.smin.i64(i64 %283, i64 -968)
  %284 = add nsw i64 %smin940, 1000
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -968)
  %285 = shl nsw i64 %polly.indvar756, 5
  %286 = add nsw i64 %smin845, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond851.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond851.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %287 = add nuw nsw i64 %polly.indvar762, %281
  %288 = trunc i64 %287 to i32
  %289 = mul nuw nsw i64 %287, 8000
  %min.iters.check941 = icmp eq i64 %284, 0
  br i1 %min.iters.check941, label %polly.loop_header765, label %vector.ph942

vector.ph942:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert951 = insertelement <4 x i64> poison, i64 %285, i32 0
  %broadcast.splat952 = shufflevector <4 x i64> %broadcast.splatinsert951, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %vector.ph942
  %index945 = phi i64 [ 0, %vector.ph942 ], [ %index.next946, %vector.body939 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph942 ], [ %vec.ind.next950, %vector.body939 ]
  %290 = add nuw nsw <4 x i64> %vec.ind949, %broadcast.splat952
  %291 = trunc <4 x i64> %290 to <4 x i32>
  %292 = mul <4 x i32> %broadcast.splat954, %291
  %293 = add <4 x i32> %292, <i32 1, i32 1, i32 1, i32 1>
  %294 = urem <4 x i32> %293, <i32 1200, i32 1200, i32 1200, i32 1200>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %297 = extractelement <4 x i64> %290, i32 0
  %298 = shl i64 %297, 3
  %299 = add nuw nsw i64 %298, %289
  %300 = getelementptr i8, i8* %call1, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %296, <4 x double>* %301, align 8, !alias.scope !90, !noalias !97
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %302 = icmp eq i64 %index.next946, %284
  br i1 %302, label %polly.loop_exit767, label %vector.body939, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body939, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond850.not = icmp eq i64 %polly.indvar762, %282
  br i1 %exitcond850.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %303 = add nuw nsw i64 %polly.indvar768, %285
  %304 = trunc i64 %303 to i32
  %305 = mul i32 %304, %288
  %306 = add i32 %305, 1
  %307 = urem i32 %306, 1200
  %p_conv.i = sitofp i32 %307 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %308 = shl i64 %303, 3
  %309 = add nuw nsw i64 %308, %289
  %scevgep772 = getelementptr i8, i8* %call1, i64 %309
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond846.not = icmp eq i64 %polly.indvar768, %286
  br i1 %exitcond846.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_exit232.loopexit.us
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_exit232.loopexit.us ]
  %310 = add nuw nsw i64 %polly.indvar234.us.1, %116
  %311 = mul nuw nsw i64 %310, 8000
  %312 = add nuw nsw i64 %311, %104
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %312
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %312
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %313 = shl i64 %310, 3
  %314 = add i64 %313, %125
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %314
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
  %315 = add i64 %106, %124
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %315
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %315
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_exit232.loopexit.us.1
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_exit232.loopexit.us.1 ]
  %316 = add nuw nsw i64 %polly.indvar234.us.2, %116
  %317 = mul nuw nsw i64 %316, 8000
  %318 = add nuw nsw i64 %317, %106
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %318
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %318
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %319 = shl i64 %316, 3
  %320 = add i64 %319, %125
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %320
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
  %321 = add i64 %108, %124
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %321
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %321
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_exit232.loopexit.us.2
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_exit232.loopexit.us.2 ]
  %322 = add nuw nsw i64 %polly.indvar234.us.3, %116
  %323 = mul nuw nsw i64 %322, 8000
  %324 = add nuw nsw i64 %323, %108
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %324
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %324
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %325 = shl i64 %322, 3
  %326 = add i64 %325, %125
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %326
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
  %327 = add i64 %110, %124
  %scevgep240.us.4 = getelementptr i8, i8* %call2, i64 %327
  %scevgep240241.us.4 = bitcast i8* %scevgep240.us.4 to double*
  %_p_scalar_242.us.4 = load double, double* %scevgep240241.us.4, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.4 = getelementptr i8, i8* %call1, i64 %327
  %scevgep246247.us.4 = bitcast i8* %scevgep246.us.4 to double*
  %_p_scalar_248.us.4 = load double, double* %scevgep246247.us.4, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.4

polly.loop_header230.us.4:                        ; preds = %polly.loop_header230.us.4, %polly.loop_exit232.loopexit.us.3
  %polly.indvar234.us.4 = phi i64 [ %polly.indvar_next235.us.4, %polly.loop_header230.us.4 ], [ 0, %polly.loop_exit232.loopexit.us.3 ]
  %328 = add nuw nsw i64 %polly.indvar234.us.4, %116
  %329 = mul nuw nsw i64 %328, 8000
  %330 = add nuw nsw i64 %329, %110
  %scevgep237.us.4 = getelementptr i8, i8* %call1, i64 %330
  %scevgep237238.us.4 = bitcast i8* %scevgep237.us.4 to double*
  %_p_scalar_239.us.4 = load double, double* %scevgep237238.us.4, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.4 = fmul fast double %_p_scalar_242.us.4, %_p_scalar_239.us.4
  %scevgep243.us.4 = getelementptr i8, i8* %call2, i64 %330
  %scevgep243244.us.4 = bitcast i8* %scevgep243.us.4 to double*
  %_p_scalar_245.us.4 = load double, double* %scevgep243244.us.4, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.4 = fmul fast double %_p_scalar_248.us.4, %_p_scalar_245.us.4
  %331 = shl i64 %328, 3
  %332 = add i64 %331, %125
  %scevgep249.us.4 = getelementptr i8, i8* %call, i64 %332
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
  %333 = add i64 %112, %124
  %scevgep240.us.5 = getelementptr i8, i8* %call2, i64 %333
  %scevgep240241.us.5 = bitcast i8* %scevgep240.us.5 to double*
  %_p_scalar_242.us.5 = load double, double* %scevgep240241.us.5, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.5 = getelementptr i8, i8* %call1, i64 %333
  %scevgep246247.us.5 = bitcast i8* %scevgep246.us.5 to double*
  %_p_scalar_248.us.5 = load double, double* %scevgep246247.us.5, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.5

polly.loop_header230.us.5:                        ; preds = %polly.loop_header230.us.5, %polly.loop_exit232.loopexit.us.4
  %polly.indvar234.us.5 = phi i64 [ %polly.indvar_next235.us.5, %polly.loop_header230.us.5 ], [ 0, %polly.loop_exit232.loopexit.us.4 ]
  %334 = add nuw nsw i64 %polly.indvar234.us.5, %116
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %112
  %scevgep237.us.5 = getelementptr i8, i8* %call1, i64 %336
  %scevgep237238.us.5 = bitcast i8* %scevgep237.us.5 to double*
  %_p_scalar_239.us.5 = load double, double* %scevgep237238.us.5, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.5 = fmul fast double %_p_scalar_242.us.5, %_p_scalar_239.us.5
  %scevgep243.us.5 = getelementptr i8, i8* %call2, i64 %336
  %scevgep243244.us.5 = bitcast i8* %scevgep243.us.5 to double*
  %_p_scalar_245.us.5 = load double, double* %scevgep243244.us.5, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.5 = fmul fast double %_p_scalar_248.us.5, %_p_scalar_245.us.5
  %337 = shl i64 %334, 3
  %338 = add i64 %337, %125
  %scevgep249.us.5 = getelementptr i8, i8* %call, i64 %338
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
  %339 = add i64 %114, %124
  %scevgep240.us.6 = getelementptr i8, i8* %call2, i64 %339
  %scevgep240241.us.6 = bitcast i8* %scevgep240.us.6 to double*
  %_p_scalar_242.us.6 = load double, double* %scevgep240241.us.6, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.6 = getelementptr i8, i8* %call1, i64 %339
  %scevgep246247.us.6 = bitcast i8* %scevgep246.us.6 to double*
  %_p_scalar_248.us.6 = load double, double* %scevgep246247.us.6, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.6

polly.loop_header230.us.6:                        ; preds = %polly.loop_header230.us.6, %polly.loop_exit232.loopexit.us.5
  %polly.indvar234.us.6 = phi i64 [ %polly.indvar_next235.us.6, %polly.loop_header230.us.6 ], [ 0, %polly.loop_exit232.loopexit.us.5 ]
  %340 = add nuw nsw i64 %polly.indvar234.us.6, %116
  %341 = mul nuw nsw i64 %340, 8000
  %342 = add nuw nsw i64 %341, %114
  %scevgep237.us.6 = getelementptr i8, i8* %call1, i64 %342
  %scevgep237238.us.6 = bitcast i8* %scevgep237.us.6 to double*
  %_p_scalar_239.us.6 = load double, double* %scevgep237238.us.6, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.6 = fmul fast double %_p_scalar_242.us.6, %_p_scalar_239.us.6
  %scevgep243.us.6 = getelementptr i8, i8* %call2, i64 %342
  %scevgep243244.us.6 = bitcast i8* %scevgep243.us.6 to double*
  %_p_scalar_245.us.6 = load double, double* %scevgep243244.us.6, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.6 = fmul fast double %_p_scalar_248.us.6, %_p_scalar_245.us.6
  %343 = shl i64 %340, 3
  %344 = add i64 %343, %125
  %scevgep249.us.6 = getelementptr i8, i8* %call, i64 %344
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
  %345 = add i64 %115, %124
  %scevgep240.us.7 = getelementptr i8, i8* %call2, i64 %345
  %scevgep240241.us.7 = bitcast i8* %scevgep240.us.7 to double*
  %_p_scalar_242.us.7 = load double, double* %scevgep240241.us.7, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.7 = getelementptr i8, i8* %call1, i64 %345
  %scevgep246247.us.7 = bitcast i8* %scevgep246.us.7 to double*
  %_p_scalar_248.us.7 = load double, double* %scevgep246247.us.7, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.7

polly.loop_header230.us.7:                        ; preds = %polly.loop_header230.us.7, %polly.loop_exit232.loopexit.us.6
  %polly.indvar234.us.7 = phi i64 [ %polly.indvar_next235.us.7, %polly.loop_header230.us.7 ], [ 0, %polly.loop_exit232.loopexit.us.6 ]
  %346 = add nuw nsw i64 %polly.indvar234.us.7, %116
  %347 = mul nuw nsw i64 %346, 8000
  %348 = add nuw nsw i64 %347, %115
  %scevgep237.us.7 = getelementptr i8, i8* %call1, i64 %348
  %scevgep237238.us.7 = bitcast i8* %scevgep237.us.7 to double*
  %_p_scalar_239.us.7 = load double, double* %scevgep237238.us.7, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.7 = fmul fast double %_p_scalar_242.us.7, %_p_scalar_239.us.7
  %scevgep243.us.7 = getelementptr i8, i8* %call2, i64 %348
  %scevgep243244.us.7 = bitcast i8* %scevgep243.us.7 to double*
  %_p_scalar_245.us.7 = load double, double* %scevgep243244.us.7, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.7 = fmul fast double %_p_scalar_248.us.7, %_p_scalar_245.us.7
  %349 = shl i64 %346, 3
  %350 = add i64 %349, %125
  %scevgep249.us.7 = getelementptr i8, i8* %call, i64 %350
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
  %351 = add nuw nsw i64 %polly.indvar392.us.1, %161
  %352 = mul nuw nsw i64 %351, 8000
  %353 = add nuw nsw i64 %352, %149
  %scevgep395.us.1 = getelementptr i8, i8* %call1, i64 %353
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_400.us.1, %_p_scalar_397.us.1
  %scevgep401.us.1 = getelementptr i8, i8* %call2, i64 %353
  %scevgep401402.us.1 = bitcast i8* %scevgep401.us.1 to double*
  %_p_scalar_403.us.1 = load double, double* %scevgep401402.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_406.us.1, %_p_scalar_403.us.1
  %354 = shl i64 %351, 3
  %355 = add i64 %354, %170
  %scevgep407.us.1 = getelementptr i8, i8* %call, i64 %355
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
  %356 = add i64 %151, %169
  %scevgep398.us.2 = getelementptr i8, i8* %call2, i64 %356
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.2 = getelementptr i8, i8* %call1, i64 %356
  %scevgep404405.us.2 = bitcast i8* %scevgep404.us.2 to double*
  %_p_scalar_406.us.2 = load double, double* %scevgep404405.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.2

polly.loop_header388.us.2:                        ; preds = %polly.loop_header388.us.2, %polly.loop_exit390.loopexit.us.1
  %polly.indvar392.us.2 = phi i64 [ %polly.indvar_next393.us.2, %polly.loop_header388.us.2 ], [ 0, %polly.loop_exit390.loopexit.us.1 ]
  %357 = add nuw nsw i64 %polly.indvar392.us.2, %161
  %358 = mul nuw nsw i64 %357, 8000
  %359 = add nuw nsw i64 %358, %151
  %scevgep395.us.2 = getelementptr i8, i8* %call1, i64 %359
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_400.us.2, %_p_scalar_397.us.2
  %scevgep401.us.2 = getelementptr i8, i8* %call2, i64 %359
  %scevgep401402.us.2 = bitcast i8* %scevgep401.us.2 to double*
  %_p_scalar_403.us.2 = load double, double* %scevgep401402.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_406.us.2, %_p_scalar_403.us.2
  %360 = shl i64 %357, 3
  %361 = add i64 %360, %170
  %scevgep407.us.2 = getelementptr i8, i8* %call, i64 %361
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
  %362 = add i64 %153, %169
  %scevgep398.us.3 = getelementptr i8, i8* %call2, i64 %362
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.3 = getelementptr i8, i8* %call1, i64 %362
  %scevgep404405.us.3 = bitcast i8* %scevgep404.us.3 to double*
  %_p_scalar_406.us.3 = load double, double* %scevgep404405.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.3

polly.loop_header388.us.3:                        ; preds = %polly.loop_header388.us.3, %polly.loop_exit390.loopexit.us.2
  %polly.indvar392.us.3 = phi i64 [ %polly.indvar_next393.us.3, %polly.loop_header388.us.3 ], [ 0, %polly.loop_exit390.loopexit.us.2 ]
  %363 = add nuw nsw i64 %polly.indvar392.us.3, %161
  %364 = mul nuw nsw i64 %363, 8000
  %365 = add nuw nsw i64 %364, %153
  %scevgep395.us.3 = getelementptr i8, i8* %call1, i64 %365
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_400.us.3, %_p_scalar_397.us.3
  %scevgep401.us.3 = getelementptr i8, i8* %call2, i64 %365
  %scevgep401402.us.3 = bitcast i8* %scevgep401.us.3 to double*
  %_p_scalar_403.us.3 = load double, double* %scevgep401402.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_406.us.3, %_p_scalar_403.us.3
  %366 = shl i64 %363, 3
  %367 = add i64 %366, %170
  %scevgep407.us.3 = getelementptr i8, i8* %call, i64 %367
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
  %368 = add i64 %155, %169
  %scevgep398.us.4 = getelementptr i8, i8* %call2, i64 %368
  %scevgep398399.us.4 = bitcast i8* %scevgep398.us.4 to double*
  %_p_scalar_400.us.4 = load double, double* %scevgep398399.us.4, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.4 = getelementptr i8, i8* %call1, i64 %368
  %scevgep404405.us.4 = bitcast i8* %scevgep404.us.4 to double*
  %_p_scalar_406.us.4 = load double, double* %scevgep404405.us.4, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.4

polly.loop_header388.us.4:                        ; preds = %polly.loop_header388.us.4, %polly.loop_exit390.loopexit.us.3
  %polly.indvar392.us.4 = phi i64 [ %polly.indvar_next393.us.4, %polly.loop_header388.us.4 ], [ 0, %polly.loop_exit390.loopexit.us.3 ]
  %369 = add nuw nsw i64 %polly.indvar392.us.4, %161
  %370 = mul nuw nsw i64 %369, 8000
  %371 = add nuw nsw i64 %370, %155
  %scevgep395.us.4 = getelementptr i8, i8* %call1, i64 %371
  %scevgep395396.us.4 = bitcast i8* %scevgep395.us.4 to double*
  %_p_scalar_397.us.4 = load double, double* %scevgep395396.us.4, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.4 = fmul fast double %_p_scalar_400.us.4, %_p_scalar_397.us.4
  %scevgep401.us.4 = getelementptr i8, i8* %call2, i64 %371
  %scevgep401402.us.4 = bitcast i8* %scevgep401.us.4 to double*
  %_p_scalar_403.us.4 = load double, double* %scevgep401402.us.4, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.4 = fmul fast double %_p_scalar_406.us.4, %_p_scalar_403.us.4
  %372 = shl i64 %369, 3
  %373 = add i64 %372, %170
  %scevgep407.us.4 = getelementptr i8, i8* %call, i64 %373
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
  %374 = add i64 %157, %169
  %scevgep398.us.5 = getelementptr i8, i8* %call2, i64 %374
  %scevgep398399.us.5 = bitcast i8* %scevgep398.us.5 to double*
  %_p_scalar_400.us.5 = load double, double* %scevgep398399.us.5, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.5 = getelementptr i8, i8* %call1, i64 %374
  %scevgep404405.us.5 = bitcast i8* %scevgep404.us.5 to double*
  %_p_scalar_406.us.5 = load double, double* %scevgep404405.us.5, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.5

polly.loop_header388.us.5:                        ; preds = %polly.loop_header388.us.5, %polly.loop_exit390.loopexit.us.4
  %polly.indvar392.us.5 = phi i64 [ %polly.indvar_next393.us.5, %polly.loop_header388.us.5 ], [ 0, %polly.loop_exit390.loopexit.us.4 ]
  %375 = add nuw nsw i64 %polly.indvar392.us.5, %161
  %376 = mul nuw nsw i64 %375, 8000
  %377 = add nuw nsw i64 %376, %157
  %scevgep395.us.5 = getelementptr i8, i8* %call1, i64 %377
  %scevgep395396.us.5 = bitcast i8* %scevgep395.us.5 to double*
  %_p_scalar_397.us.5 = load double, double* %scevgep395396.us.5, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.5 = fmul fast double %_p_scalar_400.us.5, %_p_scalar_397.us.5
  %scevgep401.us.5 = getelementptr i8, i8* %call2, i64 %377
  %scevgep401402.us.5 = bitcast i8* %scevgep401.us.5 to double*
  %_p_scalar_403.us.5 = load double, double* %scevgep401402.us.5, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.5 = fmul fast double %_p_scalar_406.us.5, %_p_scalar_403.us.5
  %378 = shl i64 %375, 3
  %379 = add i64 %378, %170
  %scevgep407.us.5 = getelementptr i8, i8* %call, i64 %379
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
  %380 = add i64 %159, %169
  %scevgep398.us.6 = getelementptr i8, i8* %call2, i64 %380
  %scevgep398399.us.6 = bitcast i8* %scevgep398.us.6 to double*
  %_p_scalar_400.us.6 = load double, double* %scevgep398399.us.6, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.6 = getelementptr i8, i8* %call1, i64 %380
  %scevgep404405.us.6 = bitcast i8* %scevgep404.us.6 to double*
  %_p_scalar_406.us.6 = load double, double* %scevgep404405.us.6, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.6

polly.loop_header388.us.6:                        ; preds = %polly.loop_header388.us.6, %polly.loop_exit390.loopexit.us.5
  %polly.indvar392.us.6 = phi i64 [ %polly.indvar_next393.us.6, %polly.loop_header388.us.6 ], [ 0, %polly.loop_exit390.loopexit.us.5 ]
  %381 = add nuw nsw i64 %polly.indvar392.us.6, %161
  %382 = mul nuw nsw i64 %381, 8000
  %383 = add nuw nsw i64 %382, %159
  %scevgep395.us.6 = getelementptr i8, i8* %call1, i64 %383
  %scevgep395396.us.6 = bitcast i8* %scevgep395.us.6 to double*
  %_p_scalar_397.us.6 = load double, double* %scevgep395396.us.6, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.6 = fmul fast double %_p_scalar_400.us.6, %_p_scalar_397.us.6
  %scevgep401.us.6 = getelementptr i8, i8* %call2, i64 %383
  %scevgep401402.us.6 = bitcast i8* %scevgep401.us.6 to double*
  %_p_scalar_403.us.6 = load double, double* %scevgep401402.us.6, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.6 = fmul fast double %_p_scalar_406.us.6, %_p_scalar_403.us.6
  %384 = shl i64 %381, 3
  %385 = add i64 %384, %170
  %scevgep407.us.6 = getelementptr i8, i8* %call, i64 %385
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
  %386 = add i64 %160, %169
  %scevgep398.us.7 = getelementptr i8, i8* %call2, i64 %386
  %scevgep398399.us.7 = bitcast i8* %scevgep398.us.7 to double*
  %_p_scalar_400.us.7 = load double, double* %scevgep398399.us.7, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.7 = getelementptr i8, i8* %call1, i64 %386
  %scevgep404405.us.7 = bitcast i8* %scevgep404.us.7 to double*
  %_p_scalar_406.us.7 = load double, double* %scevgep404405.us.7, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.7

polly.loop_header388.us.7:                        ; preds = %polly.loop_header388.us.7, %polly.loop_exit390.loopexit.us.6
  %polly.indvar392.us.7 = phi i64 [ %polly.indvar_next393.us.7, %polly.loop_header388.us.7 ], [ 0, %polly.loop_exit390.loopexit.us.6 ]
  %387 = add nuw nsw i64 %polly.indvar392.us.7, %161
  %388 = mul nuw nsw i64 %387, 8000
  %389 = add nuw nsw i64 %388, %160
  %scevgep395.us.7 = getelementptr i8, i8* %call1, i64 %389
  %scevgep395396.us.7 = bitcast i8* %scevgep395.us.7 to double*
  %_p_scalar_397.us.7 = load double, double* %scevgep395396.us.7, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.7 = fmul fast double %_p_scalar_400.us.7, %_p_scalar_397.us.7
  %scevgep401.us.7 = getelementptr i8, i8* %call2, i64 %389
  %scevgep401402.us.7 = bitcast i8* %scevgep401.us.7 to double*
  %_p_scalar_403.us.7 = load double, double* %scevgep401402.us.7, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.7 = fmul fast double %_p_scalar_406.us.7, %_p_scalar_403.us.7
  %390 = shl i64 %387, 3
  %391 = add i64 %390, %170
  %scevgep407.us.7 = getelementptr i8, i8* %call, i64 %391
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
  %392 = add nuw nsw i64 %polly.indvar550.us.1, %206
  %393 = mul nuw nsw i64 %392, 8000
  %394 = add nuw nsw i64 %393, %194
  %scevgep553.us.1 = getelementptr i8, i8* %call1, i64 %394
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %scevgep559.us.1 = getelementptr i8, i8* %call2, i64 %394
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_564.us.1, %_p_scalar_561.us.1
  %395 = shl i64 %392, 3
  %396 = add i64 %395, %215
  %scevgep565.us.1 = getelementptr i8, i8* %call, i64 %396
  %scevgep565566.us.1 = bitcast i8* %scevgep565.us.1 to double*
  %_p_scalar_567.us.1 = load double, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_567.us.1
  store double %p_add42.i.us.1, double* %scevgep565566.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.1 = add nuw nsw i64 %polly.indvar550.us.1, 1
  %exitcond834.1.not = icmp eq i64 %polly.indvar550.us.1, %smin833
  br i1 %exitcond834.1.not, label %polly.loop_exit548.loopexit.us.1, label %polly.loop_header546.us.1

polly.loop_exit548.loopexit.us.1:                 ; preds = %polly.loop_header546.us.1
  %397 = add i64 %196, %214
  %scevgep556.us.2 = getelementptr i8, i8* %call2, i64 %397
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.2 = getelementptr i8, i8* %call1, i64 %397
  %scevgep562563.us.2 = bitcast i8* %scevgep562.us.2 to double*
  %_p_scalar_564.us.2 = load double, double* %scevgep562563.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.2

polly.loop_header546.us.2:                        ; preds = %polly.loop_header546.us.2, %polly.loop_exit548.loopexit.us.1
  %polly.indvar550.us.2 = phi i64 [ %polly.indvar_next551.us.2, %polly.loop_header546.us.2 ], [ 0, %polly.loop_exit548.loopexit.us.1 ]
  %398 = add nuw nsw i64 %polly.indvar550.us.2, %206
  %399 = mul nuw nsw i64 %398, 8000
  %400 = add nuw nsw i64 %399, %196
  %scevgep553.us.2 = getelementptr i8, i8* %call1, i64 %400
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %scevgep559.us.2 = getelementptr i8, i8* %call2, i64 %400
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_564.us.2, %_p_scalar_561.us.2
  %401 = shl i64 %398, 3
  %402 = add i64 %401, %215
  %scevgep565.us.2 = getelementptr i8, i8* %call, i64 %402
  %scevgep565566.us.2 = bitcast i8* %scevgep565.us.2 to double*
  %_p_scalar_567.us.2 = load double, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_567.us.2
  store double %p_add42.i.us.2, double* %scevgep565566.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.2 = add nuw nsw i64 %polly.indvar550.us.2, 1
  %exitcond834.2.not = icmp eq i64 %polly.indvar550.us.2, %smin833
  br i1 %exitcond834.2.not, label %polly.loop_exit548.loopexit.us.2, label %polly.loop_header546.us.2

polly.loop_exit548.loopexit.us.2:                 ; preds = %polly.loop_header546.us.2
  %403 = add i64 %198, %214
  %scevgep556.us.3 = getelementptr i8, i8* %call2, i64 %403
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.3 = getelementptr i8, i8* %call1, i64 %403
  %scevgep562563.us.3 = bitcast i8* %scevgep562.us.3 to double*
  %_p_scalar_564.us.3 = load double, double* %scevgep562563.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.3

polly.loop_header546.us.3:                        ; preds = %polly.loop_header546.us.3, %polly.loop_exit548.loopexit.us.2
  %polly.indvar550.us.3 = phi i64 [ %polly.indvar_next551.us.3, %polly.loop_header546.us.3 ], [ 0, %polly.loop_exit548.loopexit.us.2 ]
  %404 = add nuw nsw i64 %polly.indvar550.us.3, %206
  %405 = mul nuw nsw i64 %404, 8000
  %406 = add nuw nsw i64 %405, %198
  %scevgep553.us.3 = getelementptr i8, i8* %call1, i64 %406
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %scevgep559.us.3 = getelementptr i8, i8* %call2, i64 %406
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_564.us.3, %_p_scalar_561.us.3
  %407 = shl i64 %404, 3
  %408 = add i64 %407, %215
  %scevgep565.us.3 = getelementptr i8, i8* %call, i64 %408
  %scevgep565566.us.3 = bitcast i8* %scevgep565.us.3 to double*
  %_p_scalar_567.us.3 = load double, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_567.us.3
  store double %p_add42.i.us.3, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.3 = add nuw nsw i64 %polly.indvar550.us.3, 1
  %exitcond834.3.not = icmp eq i64 %polly.indvar550.us.3, %smin833
  br i1 %exitcond834.3.not, label %polly.loop_exit548.loopexit.us.3, label %polly.loop_header546.us.3

polly.loop_exit548.loopexit.us.3:                 ; preds = %polly.loop_header546.us.3
  %409 = add i64 %200, %214
  %scevgep556.us.4 = getelementptr i8, i8* %call2, i64 %409
  %scevgep556557.us.4 = bitcast i8* %scevgep556.us.4 to double*
  %_p_scalar_558.us.4 = load double, double* %scevgep556557.us.4, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.4 = getelementptr i8, i8* %call1, i64 %409
  %scevgep562563.us.4 = bitcast i8* %scevgep562.us.4 to double*
  %_p_scalar_564.us.4 = load double, double* %scevgep562563.us.4, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.4

polly.loop_header546.us.4:                        ; preds = %polly.loop_header546.us.4, %polly.loop_exit548.loopexit.us.3
  %polly.indvar550.us.4 = phi i64 [ %polly.indvar_next551.us.4, %polly.loop_header546.us.4 ], [ 0, %polly.loop_exit548.loopexit.us.3 ]
  %410 = add nuw nsw i64 %polly.indvar550.us.4, %206
  %411 = mul nuw nsw i64 %410, 8000
  %412 = add nuw nsw i64 %411, %200
  %scevgep553.us.4 = getelementptr i8, i8* %call1, i64 %412
  %scevgep553554.us.4 = bitcast i8* %scevgep553.us.4 to double*
  %_p_scalar_555.us.4 = load double, double* %scevgep553554.us.4, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.4 = fmul fast double %_p_scalar_558.us.4, %_p_scalar_555.us.4
  %scevgep559.us.4 = getelementptr i8, i8* %call2, i64 %412
  %scevgep559560.us.4 = bitcast i8* %scevgep559.us.4 to double*
  %_p_scalar_561.us.4 = load double, double* %scevgep559560.us.4, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.4 = fmul fast double %_p_scalar_564.us.4, %_p_scalar_561.us.4
  %413 = shl i64 %410, 3
  %414 = add i64 %413, %215
  %scevgep565.us.4 = getelementptr i8, i8* %call, i64 %414
  %scevgep565566.us.4 = bitcast i8* %scevgep565.us.4 to double*
  %_p_scalar_567.us.4 = load double, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.4 = fadd fast double %p_mul37.i.us.4, %p_mul27.i.us.4
  %p_reass.mul.i.us.4 = fmul fast double %p_reass.add.i.us.4, 1.500000e+00
  %p_add42.i.us.4 = fadd fast double %p_reass.mul.i.us.4, %_p_scalar_567.us.4
  store double %p_add42.i.us.4, double* %scevgep565566.us.4, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.4 = add nuw nsw i64 %polly.indvar550.us.4, 1
  %exitcond834.4.not = icmp eq i64 %polly.indvar550.us.4, %smin833
  br i1 %exitcond834.4.not, label %polly.loop_exit548.loopexit.us.4, label %polly.loop_header546.us.4

polly.loop_exit548.loopexit.us.4:                 ; preds = %polly.loop_header546.us.4
  %415 = add i64 %202, %214
  %scevgep556.us.5 = getelementptr i8, i8* %call2, i64 %415
  %scevgep556557.us.5 = bitcast i8* %scevgep556.us.5 to double*
  %_p_scalar_558.us.5 = load double, double* %scevgep556557.us.5, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.5 = getelementptr i8, i8* %call1, i64 %415
  %scevgep562563.us.5 = bitcast i8* %scevgep562.us.5 to double*
  %_p_scalar_564.us.5 = load double, double* %scevgep562563.us.5, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.5

polly.loop_header546.us.5:                        ; preds = %polly.loop_header546.us.5, %polly.loop_exit548.loopexit.us.4
  %polly.indvar550.us.5 = phi i64 [ %polly.indvar_next551.us.5, %polly.loop_header546.us.5 ], [ 0, %polly.loop_exit548.loopexit.us.4 ]
  %416 = add nuw nsw i64 %polly.indvar550.us.5, %206
  %417 = mul nuw nsw i64 %416, 8000
  %418 = add nuw nsw i64 %417, %202
  %scevgep553.us.5 = getelementptr i8, i8* %call1, i64 %418
  %scevgep553554.us.5 = bitcast i8* %scevgep553.us.5 to double*
  %_p_scalar_555.us.5 = load double, double* %scevgep553554.us.5, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.5 = fmul fast double %_p_scalar_558.us.5, %_p_scalar_555.us.5
  %scevgep559.us.5 = getelementptr i8, i8* %call2, i64 %418
  %scevgep559560.us.5 = bitcast i8* %scevgep559.us.5 to double*
  %_p_scalar_561.us.5 = load double, double* %scevgep559560.us.5, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.5 = fmul fast double %_p_scalar_564.us.5, %_p_scalar_561.us.5
  %419 = shl i64 %416, 3
  %420 = add i64 %419, %215
  %scevgep565.us.5 = getelementptr i8, i8* %call, i64 %420
  %scevgep565566.us.5 = bitcast i8* %scevgep565.us.5 to double*
  %_p_scalar_567.us.5 = load double, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.5 = fadd fast double %p_mul37.i.us.5, %p_mul27.i.us.5
  %p_reass.mul.i.us.5 = fmul fast double %p_reass.add.i.us.5, 1.500000e+00
  %p_add42.i.us.5 = fadd fast double %p_reass.mul.i.us.5, %_p_scalar_567.us.5
  store double %p_add42.i.us.5, double* %scevgep565566.us.5, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.5 = add nuw nsw i64 %polly.indvar550.us.5, 1
  %exitcond834.5.not = icmp eq i64 %polly.indvar550.us.5, %smin833
  br i1 %exitcond834.5.not, label %polly.loop_exit548.loopexit.us.5, label %polly.loop_header546.us.5

polly.loop_exit548.loopexit.us.5:                 ; preds = %polly.loop_header546.us.5
  %421 = add i64 %204, %214
  %scevgep556.us.6 = getelementptr i8, i8* %call2, i64 %421
  %scevgep556557.us.6 = bitcast i8* %scevgep556.us.6 to double*
  %_p_scalar_558.us.6 = load double, double* %scevgep556557.us.6, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.6 = getelementptr i8, i8* %call1, i64 %421
  %scevgep562563.us.6 = bitcast i8* %scevgep562.us.6 to double*
  %_p_scalar_564.us.6 = load double, double* %scevgep562563.us.6, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.6

polly.loop_header546.us.6:                        ; preds = %polly.loop_header546.us.6, %polly.loop_exit548.loopexit.us.5
  %polly.indvar550.us.6 = phi i64 [ %polly.indvar_next551.us.6, %polly.loop_header546.us.6 ], [ 0, %polly.loop_exit548.loopexit.us.5 ]
  %422 = add nuw nsw i64 %polly.indvar550.us.6, %206
  %423 = mul nuw nsw i64 %422, 8000
  %424 = add nuw nsw i64 %423, %204
  %scevgep553.us.6 = getelementptr i8, i8* %call1, i64 %424
  %scevgep553554.us.6 = bitcast i8* %scevgep553.us.6 to double*
  %_p_scalar_555.us.6 = load double, double* %scevgep553554.us.6, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.6 = fmul fast double %_p_scalar_558.us.6, %_p_scalar_555.us.6
  %scevgep559.us.6 = getelementptr i8, i8* %call2, i64 %424
  %scevgep559560.us.6 = bitcast i8* %scevgep559.us.6 to double*
  %_p_scalar_561.us.6 = load double, double* %scevgep559560.us.6, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.6 = fmul fast double %_p_scalar_564.us.6, %_p_scalar_561.us.6
  %425 = shl i64 %422, 3
  %426 = add i64 %425, %215
  %scevgep565.us.6 = getelementptr i8, i8* %call, i64 %426
  %scevgep565566.us.6 = bitcast i8* %scevgep565.us.6 to double*
  %_p_scalar_567.us.6 = load double, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.6 = fadd fast double %p_mul37.i.us.6, %p_mul27.i.us.6
  %p_reass.mul.i.us.6 = fmul fast double %p_reass.add.i.us.6, 1.500000e+00
  %p_add42.i.us.6 = fadd fast double %p_reass.mul.i.us.6, %_p_scalar_567.us.6
  store double %p_add42.i.us.6, double* %scevgep565566.us.6, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.6 = add nuw nsw i64 %polly.indvar550.us.6, 1
  %exitcond834.6.not = icmp eq i64 %polly.indvar550.us.6, %smin833
  br i1 %exitcond834.6.not, label %polly.loop_exit548.loopexit.us.6, label %polly.loop_header546.us.6

polly.loop_exit548.loopexit.us.6:                 ; preds = %polly.loop_header546.us.6
  %427 = add i64 %205, %214
  %scevgep556.us.7 = getelementptr i8, i8* %call2, i64 %427
  %scevgep556557.us.7 = bitcast i8* %scevgep556.us.7 to double*
  %_p_scalar_558.us.7 = load double, double* %scevgep556557.us.7, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.7 = getelementptr i8, i8* %call1, i64 %427
  %scevgep562563.us.7 = bitcast i8* %scevgep562.us.7 to double*
  %_p_scalar_564.us.7 = load double, double* %scevgep562563.us.7, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.7

polly.loop_header546.us.7:                        ; preds = %polly.loop_header546.us.7, %polly.loop_exit548.loopexit.us.6
  %polly.indvar550.us.7 = phi i64 [ %polly.indvar_next551.us.7, %polly.loop_header546.us.7 ], [ 0, %polly.loop_exit548.loopexit.us.6 ]
  %428 = add nuw nsw i64 %polly.indvar550.us.7, %206
  %429 = mul nuw nsw i64 %428, 8000
  %430 = add nuw nsw i64 %429, %205
  %scevgep553.us.7 = getelementptr i8, i8* %call1, i64 %430
  %scevgep553554.us.7 = bitcast i8* %scevgep553.us.7 to double*
  %_p_scalar_555.us.7 = load double, double* %scevgep553554.us.7, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.7 = fmul fast double %_p_scalar_558.us.7, %_p_scalar_555.us.7
  %scevgep559.us.7 = getelementptr i8, i8* %call2, i64 %430
  %scevgep559560.us.7 = bitcast i8* %scevgep559.us.7 to double*
  %_p_scalar_561.us.7 = load double, double* %scevgep559560.us.7, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.7 = fmul fast double %_p_scalar_564.us.7, %_p_scalar_561.us.7
  %431 = shl i64 %428, 3
  %432 = add i64 %431, %215
  %scevgep565.us.7 = getelementptr i8, i8* %call, i64 %432
  %scevgep565566.us.7 = bitcast i8* %scevgep565.us.7 to double*
  %_p_scalar_567.us.7 = load double, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.7 = fadd fast double %p_mul37.i.us.7, %p_mul27.i.us.7
  %p_reass.mul.i.us.7 = fmul fast double %p_reass.add.i.us.7, 1.500000e+00
  %p_add42.i.us.7 = fadd fast double %p_reass.mul.i.us.7, %_p_scalar_567.us.7
  store double %p_add42.i.us.7, double* %scevgep565566.us.7, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.7 = add nuw nsw i64 %polly.indvar550.us.7, 1
  %exitcond834.7.not = icmp eq i64 %polly.indvar550.us.7, %smin833
  br i1 %exitcond834.7.not, label %polly.loop_exit541, label %polly.loop_header546.us.7
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
!44 = !{!"llvm.loop.tile.size", i32 20}
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
