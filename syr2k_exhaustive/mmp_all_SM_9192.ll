; ModuleID = 'syr2k_exhaustive/mmp_all_SM_9192.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_9192.c"
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
  %scevgep888 = getelementptr i8, i8* %call2, i64 %12
  %scevgep887 = getelementptr i8, i8* %call2, i64 %11
  %scevgep886 = getelementptr i8, i8* %call1, i64 %12
  %scevgep885 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep885, %scevgep888
  %bound1 = icmp ult i8* %scevgep887, %scevgep886
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
  br i1 %exitcond18.not.i, label %vector.ph892, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph892:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert899 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat900 = shufflevector <4 x i64> %broadcast.splatinsert899, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body891

vector.body891:                                   ; preds = %vector.body891, %vector.ph892
  %index893 = phi i64 [ 0, %vector.ph892 ], [ %index.next894, %vector.body891 ]
  %vec.ind897 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph892 ], [ %vec.ind.next898, %vector.body891 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind897, %broadcast.splat900
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv7.i, i64 %index893
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next894 = add i64 %index893, 4
  %vec.ind.next898 = add <4 x i64> %vec.ind897, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next894, 1200
  br i1 %40, label %for.inc41.i, label %vector.body891, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body891
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph892, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header496, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check955 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check955, label %for.body3.i46.preheader1032, label %vector.ph956

vector.ph956:                                     ; preds = %for.body3.i46.preheader
  %n.vec958 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph956
  %index959 = phi i64 [ 0, %vector.ph956 ], [ %index.next960, %vector.body954 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %index959
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next960 = add i64 %index959, 4
  %46 = icmp eq i64 %index.next960, %n.vec958
  br i1 %46, label %middle.block952, label %vector.body954, !llvm.loop !18

middle.block952:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %indvars.iv21.i, %n.vec958
  br i1 %cmp.n962, label %for.inc6.i, label %for.body3.i46.preheader1032

for.body3.i46.preheader1032:                      ; preds = %for.body3.i46.preheader, %middle.block952
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec958, %middle.block952 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1032, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1032 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block952, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit522
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header338, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check978 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check978, label %for.body3.i60.preheader1030, label %vector.ph979

vector.ph979:                                     ; preds = %for.body3.i60.preheader
  %n.vec981 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next983, %vector.body977 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %index982
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load986 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load986, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next983 = add i64 %index982, 4
  %57 = icmp eq i64 %index.next983, %n.vec981
  br i1 %57, label %middle.block975, label %vector.body977, !llvm.loop !54

middle.block975:                                  ; preds = %vector.body977
  %cmp.n985 = icmp eq i64 %indvars.iv21.i52, %n.vec981
  br i1 %cmp.n985, label %for.inc6.i63, label %for.body3.i60.preheader1030

for.body3.i60.preheader1030:                      ; preds = %for.body3.i60.preheader, %middle.block975
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec981, %middle.block975 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1030, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1030 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block975, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1004 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1004, label %for.body3.i99.preheader1028, label %vector.ph1005

vector.ph1005:                                    ; preds = %for.body3.i99.preheader
  %n.vec1007 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1003 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %index1008
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1012 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1012, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1009 = add i64 %index1008, 4
  %68 = icmp eq i64 %index.next1009, %n.vec1007
  br i1 %68, label %middle.block1001, label %vector.body1003, !llvm.loop !56

middle.block1001:                                 ; preds = %vector.body1003
  %cmp.n1011 = icmp eq i64 %indvars.iv21.i91, %n.vec1007
  br i1 %cmp.n1011, label %for.inc6.i102, label %for.body3.i99.preheader1028

for.body3.i99.preheader1028:                      ; preds = %for.body3.i99.preheader, %middle.block1001
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1007, %middle.block1001 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1028, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1028 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call720, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1001, %for.cond1.preheader.i93
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
  %indvar1016 = phi i64 [ %indvar.next1017, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1016, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1018 = icmp ult i64 %88, 4
  br i1 %min.iters.check1018, label %polly.loop_header191.preheader, label %vector.ph1019

vector.ph1019:                                    ; preds = %polly.loop_header
  %n.vec1021 = and i64 %88, -4
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1019
  %index1022 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1023, %vector.body1015 ]
  %90 = shl nuw nsw i64 %index1022, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1026 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1026, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1023 = add i64 %index1022, 4
  %95 = icmp eq i64 %index.next1023, %n.vec1021
  br i1 %95, label %middle.block1013, label %vector.body1015, !llvm.loop !67

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1025 = icmp eq i64 %88, %n.vec1021
  br i1 %cmp.n1025, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1013
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1021, %middle.block1013 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1013
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1017 = add i64 %indvar1016, 1
  br i1 %exitcond801.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond800.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit207 ], [ 4, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = udiv i64 %indvars.iv788, 5
  %98 = mul nuw nsw i64 %97, 100
  %99 = trunc i64 %polly.indvar202 to i8
  %pexp.p_div_q.lhs.trunc = add i8 %99, 4
  %pexp.p_div_q776 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q776 to i64
  %100 = sub nsw i64 %polly.indvar202, %pexp.p_div_q.zext
  %polly.loop_guard = icmp slt i64 %100, 12
  br i1 %polly.loop_guard, label %polly.loop_header205.preheader, label %polly.loop_exit207

polly.loop_header205.preheader:                   ; preds = %polly.loop_header199
  %101 = sub nsw i64 %indvars.iv792, %98
  %102 = add i64 %indvars.iv, %98
  %103 = mul nuw nsw i64 %polly.indvar202, 80
  %104 = mul nsw i64 %polly.indvar202, -80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 20
  %exitcond799.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond799.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205.preheader, %polly.loop_exit213
  %indvars.iv794 = phi i64 [ %101, %polly.loop_header205.preheader ], [ %indvars.iv.next795, %polly.loop_exit213 ]
  %indvars.iv790 = phi i64 [ %102, %polly.loop_header205.preheader ], [ %indvars.iv.next791, %polly.loop_exit213 ]
  %polly.indvar208 = phi i64 [ %100, %polly.loop_header205.preheader ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv790, i64 0)
  %105 = add i64 %smax, %indvars.iv794
  %106 = mul nsw i64 %polly.indvar208, 100
  %107 = sub nsw i64 %103, %106
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard221 = icmp slt i64 %109, 100
  br i1 %polly.loop_guard221, label %polly.loop_header211.us, label %polly.loop_exit213

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit220.loopexit.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit220.loopexit.us ], [ 0, %polly.loop_header205 ]
  %110 = shl nuw nsw i64 %polly.indvar214.us, 3
  %scevgep233.us = getelementptr i8, i8* %call1, i64 %110
  %scevgep237.us = getelementptr i8, i8* %call2, i64 %110
  br label %polly.loop_header218.us

polly.loop_header218.us:                          ; preds = %polly.loop_exit228.us, %polly.loop_header211.us
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit228.us ], [ %105, %polly.loop_header211.us ]
  %polly.indvar222.us = phi i64 [ %polly.indvar_next223.us, %polly.loop_exit228.us ], [ %109, %polly.loop_header211.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv796, i64 79)
  %111 = add i64 %polly.indvar222.us, %106
  %112 = add i64 %111, %104
  %polly.loop_guard229.us874 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard229.us874, label %polly.loop_header226.preheader.us, label %polly.loop_exit228.us

