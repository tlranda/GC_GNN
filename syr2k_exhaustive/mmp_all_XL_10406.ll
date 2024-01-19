; ModuleID = 'syr2k_exhaustive/mmp_all_XL_10406.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_10406.c"
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
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %polly.loop_exit207 ], [ 7, %polly.loop_exit193 ]
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = add nuw i64 %indvars.iv794, %97
  %99 = mul nsw i64 %polly.indvar202, -100
  %100 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 100
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 6
  %exitcond798.not = icmp eq i64 %polly.indvar_next203, 12
  br i1 %exitcond798.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %101 = shl i64 %polly.indvar208, 5
  %102 = shl i64 %polly.indvar208, 5
  %103 = shl i64 %polly.indvar208, 5
  %104 = or i64 %103, 8
  %105 = shl i64 %polly.indvar208, 5
  %106 = or i64 %105, 16
  %107 = or i64 %101, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond797.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %polly.loop_exit219 ], [ %indvars.iv787, %polly.loop_header205 ]
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %108 = shl nsw i64 %polly.indvar214, 4
  %109 = add nsw i64 %108, %99
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard = icmp slt i64 %111, 100
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv785, i64 0)
  %112 = add i64 %smax, %indvars.iv789
  %113 = sub nsw i64 %100, %108
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 16
  %indvars.iv.next790 = add nsw i64 %indvars.iv789, -16
  %exitcond796.not = icmp eq i64 %polly.indvar_next215, %98
  br i1 %exitcond796.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit225
  %indvars.iv791 = phi i64 [ %112, %polly.loop_header217.preheader ], [ %indvars.iv.next792, %polly.loop_exit225 ]
  %polly.indvar220 = phi i64 [ %111, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv791, i64 15)
  %114 = add nsw i64 %polly.indvar220, %113
  %polly.loop_guard233877 = icmp sgt i64 %114, -1
  %115 = add nuw nsw i64 %polly.indvar220, %100
  %116 = mul i64 %115, 8000
  %117 = mul i64 %115, 9600
  br i1 %polly.loop_guard233877, label %polly.loop_header223.us.preheader, label %polly.loop_exit225

polly.loop_header223.us.preheader:                ; preds = %polly.loop_header217
  %118 = add i64 %102, %116
  %scevgep240.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us.preheader, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us.preheader ]
  %119 = add nuw nsw i64 %polly.indvar234.us, %108
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %102
  %scevgep237.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep237238.us = bitcast i8* %scevgep237.us to double*
  %_p_scalar_239.us = load double, double* %scevgep237238.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_242.us, %_p_scalar_239.us
  %scevgep243.us = getelementptr i8, i8* %call2, i64 %121
  %scevgep243244.us = bitcast i8* %scevgep243.us to double*
  %_p_scalar_245.us = load double, double* %scevgep243244.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_245.us
  %122 = shl i64 %119, 3
  %123 = add i64 %122, %117
  %scevgep249.us = getelementptr i8, i8* %call, i64 %123
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
  %124 = add i64 %104, %116
  %scevgep240.us.1 = getelementptr i8, i8* %call2, i64 %124
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.1 = getelementptr i8, i8* %call1, i64 %124
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.1

polly.loop_exit225:                               ; preds = %polly.loop_header230.us.3, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 99
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar993 = phi i64 [ %indvar.next994, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %125 = add i64 %indvar993, 1
  %126 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %126
  %min.iters.check995 = icmp ult i64 %125, 4
  br i1 %min.iters.check995, label %polly.loop_header344.preheader, label %vector.ph996

vector.ph996:                                     ; preds = %polly.loop_header338
  %n.vec998 = and i64 %125, -4
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph996
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body992 ]
  %127 = shl nuw nsw i64 %index999, 3
  %128 = getelementptr i8, i8* %scevgep350, i64 %127
  %129 = bitcast i8* %128 to <4 x double>*
  %wide.load1003 = load <4 x double>, <4 x double>* %129, align 8, !alias.scope !69, !noalias !71
  %130 = fmul fast <4 x double> %wide.load1003, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %131 = bitcast i8* %128 to <4 x double>*
  store <4 x double> %130, <4 x double>* %131, align 8, !alias.scope !69, !noalias !71
  %index.next1000 = add i64 %index999, 4
  %132 = icmp eq i64 %index.next1000, %n.vec998
  br i1 %132, label %middle.block990, label %vector.body992, !llvm.loop !74

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1002 = icmp eq i64 %125, %n.vec998
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
  %133 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %133
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond820.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !75

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit362
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit362 ], [ 7, %polly.loop_exit346 ]
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 0, %polly.loop_exit346 ]
  %134 = lshr i64 %polly.indvar357, 2
  %135 = add nuw i64 %indvars.iv815, %134
  %136 = mul nsw i64 %polly.indvar357, -100
  %137 = mul nuw nsw i64 %polly.indvar357, 100
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_exit369
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -100
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 100
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 6
  %exitcond819.not = icmp eq i64 %polly.indvar_next358, 12
  br i1 %exitcond819.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header360:                             ; preds = %polly.loop_exit369, %polly.loop_header354
  %polly.indvar363 = phi i64 [ 0, %polly.loop_header354 ], [ %polly.indvar_next364, %polly.loop_exit369 ]
  %138 = shl i64 %polly.indvar363, 5
  %139 = shl i64 %polly.indvar363, 5
  %140 = shl i64 %polly.indvar363, 5
  %141 = or i64 %140, 8
  %142 = shl i64 %polly.indvar363, 5
  %143 = or i64 %142, 16
  %144 = or i64 %138, 24
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit376
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next364, 250
  br i1 %exitcond818.not, label %polly.loop_exit362, label %polly.loop_header360

