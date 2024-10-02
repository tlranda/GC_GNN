; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9381.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9381.c"
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
  %call712 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header686, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep890 = getelementptr i8, i8* %call2, i64 %12
  %scevgep889 = getelementptr i8, i8* %call2, i64 %11
  %scevgep888 = getelementptr i8, i8* %call1, i64 %12
  %scevgep887 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep887, %scevgep890
  %bound1 = icmp ult i8* %scevgep889, %scevgep888
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
  br i1 %exitcond18.not.i, label %vector.ph894, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph894:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph894
  %index895 = phi i64 [ 0, %vector.ph894 ], [ %index.next896, %vector.body893 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph894 ], [ %vec.ind.next900, %vector.body893 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index895
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next896, 1200
  br i1 %40, label %for.inc41.i, label %vector.body893, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body893
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph894, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check957 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check957, label %for.body3.i46.preheader1034, label %vector.ph958

vector.ph958:                                     ; preds = %for.body3.i46.preheader
  %n.vec960 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next962, %vector.body956 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index961
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next962 = add i64 %index961, 4
  %46 = icmp eq i64 %index.next962, %n.vec960
  br i1 %46, label %middle.block954, label %vector.body956, !llvm.loop !18

middle.block954:                                  ; preds = %vector.body956
  %cmp.n964 = icmp eq i64 %indvars.iv21.i, %n.vec960
  br i1 %cmp.n964, label %for.inc6.i, label %for.body3.i46.preheader1034

for.body3.i46.preheader1034:                      ; preds = %for.body3.i46.preheader, %middle.block954
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec960, %middle.block954 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1034, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1034 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block954, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check980 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check980, label %for.body3.i60.preheader1032, label %vector.ph981

vector.ph981:                                     ; preds = %for.body3.i60.preheader
  %n.vec983 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph981
  %index984 = phi i64 [ 0, %vector.ph981 ], [ %index.next985, %vector.body979 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index984
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load988 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load988, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next985 = add i64 %index984, 4
  %57 = icmp eq i64 %index.next985, %n.vec983
  br i1 %57, label %middle.block977, label %vector.body979, !llvm.loop !50

middle.block977:                                  ; preds = %vector.body979
  %cmp.n987 = icmp eq i64 %indvars.iv21.i52, %n.vec983
  br i1 %cmp.n987, label %for.inc6.i63, label %for.body3.i60.preheader1032

for.body3.i60.preheader1032:                      ; preds = %for.body3.i60.preheader, %middle.block977
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec983, %middle.block977 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1032, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1032 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block977, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit360
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1006 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1006, label %for.body3.i99.preheader1030, label %vector.ph1007

vector.ph1007:                                    ; preds = %for.body3.i99.preheader
  %n.vec1009 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1011, %vector.body1005 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1010
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1014 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1014, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1011 = add i64 %index1010, 4
  %68 = icmp eq i64 %index.next1011, %n.vec1009
  br i1 %68, label %middle.block1003, label %vector.body1005, !llvm.loop !52

middle.block1003:                                 ; preds = %vector.body1005
  %cmp.n1013 = icmp eq i64 %indvars.iv21.i91, %n.vec1009
  br i1 %cmp.n1013, label %for.inc6.i102, label %for.body3.i99.preheader1030

for.body3.i99.preheader1030:                      ; preds = %for.body3.i99.preheader, %middle.block1003
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1009, %middle.block1003 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1030, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1030 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1003, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1018 = phi i64 [ %indvar.next1019, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1018, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1020 = icmp ult i64 %88, 4
  br i1 %min.iters.check1020, label %polly.loop_header191.preheader, label %vector.ph1021

vector.ph1021:                                    ; preds = %polly.loop_header
  %n.vec1023 = and i64 %88, -4
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1021
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1025, %vector.body1017 ]
  %90 = shl nuw nsw i64 %index1024, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1028 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1028, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1025 = add i64 %index1024, 4
  %95 = icmp eq i64 %index.next1025, %n.vec1023
  br i1 %95, label %middle.block1015, label %vector.body1017, !llvm.loop !63

middle.block1015:                                 ; preds = %vector.body1017
  %cmp.n1027 = icmp eq i64 %88, %n.vec1023
  br i1 %cmp.n1027, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1015
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1023, %middle.block1015 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1015
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1019 = add i64 %indvar1018, 1
  br i1 %exitcond792.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond791.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit207 ], [ 1, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, 32000
  %99 = mul nsw i64 %polly.indvar202, 38400
  %100 = or i64 %97, 1
  %101 = mul nuw nsw i64 %100, 8000
  %102 = mul nuw nsw i64 %100, 9600
  %103 = or i64 %97, 2
  %104 = mul nuw nsw i64 %103, 8000
  %105 = mul nuw nsw i64 %103, 9600
  %106 = or i64 %97, 3
  %107 = mul nuw nsw i64 %106, 8000
  %108 = mul nuw nsw i64 %106, 9600
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond790.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 -936)
  %109 = add nsw i64 %smin783, 1000
  %110 = shl nsw i64 %polly.indvar208, 6
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -64
  %exitcond789.not = icmp eq i64 %polly.indvar_next209, 16
  br i1 %exitcond789.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit225.3 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit225.3 ], [ 0, %polly.loop_header205 ]
  %111 = shl nsw i64 %polly.indvar214, 2
  %112 = sub nsw i64 %97, %111
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv777, i64 3)
  %polly.loop_guard867 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard867, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header211, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header211 ]
  %113 = add nuw nsw i64 %polly.indvar226.us, %110
  %114 = shl i64 %113, 3
  %115 = add nuw nsw i64 %114, %98
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %116 = add nuw nsw i64 %polly.indvar232.us, %111
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %119 = shl i64 %116, 3
  %120 = add nuw nsw i64 %119, %99
  %scevgep247.us = getelementptr i8, i8* %call, i64 %120
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.loopexit.us, label %polly.loop_header229.us

