; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7966.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7966.c"
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
  %call776 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1637 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2638 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1637, %call2
  %polly.access.call2657 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2657, %call1
  %2 = or i1 %0, %1
  %polly.access.call677 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call677, %call2
  %4 = icmp ule i8* %polly.access.call2657, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call677, %call1
  %8 = icmp ule i8* %polly.access.call1637, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header750, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv7.i, i64 %index954
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit811
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start449, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %index1020
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting450
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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1043
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1069
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call776, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond855.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1078 = add i64 %indvar1077, 1
  br i1 %exitcond855.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond854.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond854.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond853.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond852.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit223 ], [ 7, %polly.loop_exit207 ]
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv847, i64 74)
  %97 = mul nsw i64 %polly.indvar218, -128
  %98 = icmp slt i64 %97, -1072
  %99 = select i1 %98, i64 %97, i64 -1072
  %100 = add nsw i64 %99, 1199
  %101 = shl nsw i64 %polly.indvar218, 7
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 128
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 8
  %exitcond851.not = icmp eq i64 %polly.indvar_next219, 10
  br i1 %exitcond851.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header215 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -872)
  %102 = shl nsw i64 %polly.indvar224, 7
  %103 = add nsw i64 %smin845, 999
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -128
  %exitcond850.not = icmp eq i64 %polly.indvar_next225, 8
  br i1 %exitcond850.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit235 ], [ %indvars.iv837, %polly.loop_header221 ]
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit235 ], [ %indvars.iv, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %104 = shl nsw i64 %polly.indvar230, 4
  %105 = add nsw i64 %104, %97
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard.not = icmp sgt i64 %107, %100
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv835, i64 0)
  %108 = add i64 %smax, %indvars.iv839
  %109 = sub nsw i64 %101, %104
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, 16
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -16
  %exitcond849.not = icmp eq i64 %polly.indvar230, %umin
  br i1 %exitcond849.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv841 = phi i64 [ %108, %polly.loop_header233.preheader ], [ %indvars.iv.next842, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %107, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 15)
  %110 = add nsw i64 %polly.indvar236, %109
  %polly.loop_guard249941 = icmp sgt i64 %110, -1
  %111 = add nuw nsw i64 %polly.indvar236, %101
  %112 = mul i64 %111, 8000
  %113 = mul i64 %111, 9600
  br i1 %polly.loop_guard249941, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit248.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.loopexit.us ], [ 0, %polly.loop_header233 ]
  %114 = add nuw nsw i64 %polly.indvar242.us, %102
  %115 = shl i64 %114, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %114, 1200
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %111
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %116 = add i64 %115, %112
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %116
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us ]
  %117 = add nuw nsw i64 %polly.indvar250.us, %104
  %118 = mul nuw nsw i64 %117, 8000
  %119 = add nuw nsw i64 %118, %115
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %119
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %117, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %120 = shl i64 %117, 3
  %121 = add i64 %120, %113
  %scevgep267.us = getelementptr i8, i8* %call, i64 %121
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
  %exitcond846.not = icmp eq i64 %polly.indvar242.us, %103
  br i1 %exitcond846.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit248.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %100
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
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
  %122 = add i64 %indvar1051, 1
  %123 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1053 = icmp ult i64 %122, 4
  br i1 %min.iters.check1053, label %polly.loop_header364.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %polly.loop_header358
  %n.vec1056 = and i64 %122, -4
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1058, %vector.body1050 ]
  %124 = shl nuw nsw i64 %index1057, 3
  %125 = getelementptr i8, i8* %scevgep370, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1061 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !73, !noalias !75
  %127 = fmul fast <4 x double> %wide.load1061, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !73, !noalias !75
  %index.next1058 = add i64 %index1057, 4
  %129 = icmp eq i64 %index.next1058, %n.vec1056
  br i1 %129, label %middle.block1048, label %vector.body1050, !llvm.loop !79