polly.loop_header226.us:                          ; preds = %polly.loop_header226.preheader.us, %polly.loop_header226.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_header226.us ], [ 0, %polly.loop_header226.preheader.us ]
  %113 = add nuw nsw i64 %polly.indvar230.us, %103
  %114 = mul nuw nsw i64 %113, 8000
  %scevgep234.us = getelementptr i8, i8* %scevgep233.us, i64 %114
  %scevgep234235.us = bitcast i8* %scevgep234.us to double*
  %_p_scalar_236.us = load double, double* %scevgep234235.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_236.us
  %scevgep242.us = getelementptr i8, i8* %scevgep237.us, i64 %114
  %scevgep242243.us = bitcast i8* %scevgep242.us to double*
  %_p_scalar_244.us = load double, double* %scevgep242243.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_248.us, %_p_scalar_244.us
  %115 = shl i64 %113, 3
  %116 = add i64 %115, %118
  %scevgep249.us = getelementptr i8, i8* %call, i64 %116
  %scevgep249250.us = bitcast i8* %scevgep249.us to double*
  %_p_scalar_251.us = load double, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_251.us
  store double %p_add42.i118.us, double* %scevgep249250.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar230.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit228.us, label %polly.loop_header226.us

polly.loop_exit228.us:                            ; preds = %polly.loop_header226.us, %polly.loop_header218.us
  %polly.indvar_next223.us = add nuw nsw i64 %polly.indvar222.us, 1
  %polly.loop_cond224.us = icmp ult i64 %polly.indvar222.us, 99
  %indvars.iv.next797 = add i64 %indvars.iv796, 1
  br i1 %polly.loop_cond224.us, label %polly.loop_header218.us, label %polly.loop_exit220.loopexit.us

polly.loop_header226.preheader.us:                ; preds = %polly.loop_header218.us
  %117 = mul i64 %111, 8000
  %scevgep238.us = getelementptr i8, i8* %scevgep237.us, i64 %117
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !66, !noalias !71
  %scevgep246.us = getelementptr i8, i8* %scevgep233.us, i64 %117
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !65, !noalias !70
  %118 = mul i64 %111, 9600
  br label %polly.loop_header226.us

polly.loop_exit220.loopexit.us:                   ; preds = %polly.loop_exit228.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond798.not, label %polly.loop_exit213, label %polly.loop_header211.us

