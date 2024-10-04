; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7683.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7683.c"
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
  %call778 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1639 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2640 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1639, %call2
  %polly.access.call2659 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2659, %call1
  %2 = or i1 %0, %1
  %polly.access.call679 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call679, %call2
  %4 = icmp ule i8* %polly.access.call2659, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call679, %call1
  %8 = icmp ule i8* %polly.access.call1639, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header752, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep949 = getelementptr i8, i8* %call2, i64 %12
  %scevgep948 = getelementptr i8, i8* %call2, i64 %11
  %scevgep947 = getelementptr i8, i8* %call1, i64 %12
  %scevgep946 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep946, %scevgep949
  %bound1 = icmp ult i8* %scevgep948, %scevgep947
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
  br i1 %exitcond18.not.i, label %vector.ph953, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph953:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert960 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat961 = shufflevector <4 x i64> %broadcast.splatinsert960, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %vector.ph953
  %index954 = phi i64 [ 0, %vector.ph953 ], [ %index.next955, %vector.body952 ]
  %vec.ind958 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph953 ], [ %vec.ind.next959, %vector.body952 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind958, %broadcast.splat961
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv7.i, i64 %index954
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next955 = add i64 %index954, 4
  %vec.ind.next959 = add <4 x i64> %vec.ind958, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next955, 1200
  br i1 %40, label %for.inc41.i, label %vector.body952, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body952
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph953, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1016 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1016, label %for.body3.i46.preheader1090, label %vector.ph1017

vector.ph1017:                                    ; preds = %for.body3.i46.preheader
  %n.vec1019 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1015 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %index1020
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1021 = add i64 %index1020, 4
  %46 = icmp eq i64 %index.next1021, %n.vec1019
  br i1 %46, label %middle.block1013, label %vector.body1015, !llvm.loop !18

middle.block1013:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %indvars.iv21.i, %n.vec1019
  br i1 %cmp.n1023, label %for.inc6.i, label %for.body3.i46.preheader1090

for.body3.i46.preheader1090:                      ; preds = %for.body3.i46.preheader, %middle.block1013
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1019, %middle.block1013 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1090, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1090 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1013, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting451
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1039 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1039, label %for.body3.i60.preheader1089, label %vector.ph1040

vector.ph1040:                                    ; preds = %for.body3.i60.preheader
  %n.vec1042 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1044, %vector.body1038 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1043
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1047 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1047, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1044 = add i64 %index1043, 4
  %57 = icmp eq i64 %index.next1044, %n.vec1042
  br i1 %57, label %middle.block1036, label %vector.body1038, !llvm.loop !54

middle.block1036:                                 ; preds = %vector.body1038
  %cmp.n1046 = icmp eq i64 %indvars.iv21.i52, %n.vec1042
  br i1 %cmp.n1046, label %for.inc6.i63, label %for.body3.i60.preheader1089

for.body3.i60.preheader1089:                      ; preds = %for.body3.i60.preheader, %middle.block1036
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1042, %middle.block1036 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1089, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1089 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1036, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1065 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1065, label %for.body3.i99.preheader1088, label %vector.ph1066

vector.ph1066:                                    ; preds = %for.body3.i99.preheader
  %n.vec1068 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %vector.ph1066
  %index1069 = phi i64 [ 0, %vector.ph1066 ], [ %index.next1070, %vector.body1064 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1069
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1073 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1073, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1070 = add i64 %index1069, 4
  %68 = icmp eq i64 %index.next1070, %n.vec1068
  br i1 %68, label %middle.block1062, label %vector.body1064, !llvm.loop !56

middle.block1062:                                 ; preds = %vector.body1064
  %cmp.n1072 = icmp eq i64 %indvars.iv21.i91, %n.vec1068
  br i1 %cmp.n1072, label %for.inc6.i102, label %for.body3.i99.preheader1088

for.body3.i99.preheader1088:                      ; preds = %for.body3.i99.preheader, %middle.block1062
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1068, %middle.block1062 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1088, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1088 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1062, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1077 = phi i64 [ %indvar.next1078, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1077, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1079 = icmp ult i64 %88, 4
  br i1 %min.iters.check1079, label %polly.loop_header191.preheader, label %vector.ph1080

vector.ph1080:                                    ; preds = %polly.loop_header
  %n.vec1082 = and i64 %88, -4
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1080
  %index1083 = phi i64 [ 0, %vector.ph1080 ], [ %index.next1084, %vector.body1076 ]
  %90 = shl nuw nsw i64 %index1083, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1087 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1087, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1084 = add i64 %index1083, 4
  %95 = icmp eq i64 %index.next1084, %n.vec1082
  br i1 %95, label %middle.block1074, label %vector.body1076, !llvm.loop !68

middle.block1074:                                 ; preds = %vector.body1076
  %cmp.n1086 = icmp eq i64 %88, %n.vec1082
  br i1 %cmp.n1086, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1074
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1082, %middle.block1074 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1074
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1078 = add i64 %indvar1077, 1
  br i1 %exitcond857.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond856.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond855.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond854.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit223 ], [ 27, %polly.loop_exit207 ]
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv848, 25
  %98 = sub nsw i64 %indvars.iv846, %97
  %smin850 = call i64 @llvm.smin.i64(i64 %98, i64 21)
  %99 = mul nsw i64 %polly.indvar218, -96
  %100 = icmp slt i64 %99, -1104
  %101 = select i1 %100, i64 %99, i64 -1104
  %102 = add nsw i64 %101, 1199
  %103 = mul nuw nsw i64 %polly.indvar218, 96
  %104 = add nsw i64 %smin850, 2
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 96
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 2
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 2
  %exitcond853.not = icmp eq i64 %polly.indvar_next219, 13
  br i1 %exitcond853.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  %105 = mul nuw nsw i64 %polly.indvar224, 50
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next225, 20
  br i1 %exitcond852.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit235 ], [ %indvars.iv839, %polly.loop_header221 ]
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %106 = mul nuw nsw i64 %polly.indvar230, 50
  %107 = add nsw i64 %106, %99
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard.not = icmp sgt i64 %109, %102
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv837, i64 0)
  %110 = add i64 %smax, %indvars.iv841
  %111 = sub nsw i64 %103, %106
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, 50
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -50
  %exitcond851.not = icmp eq i64 %polly.indvar230, %104
  br i1 %exitcond851.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv843 = phi i64 [ %110, %polly.loop_header233.preheader ], [ %indvars.iv.next844, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %109, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 49)
  %112 = add nsw i64 %polly.indvar236, %111
  %polly.loop_guard249941 = icmp sgt i64 %112, -1
  %113 = add nuw nsw i64 %polly.indvar236, %103
  %114 = mul i64 %113, 8000
  %115 = mul i64 %113, 9600
  br i1 %polly.loop_guard249941, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit248.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.loopexit.us ], [ 0, %polly.loop_header233 ]
  %116 = add nuw nsw i64 %polly.indvar242.us, %105
  %117 = shl i64 %116, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %116, 1200
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %113
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %118 = add i64 %117, %114
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us ]
  %119 = add nuw nsw i64 %polly.indvar250.us, %106
  %120 = mul nuw nsw i64 %119, 8000
  %121 = add nuw nsw i64 %120, %117
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %121
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %119, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %122 = shl i64 %119, 3
  %123 = add i64 %122, %115
  %scevgep267.us = getelementptr i8, i8* %call, i64 %123
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit248.loopexit.us, label %polly.loop_header246.us