middle.block1048:                                 ; preds = %vector.body1050
  %cmp.n1060 = icmp eq i64 %122, %n.vec1056
  br i1 %cmp.n1060, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1048
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1056, %middle.block1048 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1048
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1052 = add i64 %indvar1051, 1
  br i1 %exitcond882.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %130
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond881.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !80

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 1200
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next378, 1000
  br i1 %exitcond880.not, label %polly.loop_header390, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %polly.access.mul.call2387 = mul nuw nsw i64 %polly.indvar383, 1000
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next384, 1200
  br i1 %exitcond879.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit382, %polly.loop_exit398
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit398 ], [ 7, %polly.loop_exit382 ]
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_exit382 ]
  %umin875 = call i64 @llvm.umin.i64(i64 %indvars.iv873, i64 74)
  %131 = mul nsw i64 %polly.indvar393, -128
  %132 = icmp slt i64 %131, -1072
  %133 = select i1 %132, i64 %131, i64 -1072
  %134 = add nsw i64 %133, 1199
  %135 = shl nsw i64 %polly.indvar393, 7
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit404
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next857 = add nsw i64 %indvars.iv856, -128
  %indvars.iv.next862 = add nuw nsw i64 %indvars.iv861, 128
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 8
  %exitcond878.not = icmp eq i64 %polly.indvar_next394, 10
  br i1 %exitcond878.not, label %polly.exiting273, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.loop_header390
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit404 ], [ 0, %polly.loop_header390 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header390 ]
  %smin871 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 -872)
  %136 = shl nsw i64 %polly.indvar399, 7
  %137 = add nsw i64 %smin871, 999
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit411
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -128
  %exitcond877.not = icmp eq i64 %polly.indvar_next400, 8
  br i1 %exitcond877.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit411, %polly.loop_header396
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit411 ], [ %indvars.iv861, %polly.loop_header396 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit411 ], [ %indvars.iv856, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit411 ], [ 0, %polly.loop_header396 ]
  %138 = shl nsw i64 %polly.indvar405, 4
  %139 = add nsw i64 %138, %131
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %polly.loop_guard412.not = icmp sgt i64 %141, %134
  br i1 %polly.loop_guard412.not, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402
  %smax860 = call i64 @llvm.smax.i64(i64 %indvars.iv858, i64 0)
  %142 = add i64 %smax860, %indvars.iv863
  %143 = sub nsw i64 %135, %138
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, 16
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -16
  %exitcond876.not = icmp eq i64 %polly.indvar405, %umin875
  br i1 %exitcond876.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_exit418
  %indvars.iv865 = phi i64 [ %142, %polly.loop_header409.preheader ], [ %indvars.iv.next866, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ %141, %polly.loop_header409.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 15)
  %144 = add nsw i64 %polly.indvar413, %143
  %polly.loop_guard426942 = icmp sgt i64 %144, -1
  %145 = add nuw nsw i64 %polly.indvar413, %135
  %146 = mul i64 %145, 8000
  %147 = mul i64 %145, 9600
  br i1 %polly.loop_guard426942, label %polly.loop_header416.us, label %polly.loop_exit418

polly.loop_header416.us:                          ; preds = %polly.loop_header409, %polly.loop_exit425.loopexit.us
  %polly.indvar419.us = phi i64 [ %polly.indvar_next420.us, %polly.loop_exit425.loopexit.us ], [ 0, %polly.loop_header409 ]
  %148 = add nuw nsw i64 %polly.indvar419.us, %136
  %149 = shl i64 %148, 3
  %polly.access.mul.Packed_MemRef_call2275433.us = mul nuw nsw i64 %148, 1200
  %polly.access.add.Packed_MemRef_call2275434.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us, %145
  %polly.access.Packed_MemRef_call2275435.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2275435.us, align 8
  %150 = add i64 %149, %146
  %scevgep441.us = getelementptr i8, i8* %call1, i64 %150
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header423.us

polly.loop_header423.us:                          ; preds = %polly.loop_header416.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ 0, %polly.loop_header416.us ]
  %151 = add nuw nsw i64 %polly.indvar427.us, %138
  %152 = mul nuw nsw i64 %151, 8000
  %153 = add nuw nsw i64 %152, %149
  %scevgep430.us = getelementptr i8, i8* %call1, i64 %153
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %polly.access.add.Packed_MemRef_call2275438.us = add nuw nsw i64 %151, %polly.access.mul.Packed_MemRef_call2275433.us
  %polly.access.Packed_MemRef_call2275439.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us
  %_p_scalar_440.us = load double, double* %polly.access.Packed_MemRef_call2275439.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_443.us, %_p_scalar_440.us
  %154 = shl i64 %151, 3
  %155 = add i64 %154, %147
  %scevgep444.us = getelementptr i8, i8* %call, i64 %155
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_446.us
  store double %p_add42.i79.us, double* %scevgep444445.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar427.us, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit425.loopexit.us, label %polly.loop_header423.us

