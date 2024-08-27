; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6769.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6769.c"
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
  %call760 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1621 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2622 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1621, %call2
  %polly.access.call2641 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2641, %call1
  %2 = or i1 %0, %1
  %polly.access.call661 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call661, %call2
  %4 = icmp ule i8* %polly.access.call2641, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call661, %call1
  %8 = icmp ule i8* %polly.access.call1621, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header734, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep911 = getelementptr i8, i8* %call2, i64 %12
  %scevgep910 = getelementptr i8, i8* %call2, i64 %11
  %scevgep909 = getelementptr i8, i8* %call1, i64 %12
  %scevgep908 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep908, %scevgep911
  %bound1 = icmp ult i8* %scevgep910, %scevgep909
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
  br i1 %exitcond18.not.i, label %vector.ph915, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph915:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body914

vector.body914:                                   ; preds = %vector.body914, %vector.ph915
  %index916 = phi i64 [ 0, %vector.ph915 ], [ %index.next917, %vector.body914 ]
  %vec.ind920 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph915 ], [ %vec.ind.next921, %vector.body914 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind920, %broadcast.splat923
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv7.i, i64 %index916
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next917 = add i64 %index916, 4
  %vec.ind.next921 = add <4 x i64> %vec.ind920, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next917, 1200
  br i1 %40, label %for.inc41.i, label %vector.body914, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body914
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph915, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit795
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start438, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check978 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check978, label %for.body3.i46.preheader1052, label %vector.ph979

vector.ph979:                                     ; preds = %for.body3.i46.preheader
  %n.vec981 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next983, %vector.body977 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i, i64 %index982
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next983 = add i64 %index982, 4
  %46 = icmp eq i64 %index.next983, %n.vec981
  br i1 %46, label %middle.block975, label %vector.body977, !llvm.loop !18

middle.block975:                                  ; preds = %vector.body977
  %cmp.n985 = icmp eq i64 %indvars.iv21.i, %n.vec981
  br i1 %cmp.n985, label %for.inc6.i, label %for.body3.i46.preheader1052

for.body3.i46.preheader1052:                      ; preds = %for.body3.i46.preheader, %middle.block975
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec981, %middle.block975 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1052, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1052 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block975, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting439
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1001 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1001, label %for.body3.i60.preheader1051, label %vector.ph1002

vector.ph1002:                                    ; preds = %for.body3.i60.preheader
  %n.vec1004 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %vector.ph1002
  %index1005 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1006, %vector.body1000 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i52, i64 %index1005
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1009 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1009, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1006 = add i64 %index1005, 4
  %57 = icmp eq i64 %index.next1006, %n.vec1004
  br i1 %57, label %middle.block998, label %vector.body1000, !llvm.loop !55

middle.block998:                                  ; preds = %vector.body1000
  %cmp.n1008 = icmp eq i64 %indvars.iv21.i52, %n.vec1004
  br i1 %cmp.n1008, label %for.inc6.i63, label %for.body3.i60.preheader1051

for.body3.i60.preheader1051:                      ; preds = %for.body3.i60.preheader, %middle.block998
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1004, %middle.block998 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1051, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1051 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block998, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1027 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1027, label %for.body3.i99.preheader1050, label %vector.ph1028

vector.ph1028:                                    ; preds = %for.body3.i99.preheader
  %n.vec1030 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1026 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i91, i64 %index1031
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1032 = add i64 %index1031, 4
  %68 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %68, label %middle.block1024, label %vector.body1026, !llvm.loop !57

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1034 = icmp eq i64 %indvars.iv21.i91, %n.vec1030
  br i1 %cmp.n1034, label %for.inc6.i102, label %for.body3.i99.preheader1050

for.body3.i99.preheader1050:                      ; preds = %for.body3.i99.preheader, %middle.block1024
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1030, %middle.block1024 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1050, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1050 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1024, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call760, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %indvar1039 = phi i64 [ %indvar.next1040, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1039, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1041 = icmp ult i64 %88, 4
  br i1 %min.iters.check1041, label %polly.loop_header191.preheader, label %vector.ph1042

vector.ph1042:                                    ; preds = %polly.loop_header
  %n.vec1044 = and i64 %88, -4
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1042
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1046, %vector.body1038 ]
  %90 = shl nuw nsw i64 %index1045, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1049 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1049, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1046 = add i64 %index1045, 4
  %95 = icmp eq i64 %index.next1046, %n.vec1044
  br i1 %95, label %middle.block1036, label %vector.body1038, !llvm.loop !69

middle.block1036:                                 ; preds = %vector.body1038
  %cmp.n1048 = icmp eq i64 %88, %n.vec1044
  br i1 %cmp.n1048, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1036
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1044, %middle.block1036 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1036
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1040 = add i64 %indvar1039, 1
  br i1 %exitcond830.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond829.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond828.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond827.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = lshr i64 %polly.indvar218, 3
  %98 = shl nsw i64 %polly.indvar218, 2
  %99 = mul nsw i64 %polly.indvar218, 32000
  %100 = mul nsw i64 %polly.indvar218, 38400
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 8000
  %103 = mul nuw nsw i64 %101, 9600
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 8000
  %106 = mul nuw nsw i64 %104, 9600
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 8000
  %109 = mul nuw nsw i64 %107, 9600
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit235.3
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond826.not = icmp eq i64 %polly.indvar_next219, 300
  br i1 %exitcond826.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit235.3, %polly.loop_header215
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit235.3 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit235.3 ], [ 0, %polly.loop_header215 ]
  %110 = shl nsw i64 %polly.indvar224, 5
  %111 = sub nsw i64 %98, %110
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv819, i64 31)
  %polly.loop_guard894 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard894, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header221, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header221 ]
  %112 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep245.us = getelementptr i8, i8* %call1, i64 %112
  %polly.access.mul.Packed_MemRef_call2249.us = mul nuw nsw i64 %polly.indvar236.us, 1200
  %polly.access.add.Packed_MemRef_call2250.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us, %98
  %polly.access.Packed_MemRef_call2251.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us
  %_p_scalar_252.us = load double, double* %polly.access.Packed_MemRef_call2251.us, align 8
  %scevgep258.us = getelementptr i8, i8* %scevgep245.us, i64 %99
  %scevgep258259.us = bitcast i8* %scevgep258.us to double*
  %_p_scalar_260.us = load double, double* %scevgep258259.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header233.us
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_header239.us ]
  %113 = add nuw nsw i64 %polly.indvar242.us, %110
  %114 = mul nuw nsw i64 %113, 8000
  %scevgep246.us = getelementptr i8, i8* %scevgep245.us, i64 %114
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_252.us, %_p_scalar_248.us
  %polly.access.add.Packed_MemRef_call2254.us = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call2249.us
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_260.us, %_p_scalar_256.us
  %115 = shl i64 %113, 3
  %116 = add nuw nsw i64 %115, %100
  %scevgep261.us = getelementptr i8, i8* %call, i64 %116
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_263.us
  store double %p_add42.i118.us, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar242.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit241.loopexit.us, label %polly.loop_header239.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_header239.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next237.us, 1000
  br i1 %exitcond823.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header221
  %indvars.iv.next822 = or i64 %indvars.iv819, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next822, i64 31)
  %polly.loop_guard.1895 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.1895, label %polly.loop_header233.us.1, label %polly.loop_exit235.1

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1013 = phi i64 [ %indvar.next1014, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %117 = add i64 %indvar1013, 1
  %118 = mul nuw nsw i64 %polly.indvar355, 9600
  %scevgep364 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1015 = icmp ult i64 %117, 4
  br i1 %min.iters.check1015, label %polly.loop_header358.preheader, label %vector.ph1016

vector.ph1016:                                    ; preds = %polly.loop_header352
  %n.vec1018 = and i64 %117, -4
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1016
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1012 ]
  %119 = shl nuw nsw i64 %index1019, 3
  %120 = getelementptr i8, i8* %scevgep364, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1023 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !74, !noalias !76
  %122 = fmul fast <4 x double> %wide.load1023, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %index.next1020 = add i64 %index1019, 4
  %124 = icmp eq i64 %index.next1020, %n.vec1018
  br i1 %124, label %middle.block1010, label %vector.body1012, !llvm.loop !80