polly.loop_exit231.loopexit.us:                   ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next227.us, %109
  br i1 %exitcond784.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header211
  %indvars.iv.next780 = or i64 %indvars.iv777, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780, i64 3)
  %polly.loop_guard.1868 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.1868, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar992 = phi i64 [ %indvar.next993, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %121 = add i64 %indvar992, 1
  %122 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check994 = icmp ult i64 %121, 4
  br i1 %min.iters.check994, label %polly.loop_header342.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %polly.loop_header336
  %n.vec997 = and i64 %121, -4
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next999, %vector.body991 ]
  %123 = shl nuw nsw i64 %index998, 3
  %124 = getelementptr i8, i8* %scevgep348, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1002 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !68, !noalias !70
  %126 = fmul fast <4 x double> %wide.load1002, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !68, !noalias !70
  %index.next999 = add i64 %index998, 4
  %128 = icmp eq i64 %index.next999, %n.vec997
  br i1 %128, label %middle.block989, label %vector.body991, !llvm.loop !73

middle.block989:                                  ; preds = %vector.body991
  %cmp.n1001 = icmp eq i64 %121, %n.vec997
  br i1 %cmp.n1001, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block989
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec997, %middle.block989 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block989
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next993 = add i64 %indvar992, 1
  br i1 %exitcond812.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %129
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond811.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !74

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit360 ], [ 1, %polly.loop_exit344 ]
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %130 = shl nsw i64 %polly.indvar355, 2
  %131 = mul nsw i64 %polly.indvar355, 32000
  %132 = mul nsw i64 %polly.indvar355, 38400
  %133 = or i64 %130, 1
  %134 = mul nuw nsw i64 %133, 8000
  %135 = mul nuw nsw i64 %133, 9600
  %136 = or i64 %130, 2
  %137 = mul nuw nsw i64 %136, 8000
  %138 = mul nuw nsw i64 %136, 9600
  %139 = or i64 %130, 3
  %140 = mul nuw nsw i64 %139, 8000
  %141 = mul nuw nsw i64 %139, 9600
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 4
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next356, 300
  br i1 %exitcond810.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %smin803 = call i64 @llvm.smin.i64(i64 %indvars.iv801, i64 -936)
  %142 = add nsw i64 %smin803, 1000
  %143 = shl nsw i64 %polly.indvar361, 6
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit378.3
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -64
  %exitcond809.not = icmp eq i64 %polly.indvar_next362, 16
  br i1 %exitcond809.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit378.3, %polly.loop_header358
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %polly.loop_exit378.3 ], [ %indvars.iv793, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit378.3 ], [ 0, %polly.loop_header358 ]
  %144 = shl nsw i64 %polly.indvar367, 2
  %145 = sub nsw i64 %130, %144
  %smin799 = call i64 @llvm.smin.i64(i64 %indvars.iv795, i64 3)
  %polly.loop_guard386871 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard386871, label %polly.loop_header376.us, label %polly.loop_exit378

polly.loop_header376.us:                          ; preds = %polly.loop_header364, %polly.loop_exit385.loopexit.us
  %polly.indvar379.us = phi i64 [ %polly.indvar_next380.us, %polly.loop_exit385.loopexit.us ], [ 0, %polly.loop_header364 ]
  %146 = add nuw nsw i64 %polly.indvar379.us, %143
  %147 = shl i64 %146, 3
  %148 = add nuw nsw i64 %147, %131
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %148
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us

polly.loop_header383.us:                          ; preds = %polly.loop_header376.us, %polly.loop_header383.us
  %polly.indvar387.us = phi i64 [ %polly.indvar_next388.us, %polly.loop_header383.us ], [ 0, %polly.loop_header376.us ]
  %149 = add nuw nsw i64 %polly.indvar387.us, %144
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %152 = shl i64 %149, 3
  %153 = add nuw nsw i64 %152, %132
  %scevgep402.us = getelementptr i8, i8* %call, i64 %153
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond800.not = icmp eq i64 %polly.indvar387.us, %smin799
  br i1 %exitcond800.not, label %polly.loop_exit385.loopexit.us, label %polly.loop_header383.us

polly.loop_exit385.loopexit.us:                   ; preds = %polly.loop_header383.us
  %polly.indvar_next380.us = add nuw nsw i64 %polly.indvar379.us, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next380.us, %142
  br i1 %exitcond804.not, label %polly.loop_exit378, label %polly.loop_header376.us