polly.loop_header367:                             ; preds = %polly.loop_exit376, %polly.loop_header360
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit376 ], [ %indvars.iv806, %polly.loop_header360 ]
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit376 ], [ %indvars.iv801, %polly.loop_header360 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit376 ], [ 0, %polly.loop_header360 ]
  %145 = shl nsw i64 %polly.indvar370, 4
  %146 = add nsw i64 %145, %136
  %147 = icmp sgt i64 %146, 0
  %148 = select i1 %147, i64 %146, i64 0
  %polly.loop_guard377 = icmp slt i64 %148, 100
  br i1 %polly.loop_guard377, label %polly.loop_header374.preheader, label %polly.loop_exit376

polly.loop_header374.preheader:                   ; preds = %polly.loop_header367
  %smax805 = call i64 @llvm.smax.i64(i64 %indvars.iv803, i64 0)
  %149 = add i64 %smax805, %indvars.iv808
  %150 = sub nsw i64 %137, %145
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_exit383, %polly.loop_header367
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 16
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, -16
  %exitcond817.not = icmp eq i64 %polly.indvar_next371, %135
  br i1 %exitcond817.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit383
  %indvars.iv810 = phi i64 [ %149, %polly.loop_header374.preheader ], [ %indvars.iv.next811, %polly.loop_exit383 ]
  %polly.indvar378 = phi i64 [ %148, %polly.loop_header374.preheader ], [ %polly.indvar_next379, %polly.loop_exit383 ]
  %smin812 = call i64 @llvm.smin.i64(i64 %indvars.iv810, i64 15)
  %151 = add nsw i64 %polly.indvar378, %150
  %polly.loop_guard391878 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar378, %137
  %153 = mul i64 %152, 8000
  %154 = mul i64 %152, 9600
  br i1 %polly.loop_guard391878, label %polly.loop_header381.us.preheader, label %polly.loop_exit383

polly.loop_header381.us.preheader:                ; preds = %polly.loop_header374
  %155 = add i64 %139, %153
  %scevgep398.us = getelementptr i8, i8* %call2, i64 %155
  %scevgep398399.us = bitcast i8* %scevgep398.us to double*
  %_p_scalar_400.us = load double, double* %scevgep398399.us, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us = getelementptr i8, i8* %call1, i64 %155
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header381.us.preheader, %polly.loop_header388.us
  %polly.indvar392.us = phi i64 [ %polly.indvar_next393.us, %polly.loop_header388.us ], [ 0, %polly.loop_header381.us.preheader ]
  %156 = add nuw nsw i64 %polly.indvar392.us, %145
  %157 = mul nuw nsw i64 %156, 8000
  %158 = add nuw nsw i64 %157, %139
  %scevgep395.us = getelementptr i8, i8* %call1, i64 %158
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_400.us, %_p_scalar_397.us
  %scevgep401.us = getelementptr i8, i8* %call2, i64 %158
  %scevgep401402.us = bitcast i8* %scevgep401.us to double*
  %_p_scalar_403.us = load double, double* %scevgep401402.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_403.us
  %159 = shl i64 %156, 3
  %160 = add i64 %159, %154
  %scevgep407.us = getelementptr i8, i8* %call, i64 %160
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
  %161 = add i64 %141, %153
  %scevgep398.us.1 = getelementptr i8, i8* %call2, i64 %161
  %scevgep398399.us.1 = bitcast i8* %scevgep398.us.1 to double*
  %_p_scalar_400.us.1 = load double, double* %scevgep398399.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.1 = getelementptr i8, i8* %call1, i64 %161
  %scevgep404405.us.1 = bitcast i8* %scevgep404.us.1 to double*
  %_p_scalar_406.us.1 = load double, double* %scevgep404405.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.1