polly.loop_exit425.loopexit.us:                   ; preds = %polly.loop_header423.us
  %polly.indvar_next420.us = add nuw nsw i64 %polly.indvar419.us, 1
  %exitcond872.not = icmp eq i64 %polly.indvar419.us, %137
  br i1 %exitcond872.not, label %polly.loop_exit418, label %polly.loop_header416.us

polly.loop_exit418:                               ; preds = %polly.loop_exit425.loopexit.us, %polly.loop_header409
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %polly.loop_cond415.not.not = icmp ult i64 %polly.indvar413, %134
  %indvars.iv.next866 = add i64 %indvars.iv865, 1
  br i1 %polly.loop_cond415.not.not, label %polly.loop_header409, label %polly.loop_exit411

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header535

polly.exiting450:                                 ; preds = %polly.loop_exit575
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar538, 9600
  %scevgep547 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1027 = icmp ult i64 %156, 4
  br i1 %min.iters.check1027, label %polly.loop_header541.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %polly.loop_header535
  %n.vec1030 = and i64 %156, -4
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1032, %vector.body1026 ]
  %158 = shl nuw nsw i64 %index1031, 3
  %159 = getelementptr i8, i8* %scevgep547, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1035 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !83, !noalias !85
  %161 = fmul fast <4 x double> %wide.load1035, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !83, !noalias !85
  %index.next1032 = add i64 %index1031, 4
  %163 = icmp eq i64 %index.next1032, %n.vec1030
  br i1 %163, label %middle.block1024, label %vector.body1026, !llvm.loop !89

middle.block1024:                                 ; preds = %vector.body1026
  %cmp.n1034 = icmp eq i64 %156, %n.vec1030
  br i1 %cmp.n1034, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1024
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1030, %middle.block1024 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1024
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next539, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond909.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header551

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %164
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond908.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !90

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_exit559
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit559 ], [ 0, %polly.loop_header551.preheader ]
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar554, 1200
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_header557
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next555, 1000
  br i1 %exitcond907.not, label %polly.loop_header567, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_header557, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_header557 ]
  %polly.access.mul.call2564 = mul nuw nsw i64 %polly.indvar560, 1000
  %polly.access.add.call2565 = add nuw nsw i64 %polly.access.mul.call2564, %polly.indvar554
  %polly.access.call2566 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2565
  %polly.access.call2566.load = load double, double* %polly.access.call2566, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2452 = add nuw nsw i64 %polly.indvar560, %polly.access.mul.Packed_MemRef_call2452
  %polly.access.Packed_MemRef_call2452 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452
  store double %polly.access.call2566.load, double* %polly.access.Packed_MemRef_call2452, align 8
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next561, 1200
  br i1 %exitcond906.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header567:                             ; preds = %polly.loop_exit559, %polly.loop_exit575
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit575 ], [ 7, %polly.loop_exit559 ]
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_exit559 ]
  %umin902 = call i64 @llvm.umin.i64(i64 %indvars.iv900, i64 74)
  %165 = mul nsw i64 %polly.indvar570, -128
  %166 = icmp slt i64 %165, -1072
  %167 = select i1 %166, i64 %165, i64 -1072
  %168 = add nsw i64 %167, 1199
  %169 = shl nsw i64 %polly.indvar570, 7
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next884 = add nsw i64 %indvars.iv883, -128
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 128
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 8
  %exitcond905.not = icmp eq i64 %polly.indvar_next571, 10
  br i1 %exitcond905.not, label %polly.exiting450, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_header567
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit581 ], [ 0, %polly.loop_header567 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ 0, %polly.loop_header567 ]
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -872)
  %170 = shl nsw i64 %polly.indvar576, 7
  %171 = add nsw i64 %smin898, 999
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit588
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -128
  %exitcond904.not = icmp eq i64 %polly.indvar_next577, 8
  br i1 %exitcond904.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit588, %polly.loop_header573
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit588 ], [ %indvars.iv888, %polly.loop_header573 ]
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit588 ], [ %indvars.iv883, %polly.loop_header573 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ 0, %polly.loop_header573 ]
  %172 = shl nsw i64 %polly.indvar582, 4
  %173 = add nsw i64 %172, %165
  %174 = icmp sgt i64 %173, 0
  %175 = select i1 %174, i64 %173, i64 0
  %polly.loop_guard589.not = icmp sgt i64 %175, %168
  br i1 %polly.loop_guard589.not, label %polly.loop_exit588, label %polly.loop_header586.preheader