polly.loop_exit378:                               ; preds = %polly.loop_exit385.loopexit.us, %polly.loop_header364
  %indvars.iv.next798 = or i64 %indvars.iv795, 1
  %smin799.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next798, i64 3)
  %polly.loop_guard386.1872 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard386.1872, label %polly.loop_header376.us.1, label %polly.loop_exit378.1

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check968 = icmp ult i64 %154, 4
  br i1 %min.iters.check968, label %polly.loop_header497.preheader, label %vector.ph969

vector.ph969:                                     ; preds = %polly.loop_header491
  %n.vec971 = and i64 %154, -4
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next973, %vector.body967 ]
  %156 = shl nuw nsw i64 %index972, 3
  %157 = getelementptr i8, i8* %scevgep503, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load976 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !77, !noalias !79
  %159 = fmul fast <4 x double> %wide.load976, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !77, !noalias !79
  %index.next973 = add i64 %index972, 4
  %161 = icmp eq i64 %index.next973, %n.vec971
  br i1 %161, label %middle.block965, label %vector.body967, !llvm.loop !82

middle.block965:                                  ; preds = %vector.body967
  %cmp.n975 = icmp eq i64 %154, %n.vec971
  br i1 %cmp.n975, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block965
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec971, %middle.block965 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block965
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond832.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %162
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond831.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !83

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit515 ], [ 1, %polly.loop_exit499 ]
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %163 = shl nsw i64 %polly.indvar510, 2
  %164 = mul nsw i64 %polly.indvar510, 32000
  %165 = mul nsw i64 %polly.indvar510, 38400
  %166 = or i64 %163, 1
  %167 = mul nuw nsw i64 %166, 8000
  %168 = mul nuw nsw i64 %166, 9600
  %169 = or i64 %163, 2
  %170 = mul nuw nsw i64 %169, 8000
  %171 = mul nuw nsw i64 %169, 9600
  %172 = or i64 %163, 3
  %173 = mul nuw nsw i64 %172, 8000
  %174 = mul nuw nsw i64 %172, 9600
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 4
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next511, 300
  br i1 %exitcond830.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %smin823 = call i64 @llvm.smin.i64(i64 %indvars.iv821, i64 -936)
  %175 = add nsw i64 %smin823, 1000
  %176 = shl nsw i64 %polly.indvar516, 6
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit533.3
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -64
  %exitcond829.not = icmp eq i64 %polly.indvar_next517, 16
  br i1 %exitcond829.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit533.3, %polly.loop_header513
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit533.3 ], [ %indvars.iv813, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit533.3 ], [ 0, %polly.loop_header513 ]
  %177 = shl nsw i64 %polly.indvar522, 2
  %178 = sub nsw i64 %163, %177
  %smin819 = call i64 @llvm.smin.i64(i64 %indvars.iv815, i64 3)
  %polly.loop_guard541875 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard541875, label %polly.loop_header531.us, label %polly.loop_exit533

polly.loop_header531.us:                          ; preds = %polly.loop_header519, %polly.loop_exit540.loopexit.us
  %polly.indvar534.us = phi i64 [ %polly.indvar_next535.us, %polly.loop_exit540.loopexit.us ], [ 0, %polly.loop_header519 ]
  %179 = add nuw nsw i64 %polly.indvar534.us, %176
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %164
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %181
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us

polly.loop_header538.us:                          ; preds = %polly.loop_header531.us, %polly.loop_header538.us
  %polly.indvar542.us = phi i64 [ %polly.indvar_next543.us, %polly.loop_header538.us ], [ 0, %polly.loop_header531.us ]
  %182 = add nuw nsw i64 %polly.indvar542.us, %177
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %185 = shl i64 %182, 3
  %186 = add nuw nsw i64 %185, %165
  %scevgep557.us = getelementptr i8, i8* %call, i64 %186
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond820.not = icmp eq i64 %polly.indvar542.us, %smin819
  br i1 %exitcond820.not, label %polly.loop_exit540.loopexit.us, label %polly.loop_header538.us

polly.loop_exit540.loopexit.us:                   ; preds = %polly.loop_header538.us
  %polly.indvar_next535.us = add nuw nsw i64 %polly.indvar534.us, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next535.us, %175
  br i1 %exitcond824.not, label %polly.loop_exit533, label %polly.loop_header531.us

polly.loop_exit533:                               ; preds = %polly.loop_exit540.loopexit.us, %polly.loop_header519
  %indvars.iv.next818 = or i64 %indvars.iv815, 1
  %smin819.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next818, i64 3)
  %polly.loop_guard541.1876 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard541.1876, label %polly.loop_header531.us.1, label %polly.loop_exit533.1

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv857 = phi i64 [ %indvars.iv.next858, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin859 = call i64 @llvm.smin.i64(i64 %indvars.iv857, i64 -1168)
  %187 = shl nsw i64 %polly.indvar689, 5
  %188 = add nsw i64 %smin859, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next858 = add nsw i64 %indvars.iv857, -32
  %exitcond862.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond862.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %189 = mul nsw i64 %polly.indvar695, -32
  %smin906 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin906, 1200
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -1168)
  %191 = shl nsw i64 %polly.indvar695, 5
  %192 = add nsw i64 %smin855, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond861.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond861.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %193 = add nuw nsw i64 %polly.indvar701, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph907