polly.loop_exit383:                               ; preds = %polly.loop_header388.us.3, %polly.loop_header374
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %polly.loop_cond380 = icmp ult i64 %polly.indvar378, 99
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  br i1 %polly.loop_cond380, label %polly.loop_header374, label %polly.loop_exit376

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %162 = add i64 %indvar, 1
  %163 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %163
  %min.iters.check969 = icmp ult i64 %162, 4
  br i1 %min.iters.check969, label %polly.loop_header502.preheader, label %vector.ph970

vector.ph970:                                     ; preds = %polly.loop_header496
  %n.vec972 = and i64 %162, -4
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph970
  %index973 = phi i64 [ 0, %vector.ph970 ], [ %index.next974, %vector.body968 ]
  %164 = shl nuw nsw i64 %index973, 3
  %165 = getelementptr i8, i8* %scevgep508, i64 %164
  %166 = bitcast i8* %165 to <4 x double>*
  %wide.load977 = load <4 x double>, <4 x double>* %166, align 8, !alias.scope !78, !noalias !80
  %167 = fmul fast <4 x double> %wide.load977, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast i8* %165 to <4 x double>*
  store <4 x double> %167, <4 x double>* %168, align 8, !alias.scope !78, !noalias !80
  %index.next974 = add i64 %index973, 4
  %169 = icmp eq i64 %index.next974, %n.vec972
  br i1 %169, label %middle.block966, label %vector.body968, !llvm.loop !83

middle.block966:                                  ; preds = %vector.body968
  %cmp.n976 = icmp eq i64 %162, %n.vec972
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
  %170 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %170
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond841.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !84

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit520
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit520 ], [ 7, %polly.loop_exit504 ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit520 ], [ 0, %polly.loop_exit504 ]
  %171 = lshr i64 %polly.indvar515, 2
  %172 = add nuw i64 %indvars.iv836, %171
  %173 = mul nsw i64 %polly.indvar515, -100
  %174 = mul nuw nsw i64 %polly.indvar515, 100
  br label %polly.loop_header518

polly.loop_exit520:                               ; preds = %polly.loop_exit527
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -100
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 100
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 6
  %exitcond840.not = icmp eq i64 %polly.indvar_next516, 12
  br i1 %exitcond840.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header518:                             ; preds = %polly.loop_exit527, %polly.loop_header512
  %polly.indvar521 = phi i64 [ 0, %polly.loop_header512 ], [ %polly.indvar_next522, %polly.loop_exit527 ]
  %175 = shl i64 %polly.indvar521, 5
  %176 = shl i64 %polly.indvar521, 5
  %177 = shl i64 %polly.indvar521, 5
  %178 = or i64 %177, 8
  %179 = shl i64 %polly.indvar521, 5
  %180 = or i64 %179, 16
  %181 = or i64 %175, 24
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next522 = add nuw nsw i64 %polly.indvar521, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next522, 250
  br i1 %exitcond839.not, label %polly.loop_exit520, label %polly.loop_header518

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header518
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit534 ], [ %indvars.iv827, %polly.loop_header518 ]
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit534 ], [ %indvars.iv822, %polly.loop_header518 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ 0, %polly.loop_header518 ]
  %182 = shl nsw i64 %polly.indvar528, 4
  %183 = add nsw i64 %182, %173
  %184 = icmp sgt i64 %183, 0
  %185 = select i1 %184, i64 %183, i64 0
  %polly.loop_guard535 = icmp slt i64 %185, 100
  br i1 %polly.loop_guard535, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %smax826 = call i64 @llvm.smax.i64(i64 %indvars.iv824, i64 0)
  %186 = add i64 %smax826, %indvars.iv829
  %187 = sub nsw i64 %174, %182
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_exit541, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, 16
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -16
  %exitcond838.not = icmp eq i64 %polly.indvar_next529, %172
  br i1 %exitcond838.not, label %polly.loop_exit527, label %polly.loop_header525

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader, %polly.loop_exit541
  %indvars.iv831 = phi i64 [ %186, %polly.loop_header532.preheader ], [ %indvars.iv.next832, %polly.loop_exit541 ]
  %polly.indvar536 = phi i64 [ %185, %polly.loop_header532.preheader ], [ %polly.indvar_next537, %polly.loop_exit541 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 15)
  %188 = add nsw i64 %polly.indvar536, %187
  %polly.loop_guard549879 = icmp sgt i64 %188, -1
  %189 = add nuw nsw i64 %polly.indvar536, %174
  %190 = mul i64 %189, 8000
  %191 = mul i64 %189, 9600
  br i1 %polly.loop_guard549879, label %polly.loop_header539.us.preheader, label %polly.loop_exit541