polly.loop_exit213:                               ; preds = %polly.loop_exit220.loopexit.us, %polly.loop_header205
  %polly.indvar_next209 = add nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp slt i64 %polly.indvar208, 11
  %indvars.iv.next791 = add i64 %indvars.iv790, -100
  %indvars.iv.next795 = add i64 %indvars.iv794, 100
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header338:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit346
  %indvar990 = phi i64 [ %indvar.next991, %polly.loop_exit346 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar341 = phi i64 [ %polly.indvar_next342, %polly.loop_exit346 ], [ 1, %kernel_syr2k.exit ]
  %119 = add i64 %indvar990, 1
  %120 = mul nuw nsw i64 %polly.indvar341, 9600
  %scevgep350 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check992 = icmp ult i64 %119, 4
  br i1 %min.iters.check992, label %polly.loop_header344.preheader, label %vector.ph993

vector.ph993:                                     ; preds = %polly.loop_header338
  %n.vec995 = and i64 %119, -4
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next997, %vector.body989 ]
  %121 = shl nuw nsw i64 %index996, 3
  %122 = getelementptr i8, i8* %scevgep350, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1000 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !72, !noalias !74
  %124 = fmul fast <4 x double> %wide.load1000, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !72, !noalias !74
  %index.next997 = add i64 %index996, 4
  %126 = icmp eq i64 %index.next997, %n.vec995
  br i1 %126, label %middle.block987, label %vector.body989, !llvm.loop !77

middle.block987:                                  ; preds = %vector.body989
  %cmp.n999 = icmp eq i64 %119, %n.vec995
  br i1 %cmp.n999, label %polly.loop_exit346, label %polly.loop_header344.preheader

polly.loop_header344.preheader:                   ; preds = %polly.loop_header338, %middle.block987
  %polly.indvar347.ph = phi i64 [ 0, %polly.loop_header338 ], [ %n.vec995, %middle.block987 ]
  br label %polly.loop_header344

polly.loop_exit346:                               ; preds = %polly.loop_header344, %middle.block987
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond820.not = icmp eq i64 %polly.indvar_next342, 1200
  %indvar.next991 = add i64 %indvar990, 1
  br i1 %exitcond820.not, label %polly.loop_header354, label %polly.loop_header338

polly.loop_header344:                             ; preds = %polly.loop_header344.preheader, %polly.loop_header344
  %polly.indvar347 = phi i64 [ %polly.indvar_next348, %polly.loop_header344 ], [ %polly.indvar347.ph, %polly.loop_header344.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar347, 3
  %scevgep351 = getelementptr i8, i8* %scevgep350, i64 %127
  %scevgep351352 = bitcast i8* %scevgep351 to double*
  %_p_scalar_353 = load double, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_353, 1.200000e+00
  store double %p_mul.i57, double* %scevgep351352, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next348, %polly.indvar341
  br i1 %exitcond819.not, label %polly.loop_exit346, label %polly.loop_header344, !llvm.loop !78

polly.loop_header354:                             ; preds = %polly.loop_exit346, %polly.loop_exit364
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %polly.loop_exit364 ], [ 4, %polly.loop_exit346 ]
  %indvars.iv802 = phi i64 [ %indvars.iv.next803, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit364 ], [ 0, %polly.loop_exit346 ]
  %128 = udiv i64 %indvars.iv804, 5
  %129 = mul nuw nsw i64 %128, 100
  %130 = trunc i64 %polly.indvar357 to i8
  %pexp.p_div_q360.lhs.trunc = add i8 %130, 4
  %pexp.p_div_q360775 = udiv i8 %pexp.p_div_q360.lhs.trunc, 5
  %pexp.p_div_q360.zext = zext i8 %pexp.p_div_q360775 to i64
  %131 = sub nsw i64 %polly.indvar357, %pexp.p_div_q360.zext
  %polly.loop_guard365 = icmp slt i64 %131, 12
  br i1 %polly.loop_guard365, label %polly.loop_header362.preheader, label %polly.loop_exit364

polly.loop_header362.preheader:                   ; preds = %polly.loop_header354
  %132 = sub nsw i64 %indvars.iv809, %129
  %133 = add i64 %indvars.iv802, %129
  %134 = mul nuw nsw i64 %polly.indvar357, 80
  %135 = mul nsw i64 %polly.indvar357, -80
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit371, %polly.loop_header354
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, -20
  %indvars.iv.next805 = add nuw nsw i64 %indvars.iv804, 1
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 20
  %exitcond818.not = icmp eq i64 %polly.indvar_next358, 15
  br i1 %exitcond818.not, label %kernel_syr2k.exit90, label %polly.loop_header354

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_exit371
  %indvars.iv811 = phi i64 [ %132, %polly.loop_header362.preheader ], [ %indvars.iv.next812, %polly.loop_exit371 ]
  %indvars.iv806 = phi i64 [ %133, %polly.loop_header362.preheader ], [ %indvars.iv.next807, %polly.loop_exit371 ]
  %polly.indvar366 = phi i64 [ %131, %polly.loop_header362.preheader ], [ %polly.indvar_next367, %polly.loop_exit371 ]
  %smax808 = call i64 @llvm.smax.i64(i64 %indvars.iv806, i64 0)
  %136 = add i64 %smax808, %indvars.iv811
  %137 = mul nsw i64 %polly.indvar366, 100
  %138 = sub nsw i64 %134, %137
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard379 = icmp slt i64 %140, 100
  br i1 %polly.loop_guard379, label %polly.loop_header369.us, label %polly.loop_exit371