polly.loop_header586.preheader:                   ; preds = %polly.loop_header579
  %smax887 = call i64 @llvm.smax.i64(i64 %indvars.iv885, i64 0)
  %176 = add i64 %smax887, %indvars.iv890
  %177 = sub nsw i64 %169, %172
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_header579
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, 16
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -16
  %exitcond903.not = icmp eq i64 %polly.indvar582, %umin902
  br i1 %exitcond903.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit595
  %indvars.iv892 = phi i64 [ %176, %polly.loop_header586.preheader ], [ %indvars.iv.next893, %polly.loop_exit595 ]
  %polly.indvar590 = phi i64 [ %175, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit595 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 15)
  %178 = add nsw i64 %polly.indvar590, %177
  %polly.loop_guard603943 = icmp sgt i64 %178, -1
  %179 = add nuw nsw i64 %polly.indvar590, %169
  %180 = mul i64 %179, 8000
  %181 = mul i64 %179, 9600
  br i1 %polly.loop_guard603943, label %polly.loop_header593.us, label %polly.loop_exit595

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.loop_exit602.loopexit.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_exit602.loopexit.us ], [ 0, %polly.loop_header586 ]
  %182 = add nuw nsw i64 %polly.indvar596.us, %170
  %183 = shl i64 %182, 3
  %polly.access.mul.Packed_MemRef_call2452610.us = mul nuw nsw i64 %182, 1200
  %polly.access.add.Packed_MemRef_call2452611.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us, %179
  %polly.access.Packed_MemRef_call2452612.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2452612.us, align 8
  %184 = add i64 %183, %180
  %scevgep618.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep618619.us = bitcast i8* %scevgep618.us to double*
  %_p_scalar_620.us = load double, double* %scevgep618619.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %185 = add nuw nsw i64 %polly.indvar604.us, %172
  %186 = mul nuw nsw i64 %185, 8000
  %187 = add nuw nsw i64 %186, %183
  %scevgep607.us = getelementptr i8, i8* %call1, i64 %187
  %scevgep607608.us = bitcast i8* %scevgep607.us to double*
  %_p_scalar_609.us = load double, double* %scevgep607608.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_613.us, %_p_scalar_609.us
  %polly.access.add.Packed_MemRef_call2452615.us = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call2452610.us
  %polly.access.Packed_MemRef_call2452616.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us
  %_p_scalar_617.us = load double, double* %polly.access.Packed_MemRef_call2452616.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_620.us, %_p_scalar_617.us
  %188 = shl i64 %185, 3
  %189 = add i64 %188, %181
  %scevgep621.us = getelementptr i8, i8* %call, i64 %189
  %scevgep621622.us = bitcast i8* %scevgep621.us to double*
  %_p_scalar_623.us = load double, double* %scevgep621622.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_623.us
  store double %p_add42.i.us, double* %scevgep621622.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond895.not = icmp eq i64 %polly.indvar604.us, %smin894
  br i1 %exitcond895.not, label %polly.loop_exit602.loopexit.us, label %polly.loop_header600.us

polly.loop_exit602.loopexit.us:                   ; preds = %polly.loop_header600.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond899.not = icmp eq i64 %polly.indvar596.us, %171
  br i1 %exitcond899.not, label %polly.loop_exit595, label %polly.loop_header593.us