polly.loop_exit248.loopexit.us:                   ; preds = %polly.loop_header246.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next243.us, 50
  br i1 %exitcond845.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit248.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %102
  %indvars.iv.next844 = add i64 %indvars.iv843, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit398
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1051 = phi i64 [ %indvar.next1052, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %124 = add i64 %indvar1051, 1
  %125 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1053 = icmp ult i64 %124, 4
  br i1 %min.iters.check1053, label %polly.loop_header364.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header358
  %n.vec1056 = and i64 %124, -4
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1058, %vector.body1050 ]
  %126 = shl nuw nsw i64 %index1057, 3
  %127 = getelementptr i8, i8* %scevgep370, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1061 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !73, !noalias !75
  %129 = fmul fast <4 x double> %wide.load1061, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !73, !noalias !75
  %index.next1058 = add i64 %index1057, 4
  %131 = icmp eq i64 %index.next1058, %n.vec1056
  br i1 %131, label %middle.block1048, label %vector.body1050, !llvm.loop !79

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1060 = icmp eq i64 %124, %n.vec1056
  br i1 %cmp.n1060, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1048
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1056, %middle.block1048 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1048
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1052 = add i64 %indvar1051, 1
  br i1 %exitcond883.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %132
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond882.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !80

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond881.not, label %polly.loop_header390, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %polly.access.mul.call2387 = mul nuw nsw i64 %polly.indvar383, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next384, 1200
  br i1 %exitcond880.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit382, %polly.loop_exit398
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit398 ], [ 27, %polly.loop_exit382 ]
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %133 = udiv i64 %indvars.iv874, 25
  %134 = sub nsw i64 %indvars.iv872, %133
  %smin876 = call i64 @llvm.smin.i64(i64 %134, i64 21)
  %135 = mul nsw i64 %polly.indvar393, -96
  %136 = icmp slt i64 %135, -1104
  %137 = select i1 %136, i64 %135, i64 -1104
  %138 = add nsw i64 %137, 1199
  %139 = mul nuw nsw i64 %polly.indvar393, 96
  %140 = add nsw i64 %smin876, 2
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -96
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 96
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 2
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 2
  %exitcond879.not = icmp eq i64 %polly.indvar_next394, 13
  br i1 %exitcond879.not, label %polly.exiting273, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_exit405 ]
  %141 = mul nuw nsw i64 %polly.indvar399, 50
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit412
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next400, 20
  br i1 %exitcond878.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_exit412, %polly.loop_header396
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit412 ], [ %indvars.iv863, %polly.loop_header396 ]
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit412 ], [ %indvars.iv858, %polly.loop_header396 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit412 ], [ 0, %polly.loop_header396 ]
  %142 = mul nuw nsw i64 %polly.indvar406, 50
  %143 = add nsw i64 %142, %135
  %144 = icmp sgt i64 %143, 0
  %145 = select i1 %144, i64 %143, i64 0
  %polly.loop_guard413.not = icmp sgt i64 %145, %138
  br i1 %polly.loop_guard413.not, label %polly.loop_exit412, label %polly.loop_header410.preheader

