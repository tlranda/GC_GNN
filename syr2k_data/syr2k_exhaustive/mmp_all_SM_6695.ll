; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6695.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6695.c"
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
  %call772 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1633 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2634 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1633, %call2
  %polly.access.call2653 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2653, %call1
  %2 = or i1 %0, %1
  %polly.access.call673 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call673, %call2
  %4 = icmp ule i8* %polly.access.call2653, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call673, %call1
  %8 = icmp ule i8* %polly.access.call1633, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header746, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep926 = getelementptr i8, i8* %call2, i64 %12
  %scevgep925 = getelementptr i8, i8* %call2, i64 %11
  %scevgep924 = getelementptr i8, i8* %call1, i64 %12
  %scevgep923 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep923, %scevgep926
  %bound1 = icmp ult i8* %scevgep925, %scevgep924
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
  br i1 %exitcond18.not.i, label %vector.ph930, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph930:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert937 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat938 = shufflevector <4 x i64> %broadcast.splatinsert937, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph930
  %index931 = phi i64 [ 0, %vector.ph930 ], [ %index.next932, %vector.body929 ]
  %vec.ind935 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph930 ], [ %vec.ind.next936, %vector.body929 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind935, %broadcast.splat938
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv7.i, i64 %index931
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next932 = add i64 %index931, 4
  %vec.ind.next936 = add <4 x i64> %vec.ind935, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next932, 1200
  br i1 %40, label %for.inc41.i, label %vector.body929, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body929
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph930, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start446, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check993 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check993, label %for.body3.i46.preheader1067, label %vector.ph994

vector.ph994:                                     ; preds = %for.body3.i46.preheader
  %n.vec996 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body992 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %index997
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next998 = add i64 %index997, 4
  %46 = icmp eq i64 %index.next998, %n.vec996
  br i1 %46, label %middle.block990, label %vector.body992, !llvm.loop !18

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %indvars.iv21.i, %n.vec996
  br i1 %cmp.n1000, label %for.inc6.i, label %for.body3.i46.preheader1067

for.body3.i46.preheader1067:                      ; preds = %for.body3.i46.preheader, %middle.block990
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec996, %middle.block990 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1067, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1067 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block990, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting447
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1016 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1016, label %for.body3.i60.preheader1066, label %vector.ph1017

vector.ph1017:                                    ; preds = %for.body3.i60.preheader
  %n.vec1019 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1015 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %index1020
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1024 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1024, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1021 = add i64 %index1020, 4
  %57 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %57, label %middle.block1013, label %vector.body1015, !llvm.loop !55

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %indvars.iv21.i52, %n.vec1019
  br i1 %cmp.n1023, label %for.inc6.i63, label %for.body3.i60.preheader1066

for.body3.i60.preheader1066:                      ; preds = %for.body3.i60.preheader, %middle.block1013
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1019, %middle.block1013 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1066, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1066 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1013, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1042 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1042, label %for.body3.i99.preheader1065, label %vector.ph1043

vector.ph1043:                                    ; preds = %for.body3.i99.preheader
  %n.vec1045 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %vector.ph1043
  %index1046 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1047, %vector.body1041 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %index1046
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1050 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1050, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1047 = add i64 %index1046, 4
  %68 = icmp eq i64 %index.next1047, %n.vec1045
  br i1 %68, label %middle.block1039, label %vector.body1041, !llvm.loop !57

middle.block1039:                                 ; preds = %vector.body1041
  %cmp.n1049 = icmp eq i64 %indvars.iv21.i91, %n.vec1045
  br i1 %cmp.n1049, label %for.inc6.i102, label %for.body3.i99.preheader1065

for.body3.i99.preheader1065:                      ; preds = %for.body3.i99.preheader, %middle.block1039
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1045, %middle.block1039 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1065, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1065 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1039, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call772, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1054 = phi i64 [ %indvar.next1055, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1054, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1056 = icmp ult i64 %88, 4
  br i1 %min.iters.check1056, label %polly.loop_header191.preheader, label %vector.ph1057

vector.ph1057:                                    ; preds = %polly.loop_header
  %n.vec1059 = and i64 %88, -4
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1057
  %index1060 = phi i64 [ 0, %vector.ph1057 ], [ %index.next1061, %vector.body1053 ]
  %90 = shl nuw nsw i64 %index1060, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1064 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1064, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1061 = add i64 %index1060, 4
  %95 = icmp eq i64 %index.next1061, %n.vec1059
  br i1 %95, label %middle.block1051, label %vector.body1053, !llvm.loop !69

middle.block1051:                                 ; preds = %vector.body1053
  %cmp.n1063 = icmp eq i64 %88, %n.vec1059
  br i1 %cmp.n1063, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1051
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1059, %middle.block1051 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1051
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1055 = add i64 %indvar1054, 1
  br i1 %exitcond843.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond842.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond842.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond841.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond840.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %polly.indvar218, 20
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

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond839.not = icmp eq i64 %polly.indvar_next219, 300
  br i1 %exitcond839.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %110 = mul nuw nsw i64 %polly.indvar224, 20
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit241.3
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next225, 50
  br i1 %exitcond838.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit241.3, %polly.loop_header221
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit241.3 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit241.3 ], [ 0, %polly.loop_header221 ]
  %111 = mul nuw nsw i64 %polly.indvar230, 80
  %112 = sub nsw i64 %98, %111
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 79)
  %polly.loop_guard909 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard909, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header227, %polly.loop_exit247.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit247.loopexit.us ], [ 0, %polly.loop_header227 ]
  %113 = add nuw nsw i64 %polly.indvar242.us, %110
  %114 = shl i64 %113, 3
  %polly.access.mul.Packed_MemRef_call2254.us = mul nuw nsw i64 %113, 1200
  %polly.access.add.Packed_MemRef_call2255.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us, %98
  %polly.access.Packed_MemRef_call2256.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call2256.us, align 8
  %115 = add nuw nsw i64 %114, %99
  %scevgep262.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep262263.us = bitcast i8* %scevgep262.us to double*
  %_p_scalar_264.us = load double, double* %scevgep262263.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us

polly.loop_header245.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header245.us
  %polly.indvar248.us = phi i64 [ %polly.indvar_next249.us, %polly.loop_header245.us ], [ 0, %polly.loop_header239.us ]
  %116 = add nuw nsw i64 %polly.indvar248.us, %111
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep251.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep251252.us = bitcast i8* %scevgep251.us to double*
  %_p_scalar_253.us = load double, double* %scevgep251252.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_257.us, %_p_scalar_253.us
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call2254.us
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_264.us, %_p_scalar_261.us
  %119 = shl i64 %116, 3
  %120 = add nuw nsw i64 %119, %100
  %scevgep265.us = getelementptr i8, i8* %call, i64 %120
  %scevgep265266.us = bitcast i8* %scevgep265.us to double*
  %_p_scalar_267.us = load double, double* %scevgep265266.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_267.us
  store double %p_add42.i118.us, double* %scevgep265266.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us = add nuw nsw i64 %polly.indvar248.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar248.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit247.loopexit.us, label %polly.loop_header245.us