polly.loop_exit595:                               ; preds = %polly.loop_exit602.loopexit.us, %polly.loop_header586
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592.not.not = icmp ult i64 %polly.indvar590, %168
  %indvars.iv.next893 = add i64 %indvars.iv892, 1
  br i1 %polly.loop_cond592.not.not, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %polly.loop_exit758 ], [ 0, %entry ]
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %smin936 = call i64 @llvm.smin.i64(i64 %indvars.iv934, i64 -1168)
  %190 = shl nsw i64 %polly.indvar753, 5
  %191 = add nsw i64 %smin936, 1199
  br label %polly.loop_header756

polly.loop_exit758:                               ; preds = %polly.loop_exit764
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, -32
  %exitcond939.not = icmp eq i64 %polly.indvar_next754, 38
  br i1 %exitcond939.not, label %polly.loop_header777, label %polly.loop_header750

polly.loop_header756:                             ; preds = %polly.loop_exit764, %polly.loop_header750
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %polly.indvar759 = phi i64 [ %polly.indvar_next760, %polly.loop_exit764 ], [ 0, %polly.loop_header750 ]
  %192 = mul nsw i64 %polly.indvar759, -32
  %smin965 = call i64 @llvm.smin.i64(i64 %192, i64 -1168)
  %193 = add nsw i64 %smin965, 1200
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %194 = shl nsw i64 %polly.indvar759, 5
  %195 = add nsw i64 %smin932, 1199
  br label %polly.loop_header762

polly.loop_exit764:                               ; preds = %polly.loop_exit770
  %polly.indvar_next760 = add nuw nsw i64 %polly.indvar759, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond938.not = icmp eq i64 %polly.indvar_next760, 38
  br i1 %exitcond938.not, label %polly.loop_exit758, label %polly.loop_header756

polly.loop_header762:                             ; preds = %polly.loop_exit770, %polly.loop_header756
  %polly.indvar765 = phi i64 [ 0, %polly.loop_header756 ], [ %polly.indvar_next766, %polly.loop_exit770 ]
  %196 = add nuw nsw i64 %polly.indvar765, %190
  %197 = trunc i64 %196 to i32
  %198 = mul nuw nsw i64 %196, 9600
  %min.iters.check = icmp eq i64 %193, 0
  br i1 %min.iters.check, label %polly.loop_header768, label %vector.ph966

vector.ph966:                                     ; preds = %polly.loop_header762
  %broadcast.splatinsert973 = insertelement <4 x i64> poison, i64 %194, i32 0
  %broadcast.splat974 = shufflevector <4 x i64> %broadcast.splatinsert973, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph966
  %index967 = phi i64 [ 0, %vector.ph966 ], [ %index.next968, %vector.body964 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next972, %vector.body964 ]
  %199 = add nuw nsw <4 x i64> %vec.ind971, %broadcast.splat974
  %200 = trunc <4 x i64> %199 to <4 x i32>
  %201 = mul <4 x i32> %broadcast.splat976, %200
  %202 = add <4 x i32> %201, <i32 3, i32 3, i32 3, i32 3>
  %203 = urem <4 x i32> %202, <i32 1200, i32 1200, i32 1200, i32 1200>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %206 = extractelement <4 x i64> %199, i32 0
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %198
  %209 = getelementptr i8, i8* %call, i64 %208
  %210 = bitcast i8* %209 to <4 x double>*
  store <4 x double> %205, <4 x double>* %210, align 8, !alias.scope !93, !noalias !95
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %211 = icmp eq i64 %index.next968, %193
  br i1 %211, label %polly.loop_exit770, label %vector.body964, !llvm.loop !98

polly.loop_exit770:                               ; preds = %vector.body964, %polly.loop_header768
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond937.not = icmp eq i64 %polly.indvar765, %191
  br i1 %exitcond937.not, label %polly.loop_exit764, label %polly.loop_header762