middle.block1010:                                 ; preds = %vector.body1012
  %cmp.n1022 = icmp eq i64 %117, %n.vec1018
  br i1 %cmp.n1022, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1010
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1018, %middle.block1010 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1010
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next356, 1200
  %indvar.next1014 = add i64 %indvar1013, 1
  br i1 %exitcond846.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %125
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond845.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 1200
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next372, 1000
  br i1 %exitcond844.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 1000
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next378, 1200
  br i1 %exitcond843.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header384:                             ; preds = %polly.loop_exit376, %polly.loop_exit393
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %126 = lshr i64 %polly.indvar387, 3
  %127 = shl nsw i64 %polly.indvar387, 2
  %128 = mul nsw i64 %polly.indvar387, 32000
  %129 = mul nsw i64 %polly.indvar387, 38400
  %130 = or i64 %127, 1
  %131 = mul nuw nsw i64 %130, 8000
  %132 = mul nuw nsw i64 %130, 9600
  %133 = or i64 %127, 2
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  %136 = or i64 %127, 3
  %137 = mul nuw nsw i64 %136, 8000
  %138 = mul nuw nsw i64 %136, 9600
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit405.3
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 4
  %exitcond842.not = icmp eq i64 %polly.indvar_next388, 300
  br i1 %exitcond842.not, label %polly.exiting267, label %polly.loop_header384

polly.loop_header391:                             ; preds = %polly.loop_exit405.3, %polly.loop_header384
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit405.3 ], [ %indvars.iv831, %polly.loop_header384 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit405.3 ], [ 0, %polly.loop_header384 ]
  %139 = shl nsw i64 %polly.indvar394, 5
  %140 = sub nsw i64 %127, %139
  %smin837 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 31)
  %polly.loop_guard413898 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413898, label %polly.loop_header403.us, label %polly.loop_exit405

polly.loop_header403.us:                          ; preds = %polly.loop_header391, %polly.loop_exit412.loopexit.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_exit412.loopexit.us ], [ 0, %polly.loop_header391 ]
  %141 = shl nuw nsw i64 %polly.indvar406.us, 3
  %scevgep417.us = getelementptr i8, i8* %call1, i64 %141
  %polly.access.mul.Packed_MemRef_call2269421.us = mul nuw nsw i64 %polly.indvar406.us, 1200
  %polly.access.add.Packed_MemRef_call2269422.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us, %127
  %polly.access.Packed_MemRef_call2269423.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us
  %_p_scalar_424.us = load double, double* %polly.access.Packed_MemRef_call2269423.us, align 8
  %scevgep430.us = getelementptr i8, i8* %scevgep417.us, i64 %128
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us

polly.loop_header410.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header403.us
  %polly.indvar414.us = phi i64 [ 0, %polly.loop_header403.us ], [ %polly.indvar_next415.us, %polly.loop_header410.us ]
  %142 = add nuw nsw i64 %polly.indvar414.us, %139
  %143 = mul nuw nsw i64 %142, 8000
  %scevgep418.us = getelementptr i8, i8* %scevgep417.us, i64 %143
  %scevgep418419.us = bitcast i8* %scevgep418.us to double*
  %_p_scalar_420.us = load double, double* %scevgep418419.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_424.us, %_p_scalar_420.us
  %polly.access.add.Packed_MemRef_call2269426.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call2269421.us
  %polly.access.Packed_MemRef_call2269427.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2269427.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %144 = shl i64 %142, 3
  %145 = add nuw nsw i64 %144, %129
  %scevgep433.us = getelementptr i8, i8* %call, i64 %145
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_435.us
  store double %p_add42.i79.us, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us = add nuw nsw i64 %polly.indvar414.us, 1
  %exitcond838.not = icmp eq i64 %polly.indvar414.us, %smin837
  br i1 %exitcond838.not, label %polly.loop_exit412.loopexit.us, label %polly.loop_header410.us

polly.loop_exit412.loopexit.us:                   ; preds = %polly.loop_header410.us
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next407.us, 1000
  br i1 %exitcond839.not, label %polly.loop_exit405, label %polly.loop_header403.us

polly.loop_exit405:                               ; preds = %polly.loop_exit412.loopexit.us, %polly.loop_header391
  %indvars.iv.next836 = or i64 %indvars.iv833, 1
  %smin837.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next836, i64 31)
  %polly.loop_guard413.1899 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.1899, label %polly.loop_header403.us.1, label %polly.loop_exit405.1

polly.start438:                                   ; preds = %init_array.exit
  %malloccall440 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header524

polly.exiting439:                                 ; preds = %polly.loop_exit565
  tail call void @free(i8* %malloccall440)
  br label %kernel_syr2k.exit

polly.loop_header524:                             ; preds = %polly.loop_exit532, %polly.start438
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit532 ], [ 0, %polly.start438 ]
  %polly.indvar527 = phi i64 [ %polly.indvar_next528, %polly.loop_exit532 ], [ 1, %polly.start438 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar527, 9600
  %scevgep536 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check989 = icmp ult i64 %146, 4
  br i1 %min.iters.check989, label %polly.loop_header530.preheader, label %vector.ph990

vector.ph990:                                     ; preds = %polly.loop_header524
  %n.vec992 = and i64 %146, -4
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next994, %vector.body988 ]
  %148 = shl nuw nsw i64 %index993, 3
  %149 = getelementptr i8, i8* %scevgep536, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load997 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %151 = fmul fast <4 x double> %wide.load997, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !84, !noalias !86
  %index.next994 = add i64 %index993, 4
  %153 = icmp eq i64 %index.next994, %n.vec992
  br i1 %153, label %middle.block986, label %vector.body988, !llvm.loop !90

middle.block986:                                  ; preds = %vector.body988
  %cmp.n996 = icmp eq i64 %146, %n.vec992
  br i1 %cmp.n996, label %polly.loop_exit532, label %polly.loop_header530.preheader

polly.loop_header530.preheader:                   ; preds = %polly.loop_header524, %middle.block986
  %polly.indvar533.ph = phi i64 [ 0, %polly.loop_header524 ], [ %n.vec992, %middle.block986 ]
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_header530, %middle.block986
  %polly.indvar_next528 = add nuw nsw i64 %polly.indvar527, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next528, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond862.not, label %polly.loop_header540.preheader, label %polly.loop_header524

polly.loop_header540.preheader:                   ; preds = %polly.loop_exit532
  %Packed_MemRef_call2441 = bitcast i8* %malloccall440 to double*
  br label %polly.loop_header540

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_header530
  %polly.indvar533 = phi i64 [ %polly.indvar_next534, %polly.loop_header530 ], [ %polly.indvar533.ph, %polly.loop_header530.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar533, 3
  %scevgep537 = getelementptr i8, i8* %scevgep536, i64 %154
  %scevgep537538 = bitcast i8* %scevgep537 to double*
  %_p_scalar_539 = load double, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_539, 1.200000e+00
  store double %p_mul.i, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next534 = add nuw nsw i64 %polly.indvar533, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next534, %polly.indvar527
  br i1 %exitcond861.not, label %polly.loop_exit532, label %polly.loop_header530, !llvm.loop !91

polly.loop_header540:                             ; preds = %polly.loop_header540.preheader, %polly.loop_exit548
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 0, %polly.loop_header540.preheader ]
  %polly.access.mul.Packed_MemRef_call2441 = mul nuw nsw i64 %polly.indvar543, 1200
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next544, 1000
  br i1 %exitcond860.not, label %polly.loop_header556, label %polly.loop_header540