vector.ph907:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert914 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat915 = shufflevector <4 x i64> %broadcast.splatinsert914, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert916 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat917 = shufflevector <4 x i32> %broadcast.splatinsert916, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body905

vector.body905:                                   ; preds = %vector.body905, %vector.ph907
  %index908 = phi i64 [ 0, %vector.ph907 ], [ %index.next909, %vector.body905 ]
  %vec.ind912 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph907 ], [ %vec.ind.next913, %vector.body905 ]
  %196 = add nuw nsw <4 x i64> %vec.ind912, %broadcast.splat915
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat917, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !86, !noalias !88
  %index.next909 = add i64 %index908, 4
  %vec.ind.next913 = add <4 x i64> %vec.ind912, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next909, %190
  br i1 %208, label %polly.loop_exit706, label %vector.body905, !llvm.loop !91

polly.loop_exit706:                               ; preds = %vector.body905, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond860.not = icmp eq i64 %polly.indvar701, %188
  br i1 %exitcond860.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %209 = add nuw nsw i64 %polly.indvar707, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep710 = getelementptr i8, i8* %call, i64 %215
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond856.not = icmp eq i64 %polly.indvar707, %192
  br i1 %exitcond856.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !92

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin849 = call i64 @llvm.smin.i64(i64 %indvars.iv847, i64 -1168)
  %216 = shl nsw i64 %polly.indvar716, 5
  %217 = add nsw i64 %smin849, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -32
  %exitcond852.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond852.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %218 = mul nsw i64 %polly.indvar722, -32
  %smin921 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin921, 1000
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -968)
  %220 = shl nsw i64 %polly.indvar722, 5
  %221 = add nsw i64 %smin845, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond851.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond851.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %222 = add nuw nsw i64 %polly.indvar728, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check922 = icmp eq i64 %219, 0
  br i1 %min.iters.check922, label %polly.loop_header731, label %vector.ph923

vector.ph923:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert932 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat933 = shufflevector <4 x i64> %broadcast.splatinsert932, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert934 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat935 = shufflevector <4 x i32> %broadcast.splatinsert934, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph923
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next927, %vector.body920 ]
  %vec.ind930 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph923 ], [ %vec.ind.next931, %vector.body920 ]
  %225 = add nuw nsw <4 x i64> %vec.ind930, %broadcast.splat933
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat935, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !90, !noalias !93
  %index.next927 = add i64 %index926, 4
  %vec.ind.next931 = add <4 x i64> %vec.ind930, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next927, %219
  br i1 %237, label %polly.loop_exit733, label %vector.body920, !llvm.loop !94

polly.loop_exit733:                               ; preds = %vector.body920, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond850.not = icmp eq i64 %polly.indvar728, %217
  br i1 %exitcond850.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %238 = add nuw nsw i64 %polly.indvar734, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep737 = getelementptr i8, i8* %call2, i64 %244
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !90, !noalias !93
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond846.not = icmp eq i64 %polly.indvar734, %221
  br i1 %exitcond846.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !95

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 -1168)
  %245 = shl nsw i64 %polly.indvar742, 5
  %246 = add nsw i64 %smin839, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, -32
  %exitcond842.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond842.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %247 = mul nsw i64 %polly.indvar748, -32
  %smin939 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin939, 1000
  %smin835 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 -968)
  %249 = shl nsw i64 %polly.indvar748, 5
  %250 = add nsw i64 %smin835, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -32
  %exitcond841.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond841.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %251 = add nuw nsw i64 %polly.indvar754, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check940 = icmp eq i64 %248, 0
  br i1 %min.iters.check940, label %polly.loop_header757, label %vector.ph941

vector.ph941:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert950 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat951 = shufflevector <4 x i64> %broadcast.splatinsert950, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph941
  %index944 = phi i64 [ 0, %vector.ph941 ], [ %index.next945, %vector.body938 ]
  %vec.ind948 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph941 ], [ %vec.ind.next949, %vector.body938 ]
  %254 = add nuw nsw <4 x i64> %vec.ind948, %broadcast.splat951
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat953, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !89, !noalias !96
  %index.next945 = add i64 %index944, 4
  %vec.ind.next949 = add <4 x i64> %vec.ind948, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next945, %248
  br i1 %266, label %polly.loop_exit759, label %vector.body938, !llvm.loop !97