polly.loop_exit247.loopexit.us:                   ; preds = %polly.loop_header245.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next243.us, 20
  br i1 %exitcond835.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit247.loopexit.us, %polly.loop_header227
  %indvars.iv.next834 = or i64 %indvars.iv831, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834, i64 79)
  %polly.loop_guard.1910 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.1910, label %polly.loop_header239.us.1, label %polly.loop_exit241.1

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit396
  tail call void @free(i8* %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1028 = phi i64 [ %indvar.next1029, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %121 = add i64 %indvar1028, 1
  %122 = mul nuw nsw i64 %polly.indvar359, 9600
  %scevgep368 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1030 = icmp ult i64 %121, 4
  br i1 %min.iters.check1030, label %polly.loop_header362.preheader, label %vector.ph1031

vector.ph1031:                                    ; preds = %polly.loop_header356
  %n.vec1033 = and i64 %121, -4
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1031
  %index1034 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1035, %vector.body1027 ]
  %123 = shl nuw nsw i64 %index1034, 3
  %124 = getelementptr i8, i8* %scevgep368, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1038 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !74, !noalias !76
  %126 = fmul fast <4 x double> %wide.load1038, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %index.next1035 = add i64 %index1034, 4
  %128 = icmp eq i64 %index.next1035, %n.vec1033
  br i1 %128, label %middle.block1025, label %vector.body1027, !llvm.loop !80

middle.block1025:                                 ; preds = %vector.body1027
  %cmp.n1037 = icmp eq i64 %121, %n.vec1033
  br i1 %cmp.n1037, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1025
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1033, %middle.block1025 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1025
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next360, 1200
  %indvar.next1029 = add i64 %indvar1028, 1
  br i1 %exitcond860.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %129
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond859.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !81

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar375, 1200
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next376, 1000
  br i1 %exitcond858.not, label %polly.loop_header388, label %polly.loop_header372

polly.loop_header378:                             ; preds = %polly.loop_header378, %polly.loop_header372
  %polly.indvar381 = phi i64 [ 0, %polly.loop_header372 ], [ %polly.indvar_next382, %polly.loop_header378 ]
  %polly.access.mul.call2385 = mul nuw nsw i64 %polly.indvar381, 1000
  %polly.access.add.call2386 = add nuw nsw i64 %polly.access.mul.call2385, %polly.indvar375
  %polly.access.call2387 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2386
  %polly.access.call2387.load = load double, double* %polly.access.call2387, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar381, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2387.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next382, 1200
  br i1 %exitcond857.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header388:                             ; preds = %polly.loop_exit380, %polly.loop_exit396
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 0, %polly.loop_exit380 ]
  %130 = udiv i64 %polly.indvar391, 20
  %131 = shl nsw i64 %polly.indvar391, 2
  %132 = mul nsw i64 %polly.indvar391, 32000
  %133 = mul nsw i64 %polly.indvar391, 38400
  %134 = or i64 %131, 1
  %135 = mul nuw nsw i64 %134, 8000
  %136 = mul nuw nsw i64 %134, 9600
  %137 = or i64 %131, 2
  %138 = mul nuw nsw i64 %137, 8000
  %139 = mul nuw nsw i64 %137, 9600
  %140 = or i64 %131, 3
  %141 = mul nuw nsw i64 %140, 8000
  %142 = mul nuw nsw i64 %140, 9600
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_exit403
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 4
  %exitcond856.not = icmp eq i64 %polly.indvar_next392, 300
  br i1 %exitcond856.not, label %polly.exiting271, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_exit403, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_exit403 ]
  %143 = mul nuw nsw i64 %polly.indvar397, 20
  br label %polly.loop_header401

polly.loop_exit403:                               ; preds = %polly.loop_exit415.3
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next398, 50
  br i1 %exitcond855.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header401:                             ; preds = %polly.loop_exit415.3, %polly.loop_header394
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit415.3 ], [ %indvars.iv844, %polly.loop_header394 ]
  %polly.indvar404 = phi i64 [ %polly.indvar_next405, %polly.loop_exit415.3 ], [ 0, %polly.loop_header394 ]
  %144 = mul nuw nsw i64 %polly.indvar404, 80
  %145 = sub nsw i64 %131, %144
  %smin850 = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 79)
  %polly.loop_guard423913 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard423913, label %polly.loop_header413.us, label %polly.loop_exit415

polly.loop_header413.us:                          ; preds = %polly.loop_header401, %polly.loop_exit422.loopexit.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_exit422.loopexit.us ], [ 0, %polly.loop_header401 ]
  %146 = add nuw nsw i64 %polly.indvar416.us, %143
  %147 = shl i64 %146, 3
  %polly.access.mul.Packed_MemRef_call2273430.us = mul nuw nsw i64 %146, 1200
  %polly.access.add.Packed_MemRef_call2273431.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us, %131
  %polly.access.Packed_MemRef_call2273432.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us
  %_p_scalar_433.us = load double, double* %polly.access.Packed_MemRef_call2273432.us, align 8
  %148 = add nuw nsw i64 %147, %132
  %scevgep438.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep438439.us = bitcast i8* %scevgep438.us to double*
  %_p_scalar_440.us = load double, double* %scevgep438439.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us

polly.loop_header420.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header420.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_header420.us ], [ 0, %polly.loop_header413.us ]
  %149 = add nuw nsw i64 %polly.indvar424.us, %144
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep427.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep427428.us = bitcast i8* %scevgep427.us to double*
  %_p_scalar_429.us = load double, double* %scevgep427428.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_433.us, %_p_scalar_429.us
  %polly.access.add.Packed_MemRef_call2273435.us = add nuw nsw i64 %149, %polly.access.mul.Packed_MemRef_call2273430.us
  %polly.access.Packed_MemRef_call2273436.us = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2273436.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_440.us, %_p_scalar_437.us
  %152 = shl i64 %149, 3
  %153 = add nuw nsw i64 %152, %133
  %scevgep441.us = getelementptr i8, i8* %call, i64 %153
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_443.us
  store double %p_add42.i79.us, double* %scevgep441442.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond851.not = icmp eq i64 %polly.indvar424.us, %smin850
  br i1 %exitcond851.not, label %polly.loop_exit422.loopexit.us, label %polly.loop_header420.us

polly.loop_exit422.loopexit.us:                   ; preds = %polly.loop_header420.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next417.us, 20
  br i1 %exitcond852.not, label %polly.loop_exit415, label %polly.loop_header413.us

polly.loop_exit415:                               ; preds = %polly.loop_exit422.loopexit.us, %polly.loop_header401
  %indvars.iv.next849 = or i64 %indvars.iv846, 1
  %smin850.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next849, i64 79)
  %polly.loop_guard423.1914 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard423.1914, label %polly.loop_header413.us.1, label %polly.loop_exit415.1

polly.start446:                                   ; preds = %init_array.exit
  %malloccall448 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header532

polly.exiting447:                                 ; preds = %polly.loop_exit572
  tail call void @free(i8* %malloccall448)
  br label %kernel_syr2k.exit

polly.loop_header532:                             ; preds = %polly.loop_exit540, %polly.start446
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit540 ], [ 0, %polly.start446 ]
  %polly.indvar535 = phi i64 [ %polly.indvar_next536, %polly.loop_exit540 ], [ 1, %polly.start446 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar535, 9600
  %scevgep544 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1004 = icmp ult i64 %154, 4
  br i1 %min.iters.check1004, label %polly.loop_header538.preheader, label %vector.ph1005

vector.ph1005:                                    ; preds = %polly.loop_header532
  %n.vec1007 = and i64 %154, -4
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1005
  %index1008 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1009, %vector.body1003 ]
  %156 = shl nuw nsw i64 %index1008, 3
  %157 = getelementptr i8, i8* %scevgep544, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1012 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !84, !noalias !86
  %159 = fmul fast <4 x double> %wide.load1012, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !84, !noalias !86
  %index.next1009 = add i64 %index1008, 4
  %161 = icmp eq i64 %index.next1009, %n.vec1007
  br i1 %161, label %middle.block1001, label %vector.body1003, !llvm.loop !90