polly.loop_header546:                             ; preds = %polly.loop_header546, %polly.loop_header540
  %polly.indvar549 = phi i64 [ 0, %polly.loop_header540 ], [ %polly.indvar_next550, %polly.loop_header546 ]
  %polly.access.mul.call2553 = mul nuw nsw i64 %polly.indvar549, 1000
  %polly.access.add.call2554 = add nuw nsw i64 %polly.access.mul.call2553, %polly.indvar543
  %polly.access.call2555 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2554
  %polly.access.call2555.load = load double, double* %polly.access.call2555, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2441 = add nuw nsw i64 %polly.indvar549, %polly.access.mul.Packed_MemRef_call2441
  %polly.access.Packed_MemRef_call2441 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441
  store double %polly.access.call2555.load, double* %polly.access.Packed_MemRef_call2441, align 8
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next550, 1200
  br i1 %exitcond859.not, label %polly.loop_exit548, label %polly.loop_header546

polly.loop_header556:                             ; preds = %polly.loop_exit548, %polly.loop_exit565
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %155 = lshr i64 %polly.indvar559, 3
  %156 = shl nsw i64 %polly.indvar559, 2
  %157 = mul nsw i64 %polly.indvar559, 32000
  %158 = mul nsw i64 %polly.indvar559, 38400
  %159 = or i64 %156, 1
  %160 = mul nuw nsw i64 %159, 8000
  %161 = mul nuw nsw i64 %159, 9600
  %162 = or i64 %156, 2
  %163 = mul nuw nsw i64 %162, 8000
  %164 = mul nuw nsw i64 %162, 9600
  %165 = or i64 %156, 3
  %166 = mul nuw nsw i64 %165, 8000
  %167 = mul nuw nsw i64 %165, 9600
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_exit577.3
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 4
  %exitcond858.not = icmp eq i64 %polly.indvar_next560, 300
  br i1 %exitcond858.not, label %polly.exiting439, label %polly.loop_header556

polly.loop_header563:                             ; preds = %polly.loop_exit577.3, %polly.loop_header556
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit577.3 ], [ %indvars.iv847, %polly.loop_header556 ]
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_exit577.3 ], [ 0, %polly.loop_header556 ]
  %168 = shl nsw i64 %polly.indvar566, 5
  %169 = sub nsw i64 %156, %168
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 31)
  %polly.loop_guard585902 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585902, label %polly.loop_header575.us, label %polly.loop_exit577

polly.loop_header575.us:                          ; preds = %polly.loop_header563, %polly.loop_exit584.loopexit.us
  %polly.indvar578.us = phi i64 [ %polly.indvar_next579.us, %polly.loop_exit584.loopexit.us ], [ 0, %polly.loop_header563 ]
  %170 = shl nuw nsw i64 %polly.indvar578.us, 3
  %scevgep589.us = getelementptr i8, i8* %call1, i64 %170
  %polly.access.mul.Packed_MemRef_call2441593.us = mul nuw nsw i64 %polly.indvar578.us, 1200
  %polly.access.add.Packed_MemRef_call2441594.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us, %156
  %polly.access.Packed_MemRef_call2441595.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us
  %_p_scalar_596.us = load double, double* %polly.access.Packed_MemRef_call2441595.us, align 8
  %scevgep602.us = getelementptr i8, i8* %scevgep589.us, i64 %157
  %scevgep602603.us = bitcast i8* %scevgep602.us to double*
  %_p_scalar_604.us = load double, double* %scevgep602603.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us

polly.loop_header582.us:                          ; preds = %polly.loop_header582.us, %polly.loop_header575.us
  %polly.indvar586.us = phi i64 [ 0, %polly.loop_header575.us ], [ %polly.indvar_next587.us, %polly.loop_header582.us ]
  %171 = add nuw nsw i64 %polly.indvar586.us, %168
  %172 = mul nuw nsw i64 %171, 8000
  %scevgep590.us = getelementptr i8, i8* %scevgep589.us, i64 %172
  %scevgep590591.us = bitcast i8* %scevgep590.us to double*
  %_p_scalar_592.us = load double, double* %scevgep590591.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_596.us, %_p_scalar_592.us
  %polly.access.add.Packed_MemRef_call2441598.us = add nuw nsw i64 %171, %polly.access.mul.Packed_MemRef_call2441593.us
  %polly.access.Packed_MemRef_call2441599.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2441599.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_604.us, %_p_scalar_600.us
  %173 = shl i64 %171, 3
  %174 = add nuw nsw i64 %173, %158
  %scevgep605.us = getelementptr i8, i8* %call, i64 %174
  %scevgep605606.us = bitcast i8* %scevgep605.us to double*
  %_p_scalar_607.us = load double, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_607.us
  store double %p_add42.i.us, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us = add nuw nsw i64 %polly.indvar586.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar586.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit584.loopexit.us, label %polly.loop_header582.us

polly.loop_exit584.loopexit.us:                   ; preds = %polly.loop_header582.us
  %polly.indvar_next579.us = add nuw nsw i64 %polly.indvar578.us, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next579.us, 1000
  br i1 %exitcond855.not, label %polly.loop_exit577, label %polly.loop_header575.us

polly.loop_exit577:                               ; preds = %polly.loop_exit584.loopexit.us, %polly.loop_header563
  %indvars.iv.next852 = or i64 %indvars.iv849, 1
  %smin853.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852, i64 31)
  %polly.loop_guard585.1903 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.1903, label %polly.loop_header575.us.1, label %polly.loop_exit577.1

polly.loop_header734:                             ; preds = %entry, %polly.loop_exit742
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit742 ], [ 0, %entry ]
  %polly.indvar737 = phi i64 [ %polly.indvar_next738, %polly.loop_exit742 ], [ 0, %entry ]
  %smin889 = call i64 @llvm.smin.i64(i64 %indvars.iv887, i64 -1168)
  %175 = shl nsw i64 %polly.indvar737, 5
  %176 = add nsw i64 %smin889, 1199
  br label %polly.loop_header740

polly.loop_exit742:                               ; preds = %polly.loop_exit748
  %polly.indvar_next738 = add nuw nsw i64 %polly.indvar737, 1
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, -32
  %exitcond892.not = icmp eq i64 %polly.indvar_next738, 38
  br i1 %exitcond892.not, label %polly.loop_header761, label %polly.loop_header734

polly.loop_header740:                             ; preds = %polly.loop_exit748, %polly.loop_header734
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit748 ], [ 0, %polly.loop_header734 ]
  %polly.indvar743 = phi i64 [ %polly.indvar_next744, %polly.loop_exit748 ], [ 0, %polly.loop_header734 ]
  %177 = mul nsw i64 %polly.indvar743, -32
  %smin927 = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin927, 1200
  %smin885 = call i64 @llvm.smin.i64(i64 %indvars.iv883, i64 -1168)
  %179 = shl nsw i64 %polly.indvar743, 5
  %180 = add nsw i64 %smin885, 1199
  br label %polly.loop_header746

polly.loop_exit748:                               ; preds = %polly.loop_exit754
  %polly.indvar_next744 = add nuw nsw i64 %polly.indvar743, 1
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -32
  %exitcond891.not = icmp eq i64 %polly.indvar_next744, 38
  br i1 %exitcond891.not, label %polly.loop_exit742, label %polly.loop_header740

polly.loop_header746:                             ; preds = %polly.loop_exit754, %polly.loop_header740
  %polly.indvar749 = phi i64 [ 0, %polly.loop_header740 ], [ %polly.indvar_next750, %polly.loop_exit754 ]
  %181 = add nuw nsw i64 %polly.indvar749, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header752, label %vector.ph928