polly.loop_exit759:                               ; preds = %vector.body938, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond840.not = icmp eq i64 %polly.indvar754, %246
  br i1 %exitcond840.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %267 = add nuw nsw i64 %polly.indvar760, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep764 = getelementptr i8, i8* %call1, i64 %273
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !89, !noalias !96
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond836.not = icmp eq i64 %polly.indvar760, %250
  br i1 %exitcond836.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !98

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit225, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_exit225 ]
  %274 = add nuw nsw i64 %polly.indvar226.us.1, %110
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %101
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %276
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %277 = add nuw nsw i64 %polly.indvar232.us.1, %111
  %278 = mul nuw nsw i64 %277, 8000
  %279 = add nuw nsw i64 %278, %275
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %279
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %280 = shl i64 %277, 3
  %281 = add nuw nsw i64 %280, %102
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.loopexit.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.loopexit.us.1:                 ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next227.us.1, %109
  br i1 %exitcond784.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_exit225
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv.next780, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.1, i64 3)
  %polly.loop_guard.2869 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.2869, label %polly.loop_header223.us.2, label %polly.loop_exit225.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit225.1, %polly.loop_exit231.loopexit.us.2
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit231.loopexit.us.2 ], [ 0, %polly.loop_exit225.1 ]
  %282 = add nuw nsw i64 %polly.indvar226.us.2, %110
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %104
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %284
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header223.us.2 ]
  %285 = add nuw nsw i64 %polly.indvar232.us.2, %111
  %286 = mul nuw nsw i64 %285, 8000
  %287 = add nuw nsw i64 %286, %283
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %287
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %287
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %288 = shl i64 %285, 3
  %289 = add nuw nsw i64 %288, %105
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %289
  %scevgep247248.us.2 = bitcast i8* %scevgep247.us.2 to double*
  %_p_scalar_249.us.2 = load double, double* %scevgep247248.us.2, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_249.us.2
  store double %p_add42.i118.us.2, double* %scevgep247248.us.2, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.loopexit.us.2, label %polly.loop_header229.us.2

polly.loop_exit231.loopexit.us.2:                 ; preds = %polly.loop_header229.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar_next227.us.2, %109
  br i1 %exitcond784.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.us.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit231.loopexit.us.2, %polly.loop_exit225.1
  %indvars.iv.next780.2 = or i64 %indvars.iv777, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.2, i64 3)
  %polly.loop_guard.3870 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.3870, label %polly.loop_header223.us.3, label %polly.loop_exit225.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit225.2, %polly.loop_exit231.loopexit.us.3
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit231.loopexit.us.3 ], [ 0, %polly.loop_exit225.2 ]
  %290 = add nuw nsw i64 %polly.indvar226.us.3, %110
  %291 = shl i64 %290, 3
  %292 = add nuw nsw i64 %291, %107
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %292
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header223.us.3 ]
  %293 = add nuw nsw i64 %polly.indvar232.us.3, %111
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %291
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %295
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %108
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %297
  %scevgep247248.us.3 = bitcast i8* %scevgep247.us.3 to double*
  %_p_scalar_249.us.3 = load double, double* %scevgep247248.us.3, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_249.us.3
  store double %p_add42.i118.us.3, double* %scevgep247248.us.3, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.loopexit.us.3, label %polly.loop_header229.us.3

polly.loop_exit231.loopexit.us.3:                 ; preds = %polly.loop_header229.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar_next227.us.3, %109
  br i1 %exitcond784.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.us.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.loopexit.us.3, %polly.loop_exit225.2
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, -4
  %exitcond788.not = icmp eq i64 %polly.indvar_next215, %indvars.iv786
  br i1 %exitcond788.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header376.us.1:                        ; preds = %polly.loop_exit378, %polly.loop_exit385.loopexit.us.1
  %polly.indvar379.us.1 = phi i64 [ %polly.indvar_next380.us.1, %polly.loop_exit385.loopexit.us.1 ], [ 0, %polly.loop_exit378 ]
  %298 = add nuw nsw i64 %polly.indvar379.us.1, %143
  %299 = shl i64 %298, 3
  %300 = add nuw nsw i64 %299, %134
  %scevgep393.us.1 = getelementptr i8, i8* %call2, i64 %300
  %scevgep393394.us.1 = bitcast i8* %scevgep393.us.1 to double*
  %_p_scalar_395.us.1 = load double, double* %scevgep393394.us.1, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.1 = getelementptr i8, i8* %call1, i64 %300
  %scevgep399400.us.1 = bitcast i8* %scevgep399.us.1 to double*
  %_p_scalar_401.us.1 = load double, double* %scevgep399400.us.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us.1

polly.loop_header383.us.1:                        ; preds = %polly.loop_header383.us.1, %polly.loop_header376.us.1
  %polly.indvar387.us.1 = phi i64 [ %polly.indvar_next388.us.1, %polly.loop_header383.us.1 ], [ 0, %polly.loop_header376.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar387.us.1, %144
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %299
  %scevgep390.us.1 = getelementptr i8, i8* %call1, i64 %303
  %scevgep390391.us.1 = bitcast i8* %scevgep390.us.1 to double*
  %_p_scalar_392.us.1 = load double, double* %scevgep390391.us.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_395.us.1, %_p_scalar_392.us.1
  %scevgep396.us.1 = getelementptr i8, i8* %call2, i64 %303
  %scevgep396397.us.1 = bitcast i8* %scevgep396.us.1 to double*
  %_p_scalar_398.us.1 = load double, double* %scevgep396397.us.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_401.us.1, %_p_scalar_398.us.1
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %135
  %scevgep402.us.1 = getelementptr i8, i8* %call, i64 %305
  %scevgep402403.us.1 = bitcast i8* %scevgep402.us.1 to double*
  %_p_scalar_404.us.1 = load double, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_404.us.1
  store double %p_add42.i79.us.1, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us.1 = add nuw nsw i64 %polly.indvar387.us.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar387.us.1, %smin799.1
  br i1 %exitcond800.1.not, label %polly.loop_exit385.loopexit.us.1, label %polly.loop_header383.us.1

polly.loop_exit385.loopexit.us.1:                 ; preds = %polly.loop_header383.us.1
  %polly.indvar_next380.us.1 = add nuw nsw i64 %polly.indvar379.us.1, 1
  %exitcond804.1.not = icmp eq i64 %polly.indvar_next380.us.1, %142
  br i1 %exitcond804.1.not, label %polly.loop_exit378.1, label %polly.loop_header376.us.1

polly.loop_exit378.1:                             ; preds = %polly.loop_exit385.loopexit.us.1, %polly.loop_exit378
  %indvars.iv.next798.1 = add nuw nsw i64 %indvars.iv.next798, 1
  %smin799.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next798.1, i64 3)
  %polly.loop_guard386.2873 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard386.2873, label %polly.loop_header376.us.2, label %polly.loop_exit378.2