middle.block1001:                                 ; preds = %vector.body1003
  %cmp.n1011 = icmp eq i64 %154, %n.vec1007
  br i1 %cmp.n1011, label %polly.loop_exit540, label %polly.loop_header538.preheader

polly.loop_header538.preheader:                   ; preds = %polly.loop_header532, %middle.block1001
  %polly.indvar541.ph = phi i64 [ 0, %polly.loop_header532 ], [ %n.vec1007, %middle.block1001 ]
  br label %polly.loop_header538

polly.loop_exit540:                               ; preds = %polly.loop_header538, %middle.block1001
  %polly.indvar_next536 = add nuw nsw i64 %polly.indvar535, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next536, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond877.not, label %polly.loop_header548.preheader, label %polly.loop_header532

polly.loop_header548.preheader:                   ; preds = %polly.loop_exit540
  %Packed_MemRef_call2449 = bitcast i8* %malloccall448 to double*
  br label %polly.loop_header548

polly.loop_header538:                             ; preds = %polly.loop_header538.preheader, %polly.loop_header538
  %polly.indvar541 = phi i64 [ %polly.indvar_next542, %polly.loop_header538 ], [ %polly.indvar541.ph, %polly.loop_header538.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar541, 3
  %scevgep545 = getelementptr i8, i8* %scevgep544, i64 %162
  %scevgep545546 = bitcast i8* %scevgep545 to double*
  %_p_scalar_547 = load double, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_547, 1.200000e+00
  store double %p_mul.i, double* %scevgep545546, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next542 = add nuw nsw i64 %polly.indvar541, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next542, %polly.indvar535
  br i1 %exitcond876.not, label %polly.loop_exit540, label %polly.loop_header538, !llvm.loop !91

polly.loop_header548:                             ; preds = %polly.loop_header548.preheader, %polly.loop_exit556
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 0, %polly.loop_header548.preheader ]
  %polly.access.mul.Packed_MemRef_call2449 = mul nuw nsw i64 %polly.indvar551, 1200
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next552, 1000
  br i1 %exitcond875.not, label %polly.loop_header564, label %polly.loop_header548

polly.loop_header554:                             ; preds = %polly.loop_header554, %polly.loop_header548
  %polly.indvar557 = phi i64 [ 0, %polly.loop_header548 ], [ %polly.indvar_next558, %polly.loop_header554 ]
  %polly.access.mul.call2561 = mul nuw nsw i64 %polly.indvar557, 1000
  %polly.access.add.call2562 = add nuw nsw i64 %polly.access.mul.call2561, %polly.indvar551
  %polly.access.call2563 = getelementptr double, double* %polly.access.cast.call2634, i64 %polly.access.add.call2562
  %polly.access.call2563.load = load double, double* %polly.access.call2563, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2449 = add nuw nsw i64 %polly.indvar557, %polly.access.mul.Packed_MemRef_call2449
  %polly.access.Packed_MemRef_call2449 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449
  store double %polly.access.call2563.load, double* %polly.access.Packed_MemRef_call2449, align 8
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next558, 1200
  br i1 %exitcond874.not, label %polly.loop_exit556, label %polly.loop_header554

polly.loop_header564:                             ; preds = %polly.loop_exit556, %polly.loop_exit572
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit572 ], [ 0, %polly.loop_exit556 ]
  %163 = udiv i64 %polly.indvar567, 20
  %164 = shl nsw i64 %polly.indvar567, 2
  %165 = mul nsw i64 %polly.indvar567, 32000
  %166 = mul nsw i64 %polly.indvar567, 38400
  %167 = or i64 %164, 1
  %168 = mul nuw nsw i64 %167, 8000
  %169 = mul nuw nsw i64 %167, 9600
  %170 = or i64 %164, 2
  %171 = mul nuw nsw i64 %170, 8000
  %172 = mul nuw nsw i64 %170, 9600
  %173 = or i64 %164, 3
  %174 = mul nuw nsw i64 %173, 8000
  %175 = mul nuw nsw i64 %173, 9600
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_exit579
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %indvars.iv.next862 = add nuw nsw i64 %indvars.iv861, 4
  %exitcond873.not = icmp eq i64 %polly.indvar_next568, 300
  br i1 %exitcond873.not, label %polly.exiting447, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_exit579, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_exit579 ]
  %176 = mul nuw nsw i64 %polly.indvar573, 20
  br label %polly.loop_header577

polly.loop_exit579:                               ; preds = %polly.loop_exit591.3
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next574, 50
  br i1 %exitcond872.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header577:                             ; preds = %polly.loop_exit591.3, %polly.loop_header570
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit591.3 ], [ %indvars.iv861, %polly.loop_header570 ]
  %polly.indvar580 = phi i64 [ %polly.indvar_next581, %polly.loop_exit591.3 ], [ 0, %polly.loop_header570 ]
  %177 = mul nuw nsw i64 %polly.indvar580, 80
  %178 = sub nsw i64 %164, %177
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv863, i64 79)
  %polly.loop_guard599917 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard599917, label %polly.loop_header589.us, label %polly.loop_exit591

polly.loop_header589.us:                          ; preds = %polly.loop_header577, %polly.loop_exit598.loopexit.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_exit598.loopexit.us ], [ 0, %polly.loop_header577 ]
  %179 = add nuw nsw i64 %polly.indvar592.us, %176
  %180 = shl i64 %179, 3
  %polly.access.mul.Packed_MemRef_call2449606.us = mul nuw nsw i64 %179, 1200
  %polly.access.add.Packed_MemRef_call2449607.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us, %164
  %polly.access.Packed_MemRef_call2449608.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us
  %_p_scalar_609.us = load double, double* %polly.access.Packed_MemRef_call2449608.us, align 8
  %181 = add nuw nsw i64 %180, %165
  %scevgep614.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep614615.us = bitcast i8* %scevgep614.us to double*
  %_p_scalar_616.us = load double, double* %scevgep614615.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us

polly.loop_header596.us:                          ; preds = %polly.loop_header589.us, %polly.loop_header596.us
  %polly.indvar600.us = phi i64 [ %polly.indvar_next601.us, %polly.loop_header596.us ], [ 0, %polly.loop_header589.us ]
  %182 = add nuw nsw i64 %polly.indvar600.us, %177
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep603.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep603604.us = bitcast i8* %scevgep603.us to double*
  %_p_scalar_605.us = load double, double* %scevgep603604.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_609.us, %_p_scalar_605.us
  %polly.access.add.Packed_MemRef_call2449611.us = add nuw nsw i64 %182, %polly.access.mul.Packed_MemRef_call2449606.us
  %polly.access.Packed_MemRef_call2449612.us = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2449612.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_616.us, %_p_scalar_613.us
  %185 = shl i64 %182, 3
  %186 = add nuw nsw i64 %185, %166
  %scevgep617.us = getelementptr i8, i8* %call, i64 %186
  %scevgep617618.us = bitcast i8* %scevgep617.us to double*
  %_p_scalar_619.us = load double, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_619.us
  store double %p_add42.i.us, double* %scevgep617618.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us = add nuw nsw i64 %polly.indvar600.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar600.us, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit598.loopexit.us, label %polly.loop_header596.us

polly.loop_exit598.loopexit.us:                   ; preds = %polly.loop_header596.us
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next593.us, 20
  br i1 %exitcond869.not, label %polly.loop_exit591, label %polly.loop_header589.us