vector.ph928:                                     ; preds = %polly.loop_header746
  %broadcast.splatinsert935 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat936 = shufflevector <4 x i64> %broadcast.splatinsert935, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert937 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat938 = shufflevector <4 x i32> %broadcast.splatinsert937, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body926

vector.body926:                                   ; preds = %vector.body926, %vector.ph928
  %index929 = phi i64 [ 0, %vector.ph928 ], [ %index.next930, %vector.body926 ]
  %vec.ind933 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next934, %vector.body926 ]
  %184 = add nuw nsw <4 x i64> %vec.ind933, %broadcast.splat936
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat938, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !94, !noalias !96
  %index.next930 = add i64 %index929, 4
  %vec.ind.next934 = add <4 x i64> %vec.ind933, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next930, %178
  br i1 %196, label %polly.loop_exit754, label %vector.body926, !llvm.loop !99

polly.loop_exit754:                               ; preds = %vector.body926, %polly.loop_header752
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %exitcond890.not = icmp eq i64 %polly.indvar749, %176
  br i1 %exitcond890.not, label %polly.loop_exit748, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_header746, %polly.loop_header752
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_header752 ], [ 0, %polly.loop_header746 ]
  %197 = add nuw nsw i64 %polly.indvar755, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep758 = getelementptr i8, i8* %call, i64 %203
  %scevgep758759 = bitcast i8* %scevgep758 to double*
  store double %p_div33.i, double* %scevgep758759, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond886.not = icmp eq i64 %polly.indvar755, %180
  br i1 %exitcond886.not, label %polly.loop_exit754, label %polly.loop_header752, !llvm.loop !100

polly.loop_header761:                             ; preds = %polly.loop_exit742, %polly.loop_exit769
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit769 ], [ 0, %polly.loop_exit742 ]
  %polly.indvar764 = phi i64 [ %polly.indvar_next765, %polly.loop_exit769 ], [ 0, %polly.loop_exit742 ]
  %smin879 = call i64 @llvm.smin.i64(i64 %indvars.iv877, i64 -1168)
  %204 = shl nsw i64 %polly.indvar764, 5
  %205 = add nsw i64 %smin879, 1199
  br label %polly.loop_header767

polly.loop_exit769:                               ; preds = %polly.loop_exit775
  %polly.indvar_next765 = add nuw nsw i64 %polly.indvar764, 1
  %indvars.iv.next878 = add nsw i64 %indvars.iv877, -32
  %exitcond882.not = icmp eq i64 %polly.indvar_next765, 38
  br i1 %exitcond882.not, label %polly.loop_header787, label %polly.loop_header761

polly.loop_header767:                             ; preds = %polly.loop_exit775, %polly.loop_header761
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit775 ], [ 0, %polly.loop_header761 ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %polly.loop_header761 ]
  %206 = mul nsw i64 %polly.indvar770, -32
  %smin942 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin942, 1000
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 -968)
  %208 = shl nsw i64 %polly.indvar770, 5
  %209 = add nsw i64 %smin875, 999
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next874 = add nsw i64 %indvars.iv873, -32
  %exitcond881.not = icmp eq i64 %polly.indvar_next771, 32
  br i1 %exitcond881.not, label %polly.loop_exit769, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %polly.indvar776 = phi i64 [ 0, %polly.loop_header767 ], [ %polly.indvar_next777, %polly.loop_exit781 ]
  %210 = add nuw nsw i64 %polly.indvar776, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check943 = icmp eq i64 %207, 0
  br i1 %min.iters.check943, label %polly.loop_header779, label %vector.ph944

vector.ph944:                                     ; preds = %polly.loop_header773
  %broadcast.splatinsert953 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat954 = shufflevector <4 x i64> %broadcast.splatinsert953, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %vector.ph944
  %index947 = phi i64 [ 0, %vector.ph944 ], [ %index.next948, %vector.body941 ]
  %vec.ind951 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph944 ], [ %vec.ind.next952, %vector.body941 ]
  %213 = add nuw nsw <4 x i64> %vec.ind951, %broadcast.splat954
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat956, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !98, !noalias !101
  %index.next948 = add i64 %index947, 4
  %vec.ind.next952 = add <4 x i64> %vec.ind951, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next948, %207
  br i1 %225, label %polly.loop_exit781, label %vector.body941, !llvm.loop !102

polly.loop_exit781:                               ; preds = %vector.body941, %polly.loop_header779
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %exitcond880.not = icmp eq i64 %polly.indvar776, %205
  br i1 %exitcond880.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_header773, %polly.loop_header779
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_header779 ], [ 0, %polly.loop_header773 ]
  %226 = add nuw nsw i64 %polly.indvar782, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep785 = getelementptr i8, i8* %call2, i64 %232
  %scevgep785786 = bitcast i8* %scevgep785 to double*
  store double %p_div12.i, double* %scevgep785786, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond876.not = icmp eq i64 %polly.indvar782, %209
  br i1 %exitcond876.not, label %polly.loop_exit781, label %polly.loop_header779, !llvm.loop !103

polly.loop_header787:                             ; preds = %polly.loop_exit769, %polly.loop_exit795
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %polly.loop_exit795 ], [ 0, %polly.loop_exit769 ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit769 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 -1168)
  %233 = shl nsw i64 %polly.indvar790, 5
  %234 = add nsw i64 %smin869, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, -32
  %exitcond872.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond872.not, label %init_array.exit, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %235 = mul nsw i64 %polly.indvar796, -32
  %smin960 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin960, 1000
  %smin865 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 -968)
  %237 = shl nsw i64 %polly.indvar796, 5
  %238 = add nsw i64 %smin865, 999
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -32
  %exitcond871.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond871.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %polly.indvar802 = phi i64 [ 0, %polly.loop_header793 ], [ %polly.indvar_next803, %polly.loop_exit807 ]
  %239 = add nuw nsw i64 %polly.indvar802, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check961 = icmp eq i64 %236, 0
  br i1 %min.iters.check961, label %polly.loop_header805, label %vector.ph962

vector.ph962:                                     ; preds = %polly.loop_header799
  %broadcast.splatinsert971 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat972 = shufflevector <4 x i64> %broadcast.splatinsert971, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert973 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat974 = shufflevector <4 x i32> %broadcast.splatinsert973, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next966, %vector.body959 ]
  %vec.ind969 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph962 ], [ %vec.ind.next970, %vector.body959 ]
  %242 = add nuw nsw <4 x i64> %vec.ind969, %broadcast.splat972
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat974, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !97, !noalias !104
  %index.next966 = add i64 %index965, 4
  %vec.ind.next970 = add <4 x i64> %vec.ind969, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next966, %236
  br i1 %254, label %polly.loop_exit807, label %vector.body959, !llvm.loop !105

polly.loop_exit807:                               ; preds = %vector.body959, %polly.loop_header805
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond870.not = icmp eq i64 %polly.indvar802, %234
  br i1 %exitcond870.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_header799, %polly.loop_header805
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_header805 ], [ 0, %polly.loop_header799 ]
  %255 = add nuw nsw i64 %polly.indvar808, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep812 = getelementptr i8, i8* %call1, i64 %261
  %scevgep812813 = bitcast i8* %scevgep812 to double*
  store double %p_div.i, double* %scevgep812813, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond866.not = icmp eq i64 %polly.indvar808, %238
  br i1 %exitcond866.not, label %polly.loop_exit807, label %polly.loop_header805, !llvm.loop !106