polly.loop_header376.us.2:                        ; preds = %polly.loop_exit378.1, %polly.loop_exit385.loopexit.us.2
  %polly.indvar379.us.2 = phi i64 [ %polly.indvar_next380.us.2, %polly.loop_exit385.loopexit.us.2 ], [ 0, %polly.loop_exit378.1 ]
  %306 = add nuw nsw i64 %polly.indvar379.us.2, %143
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %137
  %scevgep393.us.2 = getelementptr i8, i8* %call2, i64 %308
  %scevgep393394.us.2 = bitcast i8* %scevgep393.us.2 to double*
  %_p_scalar_395.us.2 = load double, double* %scevgep393394.us.2, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep399400.us.2 = bitcast i8* %scevgep399.us.2 to double*
  %_p_scalar_401.us.2 = load double, double* %scevgep399400.us.2, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us.2

polly.loop_header383.us.2:                        ; preds = %polly.loop_header383.us.2, %polly.loop_header376.us.2
  %polly.indvar387.us.2 = phi i64 [ %polly.indvar_next388.us.2, %polly.loop_header383.us.2 ], [ 0, %polly.loop_header376.us.2 ]
  %309 = add nuw nsw i64 %polly.indvar387.us.2, %144
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %307
  %scevgep390.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep390391.us.2 = bitcast i8* %scevgep390.us.2 to double*
  %_p_scalar_392.us.2 = load double, double* %scevgep390391.us.2, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_395.us.2, %_p_scalar_392.us.2
  %scevgep396.us.2 = getelementptr i8, i8* %call2, i64 %311
  %scevgep396397.us.2 = bitcast i8* %scevgep396.us.2 to double*
  %_p_scalar_398.us.2 = load double, double* %scevgep396397.us.2, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_401.us.2, %_p_scalar_398.us.2
  %312 = shl i64 %309, 3
  %313 = add nuw nsw i64 %312, %138
  %scevgep402.us.2 = getelementptr i8, i8* %call, i64 %313
  %scevgep402403.us.2 = bitcast i8* %scevgep402.us.2 to double*
  %_p_scalar_404.us.2 = load double, double* %scevgep402403.us.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_404.us.2
  store double %p_add42.i79.us.2, double* %scevgep402403.us.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us.2 = add nuw nsw i64 %polly.indvar387.us.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar387.us.2, %smin799.2
  br i1 %exitcond800.2.not, label %polly.loop_exit385.loopexit.us.2, label %polly.loop_header383.us.2

polly.loop_exit385.loopexit.us.2:                 ; preds = %polly.loop_header383.us.2
  %polly.indvar_next380.us.2 = add nuw nsw i64 %polly.indvar379.us.2, 1
  %exitcond804.2.not = icmp eq i64 %polly.indvar_next380.us.2, %142
  br i1 %exitcond804.2.not, label %polly.loop_exit378.2, label %polly.loop_header376.us.2

polly.loop_exit378.2:                             ; preds = %polly.loop_exit385.loopexit.us.2, %polly.loop_exit378.1
  %indvars.iv.next798.2 = or i64 %indvars.iv795, 3
  %smin799.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next798.2, i64 3)
  %polly.loop_guard386.3874 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard386.3874, label %polly.loop_header376.us.3, label %polly.loop_exit378.3

polly.loop_header376.us.3:                        ; preds = %polly.loop_exit378.2, %polly.loop_exit385.loopexit.us.3
  %polly.indvar379.us.3 = phi i64 [ %polly.indvar_next380.us.3, %polly.loop_exit385.loopexit.us.3 ], [ 0, %polly.loop_exit378.2 ]
  %314 = add nuw nsw i64 %polly.indvar379.us.3, %143
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %140
  %scevgep393.us.3 = getelementptr i8, i8* %call2, i64 %316
  %scevgep393394.us.3 = bitcast i8* %scevgep393.us.3 to double*
  %_p_scalar_395.us.3 = load double, double* %scevgep393394.us.3, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep399400.us.3 = bitcast i8* %scevgep399.us.3 to double*
  %_p_scalar_401.us.3 = load double, double* %scevgep399400.us.3, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header383.us.3