polly.loop_exit591:                               ; preds = %polly.loop_exit598.loopexit.us, %polly.loop_header577
  %indvars.iv.next866 = or i64 %indvars.iv863, 1
  %smin867.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next866, i64 79)
  %polly.loop_guard599.1918 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard599.1918, label %polly.loop_header589.us.1, label %polly.loop_exit591.1

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %polly.loop_exit754 ], [ 0, %entry ]
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv902, i64 -1168)
  %187 = shl nsw i64 %polly.indvar749, 5
  %188 = add nsw i64 %smin904, 1199
  br label %polly.loop_header752

polly.loop_exit754:                               ; preds = %polly.loop_exit760
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next750, 38
  br i1 %exitcond907.not, label %polly.loop_header773, label %polly.loop_header746

polly.loop_header752:                             ; preds = %polly.loop_exit760, %polly.loop_header746
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %polly.loop_header746 ]
  %189 = mul nsw i64 %polly.indvar755, -32
  %smin942 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin942, 1200
  %smin900 = call i64 @llvm.smin.i64(i64 %indvars.iv898, i64 -1168)
  %191 = shl nsw i64 %polly.indvar755, 5
  %192 = add nsw i64 %smin900, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, -32
  %exitcond906.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond906.not, label %polly.loop_exit754, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %polly.indvar761 = phi i64 [ 0, %polly.loop_header752 ], [ %polly.indvar_next762, %polly.loop_exit766 ]
  %193 = add nuw nsw i64 %polly.indvar761, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header764, label %vector.ph943

vector.ph943:                                     ; preds = %polly.loop_header758
  %broadcast.splatinsert950 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat951 = shufflevector <4 x i64> %broadcast.splatinsert950, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert952 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat953 = shufflevector <4 x i32> %broadcast.splatinsert952, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %vector.ph943
  %index944 = phi i64 [ 0, %vector.ph943 ], [ %index.next945, %vector.body941 ]
  %vec.ind948 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph943 ], [ %vec.ind.next949, %vector.body941 ]
  %196 = add nuw nsw <4 x i64> %vec.ind948, %broadcast.splat951
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat953, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !94, !noalias !96
  %index.next945 = add i64 %index944, 4
  %vec.ind.next949 = add <4 x i64> %vec.ind948, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next945, %190
  br i1 %208, label %polly.loop_exit766, label %vector.body941, !llvm.loop !99

polly.loop_exit766:                               ; preds = %vector.body941, %polly.loop_header764
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %exitcond905.not = icmp eq i64 %polly.indvar761, %188
  br i1 %exitcond905.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_header758, %polly.loop_header764
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_header764 ], [ 0, %polly.loop_header758 ]
  %209 = add nuw nsw i64 %polly.indvar767, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep770 = getelementptr i8, i8* %call, i64 %215
  %scevgep770771 = bitcast i8* %scevgep770 to double*
  store double %p_div33.i, double* %scevgep770771, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond901.not = icmp eq i64 %polly.indvar767, %192
  br i1 %exitcond901.not, label %polly.loop_exit766, label %polly.loop_header764, !llvm.loop !100

polly.loop_header773:                             ; preds = %polly.loop_exit754, %polly.loop_exit781
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 -1168)
  %216 = shl nsw i64 %polly.indvar776, 5
  %217 = add nsw i64 %smin894, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -32
  %exitcond897.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond897.not, label %polly.loop_header799, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_header773 ]
  %218 = mul nsw i64 %polly.indvar782, -32
  %smin957 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin957, 1000
  %smin890 = call i64 @llvm.smin.i64(i64 %indvars.iv888, i64 -968)
  %220 = shl nsw i64 %polly.indvar782, 5
  %221 = add nsw i64 %smin890, 999
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next889 = add nsw i64 %indvars.iv888, -32
  %exitcond896.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond896.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %polly.indvar788 = phi i64 [ 0, %polly.loop_header779 ], [ %polly.indvar_next789, %polly.loop_exit793 ]
  %222 = add nuw nsw i64 %polly.indvar788, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check958 = icmp eq i64 %219, 0
  br i1 %min.iters.check958, label %polly.loop_header791, label %vector.ph959

vector.ph959:                                     ; preds = %polly.loop_header785
  %broadcast.splatinsert968 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat969 = shufflevector <4 x i64> %broadcast.splatinsert968, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert970 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat971 = shufflevector <4 x i32> %broadcast.splatinsert970, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph959
  %index962 = phi i64 [ 0, %vector.ph959 ], [ %index.next963, %vector.body956 ]
  %vec.ind966 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph959 ], [ %vec.ind.next967, %vector.body956 ]
  %225 = add nuw nsw <4 x i64> %vec.ind966, %broadcast.splat969
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat971, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !98, !noalias !101
  %index.next963 = add i64 %index962, 4
  %vec.ind.next967 = add <4 x i64> %vec.ind966, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next963, %219
  br i1 %237, label %polly.loop_exit793, label %vector.body956, !llvm.loop !102

polly.loop_exit793:                               ; preds = %vector.body956, %polly.loop_header791
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond895.not = icmp eq i64 %polly.indvar788, %217
  br i1 %exitcond895.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_header785, %polly.loop_header791
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_header791 ], [ 0, %polly.loop_header785 ]
  %238 = add nuw nsw i64 %polly.indvar794, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep797 = getelementptr i8, i8* %call2, i64 %244
  %scevgep797798 = bitcast i8* %scevgep797 to double*
  store double %p_div12.i, double* %scevgep797798, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond891.not = icmp eq i64 %polly.indvar794, %221
  br i1 %exitcond891.not, label %polly.loop_exit793, label %polly.loop_header791, !llvm.loop !103

polly.loop_header799:                             ; preds = %polly.loop_exit781, %polly.loop_exit807
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781 ]
  %smin884 = call i64 @llvm.smin.i64(i64 %indvars.iv882, i64 -1168)
  %245 = shl nsw i64 %polly.indvar802, 5
  %246 = add nsw i64 %smin884, 1199
  br label %polly.loop_header805

polly.loop_exit807:                               ; preds = %polly.loop_exit813
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %exitcond887.not = icmp eq i64 %polly.indvar_next803, 38
  br i1 %exitcond887.not, label %init_array.exit, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_exit813, %polly.loop_header799
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_header799 ]
  %247 = mul nsw i64 %polly.indvar808, -32
  %smin975 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin975, 1000
  %smin880 = call i64 @llvm.smin.i64(i64 %indvars.iv878, i64 -968)
  %249 = shl nsw i64 %polly.indvar808, 5
  %250 = add nsw i64 %smin880, 999
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next879 = add nsw i64 %indvars.iv878, -32
  %exitcond886.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond886.not, label %polly.loop_exit807, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %polly.indvar814 = phi i64 [ 0, %polly.loop_header805 ], [ %polly.indvar_next815, %polly.loop_exit819 ]
  %251 = add nuw nsw i64 %polly.indvar814, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check976 = icmp eq i64 %248, 0
  br i1 %min.iters.check976, label %polly.loop_header817, label %vector.ph977

vector.ph977:                                     ; preds = %polly.loop_header811
  %broadcast.splatinsert986 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat987 = shufflevector <4 x i64> %broadcast.splatinsert986, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert988 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat989 = shufflevector <4 x i32> %broadcast.splatinsert988, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next981, %vector.body974 ]
  %vec.ind984 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph977 ], [ %vec.ind.next985, %vector.body974 ]
  %254 = add nuw nsw <4 x i64> %vec.ind984, %broadcast.splat987
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat989, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !97, !noalias !104
  %index.next981 = add i64 %index980, 4
  %vec.ind.next985 = add <4 x i64> %vec.ind984, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next981, %248
  br i1 %266, label %polly.loop_exit819, label %vector.body974, !llvm.loop !105