polly.loop_header233.us.1:                        ; preds = %polly.loop_exit235, %polly.loop_exit241.loopexit.us.1
  %polly.indvar236.us.1 = phi i64 [ %polly.indvar_next237.us.1, %polly.loop_exit241.loopexit.us.1 ], [ 0, %polly.loop_exit235 ]
  %262 = shl nuw nsw i64 %polly.indvar236.us.1, 3
  %scevgep245.us.1 = getelementptr i8, i8* %call1, i64 %262
  %polly.access.mul.Packed_MemRef_call2249.us.1 = mul nuw nsw i64 %polly.indvar236.us.1, 1200
  %polly.access.add.Packed_MemRef_call2250.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.1, %101
  %polly.access.Packed_MemRef_call2251.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.1
  %_p_scalar_252.us.1 = load double, double* %polly.access.Packed_MemRef_call2251.us.1, align 8
  %scevgep258.us.1 = getelementptr i8, i8* %scevgep245.us.1, i64 %102
  %scevgep258259.us.1 = bitcast i8* %scevgep258.us.1 to double*
  %_p_scalar_260.us.1 = load double, double* %scevgep258259.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.1

polly.loop_header239.us.1:                        ; preds = %polly.loop_header239.us.1, %polly.loop_header233.us.1
  %polly.indvar242.us.1 = phi i64 [ 0, %polly.loop_header233.us.1 ], [ %polly.indvar_next243.us.1, %polly.loop_header239.us.1 ]
  %263 = add nuw nsw i64 %polly.indvar242.us.1, %110
  %264 = mul nuw nsw i64 %263, 8000
  %scevgep246.us.1 = getelementptr i8, i8* %scevgep245.us.1, i64 %264
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_252.us.1, %_p_scalar_248.us.1
  %polly.access.add.Packed_MemRef_call2254.us.1 = add nuw nsw i64 %263, %polly.access.mul.Packed_MemRef_call2249.us.1
  %polly.access.Packed_MemRef_call2255.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.1
  %_p_scalar_256.us.1 = load double, double* %polly.access.Packed_MemRef_call2255.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_260.us.1, %_p_scalar_256.us.1
  %265 = shl i64 %263, 3
  %266 = add nuw nsw i64 %265, %103
  %scevgep261.us.1 = getelementptr i8, i8* %call, i64 %266
  %scevgep261262.us.1 = bitcast i8* %scevgep261.us.1 to double*
  %_p_scalar_263.us.1 = load double, double* %scevgep261262.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_263.us.1
  store double %p_add42.i118.us.1, double* %scevgep261262.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar242.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.loopexit.us.1, label %polly.loop_header239.us.1

polly.loop_exit241.loopexit.us.1:                 ; preds = %polly.loop_header239.us.1
  %polly.indvar_next237.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next237.us.1, 1000
  br i1 %exitcond823.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.us.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.loopexit.us.1, %polly.loop_exit235
  %indvars.iv.next822.1 = add nuw nsw i64 %indvars.iv.next822, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next822.1, i64 31)
  %polly.loop_guard.2896 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.2896, label %polly.loop_header233.us.2, label %polly.loop_exit235.2

polly.loop_header233.us.2:                        ; preds = %polly.loop_exit235.1, %polly.loop_exit241.loopexit.us.2
  %polly.indvar236.us.2 = phi i64 [ %polly.indvar_next237.us.2, %polly.loop_exit241.loopexit.us.2 ], [ 0, %polly.loop_exit235.1 ]
  %267 = shl nuw nsw i64 %polly.indvar236.us.2, 3
  %scevgep245.us.2 = getelementptr i8, i8* %call1, i64 %267
  %polly.access.mul.Packed_MemRef_call2249.us.2 = mul nuw nsw i64 %polly.indvar236.us.2, 1200
  %polly.access.add.Packed_MemRef_call2250.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.2, %104
  %polly.access.Packed_MemRef_call2251.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.2
  %_p_scalar_252.us.2 = load double, double* %polly.access.Packed_MemRef_call2251.us.2, align 8
  %scevgep258.us.2 = getelementptr i8, i8* %scevgep245.us.2, i64 %105
  %scevgep258259.us.2 = bitcast i8* %scevgep258.us.2 to double*
  %_p_scalar_260.us.2 = load double, double* %scevgep258259.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_header239.us.2, %polly.loop_header233.us.2
  %polly.indvar242.us.2 = phi i64 [ 0, %polly.loop_header233.us.2 ], [ %polly.indvar_next243.us.2, %polly.loop_header239.us.2 ]
  %268 = add nuw nsw i64 %polly.indvar242.us.2, %110
  %269 = mul nuw nsw i64 %268, 8000
  %scevgep246.us.2 = getelementptr i8, i8* %scevgep245.us.2, i64 %269
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_252.us.2, %_p_scalar_248.us.2
  %polly.access.add.Packed_MemRef_call2254.us.2 = add nuw nsw i64 %268, %polly.access.mul.Packed_MemRef_call2249.us.2
  %polly.access.Packed_MemRef_call2255.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.2
  %_p_scalar_256.us.2 = load double, double* %polly.access.Packed_MemRef_call2255.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_260.us.2, %_p_scalar_256.us.2
  %270 = shl i64 %268, 3
  %271 = add nuw nsw i64 %270, %106
  %scevgep261.us.2 = getelementptr i8, i8* %call, i64 %271
  %scevgep261262.us.2 = bitcast i8* %scevgep261.us.2 to double*
  %_p_scalar_263.us.2 = load double, double* %scevgep261262.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_263.us.2
  store double %p_add42.i118.us.2, double* %scevgep261262.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar242.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.loopexit.us.2, label %polly.loop_header239.us.2

polly.loop_exit241.loopexit.us.2:                 ; preds = %polly.loop_header239.us.2
  %polly.indvar_next237.us.2 = add nuw nsw i64 %polly.indvar236.us.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next237.us.2, 1000
  br i1 %exitcond823.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.us.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.loopexit.us.2, %polly.loop_exit235.1
  %indvars.iv.next822.2 = or i64 %indvars.iv819, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next822.2, i64 31)
  %polly.loop_guard.3897 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.3897, label %polly.loop_header233.us.3, label %polly.loop_exit235.3

polly.loop_header233.us.3:                        ; preds = %polly.loop_exit235.2, %polly.loop_exit241.loopexit.us.3
  %polly.indvar236.us.3 = phi i64 [ %polly.indvar_next237.us.3, %polly.loop_exit241.loopexit.us.3 ], [ 0, %polly.loop_exit235.2 ]
  %272 = shl nuw nsw i64 %polly.indvar236.us.3, 3
  %scevgep245.us.3 = getelementptr i8, i8* %call1, i64 %272
  %polly.access.mul.Packed_MemRef_call2249.us.3 = mul nuw nsw i64 %polly.indvar236.us.3, 1200
  %polly.access.add.Packed_MemRef_call2250.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.3, %107
  %polly.access.Packed_MemRef_call2251.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.3
  %_p_scalar_252.us.3 = load double, double* %polly.access.Packed_MemRef_call2251.us.3, align 8
  %scevgep258.us.3 = getelementptr i8, i8* %scevgep245.us.3, i64 %108
  %scevgep258259.us.3 = bitcast i8* %scevgep258.us.3 to double*
  %_p_scalar_260.us.3 = load double, double* %scevgep258259.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_header239.us.3, %polly.loop_header233.us.3
  %polly.indvar242.us.3 = phi i64 [ 0, %polly.loop_header233.us.3 ], [ %polly.indvar_next243.us.3, %polly.loop_header239.us.3 ]
  %273 = add nuw nsw i64 %polly.indvar242.us.3, %110
  %274 = mul nuw nsw i64 %273, 8000
  %scevgep246.us.3 = getelementptr i8, i8* %scevgep245.us.3, i64 %274
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_252.us.3, %_p_scalar_248.us.3
  %polly.access.add.Packed_MemRef_call2254.us.3 = add nuw nsw i64 %273, %polly.access.mul.Packed_MemRef_call2249.us.3
  %polly.access.Packed_MemRef_call2255.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.3
  %_p_scalar_256.us.3 = load double, double* %polly.access.Packed_MemRef_call2255.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_260.us.3, %_p_scalar_256.us.3
  %275 = shl i64 %273, 3
  %276 = add nuw nsw i64 %275, %109
  %scevgep261.us.3 = getelementptr i8, i8* %call, i64 %276
  %scevgep261262.us.3 = bitcast i8* %scevgep261.us.3 to double*
  %_p_scalar_263.us.3 = load double, double* %scevgep261262.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_263.us.3
  store double %p_add42.i118.us.3, double* %scevgep261262.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar242.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit241.loopexit.us.3, label %polly.loop_header239.us.3