polly.loop_header539.us.preheader:                ; preds = %polly.loop_header532
  %192 = add i64 %176, %190
  %scevgep556.us = getelementptr i8, i8* %call2, i64 %192
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us = getelementptr i8, i8* %call1, i64 %192
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us

polly.loop_header546.us:                          ; preds = %polly.loop_header539.us.preheader, %polly.loop_header546.us
  %polly.indvar550.us = phi i64 [ %polly.indvar_next551.us, %polly.loop_header546.us ], [ 0, %polly.loop_header539.us.preheader ]
  %193 = add nuw nsw i64 %polly.indvar550.us, %182
  %194 = mul nuw nsw i64 %193, 8000
  %195 = add nuw nsw i64 %194, %176
  %scevgep553.us = getelementptr i8, i8* %call1, i64 %195
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %scevgep559.us = getelementptr i8, i8* %call2, i64 %195
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_561.us
  %196 = shl i64 %193, 3
  %197 = add i64 %196, %191
  %scevgep565.us = getelementptr i8, i8* %call, i64 %197
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
  %198 = add i64 %178, %190
  %scevgep556.us.1 = getelementptr i8, i8* %call2, i64 %198
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.1 = getelementptr i8, i8* %call1, i64 %198
  %scevgep562563.us.1 = bitcast i8* %scevgep562.us.1 to double*
  %_p_scalar_564.us.1 = load double, double* %scevgep562563.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.1

polly.loop_exit541:                               ; preds = %polly.loop_header546.us.3, %polly.loop_header532
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %polly.loop_cond538 = icmp ult i64 %polly.indvar536, 99
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond538, label %polly.loop_header532, label %polly.loop_exit534

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 -1168)
  %199 = shl nsw i64 %polly.indvar697, 5
  %200 = add nsw i64 %smin869, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, -32
  %exitcond872.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond872.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %201 = mul nsw i64 %polly.indvar703, -32
  %smin907 = call i64 @llvm.smin.i64(i64 %201, i64 -1168)
  %202 = add nsw i64 %smin907, 1200
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -1168)
  %203 = shl nsw i64 %polly.indvar703, 5
  %204 = add nsw i64 %smin865, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond871.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond871.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %205 = add nuw nsw i64 %polly.indvar709, %199
  %206 = trunc i64 %205 to i32
  %207 = mul nuw nsw i64 %205, 9600
  %min.iters.check = icmp eq i64 %202, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph908

vector.ph908:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert915 = insertelement <4 x i64> poison, i64 %203, i32 0
  %broadcast.splat916 = shufflevector <4 x i64> %broadcast.splatinsert915, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert917 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat918 = shufflevector <4 x i32> %broadcast.splatinsert917, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body906

vector.body906:                                   ; preds = %vector.body906, %vector.ph908
  %index909 = phi i64 [ 0, %vector.ph908 ], [ %index.next910, %vector.body906 ]
  %vec.ind913 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph908 ], [ %vec.ind.next914, %vector.body906 ]
  %208 = add nuw nsw <4 x i64> %vec.ind913, %broadcast.splat916
  %209 = trunc <4 x i64> %208 to <4 x i32>
  %210 = mul <4 x i32> %broadcast.splat918, %209
  %211 = add <4 x i32> %210, <i32 3, i32 3, i32 3, i32 3>
  %212 = urem <4 x i32> %211, <i32 1200, i32 1200, i32 1200, i32 1200>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %215 = extractelement <4 x i64> %208, i32 0
  %216 = shl i64 %215, 3
  %217 = add nuw nsw i64 %216, %207
  %218 = getelementptr i8, i8* %call, i64 %217
  %219 = bitcast i8* %218 to <4 x double>*
  store <4 x double> %214, <4 x double>* %219, align 8, !alias.scope !87, !noalias !89
  %index.next910 = add i64 %index909, 4
  %vec.ind.next914 = add <4 x i64> %vec.ind913, <i64 4, i64 4, i64 4, i64 4>
  %220 = icmp eq i64 %index.next910, %202
  br i1 %220, label %polly.loop_exit714, label %vector.body906, !llvm.loop !92