polly.loop_header410.preheader:                   ; preds = %polly.loop_header403
  %smax862 = call i64 @llvm.smax.i64(i64 %indvars.iv860, i64 0)
  %146 = add i64 %smax862, %indvars.iv865
  %147 = sub nsw i64 %139, %142
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, 50
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -50
  %exitcond877.not = icmp eq i64 %polly.indvar406, %140
  br i1 %exitcond877.not, label %polly.loop_exit405, label %polly.loop_header403

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit419
  %indvars.iv867 = phi i64 [ %146, %polly.loop_header410.preheader ], [ %indvars.iv.next868, %polly.loop_exit419 ]
  %polly.indvar414 = phi i64 [ %145, %polly.loop_header410.preheader ], [ %polly.indvar_next415, %polly.loop_exit419 ]
  %smin869 = call i64 @llvm.smin.i64(i64 %indvars.iv867, i64 49)
  %148 = add nsw i64 %polly.indvar414, %147
  %polly.loop_guard427942 = icmp sgt i64 %148, -1
  %149 = add nuw nsw i64 %polly.indvar414, %139
  %150 = mul i64 %149, 8000
  %151 = mul i64 %149, 9600
  br i1 %polly.loop_guard427942, label %polly.loop_header417.us, label %polly.loop_exit419