polly.loop_exit819:                               ; preds = %vector.body974, %polly.loop_header817
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %exitcond885.not = icmp eq i64 %polly.indvar814, %246
  br i1 %exitcond885.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_header811, %polly.loop_header817
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_header817 ], [ 0, %polly.loop_header811 ]
  %267 = add nuw nsw i64 %polly.indvar820, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep824 = getelementptr i8, i8* %call1, i64 %273
  %scevgep824825 = bitcast i8* %scevgep824 to double*
  store double %p_div.i, double* %scevgep824825, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond881.not = icmp eq i64 %polly.indvar820, %250
  br i1 %exitcond881.not, label %polly.loop_exit819, label %polly.loop_header817, !llvm.loop !106

polly.loop_header239.us.1:                        ; preds = %polly.loop_exit241, %polly.loop_exit247.loopexit.us.1
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit247.loopexit.us.1 ], [ 0, %polly.loop_exit241 ]
  %274 = add nuw nsw i64 %polly.indvar242.us.1, %110
  %275 = shl i64 %274, 3
  %polly.access.mul.Packed_MemRef_call2254.us.1 = mul nuw nsw i64 %274, 1200
  %polly.access.add.Packed_MemRef_call2255.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.1, %101
  %polly.access.Packed_MemRef_call2256.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.1
  %_p_scalar_257.us.1 = load double, double* %polly.access.Packed_MemRef_call2256.us.1, align 8
  %276 = add nuw nsw i64 %275, %102
  %scevgep262.us.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep262263.us.1 = bitcast i8* %scevgep262.us.1 to double*
  %_p_scalar_264.us.1 = load double, double* %scevgep262263.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.1

polly.loop_header245.us.1:                        ; preds = %polly.loop_header245.us.1, %polly.loop_header239.us.1
  %polly.indvar248.us.1 = phi i64 [ %polly.indvar_next249.us.1, %polly.loop_header245.us.1 ], [ 0, %polly.loop_header239.us.1 ]
  %277 = add nuw nsw i64 %polly.indvar248.us.1, %111
  %278 = mul nuw nsw i64 %277, 8000
  %279 = add nuw nsw i64 %278, %275
  %scevgep251.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep251252.us.1 = bitcast i8* %scevgep251.us.1 to double*
  %_p_scalar_253.us.1 = load double, double* %scevgep251252.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_257.us.1, %_p_scalar_253.us.1
  %polly.access.add.Packed_MemRef_call2259.us.1 = add nuw nsw i64 %277, %polly.access.mul.Packed_MemRef_call2254.us.1
  %polly.access.Packed_MemRef_call2260.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.1
  %_p_scalar_261.us.1 = load double, double* %polly.access.Packed_MemRef_call2260.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_264.us.1, %_p_scalar_261.us.1
  %280 = shl i64 %277, 3
  %281 = add nuw nsw i64 %280, %103
  %scevgep265.us.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep265266.us.1 = bitcast i8* %scevgep265.us.1 to double*
  %_p_scalar_267.us.1 = load double, double* %scevgep265266.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_267.us.1
  store double %p_add42.i118.us.1, double* %scevgep265266.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.1 = add nuw nsw i64 %polly.indvar248.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar248.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit247.loopexit.us.1, label %polly.loop_header245.us.1

polly.loop_exit247.loopexit.us.1:                 ; preds = %polly.loop_header245.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond835.1.not = icmp eq i64 %polly.indvar_next243.us.1, 20
  br i1 %exitcond835.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.us.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit247.loopexit.us.1, %polly.loop_exit241
  %indvars.iv.next834.1 = add nuw nsw i64 %indvars.iv.next834, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834.1, i64 79)
  %polly.loop_guard.2911 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.2911, label %polly.loop_header239.us.2, label %polly.loop_exit241.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_exit241.1, %polly.loop_exit247.loopexit.us.2
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit247.loopexit.us.2 ], [ 0, %polly.loop_exit241.1 ]
  %282 = add nuw nsw i64 %polly.indvar242.us.2, %110
  %283 = shl i64 %282, 3
  %polly.access.mul.Packed_MemRef_call2254.us.2 = mul nuw nsw i64 %282, 1200
  %polly.access.add.Packed_MemRef_call2255.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.2, %104
  %polly.access.Packed_MemRef_call2256.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.2
  %_p_scalar_257.us.2 = load double, double* %polly.access.Packed_MemRef_call2256.us.2, align 8
  %284 = add nuw nsw i64 %283, %105
  %scevgep262.us.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep262263.us.2 = bitcast i8* %scevgep262.us.2 to double*
  %_p_scalar_264.us.2 = load double, double* %scevgep262263.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.2

polly.loop_header245.us.2:                        ; preds = %polly.loop_header245.us.2, %polly.loop_header239.us.2
  %polly.indvar248.us.2 = phi i64 [ %polly.indvar_next249.us.2, %polly.loop_header245.us.2 ], [ 0, %polly.loop_header239.us.2 ]
  %285 = add nuw nsw i64 %polly.indvar248.us.2, %111
  %286 = mul nuw nsw i64 %285, 8000
  %287 = add nuw nsw i64 %286, %283
  %scevgep251.us.2 = getelementptr i8, i8* %call1, i64 %287
  %scevgep251252.us.2 = bitcast i8* %scevgep251.us.2 to double*
  %_p_scalar_253.us.2 = load double, double* %scevgep251252.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_257.us.2, %_p_scalar_253.us.2
  %polly.access.add.Packed_MemRef_call2259.us.2 = add nuw nsw i64 %285, %polly.access.mul.Packed_MemRef_call2254.us.2
  %polly.access.Packed_MemRef_call2260.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.2
  %_p_scalar_261.us.2 = load double, double* %polly.access.Packed_MemRef_call2260.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_264.us.2, %_p_scalar_261.us.2
  %288 = shl i64 %285, 3
  %289 = add nuw nsw i64 %288, %106
  %scevgep265.us.2 = getelementptr i8, i8* %call, i64 %289
  %scevgep265266.us.2 = bitcast i8* %scevgep265.us.2 to double*
  %_p_scalar_267.us.2 = load double, double* %scevgep265266.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_267.us.2
  store double %p_add42.i118.us.2, double* %scevgep265266.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.2 = add nuw nsw i64 %polly.indvar248.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar248.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit247.loopexit.us.2, label %polly.loop_header245.us.2

polly.loop_exit247.loopexit.us.2:                 ; preds = %polly.loop_header245.us.2
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond835.2.not = icmp eq i64 %polly.indvar_next243.us.2, 20
  br i1 %exitcond835.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.us.2

polly.loop_exit241.2:                             ; preds = %polly.loop_exit247.loopexit.us.2, %polly.loop_exit241.1
  %indvars.iv.next834.2 = or i64 %indvars.iv831, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next834.2, i64 79)
  %polly.loop_guard.3912 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.3912, label %polly.loop_header239.us.3, label %polly.loop_exit241.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_exit241.2, %polly.loop_exit247.loopexit.us.3
  %polly.indvar242.us.3 = phi i64 [ %polly.indvar_next243.us.3, %polly.loop_exit247.loopexit.us.3 ], [ 0, %polly.loop_exit241.2 ]
  %290 = add nuw nsw i64 %polly.indvar242.us.3, %110
  %291 = shl i64 %290, 3
  %polly.access.mul.Packed_MemRef_call2254.us.3 = mul nuw nsw i64 %290, 1200
  %polly.access.add.Packed_MemRef_call2255.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254.us.3, %107
  %polly.access.Packed_MemRef_call2256.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.us.3
  %_p_scalar_257.us.3 = load double, double* %polly.access.Packed_MemRef_call2256.us.3, align 8
  %292 = add nuw nsw i64 %291, %108
  %scevgep262.us.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep262263.us.3 = bitcast i8* %scevgep262.us.3 to double*
  %_p_scalar_264.us.3 = load double, double* %scevgep262263.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header245.us.3