polly.loop_header768:                             ; preds = %polly.loop_header762, %polly.loop_header768
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header768 ], [ 0, %polly.loop_header762 ]
  %212 = add nuw nsw i64 %polly.indvar771, %194
  %213 = trunc i64 %212 to i32
  %214 = mul i32 %213, %197
  %215 = add i32 %214, 3
  %216 = urem i32 %215, 1200
  %p_conv31.i = sitofp i32 %216 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %217 = shl i64 %212, 3
  %218 = add nuw nsw i64 %217, %198
  %scevgep774 = getelementptr i8, i8* %call, i64 %218
  %scevgep774775 = bitcast i8* %scevgep774 to double*
  store double %p_div33.i, double* %scevgep774775, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond933.not = icmp eq i64 %polly.indvar771, %195
  br i1 %exitcond933.not, label %polly.loop_exit770, label %polly.loop_header768, !llvm.loop !99

polly.loop_header777:                             ; preds = %polly.loop_exit758, %polly.loop_exit785
  %indvars.iv924 = phi i64 [ %indvars.iv.next925, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758 ]
  %smin926 = call i64 @llvm.smin.i64(i64 %indvars.iv924, i64 -1168)
  %219 = shl nsw i64 %polly.indvar780, 5
  %220 = add nsw i64 %smin926, 1199
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next925 = add nsw i64 %indvars.iv924, -32
  %exitcond929.not = icmp eq i64 %polly.indvar_next781, 38
  br i1 %exitcond929.not, label %polly.loop_header803, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %221 = mul nsw i64 %polly.indvar786, -32
  %smin980 = call i64 @llvm.smin.i64(i64 %221, i64 -968)
  %222 = add nsw i64 %smin980, 1000
  %smin922 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 -968)
  %223 = shl nsw i64 %polly.indvar786, 5
  %224 = add nsw i64 %smin922, 999
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next921 = add nsw i64 %indvars.iv920, -32
  %exitcond928.not = icmp eq i64 %polly.indvar_next787, 32
  br i1 %exitcond928.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %polly.indvar792 = phi i64 [ 0, %polly.loop_header783 ], [ %polly.indvar_next793, %polly.loop_exit797 ]
  %225 = add nuw nsw i64 %polly.indvar792, %219
  %226 = trunc i64 %225 to i32
  %227 = mul nuw nsw i64 %225, 8000
  %min.iters.check981 = icmp eq i64 %222, 0
  br i1 %min.iters.check981, label %polly.loop_header795, label %vector.ph982

vector.ph982:                                     ; preds = %polly.loop_header789
  %broadcast.splatinsert991 = insertelement <4 x i64> poison, i64 %223, i32 0
  %broadcast.splat992 = shufflevector <4 x i64> %broadcast.splatinsert991, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %226, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body979 ]
  %vec.ind989 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph982 ], [ %vec.ind.next990, %vector.body979 ]
  %228 = add nuw nsw <4 x i64> %vec.ind989, %broadcast.splat992
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat994, %229
  %231 = add <4 x i32> %230, <i32 2, i32 2, i32 2, i32 2>
  %232 = urem <4 x i32> %231, <i32 1000, i32 1000, i32 1000, i32 1000>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add nuw nsw i64 %236, %227
  %238 = getelementptr i8, i8* %call2, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !97, !noalias !100
  %index.next986 = add i64 %index985, 4
  %vec.ind.next990 = add <4 x i64> %vec.ind989, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next986, %222
  br i1 %240, label %polly.loop_exit797, label %vector.body979, !llvm.loop !101

polly.loop_exit797:                               ; preds = %vector.body979, %polly.loop_header795
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond927.not = icmp eq i64 %polly.indvar792, %220
  br i1 %exitcond927.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_header789, %polly.loop_header795
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_header795 ], [ 0, %polly.loop_header789 ]
  %241 = add nuw nsw i64 %polly.indvar798, %223
  %242 = trunc i64 %241 to i32
  %243 = mul i32 %242, %226
  %244 = add i32 %243, 2
  %245 = urem i32 %244, 1000
  %p_conv10.i = sitofp i32 %245 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %246 = shl i64 %241, 3
  %247 = add nuw nsw i64 %246, %227
  %scevgep801 = getelementptr i8, i8* %call2, i64 %247
  %scevgep801802 = bitcast i8* %scevgep801 to double*
  store double %p_div12.i, double* %scevgep801802, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond923.not = icmp eq i64 %polly.indvar798, %224
  br i1 %exitcond923.not, label %polly.loop_exit797, label %polly.loop_header795, !llvm.loop !102