polly.loop_exit241.loopexit.us.3:                 ; preds = %polly.loop_header239.us.3
  %polly.indvar_next237.us.3 = add nuw nsw i64 %polly.indvar236.us.3, 1
  %exitcond823.3.not = icmp eq i64 %polly.indvar_next237.us.3, 1000
  br i1 %exitcond823.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.us.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.loopexit.us.3, %polly.loop_exit235.2
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, -32
  %exitcond825.not = icmp eq i64 %polly.indvar224, %97
  br i1 %exitcond825.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header403.us.1:                        ; preds = %polly.loop_exit405, %polly.loop_exit412.loopexit.us.1
  %polly.indvar406.us.1 = phi i64 [ %polly.indvar_next407.us.1, %polly.loop_exit412.loopexit.us.1 ], [ 0, %polly.loop_exit405 ]
  %277 = shl nuw nsw i64 %polly.indvar406.us.1, 3
  %scevgep417.us.1 = getelementptr i8, i8* %call1, i64 %277
  %polly.access.mul.Packed_MemRef_call2269421.us.1 = mul nuw nsw i64 %polly.indvar406.us.1, 1200
  %polly.access.add.Packed_MemRef_call2269422.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.1, %130
  %polly.access.Packed_MemRef_call2269423.us.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.1
  %_p_scalar_424.us.1 = load double, double* %polly.access.Packed_MemRef_call2269423.us.1, align 8
  %scevgep430.us.1 = getelementptr i8, i8* %scevgep417.us.1, i64 %131
  %scevgep430431.us.1 = bitcast i8* %scevgep430.us.1 to double*
  %_p_scalar_432.us.1 = load double, double* %scevgep430431.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.1

polly.loop_header410.us.1:                        ; preds = %polly.loop_header410.us.1, %polly.loop_header403.us.1
  %polly.indvar414.us.1 = phi i64 [ 0, %polly.loop_header403.us.1 ], [ %polly.indvar_next415.us.1, %polly.loop_header410.us.1 ]
  %278 = add nuw nsw i64 %polly.indvar414.us.1, %139
  %279 = mul nuw nsw i64 %278, 8000
  %scevgep418.us.1 = getelementptr i8, i8* %scevgep417.us.1, i64 %279
  %scevgep418419.us.1 = bitcast i8* %scevgep418.us.1 to double*
  %_p_scalar_420.us.1 = load double, double* %scevgep418419.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_424.us.1, %_p_scalar_420.us.1
  %polly.access.add.Packed_MemRef_call2269426.us.1 = add nuw nsw i64 %278, %polly.access.mul.Packed_MemRef_call2269421.us.1
  %polly.access.Packed_MemRef_call2269427.us.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.1
  %_p_scalar_428.us.1 = load double, double* %polly.access.Packed_MemRef_call2269427.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_432.us.1, %_p_scalar_428.us.1
  %280 = shl i64 %278, 3
  %281 = add nuw nsw i64 %280, %132
  %scevgep433.us.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep433434.us.1 = bitcast i8* %scevgep433.us.1 to double*
  %_p_scalar_435.us.1 = load double, double* %scevgep433434.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_435.us.1
  store double %p_add42.i79.us.1, double* %scevgep433434.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.1 = add nuw nsw i64 %polly.indvar414.us.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar414.us.1, %smin837.1
  br i1 %exitcond838.1.not, label %polly.loop_exit412.loopexit.us.1, label %polly.loop_header410.us.1

polly.loop_exit412.loopexit.us.1:                 ; preds = %polly.loop_header410.us.1
  %polly.indvar_next407.us.1 = add nuw nsw i64 %polly.indvar406.us.1, 1
  %exitcond839.1.not = icmp eq i64 %polly.indvar_next407.us.1, 1000
  br i1 %exitcond839.1.not, label %polly.loop_exit405.1, label %polly.loop_header403.us.1

polly.loop_exit405.1:                             ; preds = %polly.loop_exit412.loopexit.us.1, %polly.loop_exit405
  %indvars.iv.next836.1 = add nuw nsw i64 %indvars.iv.next836, 1
  %smin837.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next836.1, i64 31)
  %polly.loop_guard413.2900 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.2900, label %polly.loop_header403.us.2, label %polly.loop_exit405.2

polly.loop_header403.us.2:                        ; preds = %polly.loop_exit405.1, %polly.loop_exit412.loopexit.us.2
  %polly.indvar406.us.2 = phi i64 [ %polly.indvar_next407.us.2, %polly.loop_exit412.loopexit.us.2 ], [ 0, %polly.loop_exit405.1 ]
  %282 = shl nuw nsw i64 %polly.indvar406.us.2, 3
  %scevgep417.us.2 = getelementptr i8, i8* %call1, i64 %282
  %polly.access.mul.Packed_MemRef_call2269421.us.2 = mul nuw nsw i64 %polly.indvar406.us.2, 1200
  %polly.access.add.Packed_MemRef_call2269422.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.2, %133
  %polly.access.Packed_MemRef_call2269423.us.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.2
  %_p_scalar_424.us.2 = load double, double* %polly.access.Packed_MemRef_call2269423.us.2, align 8
  %scevgep430.us.2 = getelementptr i8, i8* %scevgep417.us.2, i64 %134
  %scevgep430431.us.2 = bitcast i8* %scevgep430.us.2 to double*
  %_p_scalar_432.us.2 = load double, double* %scevgep430431.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.2

polly.loop_header410.us.2:                        ; preds = %polly.loop_header410.us.2, %polly.loop_header403.us.2
  %polly.indvar414.us.2 = phi i64 [ 0, %polly.loop_header403.us.2 ], [ %polly.indvar_next415.us.2, %polly.loop_header410.us.2 ]
  %283 = add nuw nsw i64 %polly.indvar414.us.2, %139
  %284 = mul nuw nsw i64 %283, 8000
  %scevgep418.us.2 = getelementptr i8, i8* %scevgep417.us.2, i64 %284
  %scevgep418419.us.2 = bitcast i8* %scevgep418.us.2 to double*
  %_p_scalar_420.us.2 = load double, double* %scevgep418419.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_424.us.2, %_p_scalar_420.us.2
  %polly.access.add.Packed_MemRef_call2269426.us.2 = add nuw nsw i64 %283, %polly.access.mul.Packed_MemRef_call2269421.us.2
  %polly.access.Packed_MemRef_call2269427.us.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.2
  %_p_scalar_428.us.2 = load double, double* %polly.access.Packed_MemRef_call2269427.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_432.us.2, %_p_scalar_428.us.2
  %285 = shl i64 %283, 3
  %286 = add nuw nsw i64 %285, %135
  %scevgep433.us.2 = getelementptr i8, i8* %call, i64 %286
  %scevgep433434.us.2 = bitcast i8* %scevgep433.us.2 to double*
  %_p_scalar_435.us.2 = load double, double* %scevgep433434.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_435.us.2
  store double %p_add42.i79.us.2, double* %scevgep433434.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.2 = add nuw nsw i64 %polly.indvar414.us.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar414.us.2, %smin837.2
  br i1 %exitcond838.2.not, label %polly.loop_exit412.loopexit.us.2, label %polly.loop_header410.us.2