polly.loop_exit714:                               ; preds = %vector.body906, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond870.not = icmp eq i64 %polly.indvar709, %200
  br i1 %exitcond870.not, label %polly.loop_exit708, label %polly.loop_header706

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
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond866.not = icmp eq i64 %polly.indvar715, %204
  br i1 %exitcond866.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !93

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin859 = call i64 @llvm.smin.i64(i64 %indvars.iv857, i64 -1168)
  %228 = shl nsw i64 %polly.indvar724, 5
  %229 = add nsw i64 %smin859, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next858 = add nsw i64 %indvars.iv857, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond862.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %230 = mul nsw i64 %polly.indvar730, -32
  %smin922 = call i64 @llvm.smin.i64(i64 %230, i64 -968)
  %231 = add nsw i64 %smin922, 1000
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -968)
  %232 = shl nsw i64 %polly.indvar730, 5
  %233 = add nsw i64 %smin855, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond861.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond861.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %234 = add nuw nsw i64 %polly.indvar736, %228
  %235 = trunc i64 %234 to i32
  %236 = mul nuw nsw i64 %234, 8000
  %min.iters.check923 = icmp eq i64 %231, 0
  br i1 %min.iters.check923, label %polly.loop_header739, label %vector.ph924

vector.ph924:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert933 = insertelement <4 x i64> poison, i64 %232, i32 0
  %broadcast.splat934 = shufflevector <4 x i64> %broadcast.splatinsert933, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert935 = insertelement <4 x i32> poison, i32 %235, i32 0
  %broadcast.splat936 = shufflevector <4 x i32> %broadcast.splatinsert935, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body921

vector.body921:                                   ; preds = %vector.body921, %vector.ph924
  %index927 = phi i64 [ 0, %vector.ph924 ], [ %index.next928, %vector.body921 ]
  %vec.ind931 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph924 ], [ %vec.ind.next932, %vector.body921 ]
  %237 = add nuw nsw <4 x i64> %vec.ind931, %broadcast.splat934
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat936, %238
  %240 = add <4 x i32> %239, <i32 2, i32 2, i32 2, i32 2>
  %241 = urem <4 x i32> %240, <i32 1000, i32 1000, i32 1000, i32 1000>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add nuw nsw i64 %245, %236
  %247 = getelementptr i8, i8* %call2, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !91, !noalias !94
  %index.next928 = add i64 %index927, 4
  %vec.ind.next932 = add <4 x i64> %vec.ind931, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next928, %231
  br i1 %249, label %polly.loop_exit741, label %vector.body921, !llvm.loop !95

polly.loop_exit741:                               ; preds = %vector.body921, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond860.not = icmp eq i64 %polly.indvar736, %229
  br i1 %exitcond860.not, label %polly.loop_exit735, label %polly.loop_header733

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
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond856.not = icmp eq i64 %polly.indvar742, %233
  br i1 %exitcond856.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !96

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin849 = call i64 @llvm.smin.i64(i64 %indvars.iv847, i64 -1168)
  %257 = shl nsw i64 %polly.indvar750, 5
  %258 = add nsw i64 %smin849, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond852.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %259 = mul nsw i64 %polly.indvar756, -32
  %smin940 = call i64 @llvm.smin.i64(i64 %259, i64 -968)
  %260 = add nsw i64 %smin940, 1000
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -968)
  %261 = shl nsw i64 %polly.indvar756, 5
  %262 = add nsw i64 %smin845, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond851.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond851.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %263 = add nuw nsw i64 %polly.indvar762, %257
  %264 = trunc i64 %263 to i32
  %265 = mul nuw nsw i64 %263, 8000
  %min.iters.check941 = icmp eq i64 %260, 0
  br i1 %min.iters.check941, label %polly.loop_header765, label %vector.ph942

vector.ph942:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert951 = insertelement <4 x i64> poison, i64 %261, i32 0
  %broadcast.splat952 = shufflevector <4 x i64> %broadcast.splatinsert951, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %264, i32 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %vector.ph942
  %index945 = phi i64 [ 0, %vector.ph942 ], [ %index.next946, %vector.body939 ]
  %vec.ind949 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph942 ], [ %vec.ind.next950, %vector.body939 ]
  %266 = add nuw nsw <4 x i64> %vec.ind949, %broadcast.splat952
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat954, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 1200, i32 1200, i32 1200, i32 1200>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add nuw nsw i64 %274, %265
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !90, !noalias !97
  %index.next946 = add i64 %index945, 4
  %vec.ind.next950 = add <4 x i64> %vec.ind949, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next946, %260
  br i1 %278, label %polly.loop_exit767, label %vector.body939, !llvm.loop !98