polly.loop_header803:                             ; preds = %polly.loop_exit785, %polly.loop_exit811
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785 ]
  %smin916 = call i64 @llvm.smin.i64(i64 %indvars.iv914, i64 -1168)
  %248 = shl nsw i64 %polly.indvar806, 5
  %249 = add nsw i64 %smin916, 1199
  br label %polly.loop_header809

polly.loop_exit811:                               ; preds = %polly.loop_exit817
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -32
  %exitcond919.not = icmp eq i64 %polly.indvar_next807, 38
  br i1 %exitcond919.not, label %init_array.exit, label %polly.loop_header803

polly.loop_header809:                             ; preds = %polly.loop_exit817, %polly.loop_header803
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %polly.indvar812 = phi i64 [ %polly.indvar_next813, %polly.loop_exit817 ], [ 0, %polly.loop_header803 ]
  %250 = mul nsw i64 %polly.indvar812, -32
  %smin998 = call i64 @llvm.smin.i64(i64 %250, i64 -968)
  %251 = add nsw i64 %smin998, 1000
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 -968)
  %252 = shl nsw i64 %polly.indvar812, 5
  %253 = add nsw i64 %smin912, 999
  br label %polly.loop_header815

polly.loop_exit817:                               ; preds = %polly.loop_exit823
  %polly.indvar_next813 = add nuw nsw i64 %polly.indvar812, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -32
  %exitcond918.not = icmp eq i64 %polly.indvar_next813, 32
  br i1 %exitcond918.not, label %polly.loop_exit811, label %polly.loop_header809

polly.loop_header815:                             ; preds = %polly.loop_exit823, %polly.loop_header809
  %polly.indvar818 = phi i64 [ 0, %polly.loop_header809 ], [ %polly.indvar_next819, %polly.loop_exit823 ]
  %254 = add nuw nsw i64 %polly.indvar818, %248
  %255 = trunc i64 %254 to i32
  %256 = mul nuw nsw i64 %254, 8000
  %min.iters.check999 = icmp eq i64 %251, 0
  br i1 %min.iters.check999, label %polly.loop_header821, label %vector.ph1000

vector.ph1000:                                    ; preds = %polly.loop_header815
  %broadcast.splatinsert1009 = insertelement <4 x i64> poison, i64 %252, i32 0
  %broadcast.splat1010 = shufflevector <4 x i64> %broadcast.splatinsert1009, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph1000
  %index1003 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1004, %vector.body997 ]
  %vec.ind1007 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1000 ], [ %vec.ind.next1008, %vector.body997 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1007, %broadcast.splat1010
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1012, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 1200, i32 1200, i32 1200, i32 1200>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add nuw nsw i64 %265, %256
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !96, !noalias !103
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1008 = add <4 x i64> %vec.ind1007, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1004, %251
  br i1 %269, label %polly.loop_exit823, label %vector.body997, !llvm.loop !104

polly.loop_exit823:                               ; preds = %vector.body997, %polly.loop_header821
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond917.not = icmp eq i64 %polly.indvar818, %249
  br i1 %exitcond917.not, label %polly.loop_exit817, label %polly.loop_header815

polly.loop_header821:                             ; preds = %polly.loop_header815, %polly.loop_header821
  %polly.indvar824 = phi i64 [ %polly.indvar_next825, %polly.loop_header821 ], [ 0, %polly.loop_header815 ]
  %270 = add nuw nsw i64 %polly.indvar824, %252
  %271 = trunc i64 %270 to i32
  %272 = mul i32 %271, %255
  %273 = add i32 %272, 1
  %274 = urem i32 %273, 1200
  %p_conv.i = sitofp i32 %274 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %275 = shl i64 %270, 3
  %276 = add nuw nsw i64 %275, %256
  %scevgep828 = getelementptr i8, i8* %call1, i64 %276
  %scevgep828829 = bitcast i8* %scevgep828 to double*
  store double %p_div.i, double* %scevgep828829, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next825 = add nuw nsw i64 %polly.indvar824, 1
  %exitcond913.not = icmp eq i64 %polly.indvar824, %253
  br i1 %exitcond913.not, label %polly.loop_exit823, label %polly.loop_header821, !llvm.loop !105
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !51}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
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