polly.loop_header417.us:                          ; preds = %polly.loop_header410, %polly.loop_exit426.loopexit.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_exit426.loopexit.us ], [ 0, %polly.loop_header410 ]
  %152 = add nuw nsw i64 %polly.indvar420.us, %141
  %153 = shl i64 %152, 3
  %polly.access.mul.Packed_MemRef_call2275434.us = mul nuw nsw i64 %152, 1200
  %polly.access.add.Packed_MemRef_call2275435.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us, %149
  %polly.access.Packed_MemRef_call2275436.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2275436.us, align 8
  %154 = add i64 %153, %150
  %scevgep442.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep442443.us = bitcast i8* %scevgep442.us to double*
  %_p_scalar_444.us = load double, double* %scevgep442443.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header424.us

polly.loop_header424.us:                          ; preds = %polly.loop_header417.us, %polly.loop_header424.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_header424.us ], [ 0, %polly.loop_header417.us ]
  %155 = add nuw nsw i64 %polly.indvar428.us, %142
  %156 = mul nuw nsw i64 %155, 8000
  %157 = add nuw nsw i64 %156, %153
  %scevgep431.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep431432.us = bitcast i8* %scevgep431.us to double*
  %_p_scalar_433.us = load double, double* %scevgep431432.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_437.us, %_p_scalar_433.us
  %polly.access.add.Packed_MemRef_call2275439.us = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call2275434.us
  %polly.access.Packed_MemRef_call2275440.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2275440.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_444.us, %_p_scalar_441.us
  %158 = shl i64 %155, 3
  %159 = add i64 %158, %151
  %scevgep445.us = getelementptr i8, i8* %call, i64 %159
  %scevgep445446.us = bitcast i8* %scevgep445.us to double*
  %_p_scalar_447.us = load double, double* %scevgep445446.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_447.us
  store double %p_add42.i79.us, double* %scevgep445446.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond870.not = icmp eq i64 %polly.indvar428.us, %smin869
  br i1 %exitcond870.not, label %polly.loop_exit426.loopexit.us, label %polly.loop_header424.us

polly.loop_exit426.loopexit.us:                   ; preds = %polly.loop_header424.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next421.us, 50
  br i1 %exitcond871.not, label %polly.loop_exit419, label %polly.loop_header417.us

polly.loop_exit419:                               ; preds = %polly.loop_exit426.loopexit.us, %polly.loop_header410
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %polly.loop_cond416.not.not = icmp ult i64 %polly.indvar414, %138
  %indvars.iv.next868 = add i64 %indvars.iv867, 1
  br i1 %polly.loop_cond416.not.not, label %polly.loop_header410, label %polly.loop_exit412

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit576
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar539, 9600
  %scevgep548 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1027 = icmp ult i64 %160, 4
  br i1 %min.iters.check1027, label %polly.loop_header542.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %polly.loop_header536
  %n.vec1030 = and i64 %160, -4
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1026 ]
  %162 = shl nuw nsw i64 %index1031, 3
  %163 = getelementptr i8, i8* %scevgep548, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !83, !noalias !85
  %165 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !83, !noalias !85
  %index.next1032 = add i64 %index1031, 4
  %167 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %167, label %middle.block1024, label %vector.body1026, !llvm.loop !89

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1034 = icmp eq i64 %160, %n.vec1030
  br i1 %cmp.n1034, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1024
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1030, %middle.block1024 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1024
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next540, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond909.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %168
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond908.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !90

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_exit560 ], [ 0, %polly.loop_header552.preheader ]
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar555, 1200
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_header558
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next556, 1000
  br i1 %exitcond907.not, label %polly.loop_header568, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_header558, %polly.loop_header552
  %polly.indvar561 = phi i64 [ 0, %polly.loop_header552 ], [ %polly.indvar_next562, %polly.loop_header558 ]
  %polly.access.mul.call2565 = mul nuw nsw i64 %polly.indvar561, 1000
  %polly.access.add.call2566 = add nuw nsw i64 %polly.access.mul.call2565, %polly.indvar555
  %polly.access.call2567 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2566
  %polly.access.call2567.load = load double, double* %polly.access.call2567, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar561, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2567.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next562, 1200
  br i1 %exitcond906.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header568:                             ; preds = %polly.loop_exit560, %polly.loop_exit576
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit576 ], [ 27, %polly.loop_exit560 ]
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_exit576 ], [ 0, %polly.loop_exit560 ]
  %169 = udiv i64 %indvars.iv900, 25
  %170 = sub nsw i64 %indvars.iv898, %169
  %smin902 = call i64 @llvm.smin.i64(i64 %170, i64 21)
  %171 = mul nsw i64 %polly.indvar571, -96
  %172 = icmp slt i64 %171, -1104
  %173 = select i1 %172, i64 %171, i64 -1104
  %174 = add nsw i64 %173, 1199
  %175 = mul nuw nsw i64 %polly.indvar571, 96
  %176 = add nsw i64 %smin902, 2
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %indvars.iv.next885 = add nsw i64 %indvars.iv884, -96
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 96
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 2
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 2
  %exitcond905.not = icmp eq i64 %polly.indvar_next572, 13
  br i1 %exitcond905.not, label %polly.exiting451, label %polly.loop_header568