polly.loop_header369.us:                          ; preds = %polly.loop_header362, %polly.loop_exit378.loopexit.us
  %polly.indvar372.us = phi i64 [ %polly.indvar_next373.us, %polly.loop_exit378.loopexit.us ], [ 0, %polly.loop_header362 ]
  %141 = shl nuw nsw i64 %polly.indvar372.us, 3
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %141
  %scevgep395.us = getelementptr i8, i8* %call2, i64 %141
  br label %polly.loop_header376.us

polly.loop_header376.us:                          ; preds = %polly.loop_exit386.us, %polly.loop_header369.us
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit386.us ], [ %136, %polly.loop_header369.us ]
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.us ], [ %140, %polly.loop_header369.us ]
  %smin815 = call i64 @llvm.smin.i64(i64 %indvars.iv813, i64 79)
  %142 = add i64 %polly.indvar380.us, %137
  %143 = add i64 %142, %135
  %polly.loop_guard387.us875 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard387.us875, label %polly.loop_header384.preheader.us, label %polly.loop_exit386.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.preheader.us, %polly.loop_header384.us
  %polly.indvar388.us = phi i64 [ %polly.indvar_next389.us, %polly.loop_header384.us ], [ 0, %polly.loop_header384.preheader.us ]
  %144 = add nuw nsw i64 %polly.indvar388.us, %134
  %145 = mul nuw nsw i64 %144, 8000
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %145
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_398.us, %_p_scalar_394.us
  %scevgep400.us = getelementptr i8, i8* %scevgep395.us, i64 %145
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_406.us, %_p_scalar_402.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %149
  %scevgep407.us = getelementptr i8, i8* %call, i64 %147
  %scevgep407408.us = bitcast i8* %scevgep407.us to double*
  %_p_scalar_409.us = load double, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_409.us
  store double %p_add42.i79.us, double* %scevgep407408.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond816.not = icmp eq i64 %polly.indvar388.us, %smin815
  br i1 %exitcond816.not, label %polly.loop_exit386.us, label %polly.loop_header384.us

polly.loop_exit386.us:                            ; preds = %polly.loop_header384.us, %polly.loop_header376.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %polly.loop_cond382.us = icmp ult i64 %polly.indvar380.us, 99
  %indvars.iv.next814 = add i64 %indvars.iv813, 1
  br i1 %polly.loop_cond382.us, label %polly.loop_header376.us, label %polly.loop_exit378.loopexit.us

polly.loop_header384.preheader.us:                ; preds = %polly.loop_header376.us
  %148 = mul i64 %142, 8000
  %scevgep396.us = getelementptr i8, i8* %scevgep395.us, i64 %148
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !76, !noalias !80
  %scevgep404.us = getelementptr i8, i8* %scevgep391.us, i64 %148
  %scevgep404405.us = bitcast i8* %scevgep404.us to double*
  %_p_scalar_406.us = load double, double* %scevgep404405.us, align 8, !alias.scope !75, !noalias !79
  %149 = mul i64 %142, 9600
  br label %polly.loop_header384.us

polly.loop_exit378.loopexit.us:                   ; preds = %polly.loop_exit386.us
  %polly.indvar_next373.us = add nuw nsw i64 %polly.indvar372.us, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next373.us, 1000
  br i1 %exitcond817.not, label %polly.loop_exit371, label %polly.loop_header369.us

polly.loop_exit371:                               ; preds = %polly.loop_exit378.loopexit.us, %polly.loop_header362
  %polly.indvar_next367 = add nsw i64 %polly.indvar366, 1
  %polly.loop_cond368 = icmp slt i64 %polly.indvar366, 11
  %indvars.iv.next807 = add i64 %indvars.iv806, -100
  %indvars.iv.next812 = add i64 %indvars.iv811, 100
  br i1 %polly.loop_cond368, label %polly.loop_header362, label %polly.loop_exit364