polly.loop_exit767:                               ; preds = %vector.body939, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond850.not = icmp eq i64 %polly.indvar762, %258
  br i1 %exitcond850.not, label %polly.loop_exit761, label %polly.loop_header759

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
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond846.not = icmp eq i64 %polly.indvar768, %262
  br i1 %exitcond846.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !99

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_exit232.loopexit.us
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_exit232.loopexit.us ]
  %286 = add nuw nsw i64 %polly.indvar234.us.1, %108
  %287 = mul nuw nsw i64 %286, 8000
  %288 = add nuw nsw i64 %287, %104
  %scevgep237.us.1 = getelementptr i8, i8* %call1, i64 %288
  %scevgep237238.us.1 = bitcast i8* %scevgep237.us.1 to double*
  %_p_scalar_239.us.1 = load double, double* %scevgep237238.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_242.us.1, %_p_scalar_239.us.1
  %scevgep243.us.1 = getelementptr i8, i8* %call2, i64 %288
  %scevgep243244.us.1 = bitcast i8* %scevgep243.us.1 to double*
  %_p_scalar_245.us.1 = load double, double* %scevgep243244.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_248.us.1, %_p_scalar_245.us.1
  %289 = shl i64 %286, 3
  %290 = add i64 %289, %117
  %scevgep249.us.1 = getelementptr i8, i8* %call, i64 %290
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
  %291 = add i64 %106, %116
  %scevgep240.us.2 = getelementptr i8, i8* %call2, i64 %291
  %scevgep240241.us.2 = bitcast i8* %scevgep240.us.2 to double*
  %_p_scalar_242.us.2 = load double, double* %scevgep240241.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.2 = getelementptr i8, i8* %call1, i64 %291
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2, %polly.loop_exit232.loopexit.us.1
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_exit232.loopexit.us.1 ]
  %292 = add nuw nsw i64 %polly.indvar234.us.2, %108
  %293 = mul nuw nsw i64 %292, 8000
  %294 = add nuw nsw i64 %293, %106
  %scevgep237.us.2 = getelementptr i8, i8* %call1, i64 %294
  %scevgep237238.us.2 = bitcast i8* %scevgep237.us.2 to double*
  %_p_scalar_239.us.2 = load double, double* %scevgep237238.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_242.us.2, %_p_scalar_239.us.2
  %scevgep243.us.2 = getelementptr i8, i8* %call2, i64 %294
  %scevgep243244.us.2 = bitcast i8* %scevgep243.us.2 to double*
  %_p_scalar_245.us.2 = load double, double* %scevgep243244.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_248.us.2, %_p_scalar_245.us.2
  %295 = shl i64 %292, 3
  %296 = add i64 %295, %117
  %scevgep249.us.2 = getelementptr i8, i8* %call, i64 %296
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
  %297 = add i64 %107, %116
  %scevgep240.us.3 = getelementptr i8, i8* %call2, i64 %297
  %scevgep240241.us.3 = bitcast i8* %scevgep240.us.3 to double*
  %_p_scalar_242.us.3 = load double, double* %scevgep240241.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep246.us.3 = getelementptr i8, i8* %call1, i64 %297
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3, %polly.loop_exit232.loopexit.us.2
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_exit232.loopexit.us.2 ]
  %298 = add nuw nsw i64 %polly.indvar234.us.3, %108
  %299 = mul nuw nsw i64 %298, 8000
  %300 = add nuw nsw i64 %299, %107
  %scevgep237.us.3 = getelementptr i8, i8* %call1, i64 %300
  %scevgep237238.us.3 = bitcast i8* %scevgep237.us.3 to double*
  %_p_scalar_239.us.3 = load double, double* %scevgep237238.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_242.us.3, %_p_scalar_239.us.3
  %scevgep243.us.3 = getelementptr i8, i8* %call2, i64 %300
  %scevgep243244.us.3 = bitcast i8* %scevgep243.us.3 to double*
  %_p_scalar_245.us.3 = load double, double* %scevgep243244.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_248.us.3, %_p_scalar_245.us.3
  %301 = shl i64 %298, 3
  %302 = add i64 %301, %117
  %scevgep249.us.3 = getelementptr i8, i8* %call, i64 %302
  %scevgep249250.us.3 = bitcast i8* %scevgep249.us.3 to double*
  %_p_scalar_251.us.3 = load double, double* %scevgep249250.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_251.us.3
  store double %p_add42.i118.us.3, double* %scevgep249250.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next235.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar234.us.3, %smin
  br i1 %exitcond.3.not, label %polly.loop_exit225, label %polly.loop_header230.us.3