polly.loop_header574:                             ; preds = %polly.loop_exit583, %polly.loop_header568
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header568 ], [ %polly.indvar_next578, %polly.loop_exit583 ]
  %177 = mul nuw nsw i64 %polly.indvar577, 50
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit590
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next578, 20
  br i1 %exitcond904.not, label %polly.loop_exit576, label %polly.loop_header574

polly.loop_header581:                             ; preds = %polly.loop_exit590, %polly.loop_header574
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit590 ], [ %indvars.iv889, %polly.loop_header574 ]
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit590 ], [ %indvars.iv884, %polly.loop_header574 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit590 ], [ 0, %polly.loop_header574 ]
  %178 = mul nuw nsw i64 %polly.indvar584, 50
  %179 = add nsw i64 %178, %171
  %180 = icmp sgt i64 %179, 0
  %181 = select i1 %180, i64 %179, i64 0
  %polly.loop_guard591.not = icmp sgt i64 %181, %174
  br i1 %polly.loop_guard591.not, label %polly.loop_exit590, label %polly.loop_header588.preheader

polly.loop_header588.preheader:                   ; preds = %polly.loop_header581
  %smax888 = call i64 @llvm.smax.i64(i64 %indvars.iv886, i64 0)
  %182 = add i64 %smax888, %indvars.iv891
  %183 = sub nsw i64 %175, %178
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_exit597, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, 50
  %indvars.iv.next892 = add nsw i64 %indvars.iv891, -50
  %exitcond903.not = icmp eq i64 %polly.indvar584, %176
  br i1 %exitcond903.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_exit597
  %indvars.iv893 = phi i64 [ %182, %polly.loop_header588.preheader ], [ %indvars.iv.next894, %polly.loop_exit597 ]
  %polly.indvar592 = phi i64 [ %181, %polly.loop_header588.preheader ], [ %polly.indvar_next593, %polly.loop_exit597 ]
  %smin895 = call i64 @llvm.smin.i64(i64 %indvars.iv893, i64 49)
  %184 = add nsw i64 %polly.indvar592, %183
  %polly.loop_guard605943 = icmp sgt i64 %184, -1
  %185 = add nuw nsw i64 %polly.indvar592, %175
  %186 = mul i64 %185, 8000
  %187 = mul i64 %185, 9600
  br i1 %polly.loop_guard605943, label %polly.loop_header595.us, label %polly.loop_exit597