polly.loop_header245.us.3:                        ; preds = %polly.loop_header245.us.3, %polly.loop_header239.us.3
  %polly.indvar248.us.3 = phi i64 [ %polly.indvar_next249.us.3, %polly.loop_header245.us.3 ], [ 0, %polly.loop_header239.us.3 ]
  %293 = add nuw nsw i64 %polly.indvar248.us.3, %111
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %291
  %scevgep251.us.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep251252.us.3 = bitcast i8* %scevgep251.us.3 to double*
  %_p_scalar_253.us.3 = load double, double* %scevgep251252.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_257.us.3, %_p_scalar_253.us.3
  %polly.access.add.Packed_MemRef_call2259.us.3 = add nuw nsw i64 %293, %polly.access.mul.Packed_MemRef_call2254.us.3
  %polly.access.Packed_MemRef_call2260.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us.3
  %_p_scalar_261.us.3 = load double, double* %polly.access.Packed_MemRef_call2260.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_264.us.3, %_p_scalar_261.us.3
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %109
  %scevgep265.us.3 = getelementptr i8, i8* %call, i64 %297
  %scevgep265266.us.3 = bitcast i8* %scevgep265.us.3 to double*
  %_p_scalar_267.us.3 = load double, double* %scevgep265266.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_267.us.3
  store double %p_add42.i118.us.3, double* %scevgep265266.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next249.us.3 = add nuw nsw i64 %polly.indvar248.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar248.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit247.loopexit.us.3, label %polly.loop_header245.us.3

polly.loop_exit247.loopexit.us.3:                 ; preds = %polly.loop_header245.us.3
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond835.3.not = icmp eq i64 %polly.indvar_next243.us.3, 20
  br i1 %exitcond835.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.us.3

polly.loop_exit241.3:                             ; preds = %polly.loop_exit247.loopexit.us.3, %polly.loop_exit241.2
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -80
  %exitcond837.not = icmp eq i64 %polly.indvar230, %97
  br i1 %exitcond837.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header413.us.1:                        ; preds = %polly.loop_exit415, %polly.loop_exit422.loopexit.us.1
  %polly.indvar416.us.1 = phi i64 [ %polly.indvar_next417.us.1, %polly.loop_exit422.loopexit.us.1 ], [ 0, %polly.loop_exit415 ]
  %298 = add nuw nsw i64 %polly.indvar416.us.1, %143
  %299 = shl i64 %298, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.1 = mul nuw nsw i64 %298, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.1, %134
  %polly.access.Packed_MemRef_call2273432.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.1
  %_p_scalar_433.us.1 = load double, double* %polly.access.Packed_MemRef_call2273432.us.1, align 8
  %300 = add nuw nsw i64 %299, %135
  %scevgep438.us.1 = getelementptr i8, i8* %call1, i64 %300
  %scevgep438439.us.1 = bitcast i8* %scevgep438.us.1 to double*
  %_p_scalar_440.us.1 = load double, double* %scevgep438439.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.1

polly.loop_header420.us.1:                        ; preds = %polly.loop_header420.us.1, %polly.loop_header413.us.1
  %polly.indvar424.us.1 = phi i64 [ %polly.indvar_next425.us.1, %polly.loop_header420.us.1 ], [ 0, %polly.loop_header413.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar424.us.1, %144
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %299
  %scevgep427.us.1 = getelementptr i8, i8* %call1, i64 %303
  %scevgep427428.us.1 = bitcast i8* %scevgep427.us.1 to double*
  %_p_scalar_429.us.1 = load double, double* %scevgep427428.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_433.us.1, %_p_scalar_429.us.1
  %polly.access.add.Packed_MemRef_call2273435.us.1 = add nuw nsw i64 %301, %polly.access.mul.Packed_MemRef_call2273430.us.1
  %polly.access.Packed_MemRef_call2273436.us.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2273436.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_440.us.1, %_p_scalar_437.us.1
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %136
  %scevgep441.us.1 = getelementptr i8, i8* %call, i64 %305
  %scevgep441442.us.1 = bitcast i8* %scevgep441.us.1 to double*
  %_p_scalar_443.us.1 = load double, double* %scevgep441442.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_443.us.1
  store double %p_add42.i79.us.1, double* %scevgep441442.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.1 = add nuw nsw i64 %polly.indvar424.us.1, 1
  %exitcond851.1.not = icmp eq i64 %polly.indvar424.us.1, %smin850.1
  br i1 %exitcond851.1.not, label %polly.loop_exit422.loopexit.us.1, label %polly.loop_header420.us.1

polly.loop_exit422.loopexit.us.1:                 ; preds = %polly.loop_header420.us.1
  %polly.indvar_next417.us.1 = add nuw nsw i64 %polly.indvar416.us.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next417.us.1, 20
  br i1 %exitcond852.1.not, label %polly.loop_exit415.1, label %polly.loop_header413.us.1

polly.loop_exit415.1:                             ; preds = %polly.loop_exit422.loopexit.us.1, %polly.loop_exit415
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv.next849, 1
  %smin850.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next849.1, i64 79)
  %polly.loop_guard423.2915 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard423.2915, label %polly.loop_header413.us.2, label %polly.loop_exit415.2

polly.loop_header413.us.2:                        ; preds = %polly.loop_exit415.1, %polly.loop_exit422.loopexit.us.2
  %polly.indvar416.us.2 = phi i64 [ %polly.indvar_next417.us.2, %polly.loop_exit422.loopexit.us.2 ], [ 0, %polly.loop_exit415.1 ]
  %306 = add nuw nsw i64 %polly.indvar416.us.2, %143
  %307 = shl i64 %306, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.2 = mul nuw nsw i64 %306, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.2, %137
  %polly.access.Packed_MemRef_call2273432.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.2
  %_p_scalar_433.us.2 = load double, double* %polly.access.Packed_MemRef_call2273432.us.2, align 8
  %308 = add nuw nsw i64 %307, %138
  %scevgep438.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep438439.us.2 = bitcast i8* %scevgep438.us.2 to double*
  %_p_scalar_440.us.2 = load double, double* %scevgep438439.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.2

polly.loop_header420.us.2:                        ; preds = %polly.loop_header420.us.2, %polly.loop_header413.us.2
  %polly.indvar424.us.2 = phi i64 [ %polly.indvar_next425.us.2, %polly.loop_header420.us.2 ], [ 0, %polly.loop_header413.us.2 ]
  %309 = add nuw nsw i64 %polly.indvar424.us.2, %144
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %307
  %scevgep427.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep427428.us.2 = bitcast i8* %scevgep427.us.2 to double*
  %_p_scalar_429.us.2 = load double, double* %scevgep427428.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_433.us.2, %_p_scalar_429.us.2
  %polly.access.add.Packed_MemRef_call2273435.us.2 = add nuw nsw i64 %309, %polly.access.mul.Packed_MemRef_call2273430.us.2
  %polly.access.Packed_MemRef_call2273436.us.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.2
  %_p_scalar_437.us.2 = load double, double* %polly.access.Packed_MemRef_call2273436.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_440.us.2, %_p_scalar_437.us.2
  %312 = shl i64 %309, 3
  %313 = add nuw nsw i64 %312, %139
  %scevgep441.us.2 = getelementptr i8, i8* %call, i64 %313
  %scevgep441442.us.2 = bitcast i8* %scevgep441.us.2 to double*
  %_p_scalar_443.us.2 = load double, double* %scevgep441442.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_443.us.2
  store double %p_add42.i79.us.2, double* %scevgep441442.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.2 = add nuw nsw i64 %polly.indvar424.us.2, 1
  %exitcond851.2.not = icmp eq i64 %polly.indvar424.us.2, %smin850.2
  br i1 %exitcond851.2.not, label %polly.loop_exit422.loopexit.us.2, label %polly.loop_header420.us.2