polly.loop_header496:                             ; preds = %init_array.exit, %polly.loop_exit504
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit504 ], [ 0, %init_array.exit ]
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_exit504 ], [ 1, %init_array.exit ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar499, 9600
  %scevgep508 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check966 = icmp ult i64 %150, 4
  br i1 %min.iters.check966, label %polly.loop_header502.preheader, label %vector.ph967

vector.ph967:                                     ; preds = %polly.loop_header496
  %n.vec969 = and i64 %150, -4
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph967
  %index970 = phi i64 [ 0, %vector.ph967 ], [ %index.next971, %vector.body965 ]
  %152 = shl nuw nsw i64 %index970, 3
  %153 = getelementptr i8, i8* %scevgep508, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load974 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !81, !noalias !83
  %155 = fmul fast <4 x double> %wide.load974, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !81, !noalias !83
  %index.next971 = add i64 %index970, 4
  %157 = icmp eq i64 %index.next971, %n.vec969
  br i1 %157, label %middle.block963, label %vector.body965, !llvm.loop !86

middle.block963:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %150, %n.vec969
  br i1 %cmp.n973, label %polly.loop_exit504, label %polly.loop_header502.preheader

polly.loop_header502.preheader:                   ; preds = %polly.loop_header496, %middle.block963
  %polly.indvar505.ph = phi i64 [ 0, %polly.loop_header496 ], [ %n.vec969, %middle.block963 ]
  br label %polly.loop_header502

polly.loop_exit504:                               ; preds = %polly.loop_header502, %middle.block963
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next500, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond839.not, label %polly.loop_header512, label %polly.loop_header496

polly.loop_header502:                             ; preds = %polly.loop_header502.preheader, %polly.loop_header502
  %polly.indvar505 = phi i64 [ %polly.indvar_next506, %polly.loop_header502 ], [ %polly.indvar505.ph, %polly.loop_header502.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar505, 3
  %scevgep509 = getelementptr i8, i8* %scevgep508, i64 %158
  %scevgep509510 = bitcast i8* %scevgep509 to double*
  %_p_scalar_511 = load double, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_511, 1.200000e+00
  store double %p_mul.i, double* %scevgep509510, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next506 = add nuw nsw i64 %polly.indvar505, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next506, %polly.indvar499
  br i1 %exitcond838.not, label %polly.loop_exit504, label %polly.loop_header502, !llvm.loop !87

polly.loop_header512:                             ; preds = %polly.loop_exit504, %polly.loop_exit522
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit522 ], [ 4, %polly.loop_exit504 ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %polly.indvar515 = phi i64 [ %polly.indvar_next516, %polly.loop_exit522 ], [ 0, %polly.loop_exit504 ]
  %159 = udiv i64 %indvars.iv823, 5
  %160 = mul nuw nsw i64 %159, 100
  %161 = trunc i64 %polly.indvar515 to i8
  %pexp.p_div_q518.lhs.trunc = add i8 %161, 4
  %pexp.p_div_q518774 = udiv i8 %pexp.p_div_q518.lhs.trunc, 5
  %pexp.p_div_q518.zext = zext i8 %pexp.p_div_q518774 to i64
  %162 = sub nsw i64 %polly.indvar515, %pexp.p_div_q518.zext
  %polly.loop_guard523 = icmp slt i64 %162, 12
  br i1 %polly.loop_guard523, label %polly.loop_header520.preheader, label %polly.loop_exit522

polly.loop_header520.preheader:                   ; preds = %polly.loop_header512
  %163 = sub nsw i64 %indvars.iv828, %160
  %164 = add i64 %indvars.iv821, %160
  %165 = mul nuw nsw i64 %polly.indvar515, 80
  %166 = mul nsw i64 %polly.indvar515, -80
  br label %polly.loop_header520

polly.loop_exit522:                               ; preds = %polly.loop_exit529, %polly.loop_header512
  %polly.indvar_next516 = add nuw nsw i64 %polly.indvar515, 1
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -20
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 20
  %exitcond837.not = icmp eq i64 %polly.indvar_next516, 15
  br i1 %exitcond837.not, label %kernel_syr2k.exit, label %polly.loop_header512

polly.loop_header520:                             ; preds = %polly.loop_header520.preheader, %polly.loop_exit529
  %indvars.iv830 = phi i64 [ %163, %polly.loop_header520.preheader ], [ %indvars.iv.next831, %polly.loop_exit529 ]
  %indvars.iv825 = phi i64 [ %164, %polly.loop_header520.preheader ], [ %indvars.iv.next826, %polly.loop_exit529 ]
  %polly.indvar524 = phi i64 [ %162, %polly.loop_header520.preheader ], [ %polly.indvar_next525, %polly.loop_exit529 ]
  %smax827 = call i64 @llvm.smax.i64(i64 %indvars.iv825, i64 0)
  %167 = add i64 %smax827, %indvars.iv830
  %168 = mul nsw i64 %polly.indvar524, 100
  %169 = sub nsw i64 %165, %168
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard537 = icmp slt i64 %171, 100
  br i1 %polly.loop_guard537, label %polly.loop_header527.us, label %polly.loop_exit529

polly.loop_header527.us:                          ; preds = %polly.loop_header520, %polly.loop_exit536.loopexit.us
  %polly.indvar530.us = phi i64 [ %polly.indvar_next531.us, %polly.loop_exit536.loopexit.us ], [ 0, %polly.loop_header520 ]
  %172 = shl nuw nsw i64 %polly.indvar530.us, 3
  %scevgep549.us = getelementptr i8, i8* %call1, i64 %172
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %172
  br label %polly.loop_header534.us

polly.loop_header534.us:                          ; preds = %polly.loop_exit544.us, %polly.loop_header527.us
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %polly.loop_exit544.us ], [ %167, %polly.loop_header527.us ]
  %polly.indvar538.us = phi i64 [ %polly.indvar_next539.us, %polly.loop_exit544.us ], [ %171, %polly.loop_header527.us ]
  %smin834 = call i64 @llvm.smin.i64(i64 %indvars.iv832, i64 79)
  %173 = add i64 %polly.indvar538.us, %168
  %174 = add i64 %173, %166
  %polly.loop_guard545.us876 = icmp sgt i64 %174, -1
  br i1 %polly.loop_guard545.us876, label %polly.loop_header542.preheader.us, label %polly.loop_exit544.us

polly.loop_header542.us:                          ; preds = %polly.loop_header542.preheader.us, %polly.loop_header542.us
  %polly.indvar546.us = phi i64 [ %polly.indvar_next547.us, %polly.loop_header542.us ], [ 0, %polly.loop_header542.preheader.us ]
  %175 = add nuw nsw i64 %polly.indvar546.us, %165
  %176 = mul nuw nsw i64 %175, 8000
  %scevgep550.us = getelementptr i8, i8* %scevgep549.us, i64 %176
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_552.us
  %scevgep558.us = getelementptr i8, i8* %scevgep553.us, i64 %176
  %scevgep558559.us = bitcast i8* %scevgep558.us to double*
  %_p_scalar_560.us = load double, double* %scevgep558559.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_564.us, %_p_scalar_560.us
  %177 = shl i64 %175, 3
  %178 = add i64 %177, %180
  %scevgep565.us = getelementptr i8, i8* %call, i64 %178
  %scevgep565566.us = bitcast i8* %scevgep565.us to double*
  %_p_scalar_567.us = load double, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_567.us
  store double %p_add42.i.us, double* %scevgep565566.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next547.us = add nuw nsw i64 %polly.indvar546.us, 1
  %exitcond835.not = icmp eq i64 %polly.indvar546.us, %smin834
  br i1 %exitcond835.not, label %polly.loop_exit544.us, label %polly.loop_header542.us

polly.loop_exit544.us:                            ; preds = %polly.loop_header542.us, %polly.loop_header534.us
  %polly.indvar_next539.us = add nuw nsw i64 %polly.indvar538.us, 1
  %polly.loop_cond540.us = icmp ult i64 %polly.indvar538.us, 99
  %indvars.iv.next833 = add i64 %indvars.iv832, 1
  br i1 %polly.loop_cond540.us, label %polly.loop_header534.us, label %polly.loop_exit536.loopexit.us

polly.loop_header542.preheader.us:                ; preds = %polly.loop_header534.us
  %179 = mul i64 %173, 8000
  %scevgep554.us = getelementptr i8, i8* %scevgep553.us, i64 %179
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !85, !noalias !89
  %scevgep562.us = getelementptr i8, i8* %scevgep549.us, i64 %179
  %scevgep562563.us = bitcast i8* %scevgep562.us to double*
  %_p_scalar_564.us = load double, double* %scevgep562563.us, align 8, !alias.scope !84, !noalias !88
  %180 = mul i64 %173, 9600
  br label %polly.loop_header542.us

polly.loop_exit536.loopexit.us:                   ; preds = %polly.loop_exit544.us
  %polly.indvar_next531.us = add nuw nsw i64 %polly.indvar530.us, 1
  %exitcond836.not = icmp eq i64 %polly.indvar_next531.us, 1000
  br i1 %exitcond836.not, label %polly.loop_exit529, label %polly.loop_header527.us

polly.loop_exit529:                               ; preds = %polly.loop_exit536.loopexit.us, %polly.loop_header520
  %polly.indvar_next525 = add nsw i64 %polly.indvar524, 1
  %polly.loop_cond526 = icmp slt i64 %polly.indvar524, 11
  %indvars.iv.next826 = add i64 %indvars.iv825, -100
  %indvars.iv.next831 = add i64 %indvars.iv830, 100
  br i1 %polly.loop_cond526, label %polly.loop_header520, label %polly.loop_exit522

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit702 ], [ 0, %entry ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 -1168)
  %181 = shl nsw i64 %polly.indvar697, 5
  %182 = add nsw i64 %smin866, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -32
  %exitcond869.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond869.not, label %polly.loop_header721, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %polly.loop_header694 ]
  %183 = mul nsw i64 %polly.indvar703, -32
  %smin904 = call i64 @llvm.smin.i64(i64 %183, i64 -1168)
  %184 = add nsw i64 %smin904, 1200
  %smin862 = call i64 @llvm.smin.i64(i64 %indvars.iv860, i64 -1168)
  %185 = shl nsw i64 %polly.indvar703, 5
  %186 = add nsw i64 %smin862, 1199
  br label %polly.loop_header706