polly.loop_header595.us:                          ; preds = %polly.loop_header588, %polly.loop_exit604.loopexit.us
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_exit604.loopexit.us ], [ 0, %polly.loop_header588 ]
  %188 = add nuw nsw i64 %polly.indvar598.us, %177
  %189 = shl i64 %188, 3
  %polly.access.mul.Packed_MemRef_call2453612.us = mul nuw nsw i64 %188, 1200
  %polly.access.add.Packed_MemRef_call2453613.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us, %185
  %polly.access.Packed_MemRef_call2453614.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us
  %_p_scalar_615.us = load double, double* %polly.access.Packed_MemRef_call2453614.us, align 8
  %190 = add i64 %189, %186
  %scevgep620.us = getelementptr i8, i8* %call1, i64 %190
  %scevgep620621.us = bitcast i8* %scevgep620.us to double*
  %_p_scalar_622.us = load double, double* %scevgep620621.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header602.us

polly.loop_header602.us:                          ; preds = %polly.loop_header595.us, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header595.us ]
  %191 = add nuw nsw i64 %polly.indvar606.us, %178
  %192 = mul nuw nsw i64 %191, 8000
  %193 = add nuw nsw i64 %192, %189
  %scevgep609.us = getelementptr i8, i8* %call1, i64 %193
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_615.us, %_p_scalar_611.us
  %polly.access.add.Packed_MemRef_call2453617.us = add nuw nsw i64 %191, %polly.access.mul.Packed_MemRef_call2453612.us
  %polly.access.Packed_MemRef_call2453618.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us
  %_p_scalar_619.us = load double, double* %polly.access.Packed_MemRef_call2453618.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_622.us, %_p_scalar_619.us
  %194 = shl i64 %191, 3
  %195 = add i64 %194, %187
  %scevgep623.us = getelementptr i8, i8* %call, i64 %195
  %scevgep623624.us = bitcast i8* %scevgep623.us to double*
  %_p_scalar_625.us = load double, double* %scevgep623624.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_625.us
  store double %p_add42.i.us, double* %scevgep623624.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond896.not = icmp eq i64 %polly.indvar606.us, %smin895
  br i1 %exitcond896.not, label %polly.loop_exit604.loopexit.us, label %polly.loop_header602.us

polly.loop_exit604.loopexit.us:                   ; preds = %polly.loop_header602.us
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next599.us, 50
  br i1 %exitcond897.not, label %polly.loop_exit597, label %polly.loop_header595.us