polly.loop_exit422.loopexit.us.2:                 ; preds = %polly.loop_header420.us.2
  %polly.indvar_next417.us.2 = add nuw nsw i64 %polly.indvar416.us.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next417.us.2, 20
  br i1 %exitcond852.2.not, label %polly.loop_exit415.2, label %polly.loop_header413.us.2

polly.loop_exit415.2:                             ; preds = %polly.loop_exit422.loopexit.us.2, %polly.loop_exit415.1
  %indvars.iv.next849.2 = or i64 %indvars.iv846, 3
  %smin850.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next849.2, i64 79)
  %polly.loop_guard423.3916 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard423.3916, label %polly.loop_header413.us.3, label %polly.loop_exit415.3

polly.loop_header413.us.3:                        ; preds = %polly.loop_exit415.2, %polly.loop_exit422.loopexit.us.3
  %polly.indvar416.us.3 = phi i64 [ %polly.indvar_next417.us.3, %polly.loop_exit422.loopexit.us.3 ], [ 0, %polly.loop_exit415.2 ]
  %314 = add nuw nsw i64 %polly.indvar416.us.3, %143
  %315 = shl i64 %314, 3
  %polly.access.mul.Packed_MemRef_call2273430.us.3 = mul nuw nsw i64 %314, 1200
  %polly.access.add.Packed_MemRef_call2273431.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273430.us.3, %140
  %polly.access.Packed_MemRef_call2273432.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273431.us.3
  %_p_scalar_433.us.3 = load double, double* %polly.access.Packed_MemRef_call2273432.us.3, align 8
  %316 = add nuw nsw i64 %315, %141
  %scevgep438.us.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep438439.us.3 = bitcast i8* %scevgep438.us.3 to double*
  %_p_scalar_440.us.3 = load double, double* %scevgep438439.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header420.us.3

polly.loop_header420.us.3:                        ; preds = %polly.loop_header420.us.3, %polly.loop_header413.us.3
  %polly.indvar424.us.3 = phi i64 [ %polly.indvar_next425.us.3, %polly.loop_header420.us.3 ], [ 0, %polly.loop_header413.us.3 ]
  %317 = add nuw nsw i64 %polly.indvar424.us.3, %144
  %318 = mul nuw nsw i64 %317, 8000
  %319 = add nuw nsw i64 %318, %315
  %scevgep427.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep427428.us.3 = bitcast i8* %scevgep427.us.3 to double*
  %_p_scalar_429.us.3 = load double, double* %scevgep427428.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_433.us.3, %_p_scalar_429.us.3
  %polly.access.add.Packed_MemRef_call2273435.us.3 = add nuw nsw i64 %317, %polly.access.mul.Packed_MemRef_call2273430.us.3
  %polly.access.Packed_MemRef_call2273436.us.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273435.us.3
  %_p_scalar_437.us.3 = load double, double* %polly.access.Packed_MemRef_call2273436.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_440.us.3, %_p_scalar_437.us.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %142
  %scevgep441.us.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep441442.us.3 = bitcast i8* %scevgep441.us.3 to double*
  %_p_scalar_443.us.3 = load double, double* %scevgep441442.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_443.us.3
  store double %p_add42.i79.us.3, double* %scevgep441442.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next425.us.3 = add nuw nsw i64 %polly.indvar424.us.3, 1
  %exitcond851.3.not = icmp eq i64 %polly.indvar424.us.3, %smin850.3
  br i1 %exitcond851.3.not, label %polly.loop_exit422.loopexit.us.3, label %polly.loop_header420.us.3

polly.loop_exit422.loopexit.us.3:                 ; preds = %polly.loop_header420.us.3
  %polly.indvar_next417.us.3 = add nuw nsw i64 %polly.indvar416.us.3, 1
  %exitcond852.3.not = icmp eq i64 %polly.indvar_next417.us.3, 20
  br i1 %exitcond852.3.not, label %polly.loop_exit415.3, label %polly.loop_header413.us.3

polly.loop_exit415.3:                             ; preds = %polly.loop_exit422.loopexit.us.3, %polly.loop_exit415.2
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -80
  %exitcond854.not = icmp eq i64 %polly.indvar404, %130
  br i1 %exitcond854.not, label %polly.loop_exit403, label %polly.loop_header401

polly.loop_header589.us.1:                        ; preds = %polly.loop_exit591, %polly.loop_exit598.loopexit.us.1
  %polly.indvar592.us.1 = phi i64 [ %polly.indvar_next593.us.1, %polly.loop_exit598.loopexit.us.1 ], [ 0, %polly.loop_exit591 ]
  %322 = add nuw nsw i64 %polly.indvar592.us.1, %176
  %323 = shl i64 %322, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.1 = mul nuw nsw i64 %322, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.1, %167
  %polly.access.Packed_MemRef_call2449608.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.1
  %_p_scalar_609.us.1 = load double, double* %polly.access.Packed_MemRef_call2449608.us.1, align 8
  %324 = add nuw nsw i64 %323, %168
  %scevgep614.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep614615.us.1 = bitcast i8* %scevgep614.us.1 to double*
  %_p_scalar_616.us.1 = load double, double* %scevgep614615.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.1

polly.loop_header596.us.1:                        ; preds = %polly.loop_header596.us.1, %polly.loop_header589.us.1
  %polly.indvar600.us.1 = phi i64 [ %polly.indvar_next601.us.1, %polly.loop_header596.us.1 ], [ 0, %polly.loop_header589.us.1 ]
  %325 = add nuw nsw i64 %polly.indvar600.us.1, %177
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %323
  %scevgep603.us.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep603604.us.1 = bitcast i8* %scevgep603.us.1 to double*
  %_p_scalar_605.us.1 = load double, double* %scevgep603604.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_609.us.1, %_p_scalar_605.us.1
  %polly.access.add.Packed_MemRef_call2449611.us.1 = add nuw nsw i64 %325, %polly.access.mul.Packed_MemRef_call2449606.us.1
  %polly.access.Packed_MemRef_call2449612.us.1 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.1
  %_p_scalar_613.us.1 = load double, double* %polly.access.Packed_MemRef_call2449612.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_616.us.1, %_p_scalar_613.us.1
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %169
  %scevgep617.us.1 = getelementptr i8, i8* %call, i64 %329
  %scevgep617618.us.1 = bitcast i8* %scevgep617.us.1 to double*
  %_p_scalar_619.us.1 = load double, double* %scevgep617618.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_619.us.1
  store double %p_add42.i.us.1, double* %scevgep617618.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.1 = add nuw nsw i64 %polly.indvar600.us.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar600.us.1, %smin867.1
  br i1 %exitcond868.1.not, label %polly.loop_exit598.loopexit.us.1, label %polly.loop_header596.us.1

polly.loop_exit598.loopexit.us.1:                 ; preds = %polly.loop_header596.us.1
  %polly.indvar_next593.us.1 = add nuw nsw i64 %polly.indvar592.us.1, 1
  %exitcond869.1.not = icmp eq i64 %polly.indvar_next593.us.1, 20
  br i1 %exitcond869.1.not, label %polly.loop_exit591.1, label %polly.loop_header589.us.1