polly.loop_exit412.loopexit.us.2:                 ; preds = %polly.loop_header410.us.2
  %polly.indvar_next407.us.2 = add nuw nsw i64 %polly.indvar406.us.2, 1
  %exitcond839.2.not = icmp eq i64 %polly.indvar_next407.us.2, 1000
  br i1 %exitcond839.2.not, label %polly.loop_exit405.2, label %polly.loop_header403.us.2

polly.loop_exit405.2:                             ; preds = %polly.loop_exit412.loopexit.us.2, %polly.loop_exit405.1
  %indvars.iv.next836.2 = or i64 %indvars.iv833, 3
  %smin837.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next836.2, i64 31)
  %polly.loop_guard413.3901 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.3901, label %polly.loop_header403.us.3, label %polly.loop_exit405.3

polly.loop_header403.us.3:                        ; preds = %polly.loop_exit405.2, %polly.loop_exit412.loopexit.us.3
  %polly.indvar406.us.3 = phi i64 [ %polly.indvar_next407.us.3, %polly.loop_exit412.loopexit.us.3 ], [ 0, %polly.loop_exit405.2 ]
  %287 = shl nuw nsw i64 %polly.indvar406.us.3, 3
  %scevgep417.us.3 = getelementptr i8, i8* %call1, i64 %287
  %polly.access.mul.Packed_MemRef_call2269421.us.3 = mul nuw nsw i64 %polly.indvar406.us.3, 1200
  %polly.access.add.Packed_MemRef_call2269422.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.3, %136
  %polly.access.Packed_MemRef_call2269423.us.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.3
  %_p_scalar_424.us.3 = load double, double* %polly.access.Packed_MemRef_call2269423.us.3, align 8
  %scevgep430.us.3 = getelementptr i8, i8* %scevgep417.us.3, i64 %137
  %scevgep430431.us.3 = bitcast i8* %scevgep430.us.3 to double*
  %_p_scalar_432.us.3 = load double, double* %scevgep430431.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.3

polly.loop_header410.us.3:                        ; preds = %polly.loop_header410.us.3, %polly.loop_header403.us.3
  %polly.indvar414.us.3 = phi i64 [ 0, %polly.loop_header403.us.3 ], [ %polly.indvar_next415.us.3, %polly.loop_header410.us.3 ]
  %288 = add nuw nsw i64 %polly.indvar414.us.3, %139
  %289 = mul nuw nsw i64 %288, 8000
  %scevgep418.us.3 = getelementptr i8, i8* %scevgep417.us.3, i64 %289
  %scevgep418419.us.3 = bitcast i8* %scevgep418.us.3 to double*
  %_p_scalar_420.us.3 = load double, double* %scevgep418419.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_424.us.3, %_p_scalar_420.us.3
  %polly.access.add.Packed_MemRef_call2269426.us.3 = add nuw nsw i64 %288, %polly.access.mul.Packed_MemRef_call2269421.us.3
  %polly.access.Packed_MemRef_call2269427.us.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.3
  %_p_scalar_428.us.3 = load double, double* %polly.access.Packed_MemRef_call2269427.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_432.us.3, %_p_scalar_428.us.3
  %290 = shl i64 %288, 3
  %291 = add nuw nsw i64 %290, %138
  %scevgep433.us.3 = getelementptr i8, i8* %call, i64 %291
  %scevgep433434.us.3 = bitcast i8* %scevgep433.us.3 to double*
  %_p_scalar_435.us.3 = load double, double* %scevgep433434.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_435.us.3
  store double %p_add42.i79.us.3, double* %scevgep433434.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.3 = add nuw nsw i64 %polly.indvar414.us.3, 1
  %exitcond838.3.not = icmp eq i64 %polly.indvar414.us.3, %smin837.3
  br i1 %exitcond838.3.not, label %polly.loop_exit412.loopexit.us.3, label %polly.loop_header410.us.3

polly.loop_exit412.loopexit.us.3:                 ; preds = %polly.loop_header410.us.3
  %polly.indvar_next407.us.3 = add nuw nsw i64 %polly.indvar406.us.3, 1
  %exitcond839.3.not = icmp eq i64 %polly.indvar_next407.us.3, 1000
  br i1 %exitcond839.3.not, label %polly.loop_exit405.3, label %polly.loop_header403.us.3

polly.loop_exit405.3:                             ; preds = %polly.loop_exit412.loopexit.us.3, %polly.loop_exit405.2
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -32
  %exitcond841.not = icmp eq i64 %polly.indvar394, %126
  br i1 %exitcond841.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header575.us.1:                        ; preds = %polly.loop_exit577, %polly.loop_exit584.loopexit.us.1
  %polly.indvar578.us.1 = phi i64 [ %polly.indvar_next579.us.1, %polly.loop_exit584.loopexit.us.1 ], [ 0, %polly.loop_exit577 ]
  %292 = shl nuw nsw i64 %polly.indvar578.us.1, 3
  %scevgep589.us.1 = getelementptr i8, i8* %call1, i64 %292
  %polly.access.mul.Packed_MemRef_call2441593.us.1 = mul nuw nsw i64 %polly.indvar578.us.1, 1200
  %polly.access.add.Packed_MemRef_call2441594.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.1, %159
  %polly.access.Packed_MemRef_call2441595.us.1 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.1
  %_p_scalar_596.us.1 = load double, double* %polly.access.Packed_MemRef_call2441595.us.1, align 8
  %scevgep602.us.1 = getelementptr i8, i8* %scevgep589.us.1, i64 %160
  %scevgep602603.us.1 = bitcast i8* %scevgep602.us.1 to double*
  %_p_scalar_604.us.1 = load double, double* %scevgep602603.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.1

polly.loop_header582.us.1:                        ; preds = %polly.loop_header582.us.1, %polly.loop_header575.us.1
  %polly.indvar586.us.1 = phi i64 [ 0, %polly.loop_header575.us.1 ], [ %polly.indvar_next587.us.1, %polly.loop_header582.us.1 ]
  %293 = add nuw nsw i64 %polly.indvar586.us.1, %168
  %294 = mul nuw nsw i64 %293, 8000
  %scevgep590.us.1 = getelementptr i8, i8* %scevgep589.us.1, i64 %294
  %scevgep590591.us.1 = bitcast i8* %scevgep590.us.1 to double*
  %_p_scalar_592.us.1 = load double, double* %scevgep590591.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_596.us.1, %_p_scalar_592.us.1
  %polly.access.add.Packed_MemRef_call2441598.us.1 = add nuw nsw i64 %293, %polly.access.mul.Packed_MemRef_call2441593.us.1
  %polly.access.Packed_MemRef_call2441599.us.1 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.1
  %_p_scalar_600.us.1 = load double, double* %polly.access.Packed_MemRef_call2441599.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_604.us.1, %_p_scalar_600.us.1
  %295 = shl i64 %293, 3
  %296 = add nuw nsw i64 %295, %161
  %scevgep605.us.1 = getelementptr i8, i8* %call, i64 %296
  %scevgep605606.us.1 = bitcast i8* %scevgep605.us.1 to double*
  %_p_scalar_607.us.1 = load double, double* %scevgep605606.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_607.us.1
  store double %p_add42.i.us.1, double* %scevgep605606.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.1 = add nuw nsw i64 %polly.indvar586.us.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar586.us.1, %smin853.1
  br i1 %exitcond854.1.not, label %polly.loop_exit584.loopexit.us.1, label %polly.loop_header582.us.1

polly.loop_exit584.loopexit.us.1:                 ; preds = %polly.loop_header582.us.1
  %polly.indvar_next579.us.1 = add nuw nsw i64 %polly.indvar578.us.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next579.us.1, 1000
  br i1 %exitcond855.1.not, label %polly.loop_exit577.1, label %polly.loop_header575.us.1