polly.loop_exit597:                               ; preds = %polly.loop_exit604.loopexit.us, %polly.loop_header588
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %polly.loop_cond594.not.not = icmp ult i64 %polly.indvar592, %174
  %indvars.iv.next894 = add i64 %indvars.iv893, 1
  br i1 %polly.loop_cond594.not.not, label %polly.loop_header588, label %polly.loop_exit590

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit760 ], [ 0, %entry ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %smin936 = call i64 @llvm.smin.i64(i64 %indvars.iv934, i64 -1168)
  %196 = shl nsw i64 %polly.indvar755, 5
  %197 = add nsw i64 %smin936, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -32
  %exitcond939.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond939.not, label %polly.loop_header779, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %198 = mul nsw i64 %polly.indvar761, -32
  %smin965 = call i64 @llvm.smin.i64(i64 %198, i64 -1168)
  %199 = add nsw i64 %smin965, 1200
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %200 = shl nsw i64 %polly.indvar761, 5
  %201 = add nsw i64 %smin932, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond938.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond938.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %polly.indvar767 = phi i64 [ 0, %polly.loop_header758 ], [ %polly.indvar_next768, %polly.loop_exit772 ]
  %202 = add nuw nsw i64 %polly.indvar767, %196
  %203 = trunc i64 %202 to i32
  %204 = mul nuw nsw i64 %202, 9600
  %min.iters.check = icmp eq i64 %199, 0
  br i1 %min.iters.check, label %polly.loop_header770, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header764
  %broadcast.splatinsert973 = insertelement <4 x i64> poison, i64 %200, i32 0
  %broadcast.splat974 = shufflevector <4 x i64> %broadcast.splatinsert973, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph966
  %index967 = phi i64 [ 0, %vector.ph966 ], [ %index.next968, %vector.body964 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next972, %vector.body964 ]
  %205 = add nuw nsw <4 x i64> %vec.ind971, %broadcast.splat974
  %206 = trunc <4 x i64> %205 to <4 x i32>
  %207 = mul <4 x i32> %broadcast.splat976, %206
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 1200, i32 1200, i32 1200, i32 1200>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %212 = extractelement <4 x i64> %205, i32 0
  %213 = shl i64 %212, 3
  %214 = add nuw nsw i64 %213, %204
  %215 = getelementptr i8, i8* %call, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %211, <4 x double>* %216, align 8, !alias.scope !93, !noalias !95
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %217 = icmp eq i64 %index.next968, %199
  br i1 %217, label %polly.loop_exit772, label %vector.body964, !llvm.loop !98

polly.loop_exit772:                               ; preds = %vector.body964, %polly.loop_header770
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond937.not = icmp eq i64 %polly.indvar767, %197
  br i1 %exitcond937.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_header764, %polly.loop_header770
  %polly.indvar773 = phi i64 [ %polly.indvar_next774, %polly.loop_header770 ], [ 0, %polly.loop_header764 ]
  %218 = add nuw nsw i64 %polly.indvar773, %200
  %219 = trunc i64 %218 to i32
  %220 = mul i32 %219, %203
  %221 = add i32 %220, 3
  %222 = urem i32 %221, 1200
  %p_conv31.i = sitofp i32 %222 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %223 = shl i64 %218, 3
  %224 = add nuw nsw i64 %223, %204
  %scevgep776 = getelementptr i8, i8* %call, i64 %224
  %scevgep776777 = bitcast i8* %scevgep776 to double*
  store double %p_div33.i, double* %scevgep776777, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond933.not = icmp eq i64 %polly.indvar773, %201
  br i1 %exitcond933.not, label %polly.loop_exit772, label %polly.loop_header770, !llvm.loop !99

polly.loop_header779:                             ; preds = %polly.loop_exit760, %polly.loop_exit787
  %indvars.iv924 = phi i64 [ %indvars.iv.next925, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv924, i64 -1168)
  %225 = shl nsw i64 %polly.indvar782, 5
  %226 = add nsw i64 %smin926, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next925 = add nsw i64 %indvars.iv924, -32
  %exitcond929.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond929.not, label %polly.loop_header805, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %227 = mul nsw i64 %polly.indvar788, -32
  %smin980 = call i64 @llvm.smin.i64(i64 %227, i64 -968)
  %228 = add nsw i64 %smin980, 1000
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -968)
  %229 = shl nsw i64 %polly.indvar788, 5
  %230 = add nsw i64 %smin922, 999
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond928.not = icmp eq i64 %polly.indvar_next789, 32
  br i1 %exitcond928.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %231 = add nuw nsw i64 %polly.indvar794, %225
  %232 = trunc i64 %231 to i32
  %233 = mul nuw nsw i64 %231, 8000
  %min.iters.check981 = icmp eq i64 %228, 0
  br i1 %min.iters.check981, label %polly.loop_header797, label %vector.ph982

vector.ph982:                                     ; preds = %polly.loop_header791
  %broadcast.splatinsert991 = insertelement <4 x i64> poison, i64 %229, i32 0
  %broadcast.splat992 = shufflevector <4 x i64> %broadcast.splatinsert991, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %232, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body979 ]
  %vec.ind989 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph982 ], [ %vec.ind.next990, %vector.body979 ]
  %234 = add nuw nsw <4 x i64> %vec.ind989, %broadcast.splat992
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat994, %235
  %237 = add <4 x i32> %236, <i32 2, i32 2, i32 2, i32 2>
  %238 = urem <4 x i32> %237, <i32 1000, i32 1000, i32 1000, i32 1000>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add nuw nsw i64 %242, %233
  %244 = getelementptr i8, i8* %call2, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !97, !noalias !100
  %index.next986 = add i64 %index985, 4
  %vec.ind.next990 = add <4 x i64> %vec.ind989, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next986, %228
  br i1 %246, label %polly.loop_exit799, label %vector.body979, !llvm.loop !101