polly.loop_exit591.1:                             ; preds = %polly.loop_exit598.loopexit.us.1, %polly.loop_exit591
  %indvars.iv.next866.1 = add nuw nsw i64 %indvars.iv.next866, 1
  %smin867.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next866.1, i64 79)
  %polly.loop_guard599.2919 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard599.2919, label %polly.loop_header589.us.2, label %polly.loop_exit591.2

polly.loop_header589.us.2:                        ; preds = %polly.loop_exit591.1, %polly.loop_exit598.loopexit.us.2
  %polly.indvar592.us.2 = phi i64 [ %polly.indvar_next593.us.2, %polly.loop_exit598.loopexit.us.2 ], [ 0, %polly.loop_exit591.1 ]
  %330 = add nuw nsw i64 %polly.indvar592.us.2, %176
  %331 = shl i64 %330, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.2 = mul nuw nsw i64 %330, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.2, %170
  %polly.access.Packed_MemRef_call2449608.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.2
  %_p_scalar_609.us.2 = load double, double* %polly.access.Packed_MemRef_call2449608.us.2, align 8
  %332 = add nuw nsw i64 %331, %171
  %scevgep614.us.2 = getelementptr i8, i8* %call1, i64 %332
  %scevgep614615.us.2 = bitcast i8* %scevgep614.us.2 to double*
  %_p_scalar_616.us.2 = load double, double* %scevgep614615.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.2

polly.loop_header596.us.2:                        ; preds = %polly.loop_header596.us.2, %polly.loop_header589.us.2
  %polly.indvar600.us.2 = phi i64 [ %polly.indvar_next601.us.2, %polly.loop_header596.us.2 ], [ 0, %polly.loop_header589.us.2 ]
  %333 = add nuw nsw i64 %polly.indvar600.us.2, %177
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %331
  %scevgep603.us.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep603604.us.2 = bitcast i8* %scevgep603.us.2 to double*
  %_p_scalar_605.us.2 = load double, double* %scevgep603604.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_609.us.2, %_p_scalar_605.us.2
  %polly.access.add.Packed_MemRef_call2449611.us.2 = add nuw nsw i64 %333, %polly.access.mul.Packed_MemRef_call2449606.us.2
  %polly.access.Packed_MemRef_call2449612.us.2 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.2
  %_p_scalar_613.us.2 = load double, double* %polly.access.Packed_MemRef_call2449612.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_616.us.2, %_p_scalar_613.us.2
  %336 = shl i64 %333, 3
  %337 = add nuw nsw i64 %336, %172
  %scevgep617.us.2 = getelementptr i8, i8* %call, i64 %337
  %scevgep617618.us.2 = bitcast i8* %scevgep617.us.2 to double*
  %_p_scalar_619.us.2 = load double, double* %scevgep617618.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_619.us.2
  store double %p_add42.i.us.2, double* %scevgep617618.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.2 = add nuw nsw i64 %polly.indvar600.us.2, 1
  %exitcond868.2.not = icmp eq i64 %polly.indvar600.us.2, %smin867.2
  br i1 %exitcond868.2.not, label %polly.loop_exit598.loopexit.us.2, label %polly.loop_header596.us.2

polly.loop_exit598.loopexit.us.2:                 ; preds = %polly.loop_header596.us.2
  %polly.indvar_next593.us.2 = add nuw nsw i64 %polly.indvar592.us.2, 1
  %exitcond869.2.not = icmp eq i64 %polly.indvar_next593.us.2, 20
  br i1 %exitcond869.2.not, label %polly.loop_exit591.2, label %polly.loop_header589.us.2

polly.loop_exit591.2:                             ; preds = %polly.loop_exit598.loopexit.us.2, %polly.loop_exit591.1
  %indvars.iv.next866.2 = or i64 %indvars.iv863, 3
  %smin867.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next866.2, i64 79)
  %polly.loop_guard599.3920 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard599.3920, label %polly.loop_header589.us.3, label %polly.loop_exit591.3

polly.loop_header589.us.3:                        ; preds = %polly.loop_exit591.2, %polly.loop_exit598.loopexit.us.3
  %polly.indvar592.us.3 = phi i64 [ %polly.indvar_next593.us.3, %polly.loop_exit598.loopexit.us.3 ], [ 0, %polly.loop_exit591.2 ]
  %338 = add nuw nsw i64 %polly.indvar592.us.3, %176
  %339 = shl i64 %338, 3
  %polly.access.mul.Packed_MemRef_call2449606.us.3 = mul nuw nsw i64 %338, 1200
  %polly.access.add.Packed_MemRef_call2449607.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2449606.us.3, %173
  %polly.access.Packed_MemRef_call2449608.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449607.us.3
  %_p_scalar_609.us.3 = load double, double* %polly.access.Packed_MemRef_call2449608.us.3, align 8
  %340 = add nuw nsw i64 %339, %174
  %scevgep614.us.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep614615.us.3 = bitcast i8* %scevgep614.us.3 to double*
  %_p_scalar_616.us.3 = load double, double* %scevgep614615.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header596.us.3

polly.loop_header596.us.3:                        ; preds = %polly.loop_header596.us.3, %polly.loop_header589.us.3
  %polly.indvar600.us.3 = phi i64 [ %polly.indvar_next601.us.3, %polly.loop_header596.us.3 ], [ 0, %polly.loop_header589.us.3 ]
  %341 = add nuw nsw i64 %polly.indvar600.us.3, %177
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %339
  %scevgep603.us.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep603604.us.3 = bitcast i8* %scevgep603.us.3 to double*
  %_p_scalar_605.us.3 = load double, double* %scevgep603604.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_609.us.3, %_p_scalar_605.us.3
  %polly.access.add.Packed_MemRef_call2449611.us.3 = add nuw nsw i64 %341, %polly.access.mul.Packed_MemRef_call2449606.us.3
  %polly.access.Packed_MemRef_call2449612.us.3 = getelementptr double, double* %Packed_MemRef_call2449, i64 %polly.access.add.Packed_MemRef_call2449611.us.3
  %_p_scalar_613.us.3 = load double, double* %polly.access.Packed_MemRef_call2449612.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_616.us.3, %_p_scalar_613.us.3
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %175
  %scevgep617.us.3 = getelementptr i8, i8* %call, i64 %345
  %scevgep617618.us.3 = bitcast i8* %scevgep617.us.3 to double*
  %_p_scalar_619.us.3 = load double, double* %scevgep617618.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_619.us.3
  store double %p_add42.i.us.3, double* %scevgep617618.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next601.us.3 = add nuw nsw i64 %polly.indvar600.us.3, 1
  %exitcond868.3.not = icmp eq i64 %polly.indvar600.us.3, %smin867.3
  br i1 %exitcond868.3.not, label %polly.loop_exit598.loopexit.us.3, label %polly.loop_header596.us.3

polly.loop_exit598.loopexit.us.3:                 ; preds = %polly.loop_header596.us.3
  %polly.indvar_next593.us.3 = add nuw nsw i64 %polly.indvar592.us.3, 1
  %exitcond869.3.not = icmp eq i64 %polly.indvar_next593.us.3, 20
  br i1 %exitcond869.3.not, label %polly.loop_exit591.3, label %polly.loop_header589.us.3

polly.loop_exit591.3:                             ; preds = %polly.loop_exit598.loopexit.us.3, %polly.loop_exit591.2
  %polly.indvar_next581 = add nuw nsw i64 %polly.indvar580, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -80
  %exitcond871.not = icmp eq i64 %polly.indvar580, %163
  br i1 %exitcond871.not, label %polly.loop_exit579, label %polly.loop_header577
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
!25 = !{!"llvm.loop.tile.size", i32 80}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