polly.loop_exit708:                               ; preds = %polly.loop_exit714
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -32
  %exitcond868.not = icmp eq i64 %polly.indvar_next704, 38
  br i1 %exitcond868.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_exit714, %polly.loop_header700
  %polly.indvar709 = phi i64 [ 0, %polly.loop_header700 ], [ %polly.indvar_next710, %polly.loop_exit714 ]
  %187 = add nuw nsw i64 %polly.indvar709, %181
  %188 = trunc i64 %187 to i32
  %189 = mul nuw nsw i64 %187, 9600
  %min.iters.check = icmp eq i64 %184, 0
  br i1 %min.iters.check, label %polly.loop_header712, label %vector.ph905

vector.ph905:                                     ; preds = %polly.loop_header706
  %broadcast.splatinsert912 = insertelement <4 x i64> poison, i64 %185, i32 0
  %broadcast.splat913 = shufflevector <4 x i64> %broadcast.splatinsert912, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert914 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat915 = shufflevector <4 x i32> %broadcast.splatinsert914, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %vector.ph905
  %index906 = phi i64 [ 0, %vector.ph905 ], [ %index.next907, %vector.body903 ]
  %vec.ind910 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph905 ], [ %vec.ind.next911, %vector.body903 ]
  %190 = add nuw nsw <4 x i64> %vec.ind910, %broadcast.splat913
  %191 = trunc <4 x i64> %190 to <4 x i32>
  %192 = mul <4 x i32> %broadcast.splat915, %191
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 1200, i32 1200, i32 1200, i32 1200>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %197 = extractelement <4 x i64> %190, i32 0
  %198 = shl i64 %197, 3
  %199 = add nuw nsw i64 %198, %189
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %196, <4 x double>* %201, align 8, !alias.scope !90, !noalias !92
  %index.next907 = add i64 %index906, 4
  %vec.ind.next911 = add <4 x i64> %vec.ind910, <i64 4, i64 4, i64 4, i64 4>
  %202 = icmp eq i64 %index.next907, %184
  br i1 %202, label %polly.loop_exit714, label %vector.body903, !llvm.loop !95