polly.loop_exit799:                               ; preds = %vector.body979, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond927.not = icmp eq i64 %polly.indvar794, %226
  br i1 %exitcond927.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %247 = add nuw nsw i64 %polly.indvar800, %229
  %248 = trunc i64 %247 to i32
  %249 = mul i32 %248, %232
  %250 = add i32 %249, 2
  %251 = urem i32 %250, 1000
  %p_conv10.i = sitofp i32 %251 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %252 = shl i64 %247, 3
  %253 = add nuw nsw i64 %252, %233
  %scevgep803 = getelementptr i8, i8* %call2, i64 %253
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div12.i, double* %scevgep803804, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond923.not = icmp eq i64 %polly.indvar800, %230
  br i1 %exitcond923.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !102

polly.loop_header805:                             ; preds = %polly.loop_exit787, %polly.loop_exit813
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %smin916 = call i64 @llvm.smin.i64(i64 %indvars.iv914, i64 -1168)
  %254 = shl nsw i64 %polly.indvar808, 5
  %255 = add nsw i64 %smin916, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -32
  %exitcond919.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond919.not, label %init_array.exit, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %256 = mul nsw i64 %polly.indvar814, -32
  %smin998 = call i64 @llvm.smin.i64(i64 %256, i64 -968)
  %257 = add nsw i64 %smin998, 1000
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -968)
  %258 = shl nsw i64 %polly.indvar814, 5
  %259 = add nsw i64 %smin912, 999
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond918.not = icmp eq i64 %polly.indvar_next815, 32
  br i1 %exitcond918.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %260 = add nuw nsw i64 %polly.indvar820, %254
  %261 = trunc i64 %260 to i32
  %262 = mul nuw nsw i64 %260, 8000
  %min.iters.check999 = icmp eq i64 %257, 0
  br i1 %min.iters.check999, label %polly.loop_header823, label %vector.ph1000

vector.ph1000:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1009 = insertelement <4 x i64> poison, i64 %258, i32 0
  %broadcast.splat1010 = shufflevector <4 x i64> %broadcast.splatinsert1009, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body997 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1000 ], [ %vec.ind.next1008, %vector.body997 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1007, %broadcast.splat1010
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1012, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 1200, i32 1200, i32 1200, i32 1200>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add nuw nsw i64 %271, %262
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !96, !noalias !103
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1004, %257
  br i1 %275, label %polly.loop_exit825, label %vector.body997, !llvm.loop !104

polly.loop_exit825:                               ; preds = %vector.body997, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond917.not = icmp eq i64 %polly.indvar820, %255
  br i1 %exitcond917.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %276 = add nuw nsw i64 %polly.indvar826, %258
  %277 = trunc i64 %276 to i32
  %278 = mul i32 %277, %261
  %279 = add i32 %278, 1
  %280 = urem i32 %279, 1200
  %p_conv.i = sitofp i32 %280 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %281 = shl i64 %276, 3
  %282 = add nuw nsw i64 %281, %262
  %scevgep830 = getelementptr i8, i8* %call1, i64 %282
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div.i, double* %scevgep830831, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond913.not = icmp eq i64 %polly.indvar826, %259
  br i1 %exitcond913.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !105
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !23, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 96}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.data.pack.enable", i1 true}
!49 = !{!"llvm.data.pack.array", !21}
!50 = !{!"llvm.data.pack.allocate", !"malloc"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
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
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call2"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !65, !67}
!72 = !{!62, !66, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !76, !78}
!82 = !{!73, !77, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !86, !88}
!92 = !{!83, !87, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !70, !13}
!100 = !{!96, !93}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !70, !13}
!103 = !{!97, !93}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !70, !13}