polly.loop_header383.us.3:                        ; preds = %polly.loop_header383.us.3, %polly.loop_header376.us.3
  %polly.indvar387.us.3 = phi i64 [ %polly.indvar_next388.us.3, %polly.loop_header383.us.3 ], [ 0, %polly.loop_header376.us.3 ]
  %317 = add nuw nsw i64 %polly.indvar387.us.3, %144
  %318 = mul nuw nsw i64 %317, 8000
  %319 = add nuw nsw i64 %318, %315
  %scevgep390.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep390391.us.3 = bitcast i8* %scevgep390.us.3 to double*
  %_p_scalar_392.us.3 = load double, double* %scevgep390391.us.3, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_395.us.3, %_p_scalar_392.us.3
  %scevgep396.us.3 = getelementptr i8, i8* %call2, i64 %319
  %scevgep396397.us.3 = bitcast i8* %scevgep396.us.3 to double*
  %_p_scalar_398.us.3 = load double, double* %scevgep396397.us.3, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_401.us.3, %_p_scalar_398.us.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %141
  %scevgep402.us.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep402403.us.3 = bitcast i8* %scevgep402.us.3 to double*
  %_p_scalar_404.us.3 = load double, double* %scevgep402403.us.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_404.us.3
  store double %p_add42.i79.us.3, double* %scevgep402403.us.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next388.us.3 = add nuw nsw i64 %polly.indvar387.us.3, 1
  %exitcond800.3.not = icmp eq i64 %polly.indvar387.us.3, %smin799.3
  br i1 %exitcond800.3.not, label %polly.loop_exit385.loopexit.us.3, label %polly.loop_header383.us.3

polly.loop_exit385.loopexit.us.3:                 ; preds = %polly.loop_header383.us.3
  %polly.indvar_next380.us.3 = add nuw nsw i64 %polly.indvar379.us.3, 1
  %exitcond804.3.not = icmp eq i64 %polly.indvar_next380.us.3, %142
  br i1 %exitcond804.3.not, label %polly.loop_exit378.3, label %polly.loop_header376.us.3

polly.loop_exit378.3:                             ; preds = %polly.loop_exit385.loopexit.us.3, %polly.loop_exit378.2
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next796 = add nsw i64 %indvars.iv795, -4
  %exitcond808.not = icmp eq i64 %polly.indvar_next368, %indvars.iv806
  br i1 %exitcond808.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header531.us.1:                        ; preds = %polly.loop_exit533, %polly.loop_exit540.loopexit.us.1
  %polly.indvar534.us.1 = phi i64 [ %polly.indvar_next535.us.1, %polly.loop_exit540.loopexit.us.1 ], [ 0, %polly.loop_exit533 ]
  %322 = add nuw nsw i64 %polly.indvar534.us.1, %176
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %167
  %scevgep548.us.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us.1

polly.loop_header538.us.1:                        ; preds = %polly.loop_header538.us.1, %polly.loop_header531.us.1
  %polly.indvar542.us.1 = phi i64 [ %polly.indvar_next543.us.1, %polly.loop_header538.us.1 ], [ 0, %polly.loop_header531.us.1 ]
  %325 = add nuw nsw i64 %polly.indvar542.us.1, %177
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %323
  %scevgep545.us.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep545546.us.1 = bitcast i8* %scevgep545.us.1 to double*
  %_p_scalar_547.us.1 = load double, double* %scevgep545546.us.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_547.us.1
  %scevgep551.us.1 = getelementptr i8, i8* %call2, i64 %327
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %168
  %scevgep557.us.1 = getelementptr i8, i8* %call, i64 %329
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_559.us.1
  store double %p_add42.i.us.1, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us.1 = add nuw nsw i64 %polly.indvar542.us.1, 1
  %exitcond820.1.not = icmp eq i64 %polly.indvar542.us.1, %smin819.1
  br i1 %exitcond820.1.not, label %polly.loop_exit540.loopexit.us.1, label %polly.loop_header538.us.1

polly.loop_exit540.loopexit.us.1:                 ; preds = %polly.loop_header538.us.1
  %polly.indvar_next535.us.1 = add nuw nsw i64 %polly.indvar534.us.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next535.us.1, %175
  br i1 %exitcond824.1.not, label %polly.loop_exit533.1, label %polly.loop_header531.us.1

polly.loop_exit533.1:                             ; preds = %polly.loop_exit540.loopexit.us.1, %polly.loop_exit533
  %indvars.iv.next818.1 = add nuw nsw i64 %indvars.iv.next818, 1
  %smin819.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next818.1, i64 3)
  %polly.loop_guard541.2877 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard541.2877, label %polly.loop_header531.us.2, label %polly.loop_exit533.2

polly.loop_header531.us.2:                        ; preds = %polly.loop_exit533.1, %polly.loop_exit540.loopexit.us.2
  %polly.indvar534.us.2 = phi i64 [ %polly.indvar_next535.us.2, %polly.loop_exit540.loopexit.us.2 ], [ 0, %polly.loop_exit533.1 ]
  %330 = add nuw nsw i64 %polly.indvar534.us.2, %176
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %170
  %scevgep548.us.2 = getelementptr i8, i8* %call2, i64 %332
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.2 = getelementptr i8, i8* %call1, i64 %332
  %scevgep554555.us.2 = bitcast i8* %scevgep554.us.2 to double*
  %_p_scalar_556.us.2 = load double, double* %scevgep554555.us.2, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us.2