polly.loop_header388.us.1:                        ; preds = %polly.loop_header388.us.1, %polly.loop_exit390.loopexit.us
  %polly.indvar392.us.1 = phi i64 [ %polly.indvar_next393.us.1, %polly.loop_header388.us.1 ], [ 0, %polly.loop_exit390.loopexit.us ]
  %303 = add nuw nsw i64 %polly.indvar392.us.1, %145
  %304 = mul nuw nsw i64 %303, 8000
  %305 = add nuw nsw i64 %304, %141
  %scevgep395.us.1 = getelementptr i8, i8* %call1, i64 %305
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_400.us.1, %_p_scalar_397.us.1
  %scevgep401.us.1 = getelementptr i8, i8* %call2, i64 %305
  %scevgep401402.us.1 = bitcast i8* %scevgep401.us.1 to double*
  %_p_scalar_403.us.1 = load double, double* %scevgep401402.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_406.us.1, %_p_scalar_403.us.1
  %306 = shl i64 %303, 3
  %307 = add i64 %306, %154
  %scevgep407.us.1 = getelementptr i8, i8* %call, i64 %307
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
  %308 = add i64 %143, %153
  %scevgep398.us.2 = getelementptr i8, i8* %call2, i64 %308
  %scevgep398399.us.2 = bitcast i8* %scevgep398.us.2 to double*
  %_p_scalar_400.us.2 = load double, double* %scevgep398399.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep404405.us.2 = bitcast i8* %scevgep404.us.2 to double*
  %_p_scalar_406.us.2 = load double, double* %scevgep404405.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.2

polly.loop_header388.us.2:                        ; preds = %polly.loop_header388.us.2, %polly.loop_exit390.loopexit.us.1
  %polly.indvar392.us.2 = phi i64 [ %polly.indvar_next393.us.2, %polly.loop_header388.us.2 ], [ 0, %polly.loop_exit390.loopexit.us.1 ]
  %309 = add nuw nsw i64 %polly.indvar392.us.2, %145
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %143
  %scevgep395.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep395396.us.2 = bitcast i8* %scevgep395.us.2 to double*
  %_p_scalar_397.us.2 = load double, double* %scevgep395396.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_400.us.2, %_p_scalar_397.us.2
  %scevgep401.us.2 = getelementptr i8, i8* %call2, i64 %311
  %scevgep401402.us.2 = bitcast i8* %scevgep401.us.2 to double*
  %_p_scalar_403.us.2 = load double, double* %scevgep401402.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_406.us.2, %_p_scalar_403.us.2
  %312 = shl i64 %309, 3
  %313 = add i64 %312, %154
  %scevgep407.us.2 = getelementptr i8, i8* %call, i64 %313
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
  %314 = add i64 %144, %153
  %scevgep398.us.3 = getelementptr i8, i8* %call2, i64 %314
  %scevgep398399.us.3 = bitcast i8* %scevgep398.us.3 to double*
  %_p_scalar_400.us.3 = load double, double* %scevgep398399.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep404.us.3 = getelementptr i8, i8* %call1, i64 %314
  %scevgep404405.us.3 = bitcast i8* %scevgep404.us.3 to double*
  %_p_scalar_406.us.3 = load double, double* %scevgep404405.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header388.us.3

polly.loop_header388.us.3:                        ; preds = %polly.loop_header388.us.3, %polly.loop_exit390.loopexit.us.2
  %polly.indvar392.us.3 = phi i64 [ %polly.indvar_next393.us.3, %polly.loop_header388.us.3 ], [ 0, %polly.loop_exit390.loopexit.us.2 ]
  %315 = add nuw nsw i64 %polly.indvar392.us.3, %145
  %316 = mul nuw nsw i64 %315, 8000
  %317 = add nuw nsw i64 %316, %144
  %scevgep395.us.3 = getelementptr i8, i8* %call1, i64 %317
  %scevgep395396.us.3 = bitcast i8* %scevgep395.us.3 to double*
  %_p_scalar_397.us.3 = load double, double* %scevgep395396.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_400.us.3, %_p_scalar_397.us.3
  %scevgep401.us.3 = getelementptr i8, i8* %call2, i64 %317
  %scevgep401402.us.3 = bitcast i8* %scevgep401.us.3 to double*
  %_p_scalar_403.us.3 = load double, double* %scevgep401402.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_406.us.3, %_p_scalar_403.us.3
  %318 = shl i64 %315, 3
  %319 = add i64 %318, %154
  %scevgep407.us.3 = getelementptr i8, i8* %call, i64 %319
  %scevgep407408.us.3 = bitcast i8* %scevgep407.us.3 to double*
  %_p_scalar_409.us.3 = load double, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_409.us.3
  store double %p_add42.i79.us.3, double* %scevgep407408.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next393.us.3 = add nuw nsw i64 %polly.indvar392.us.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar392.us.3, %smin812
  br i1 %exitcond813.3.not, label %polly.loop_exit383, label %polly.loop_header388.us.3