polly.loop_exit714:                               ; preds = %vector.body903, %polly.loop_header712
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond867.not = icmp eq i64 %polly.indvar709, %182
  br i1 %exitcond867.not, label %polly.loop_exit708, label %polly.loop_header706

polly.loop_header712:                             ; preds = %polly.loop_header706, %polly.loop_header712
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_header712 ], [ 0, %polly.loop_header706 ]
  %203 = add nuw nsw i64 %polly.indvar715, %185
  %204 = trunc i64 %203 to i32
  %205 = mul i32 %204, %188
  %206 = add i32 %205, 3
  %207 = urem i32 %206, 1200
  %p_conv31.i = sitofp i32 %207 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %208 = shl i64 %203, 3
  %209 = add nuw nsw i64 %208, %189
  %scevgep718 = getelementptr i8, i8* %call, i64 %209
  %scevgep718719 = bitcast i8* %scevgep718 to double*
  store double %p_div33.i, double* %scevgep718719, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond863.not = icmp eq i64 %polly.indvar715, %186
  br i1 %exitcond863.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !96

polly.loop_header721:                             ; preds = %polly.loop_exit702, %polly.loop_exit729
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 -1168)
  %210 = shl nsw i64 %polly.indvar724, 5
  %211 = add nsw i64 %smin856, 1199
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -32
  %exitcond859.not = icmp eq i64 %polly.indvar_next725, 38
  br i1 %exitcond859.not, label %polly.loop_header747, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_header721 ]
  %212 = mul nsw i64 %polly.indvar730, -32
  %smin919 = call i64 @llvm.smin.i64(i64 %212, i64 -968)
  %213 = add nsw i64 %smin919, 1000
  %smin852 = call i64 @llvm.smin.i64(i64 %indvars.iv850, i64 -968)
  %214 = shl nsw i64 %polly.indvar730, 5
  %215 = add nsw i64 %smin852, 999
  br label %polly.loop_header733

polly.loop_exit735:                               ; preds = %polly.loop_exit741
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond858.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_exit741, %polly.loop_header727
  %polly.indvar736 = phi i64 [ 0, %polly.loop_header727 ], [ %polly.indvar_next737, %polly.loop_exit741 ]
  %216 = add nuw nsw i64 %polly.indvar736, %210
  %217 = trunc i64 %216 to i32
  %218 = mul nuw nsw i64 %216, 8000
  %min.iters.check920 = icmp eq i64 %213, 0
  br i1 %min.iters.check920, label %polly.loop_header739, label %vector.ph921

vector.ph921:                                     ; preds = %polly.loop_header733
  %broadcast.splatinsert930 = insertelement <4 x i64> poison, i64 %214, i32 0
  %broadcast.splat931 = shufflevector <4 x i64> %broadcast.splatinsert930, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert932 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat933 = shufflevector <4 x i32> %broadcast.splatinsert932, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next925, %vector.body918 ]
  %vec.ind928 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph921 ], [ %vec.ind.next929, %vector.body918 ]
  %219 = add nuw nsw <4 x i64> %vec.ind928, %broadcast.splat931
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat933, %220
  %222 = add <4 x i32> %221, <i32 2, i32 2, i32 2, i32 2>
  %223 = urem <4 x i32> %222, <i32 1000, i32 1000, i32 1000, i32 1000>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add nuw nsw i64 %227, %218
  %229 = getelementptr i8, i8* %call2, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !94, !noalias !97
  %index.next925 = add i64 %index924, 4
  %vec.ind.next929 = add <4 x i64> %vec.ind928, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next925, %213
  br i1 %231, label %polly.loop_exit741, label %vector.body918, !llvm.loop !98