polly.loop_header538.us.2:                        ; preds = %polly.loop_header538.us.2, %polly.loop_header531.us.2
  %polly.indvar542.us.2 = phi i64 [ %polly.indvar_next543.us.2, %polly.loop_header538.us.2 ], [ 0, %polly.loop_header531.us.2 ]
  %333 = add nuw nsw i64 %polly.indvar542.us.2, %177
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %331
  %scevgep545.us.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep545546.us.2 = bitcast i8* %scevgep545.us.2 to double*
  %_p_scalar_547.us.2 = load double, double* %scevgep545546.us.2, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_547.us.2
  %scevgep551.us.2 = getelementptr i8, i8* %call2, i64 %335
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_556.us.2, %_p_scalar_553.us.2
  %336 = shl i64 %333, 3
  %337 = add nuw nsw i64 %336, %171
  %scevgep557.us.2 = getelementptr i8, i8* %call, i64 %337
  %scevgep557558.us.2 = bitcast i8* %scevgep557.us.2 to double*
  %_p_scalar_559.us.2 = load double, double* %scevgep557558.us.2, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_559.us.2
  store double %p_add42.i.us.2, double* %scevgep557558.us.2, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us.2 = add nuw nsw i64 %polly.indvar542.us.2, 1
  %exitcond820.2.not = icmp eq i64 %polly.indvar542.us.2, %smin819.2
  br i1 %exitcond820.2.not, label %polly.loop_exit540.loopexit.us.2, label %polly.loop_header538.us.2

polly.loop_exit540.loopexit.us.2:                 ; preds = %polly.loop_header538.us.2
  %polly.indvar_next535.us.2 = add nuw nsw i64 %polly.indvar534.us.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next535.us.2, %175
  br i1 %exitcond824.2.not, label %polly.loop_exit533.2, label %polly.loop_header531.us.2

polly.loop_exit533.2:                             ; preds = %polly.loop_exit540.loopexit.us.2, %polly.loop_exit533.1
  %indvars.iv.next818.2 = or i64 %indvars.iv815, 3
  %smin819.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next818.2, i64 3)
  %polly.loop_guard541.3878 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard541.3878, label %polly.loop_header531.us.3, label %polly.loop_exit533.3

polly.loop_header531.us.3:                        ; preds = %polly.loop_exit533.2, %polly.loop_exit540.loopexit.us.3
  %polly.indvar534.us.3 = phi i64 [ %polly.indvar_next535.us.3, %polly.loop_exit540.loopexit.us.3 ], [ 0, %polly.loop_exit533.2 ]
  %338 = add nuw nsw i64 %polly.indvar534.us.3, %176
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %173
  %scevgep548.us.3 = getelementptr i8, i8* %call2, i64 %340
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep554555.us.3 = bitcast i8* %scevgep554.us.3 to double*
  %_p_scalar_556.us.3 = load double, double* %scevgep554555.us.3, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header538.us.3

polly.loop_header538.us.3:                        ; preds = %polly.loop_header538.us.3, %polly.loop_header531.us.3
  %polly.indvar542.us.3 = phi i64 [ %polly.indvar_next543.us.3, %polly.loop_header538.us.3 ], [ 0, %polly.loop_header531.us.3 ]
  %341 = add nuw nsw i64 %polly.indvar542.us.3, %177
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %339
  %scevgep545.us.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep545546.us.3 = bitcast i8* %scevgep545.us.3 to double*
  %_p_scalar_547.us.3 = load double, double* %scevgep545546.us.3, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_547.us.3
  %scevgep551.us.3 = getelementptr i8, i8* %call2, i64 %343
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_556.us.3, %_p_scalar_553.us.3
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %174
  %scevgep557.us.3 = getelementptr i8, i8* %call, i64 %345
  %scevgep557558.us.3 = bitcast i8* %scevgep557.us.3 to double*
  %_p_scalar_559.us.3 = load double, double* %scevgep557558.us.3, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_559.us.3
  store double %p_add42.i.us.3, double* %scevgep557558.us.3, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next543.us.3 = add nuw nsw i64 %polly.indvar542.us.3, 1
  %exitcond820.3.not = icmp eq i64 %polly.indvar542.us.3, %smin819.3
  br i1 %exitcond820.3.not, label %polly.loop_exit540.loopexit.us.3, label %polly.loop_header538.us.3

polly.loop_exit540.loopexit.us.3:                 ; preds = %polly.loop_header538.us.3
  %polly.indvar_next535.us.3 = add nuw nsw i64 %polly.indvar534.us.3, 1
  %exitcond824.3.not = icmp eq i64 %polly.indvar_next535.us.3, %175
  br i1 %exitcond824.3.not, label %polly.loop_exit533.3, label %polly.loop_header531.us.3

polly.loop_exit533.3:                             ; preds = %polly.loop_exit540.loopexit.us.3, %polly.loop_exit533.2
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next816 = add nsw i64 %indvars.iv815, -4
  %exitcond828.not = icmp eq i64 %polly.indvar_next523, %indvars.iv826
  br i1 %exitcond828.not, label %polly.loop_exit521, label %polly.loop_header519
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
!33 = !{!"llvm.loop.tile.size", i32 64}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !47}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !65, !13}
!93 = !{!89, !86}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !65, !13}
!96 = !{!90, !86}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !65, !13}