polly.loop_header546.us.1:                        ; preds = %polly.loop_header546.us.1, %polly.loop_exit548.loopexit.us
  %polly.indvar550.us.1 = phi i64 [ %polly.indvar_next551.us.1, %polly.loop_header546.us.1 ], [ 0, %polly.loop_exit548.loopexit.us ]
  %320 = add nuw nsw i64 %polly.indvar550.us.1, %182
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %178
  %scevgep553.us.1 = getelementptr i8, i8* %call1, i64 %322
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %scevgep559.us.1 = getelementptr i8, i8* %call2, i64 %322
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_564.us.1, %_p_scalar_561.us.1
  %323 = shl i64 %320, 3
  %324 = add i64 %323, %191
  %scevgep565.us.1 = getelementptr i8, i8* %call, i64 %324
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
  %325 = add i64 %180, %190
  %scevgep556.us.2 = getelementptr i8, i8* %call2, i64 %325
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.2 = getelementptr i8, i8* %call1, i64 %325
  %scevgep562563.us.2 = bitcast i8* %scevgep562.us.2 to double*
  %_p_scalar_564.us.2 = load double, double* %scevgep562563.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.2

polly.loop_header546.us.2:                        ; preds = %polly.loop_header546.us.2, %polly.loop_exit548.loopexit.us.1
  %polly.indvar550.us.2 = phi i64 [ %polly.indvar_next551.us.2, %polly.loop_header546.us.2 ], [ 0, %polly.loop_exit548.loopexit.us.1 ]
  %326 = add nuw nsw i64 %polly.indvar550.us.2, %182
  %327 = mul nuw nsw i64 %326, 8000
  %328 = add nuw nsw i64 %327, %180
  %scevgep553.us.2 = getelementptr i8, i8* %call1, i64 %328
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %scevgep559.us.2 = getelementptr i8, i8* %call2, i64 %328
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_564.us.2, %_p_scalar_561.us.2
  %329 = shl i64 %326, 3
  %330 = add i64 %329, %191
  %scevgep565.us.2 = getelementptr i8, i8* %call, i64 %330
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
  %331 = add i64 %181, %190
  %scevgep556.us.3 = getelementptr i8, i8* %call2, i64 %331
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep562.us.3 = getelementptr i8, i8* %call1, i64 %331
  %scevgep562563.us.3 = bitcast i8* %scevgep562.us.3 to double*
  %_p_scalar_564.us.3 = load double, double* %scevgep562563.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header546.us.3

polly.loop_header546.us.3:                        ; preds = %polly.loop_header546.us.3, %polly.loop_exit548.loopexit.us.2
  %polly.indvar550.us.3 = phi i64 [ %polly.indvar_next551.us.3, %polly.loop_header546.us.3 ], [ 0, %polly.loop_exit548.loopexit.us.2 ]
  %332 = add nuw nsw i64 %polly.indvar550.us.3, %182
  %333 = mul nuw nsw i64 %332, 8000
  %334 = add nuw nsw i64 %333, %181
  %scevgep553.us.3 = getelementptr i8, i8* %call1, i64 %334
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %scevgep559.us.3 = getelementptr i8, i8* %call2, i64 %334
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_564.us.3, %_p_scalar_561.us.3
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %191
  %scevgep565.us.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep565566.us.3 = bitcast i8* %scevgep565.us.3 to double*
  %_p_scalar_567.us.3 = load double, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_567.us.3
  store double %p_add42.i.us.3, double* %scevgep565566.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next551.us.3 = add nuw nsw i64 %polly.indvar550.us.3, 1
  %exitcond834.3.not = icmp eq i64 %polly.indvar550.us.3, %smin833
  br i1 %exitcond834.3.not, label %polly.loop_exit541, label %polly.loop_header546.us.3
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
!33 = !{!"llvm.loop.tile.size", i32 4}
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