polly.loop_exit741:                               ; preds = %vector.body918, %polly.loop_header739
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond857.not = icmp eq i64 %polly.indvar736, %211
  br i1 %exitcond857.not, label %polly.loop_exit735, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_header733, %polly.loop_header739
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_header739 ], [ 0, %polly.loop_header733 ]
  %232 = add nuw nsw i64 %polly.indvar742, %214
  %233 = trunc i64 %232 to i32
  %234 = mul i32 %233, %217
  %235 = add i32 %234, 2
  %236 = urem i32 %235, 1000
  %p_conv10.i = sitofp i32 %236 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %237 = shl i64 %232, 3
  %238 = add nuw nsw i64 %237, %218
  %scevgep745 = getelementptr i8, i8* %call2, i64 %238
  %scevgep745746 = bitcast i8* %scevgep745 to double*
  store double %p_div12.i, double* %scevgep745746, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %exitcond853.not = icmp eq i64 %polly.indvar742, %215
  br i1 %exitcond853.not, label %polly.loop_exit741, label %polly.loop_header739, !llvm.loop !99

polly.loop_header747:                             ; preds = %polly.loop_exit729, %polly.loop_exit755
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729 ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %239 = shl nsw i64 %polly.indvar750, 5
  %240 = add nsw i64 %smin846, 1199
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next751, 38
  br i1 %exitcond849.not, label %init_array.exit, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_header747 ]
  %241 = mul nsw i64 %polly.indvar756, -32
  %smin937 = call i64 @llvm.smin.i64(i64 %241, i64 -968)
  %242 = add nsw i64 %smin937, 1000
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -968)
  %243 = shl nsw i64 %polly.indvar756, 5
  %244 = add nsw i64 %smin842, 999
  br label %polly.loop_header759

polly.loop_exit761:                               ; preds = %polly.loop_exit767
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond848.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_exit767, %polly.loop_header753
  %polly.indvar762 = phi i64 [ 0, %polly.loop_header753 ], [ %polly.indvar_next763, %polly.loop_exit767 ]
  %245 = add nuw nsw i64 %polly.indvar762, %239
  %246 = trunc i64 %245 to i32
  %247 = mul nuw nsw i64 %245, 8000
  %min.iters.check938 = icmp eq i64 %242, 0
  br i1 %min.iters.check938, label %polly.loop_header765, label %vector.ph939

vector.ph939:                                     ; preds = %polly.loop_header759
  %broadcast.splatinsert948 = insertelement <4 x i64> poison, i64 %243, i32 0
  %broadcast.splat949 = shufflevector <4 x i64> %broadcast.splatinsert948, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert950 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat951 = shufflevector <4 x i32> %broadcast.splatinsert950, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph939
  %index942 = phi i64 [ 0, %vector.ph939 ], [ %index.next943, %vector.body936 ]
  %vec.ind946 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph939 ], [ %vec.ind.next947, %vector.body936 ]
  %248 = add nuw nsw <4 x i64> %vec.ind946, %broadcast.splat949
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat951, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 1200, i32 1200, i32 1200, i32 1200>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add nuw nsw i64 %256, %247
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !93, !noalias !100
  %index.next943 = add i64 %index942, 4
  %vec.ind.next947 = add <4 x i64> %vec.ind946, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next943, %242
  br i1 %260, label %polly.loop_exit767, label %vector.body936, !llvm.loop !101

polly.loop_exit767:                               ; preds = %vector.body936, %polly.loop_header765
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond847.not = icmp eq i64 %polly.indvar762, %240
  br i1 %exitcond847.not, label %polly.loop_exit761, label %polly.loop_header759

polly.loop_header765:                             ; preds = %polly.loop_header759, %polly.loop_header765
  %polly.indvar768 = phi i64 [ %polly.indvar_next769, %polly.loop_header765 ], [ 0, %polly.loop_header759 ]
  %261 = add nuw nsw i64 %polly.indvar768, %243
  %262 = trunc i64 %261 to i32
  %263 = mul i32 %262, %246
  %264 = add i32 %263, 1
  %265 = urem i32 %264, 1200
  %p_conv.i = sitofp i32 %265 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %266 = shl i64 %261, 3
  %267 = add nuw nsw i64 %266, %247
  %scevgep772 = getelementptr i8, i8* %call1, i64 %267
  %scevgep772773 = bitcast i8* %scevgep772 to double*
  store double %p_div.i, double* %scevgep772773, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next769 = add nuw nsw i64 %polly.indvar768, 1
  %exitcond843.not = icmp eq i64 %polly.indvar768, %244
  br i1 %exitcond843.not, label %polly.loop_exit767, label %polly.loop_header765, !llvm.loop !102
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
!24 = !{!"llvm.loop.tile.size", i32 80}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 2048}
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
!44 = !{!"llvm.loop.tile.size", i32 100}
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