polly.loop_exit577.1:                             ; preds = %polly.loop_exit584.loopexit.us.1, %polly.loop_exit577
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv.next852, 1
  %smin853.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.1, i64 31)
  %polly.loop_guard585.2904 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.2904, label %polly.loop_header575.us.2, label %polly.loop_exit577.2

polly.loop_header575.us.2:                        ; preds = %polly.loop_exit577.1, %polly.loop_exit584.loopexit.us.2
  %polly.indvar578.us.2 = phi i64 [ %polly.indvar_next579.us.2, %polly.loop_exit584.loopexit.us.2 ], [ 0, %polly.loop_exit577.1 ]
  %297 = shl nuw nsw i64 %polly.indvar578.us.2, 3
  %scevgep589.us.2 = getelementptr i8, i8* %call1, i64 %297
  %polly.access.mul.Packed_MemRef_call2441593.us.2 = mul nuw nsw i64 %polly.indvar578.us.2, 1200
  %polly.access.add.Packed_MemRef_call2441594.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.2, %162
  %polly.access.Packed_MemRef_call2441595.us.2 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.2
  %_p_scalar_596.us.2 = load double, double* %polly.access.Packed_MemRef_call2441595.us.2, align 8
  %scevgep602.us.2 = getelementptr i8, i8* %scevgep589.us.2, i64 %163
  %scevgep602603.us.2 = bitcast i8* %scevgep602.us.2 to double*
  %_p_scalar_604.us.2 = load double, double* %scevgep602603.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.2

polly.loop_header582.us.2:                        ; preds = %polly.loop_header582.us.2, %polly.loop_header575.us.2
  %polly.indvar586.us.2 = phi i64 [ 0, %polly.loop_header575.us.2 ], [ %polly.indvar_next587.us.2, %polly.loop_header582.us.2 ]
  %298 = add nuw nsw i64 %polly.indvar586.us.2, %168
  %299 = mul nuw nsw i64 %298, 8000
  %scevgep590.us.2 = getelementptr i8, i8* %scevgep589.us.2, i64 %299
  %scevgep590591.us.2 = bitcast i8* %scevgep590.us.2 to double*
  %_p_scalar_592.us.2 = load double, double* %scevgep590591.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_596.us.2, %_p_scalar_592.us.2
  %polly.access.add.Packed_MemRef_call2441598.us.2 = add nuw nsw i64 %298, %polly.access.mul.Packed_MemRef_call2441593.us.2
  %polly.access.Packed_MemRef_call2441599.us.2 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.2
  %_p_scalar_600.us.2 = load double, double* %polly.access.Packed_MemRef_call2441599.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_604.us.2, %_p_scalar_600.us.2
  %300 = shl i64 %298, 3
  %301 = add nuw nsw i64 %300, %164
  %scevgep605.us.2 = getelementptr i8, i8* %call, i64 %301
  %scevgep605606.us.2 = bitcast i8* %scevgep605.us.2 to double*
  %_p_scalar_607.us.2 = load double, double* %scevgep605606.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_607.us.2
  store double %p_add42.i.us.2, double* %scevgep605606.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.2 = add nuw nsw i64 %polly.indvar586.us.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar586.us.2, %smin853.2
  br i1 %exitcond854.2.not, label %polly.loop_exit584.loopexit.us.2, label %polly.loop_header582.us.2

polly.loop_exit584.loopexit.us.2:                 ; preds = %polly.loop_header582.us.2
  %polly.indvar_next579.us.2 = add nuw nsw i64 %polly.indvar578.us.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next579.us.2, 1000
  br i1 %exitcond855.2.not, label %polly.loop_exit577.2, label %polly.loop_header575.us.2

polly.loop_exit577.2:                             ; preds = %polly.loop_exit584.loopexit.us.2, %polly.loop_exit577.1
  %indvars.iv.next852.2 = or i64 %indvars.iv849, 3
  %smin853.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next852.2, i64 31)
  %polly.loop_guard585.3905 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.3905, label %polly.loop_header575.us.3, label %polly.loop_exit577.3

polly.loop_header575.us.3:                        ; preds = %polly.loop_exit577.2, %polly.loop_exit584.loopexit.us.3
  %polly.indvar578.us.3 = phi i64 [ %polly.indvar_next579.us.3, %polly.loop_exit584.loopexit.us.3 ], [ 0, %polly.loop_exit577.2 ]
  %302 = shl nuw nsw i64 %polly.indvar578.us.3, 3
  %scevgep589.us.3 = getelementptr i8, i8* %call1, i64 %302
  %polly.access.mul.Packed_MemRef_call2441593.us.3 = mul nuw nsw i64 %polly.indvar578.us.3, 1200
  %polly.access.add.Packed_MemRef_call2441594.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.3, %165
  %polly.access.Packed_MemRef_call2441595.us.3 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.3
  %_p_scalar_596.us.3 = load double, double* %polly.access.Packed_MemRef_call2441595.us.3, align 8
  %scevgep602.us.3 = getelementptr i8, i8* %scevgep589.us.3, i64 %166
  %scevgep602603.us.3 = bitcast i8* %scevgep602.us.3 to double*
  %_p_scalar_604.us.3 = load double, double* %scevgep602603.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.3

polly.loop_header582.us.3:                        ; preds = %polly.loop_header582.us.3, %polly.loop_header575.us.3
  %polly.indvar586.us.3 = phi i64 [ 0, %polly.loop_header575.us.3 ], [ %polly.indvar_next587.us.3, %polly.loop_header582.us.3 ]
  %303 = add nuw nsw i64 %polly.indvar586.us.3, %168
  %304 = mul nuw nsw i64 %303, 8000
  %scevgep590.us.3 = getelementptr i8, i8* %scevgep589.us.3, i64 %304
  %scevgep590591.us.3 = bitcast i8* %scevgep590.us.3 to double*
  %_p_scalar_592.us.3 = load double, double* %scevgep590591.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_596.us.3, %_p_scalar_592.us.3
  %polly.access.add.Packed_MemRef_call2441598.us.3 = add nuw nsw i64 %303, %polly.access.mul.Packed_MemRef_call2441593.us.3
  %polly.access.Packed_MemRef_call2441599.us.3 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.3
  %_p_scalar_600.us.3 = load double, double* %polly.access.Packed_MemRef_call2441599.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_604.us.3, %_p_scalar_600.us.3
  %305 = shl i64 %303, 3
  %306 = add nuw nsw i64 %305, %167
  %scevgep605.us.3 = getelementptr i8, i8* %call, i64 %306
  %scevgep605606.us.3 = bitcast i8* %scevgep605.us.3 to double*
  %_p_scalar_607.us.3 = load double, double* %scevgep605606.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_607.us.3
  store double %p_add42.i.us.3, double* %scevgep605606.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.3 = add nuw nsw i64 %polly.indvar586.us.3, 1
  %exitcond854.3.not = icmp eq i64 %polly.indvar586.us.3, %smin853.3
  br i1 %exitcond854.3.not, label %polly.loop_exit584.loopexit.us.3, label %polly.loop_header582.us.3

polly.loop_exit584.loopexit.us.3:                 ; preds = %polly.loop_header582.us.3
  %polly.indvar_next579.us.3 = add nuw nsw i64 %polly.indvar578.us.3, 1
  %exitcond855.3.not = icmp eq i64 %polly.indvar_next579.us.3, 1000
  br i1 %exitcond855.3.not, label %polly.loop_exit577.3, label %polly.loop_header575.us.3

polly.loop_exit577.3:                             ; preds = %polly.loop_exit584.loopexit.us.3, %polly.loop_exit577.2
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar566, %155
  br i1 %exitcond857.not, label %polly.loop_exit565, label %polly.loop_header563
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
!25 = !{!"llvm.loop.tile.size", i32 32}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 4}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
