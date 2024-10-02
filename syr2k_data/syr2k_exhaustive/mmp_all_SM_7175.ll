; ModuleID = 'syr2k_exhaustive/mmp_all_SM_7175.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_7175.c"
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
  %call784 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1645 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2646 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1645, %call2
  %polly.access.call2665 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2665, %call1
  %2 = or i1 %0, %1
  %polly.access.call685 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call685, %call2
  %4 = icmp ule i8* %polly.access.call2665, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call685, %call1
  %8 = icmp ule i8* %polly.access.call1645, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header758, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep942 = getelementptr i8, i8* %call2, i64 %12
  %scevgep941 = getelementptr i8, i8* %call2, i64 %11
  %scevgep940 = getelementptr i8, i8* %call1, i64 %12
  %scevgep939 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep939, %scevgep942
  %bound1 = icmp ult i8* %scevgep941, %scevgep940
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
  br i1 %exitcond18.not.i, label %vector.ph946, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph946:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert953 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat954 = shufflevector <4 x i64> %broadcast.splatinsert953, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %vector.ph946
  %index947 = phi i64 [ 0, %vector.ph946 ], [ %index.next948, %vector.body945 ]
  %vec.ind951 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph946 ], [ %vec.ind.next952, %vector.body945 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind951, %broadcast.splat954
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv7.i, i64 %index947
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next948 = add i64 %index947, 4
  %vec.ind.next952 = add <4 x i64> %vec.ind951, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next948, 1200
  br i1 %40, label %for.inc41.i, label %vector.body945, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body945
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph946, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit819
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start454, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1009 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1009, label %for.body3.i46.preheader1083, label %vector.ph1010

vector.ph1010:                                    ; preds = %for.body3.i46.preheader
  %n.vec1012 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1010
  %index1013 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1014, %vector.body1008 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %index1013
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1014 = add i64 %index1013, 4
  %46 = icmp eq i64 %index.next1014, %n.vec1012
  br i1 %46, label %middle.block1006, label %vector.body1008, !llvm.loop !18

middle.block1006:                                 ; preds = %vector.body1008
  %cmp.n1016 = icmp eq i64 %indvars.iv21.i, %n.vec1012
  br i1 %cmp.n1016, label %for.inc6.i, label %for.body3.i46.preheader1083

for.body3.i46.preheader1083:                      ; preds = %for.body3.i46.preheader, %middle.block1006
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1012, %middle.block1006 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1083, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1083 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1006, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting455
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start274, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1032 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1032, label %for.body3.i60.preheader1082, label %vector.ph1033

vector.ph1033:                                    ; preds = %for.body3.i60.preheader
  %n.vec1035 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1033
  %index1036 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1037, %vector.body1031 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %index1036
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1040 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1040, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1037 = add i64 %index1036, 4
  %57 = icmp eq i64 %index.next1037, %n.vec1035
  br i1 %57, label %middle.block1029, label %vector.body1031, !llvm.loop !54

middle.block1029:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %indvars.iv21.i52, %n.vec1035
  br i1 %cmp.n1039, label %for.inc6.i63, label %for.body3.i60.preheader1082

for.body3.i60.preheader1082:                      ; preds = %for.body3.i60.preheader, %middle.block1029
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1035, %middle.block1029 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1082, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1082 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1029, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting275
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1058 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1058, label %for.body3.i99.preheader1081, label %vector.ph1059

vector.ph1059:                                    ; preds = %for.body3.i99.preheader
  %n.vec1061 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %vector.ph1059
  %index1062 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1063, %vector.body1057 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %index1062
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1066 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1066, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1063 = add i64 %index1062, 4
  %68 = icmp eq i64 %index.next1063, %n.vec1061
  br i1 %68, label %middle.block1055, label %vector.body1057, !llvm.loop !56

middle.block1055:                                 ; preds = %vector.body1057
  %cmp.n1065 = icmp eq i64 %indvars.iv21.i91, %n.vec1061
  br i1 %cmp.n1065, label %for.inc6.i102, label %for.body3.i99.preheader1081

for.body3.i99.preheader1081:                      ; preds = %for.body3.i99.preheader, %middle.block1055
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1061, %middle.block1055 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1081, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1081 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1055, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1070 = phi i64 [ %indvar.next1071, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1070, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1072 = icmp ult i64 %88, 4
  br i1 %min.iters.check1072, label %polly.loop_header191.preheader, label %vector.ph1073

vector.ph1073:                                    ; preds = %polly.loop_header
  %n.vec1075 = and i64 %88, -4
  br label %vector.body1069

vector.body1069:                                  ; preds = %vector.body1069, %vector.ph1073
  %index1076 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1077, %vector.body1069 ]
  %90 = shl nuw nsw i64 %index1076, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1080 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1080, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1077 = add i64 %index1076, 4
  %95 = icmp eq i64 %index.next1077, %n.vec1075
  br i1 %95, label %middle.block1067, label %vector.body1069, !llvm.loop !68

middle.block1067:                                 ; preds = %vector.body1069
  %cmp.n1079 = icmp eq i64 %88, %n.vec1075
  br i1 %cmp.n1079, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1067
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1075, %middle.block1067 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1067
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1071 = add i64 %indvar1070, 1
  br i1 %exitcond860.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond859.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond859.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 1200
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next203, 1000
  br i1 %exitcond858.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 1000
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !66, !noalias !71
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next209, 1200
  br i1 %exitcond857.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv847 = phi i64 [ %indvars.iv.next848, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar218, 1
  %98 = add nuw nsw i64 %97, 2
  %pexp.p_div_q = udiv i64 %98, 5
  %99 = sub nsw i64 %97, %pexp.p_div_q
  %100 = add nsw i64 %99, 1
  %.inv = icmp slt i64 %99, 59
  %101 = select i1 %.inv, i64 %100, i64 59
  %polly.loop_guard = icmp sgt i64 %101, -1
  %102 = mul nsw i64 %polly.indvar218, -32
  %103 = icmp slt i64 %102, -1168
  %104 = select i1 %103, i64 %102, i64 -1168
  %105 = add nsw i64 %104, 1199
  %106 = shl nsw i64 %polly.indvar218, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %indvars.iv.next848 = add nuw nsw i64 %indvars.iv847, 32
  %exitcond856.not = icmp eq i64 %polly.indvar_next219, 38
  br i1 %exitcond856.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_header215
  %polly.indvar224 = phi i64 [ 0, %polly.loop_header215 ], [ %polly.indvar_next225, %polly.loop_exit229 ]
  br i1 %polly.loop_guard, label %polly.loop_header227.preheader, label %polly.loop_exit229

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %107 = mul nuw nsw i64 %polly.indvar224, 20
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit236, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next225, 50
  br i1 %exitcond855.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit236
  %indvars.iv849 = phi i64 [ %indvars.iv847, %polly.loop_header227.preheader ], [ %indvars.iv.next850, %polly.loop_exit236 ]
  %indvars.iv845 = phi i64 [ %indvars.iv, %polly.loop_header227.preheader ], [ %indvars.iv.next846, %polly.loop_exit236 ]
  %polly.indvar230 = phi i64 [ 0, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit236 ]
  %108 = mul nsw i64 %polly.indvar230, 20
  %109 = add nsw i64 %108, %102
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %polly.loop_guard237.not = icmp sgt i64 %111, %105
  br i1 %polly.loop_guard237.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv845, i64 0)
  %112 = add i64 %smax, %indvars.iv849
  %113 = sub nsw i64 %106, %108
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit243, %polly.loop_header227
  %polly.indvar_next231 = add nuw i64 %polly.indvar230, 1
  %indvars.iv.next846 = add i64 %indvars.iv845, 20
  %indvars.iv.next850 = add i64 %indvars.iv849, -20
  %exitcond854.not = icmp eq i64 %polly.indvar230, %101
  br i1 %exitcond854.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit243
  %indvars.iv851 = phi i64 [ %112, %polly.loop_header234.preheader ], [ %indvars.iv.next852, %polly.loop_exit243 ]
  %polly.indvar238 = phi i64 [ %111, %polly.loop_header234.preheader ], [ %polly.indvar_next239, %polly.loop_exit243 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 19)
  %114 = add nsw i64 %polly.indvar238, %113
  %polly.loop_guard251934 = icmp sgt i64 %114, -1
  %115 = add nuw nsw i64 %polly.indvar238, %106
  %116 = mul i64 %115, 8000
  %117 = mul i64 %115, 9600
  br i1 %polly.loop_guard251934, label %polly.loop_header241.us, label %polly.loop_exit243

polly.loop_header241.us:                          ; preds = %polly.loop_header234, %polly.loop_exit250.loopexit.us
  %polly.indvar244.us = phi i64 [ %polly.indvar_next245.us, %polly.loop_exit250.loopexit.us ], [ 0, %polly.loop_header234 ]
  %118 = add nuw nsw i64 %polly.indvar244.us, %107
  %119 = shl i64 %118, 3
  %polly.access.mul.Packed_MemRef_call2258.us = mul nuw nsw i64 %118, 1200
  %polly.access.add.Packed_MemRef_call2259.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2258.us, %115
  %polly.access.Packed_MemRef_call2260.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.us
  %_p_scalar_261.us = load double, double* %polly.access.Packed_MemRef_call2260.us, align 8
  %120 = add i64 %119, %116
  %scevgep266.us = getelementptr i8, i8* %call1, i64 %120
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !65, !noalias !72
  br label %polly.loop_header248.us

polly.loop_header248.us:                          ; preds = %polly.loop_header241.us, %polly.loop_header248.us
  %polly.indvar252.us = phi i64 [ %polly.indvar_next253.us, %polly.loop_header248.us ], [ 0, %polly.loop_header241.us ]
  %121 = add nuw nsw i64 %polly.indvar252.us, %108
  %122 = mul i64 %121, 8000
  %123 = add i64 %122, %119
  %scevgep255.us = getelementptr i8, i8* %call1, i64 %123
  %scevgep255256.us = bitcast i8* %scevgep255.us to double*
  %_p_scalar_257.us = load double, double* %scevgep255256.us, align 8, !alias.scope !65, !noalias !72
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %polly.access.add.Packed_MemRef_call2263.us = add nuw nsw i64 %121, %polly.access.mul.Packed_MemRef_call2258.us
  %polly.access.Packed_MemRef_call2264.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call2264.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %124 = shl i64 %121, 3
  %125 = add i64 %124, %117
  %scevgep269.us = getelementptr i8, i8* %call, i64 %125
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_271.us
  store double %p_add42.i118.us, double* %scevgep269270.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next253.us = add nuw nsw i64 %polly.indvar252.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar252.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit250.loopexit.us, label %polly.loop_header248.us

polly.loop_exit250.loopexit.us:                   ; preds = %polly.loop_header248.us
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next245.us, 20
  br i1 %exitcond853.not, label %polly.loop_exit243, label %polly.loop_header241.us

polly.loop_exit243:                               ; preds = %polly.loop_exit250.loopexit.us, %polly.loop_header234
  %polly.indvar_next239 = add nuw nsw i64 %polly.indvar238, 1
  %polly.loop_cond240.not.not = icmp ult i64 %polly.indvar238, %105
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond240.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.start274:                                   ; preds = %kernel_syr2k.exit
  %malloccall276 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header360

polly.exiting275:                                 ; preds = %polly.loop_exit400
  tail call void @free(i8* %malloccall276)
  br label %kernel_syr2k.exit90

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.start274
  %indvar1044 = phi i64 [ %indvar.next1045, %polly.loop_exit368 ], [ 0, %polly.start274 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 1, %polly.start274 ]
  %126 = add i64 %indvar1044, 1
  %127 = mul nuw nsw i64 %polly.indvar363, 9600
  %scevgep372 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1046 = icmp ult i64 %126, 4
  br i1 %min.iters.check1046, label %polly.loop_header366.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %polly.loop_header360
  %n.vec1049 = and i64 %126, -4
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1051, %vector.body1043 ]
  %128 = shl nuw nsw i64 %index1050, 3
  %129 = getelementptr i8, i8* %scevgep372, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1054 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !73, !noalias !75
  %131 = fmul fast <4 x double> %wide.load1054, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !73, !noalias !75
  %index.next1051 = add i64 %index1050, 4
  %133 = icmp eq i64 %index.next1051, %n.vec1049
  br i1 %133, label %middle.block1041, label %vector.body1043, !llvm.loop !79

middle.block1041:                                 ; preds = %vector.body1043
  %cmp.n1053 = icmp eq i64 %126, %n.vec1049
  br i1 %cmp.n1053, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header360, %middle.block1041
  %polly.indvar369.ph = phi i64 [ 0, %polly.loop_header360 ], [ %n.vec1049, %middle.block1041 ]
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_header366, %middle.block1041
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next364, 1200
  %indvar.next1045 = add i64 %indvar1044, 1
  br i1 %exitcond881.not, label %polly.loop_header376.preheader, label %polly.loop_header360

polly.loop_header376.preheader:                   ; preds = %polly.loop_exit368
  %Packed_MemRef_call2277 = bitcast i8* %malloccall276 to double*
  br label %polly.loop_header376

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_header366
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_header366 ], [ %polly.indvar369.ph, %polly.loop_header366.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar369, 3
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %134
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_375, 1.200000e+00
  store double %p_mul.i57, double* %scevgep373374, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next370, %polly.indvar363
  br i1 %exitcond880.not, label %polly.loop_exit368, label %polly.loop_header366, !llvm.loop !80

polly.loop_header376:                             ; preds = %polly.loop_header376.preheader, %polly.loop_exit384
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit384 ], [ 0, %polly.loop_header376.preheader ]
  %polly.access.mul.Packed_MemRef_call2277 = mul nuw nsw i64 %polly.indvar379, 1200
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next380, 1000
  br i1 %exitcond879.not, label %polly.loop_header392, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %polly.access.mul.call2389 = mul nuw nsw i64 %polly.indvar385, 1000
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call2277 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2277
  %polly.access.Packed_MemRef_call2277 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2277, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next386, 1200
  br i1 %exitcond878.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header392:                             ; preds = %polly.loop_exit384, %polly.loop_exit400
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit400 ], [ 0, %polly.loop_exit384 ]
  %135 = shl nuw nsw i64 %polly.indvar395, 1
  %136 = add nuw nsw i64 %135, 2
  %pexp.p_div_q404 = udiv i64 %136, 5
  %137 = sub nsw i64 %135, %pexp.p_div_q404
  %138 = add nsw i64 %137, 1
  %.inv838 = icmp slt i64 %137, 59
  %139 = select i1 %.inv838, i64 %138, i64 59
  %polly.loop_guard409 = icmp sgt i64 %139, -1
  %140 = mul nsw i64 %polly.indvar395, -32
  %141 = icmp slt i64 %140, -1168
  %142 = select i1 %141, i64 %140, i64 -1168
  %143 = add nsw i64 %142, 1199
  %144 = shl nsw i64 %polly.indvar395, 5
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_exit408
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, -32
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, 32
  %exitcond877.not = icmp eq i64 %polly.indvar_next396, 38
  br i1 %exitcond877.not, label %polly.exiting275, label %polly.loop_header392

polly.loop_header398:                             ; preds = %polly.loop_exit408, %polly.loop_header392
  %polly.indvar401 = phi i64 [ 0, %polly.loop_header392 ], [ %polly.indvar_next402, %polly.loop_exit408 ]
  br i1 %polly.loop_guard409, label %polly.loop_header406.preheader, label %polly.loop_exit408

polly.loop_header406.preheader:                   ; preds = %polly.loop_header398
  %145 = mul nuw nsw i64 %polly.indvar401, 20
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit416, %polly.loop_header398
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next402, 50
  br i1 %exitcond876.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit416
  %indvars.iv868 = phi i64 [ %indvars.iv866, %polly.loop_header406.preheader ], [ %indvars.iv.next869, %polly.loop_exit416 ]
  %indvars.iv863 = phi i64 [ %indvars.iv861, %polly.loop_header406.preheader ], [ %indvars.iv.next864, %polly.loop_exit416 ]
  %polly.indvar410 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next411, %polly.loop_exit416 ]
  %146 = mul nsw i64 %polly.indvar410, 20
  %147 = add nsw i64 %146, %140
  %148 = icmp sgt i64 %147, 0
  %149 = select i1 %148, i64 %147, i64 0
  %polly.loop_guard417.not = icmp sgt i64 %149, %143
  br i1 %polly.loop_guard417.not, label %polly.loop_exit416, label %polly.loop_header414.preheader

polly.loop_header414.preheader:                   ; preds = %polly.loop_header406
  %smax865 = call i64 @llvm.smax.i64(i64 %indvars.iv863, i64 0)
  %150 = add i64 %smax865, %indvars.iv868
  %151 = sub nsw i64 %144, %146
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_exit423, %polly.loop_header406
  %polly.indvar_next411 = add nuw i64 %polly.indvar410, 1
  %indvars.iv.next864 = add i64 %indvars.iv863, 20
  %indvars.iv.next869 = add i64 %indvars.iv868, -20
  %exitcond875.not = icmp eq i64 %polly.indvar410, %139
  br i1 %exitcond875.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit423
  %indvars.iv870 = phi i64 [ %150, %polly.loop_header414.preheader ], [ %indvars.iv.next871, %polly.loop_exit423 ]
  %polly.indvar418 = phi i64 [ %149, %polly.loop_header414.preheader ], [ %polly.indvar_next419, %polly.loop_exit423 ]
  %smin872 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 19)
  %152 = add nsw i64 %polly.indvar418, %151
  %polly.loop_guard431935 = icmp sgt i64 %152, -1
  %153 = add nuw nsw i64 %polly.indvar418, %144
  %154 = mul i64 %153, 8000
  %155 = mul i64 %153, 9600
  br i1 %polly.loop_guard431935, label %polly.loop_header421.us, label %polly.loop_exit423

polly.loop_header421.us:                          ; preds = %polly.loop_header414, %polly.loop_exit430.loopexit.us
  %polly.indvar424.us = phi i64 [ %polly.indvar_next425.us, %polly.loop_exit430.loopexit.us ], [ 0, %polly.loop_header414 ]
  %156 = add nuw nsw i64 %polly.indvar424.us, %145
  %157 = shl i64 %156, 3
  %polly.access.mul.Packed_MemRef_call2277438.us = mul nuw nsw i64 %156, 1200
  %polly.access.add.Packed_MemRef_call2277439.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2277438.us, %153
  %polly.access.Packed_MemRef_call2277440.us = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2277440.us, align 8
  %158 = add i64 %157, %154
  %scevgep446.us = getelementptr i8, i8* %call1, i64 %158
  %scevgep446447.us = bitcast i8* %scevgep446.us to double*
  %_p_scalar_448.us = load double, double* %scevgep446447.us, align 8, !alias.scope !76, !noalias !82
  br label %polly.loop_header428.us

polly.loop_header428.us:                          ; preds = %polly.loop_header421.us, %polly.loop_header428.us
  %polly.indvar432.us = phi i64 [ %polly.indvar_next433.us, %polly.loop_header428.us ], [ 0, %polly.loop_header421.us ]
  %159 = add nuw nsw i64 %polly.indvar432.us, %146
  %160 = mul i64 %159, 8000
  %161 = add i64 %160, %157
  %scevgep435.us = getelementptr i8, i8* %call1, i64 %161
  %scevgep435436.us = bitcast i8* %scevgep435.us to double*
  %_p_scalar_437.us = load double, double* %scevgep435436.us, align 8, !alias.scope !76, !noalias !82
  %p_mul27.i73.us = fmul fast double %_p_scalar_441.us, %_p_scalar_437.us
  %polly.access.add.Packed_MemRef_call2277443.us = add nuw nsw i64 %159, %polly.access.mul.Packed_MemRef_call2277438.us
  %polly.access.Packed_MemRef_call2277444.us = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277443.us
  %_p_scalar_445.us = load double, double* %polly.access.Packed_MemRef_call2277444.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_448.us, %_p_scalar_445.us
  %162 = shl i64 %159, 3
  %163 = add i64 %162, %155
  %scevgep449.us = getelementptr i8, i8* %call, i64 %163
  %scevgep449450.us = bitcast i8* %scevgep449.us to double*
  %_p_scalar_451.us = load double, double* %scevgep449450.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_451.us
  store double %p_add42.i79.us, double* %scevgep449450.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next433.us = add nuw nsw i64 %polly.indvar432.us, 1
  %exitcond873.not = icmp eq i64 %polly.indvar432.us, %smin872
  br i1 %exitcond873.not, label %polly.loop_exit430.loopexit.us, label %polly.loop_header428.us

polly.loop_exit430.loopexit.us:                   ; preds = %polly.loop_header428.us
  %polly.indvar_next425.us = add nuw nsw i64 %polly.indvar424.us, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next425.us, 20
  br i1 %exitcond874.not, label %polly.loop_exit423, label %polly.loop_header421.us

polly.loop_exit423:                               ; preds = %polly.loop_exit430.loopexit.us, %polly.loop_header414
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %polly.loop_cond420.not.not = icmp ult i64 %polly.indvar418, %143
  %indvars.iv.next871 = add i64 %indvars.iv870, 1
  br i1 %polly.loop_cond420.not.not, label %polly.loop_header414, label %polly.loop_exit416

polly.start454:                                   ; preds = %init_array.exit
  %malloccall456 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header540

polly.exiting455:                                 ; preds = %polly.loop_exit580
  tail call void @free(i8* %malloccall456)
  br label %kernel_syr2k.exit

polly.loop_header540:                             ; preds = %polly.loop_exit548, %polly.start454
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit548 ], [ 0, %polly.start454 ]
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 1, %polly.start454 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar543, 9600
  %scevgep552 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1020 = icmp ult i64 %164, 4
  br i1 %min.iters.check1020, label %polly.loop_header546.preheader, label %vector.ph1021

vector.ph1021:                                    ; preds = %polly.loop_header540
  %n.vec1023 = and i64 %164, -4
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1021
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1025, %vector.body1019 ]
  %166 = shl nuw nsw i64 %index1024, 3
  %167 = getelementptr i8, i8* %scevgep552, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1028 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !83, !noalias !85
  %169 = fmul fast <4 x double> %wide.load1028, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !83, !noalias !85
  %index.next1025 = add i64 %index1024, 4
  %171 = icmp eq i64 %index.next1025, %n.vec1023
  br i1 %171, label %middle.block1017, label %vector.body1019, !llvm.loop !89

middle.block1017:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %164, %n.vec1023
  br i1 %cmp.n1027, label %polly.loop_exit548, label %polly.loop_header546.preheader

polly.loop_header546.preheader:                   ; preds = %polly.loop_header540, %middle.block1017
  %polly.indvar549.ph = phi i64 [ 0, %polly.loop_header540 ], [ %n.vec1023, %middle.block1017 ]
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546, %middle.block1017
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next544, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond902.not, label %polly.loop_header556.preheader, label %polly.loop_header540

polly.loop_header556.preheader:                   ; preds = %polly.loop_exit548
  %Packed_MemRef_call2457 = bitcast i8* %malloccall456 to double*
  br label %polly.loop_header556

polly.loop_header546:                             ; preds = %polly.loop_header546.preheader, %polly.loop_header546
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_header546 ], [ %polly.indvar549.ph, %polly.loop_header546.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar549, 3
  %scevgep553 = getelementptr i8, i8* %scevgep552, i64 %172
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_555, 1.200000e+00
  store double %p_mul.i, double* %scevgep553554, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next550, %polly.indvar543
  br i1 %exitcond901.not, label %polly.loop_exit548, label %polly.loop_header546, !llvm.loop !90

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_exit564
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_exit564 ], [ 0, %polly.loop_header556.preheader ]
  %polly.access.mul.Packed_MemRef_call2457 = mul nuw nsw i64 %polly.indvar559, 1200
  br label %polly.loop_header562

polly.loop_exit564:                               ; preds = %polly.loop_header562
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next560, 1000
  br i1 %exitcond900.not, label %polly.loop_header572, label %polly.loop_header556

polly.loop_header562:                             ; preds = %polly.loop_header562, %polly.loop_header556
  %polly.indvar565 = phi i64 [ 0, %polly.loop_header556 ], [ %polly.indvar_next566, %polly.loop_header562 ]
  %polly.access.mul.call2569 = mul nuw nsw i64 %polly.indvar565, 1000
  %polly.access.add.call2570 = add nuw nsw i64 %polly.access.mul.call2569, %polly.indvar559
  %polly.access.call2571 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2570
  %polly.access.call2571.load = load double, double* %polly.access.call2571, align 8, !alias.scope !87, !noalias !91
  %polly.access.add.Packed_MemRef_call2457 = add nuw nsw i64 %polly.indvar565, %polly.access.mul.Packed_MemRef_call2457
  %polly.access.Packed_MemRef_call2457 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457
  store double %polly.access.call2571.load, double* %polly.access.Packed_MemRef_call2457, align 8
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next566, 1200
  br i1 %exitcond899.not, label %polly.loop_exit564, label %polly.loop_header562

polly.loop_header572:                             ; preds = %polly.loop_exit564, %polly.loop_exit580
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %polly.indvar575 = phi i64 [ %polly.indvar_next576, %polly.loop_exit580 ], [ 0, %polly.loop_exit564 ]
  %173 = shl nuw nsw i64 %polly.indvar575, 1
  %174 = add nuw nsw i64 %173, 2
  %pexp.p_div_q584 = udiv i64 %174, 5
  %175 = sub nsw i64 %173, %pexp.p_div_q584
  %176 = add nsw i64 %175, 1
  %.inv839 = icmp slt i64 %175, 59
  %177 = select i1 %.inv839, i64 %176, i64 59
  %polly.loop_guard589 = icmp sgt i64 %177, -1
  %178 = mul nsw i64 %polly.indvar575, -32
  %179 = icmp slt i64 %178, -1168
  %180 = select i1 %179, i64 %178, i64 -1168
  %181 = add nsw i64 %180, 1199
  %182 = shl nsw i64 %polly.indvar575, 5
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588
  %polly.indvar_next576 = add nuw nsw i64 %polly.indvar575, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -32
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 32
  %exitcond898.not = icmp eq i64 %polly.indvar_next576, 38
  br i1 %exitcond898.not, label %polly.exiting455, label %polly.loop_header572

polly.loop_header578:                             ; preds = %polly.loop_exit588, %polly.loop_header572
  %polly.indvar581 = phi i64 [ 0, %polly.loop_header572 ], [ %polly.indvar_next582, %polly.loop_exit588 ]
  br i1 %polly.loop_guard589, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %183 = mul nuw nsw i64 %polly.indvar581, 20
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit596, %polly.loop_header578
  %polly.indvar_next582 = add nuw nsw i64 %polly.indvar581, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next582, 50
  br i1 %exitcond897.not, label %polly.loop_exit580, label %polly.loop_header578

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit596
  %indvars.iv889 = phi i64 [ %indvars.iv887, %polly.loop_header586.preheader ], [ %indvars.iv.next890, %polly.loop_exit596 ]
  %indvars.iv884 = phi i64 [ %indvars.iv882, %polly.loop_header586.preheader ], [ %indvars.iv.next885, %polly.loop_exit596 ]
  %polly.indvar590 = phi i64 [ 0, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit596 ]
  %184 = mul nsw i64 %polly.indvar590, 20
  %185 = add nsw i64 %184, %178
  %186 = icmp sgt i64 %185, 0
  %187 = select i1 %186, i64 %185, i64 0
  %polly.loop_guard597.not = icmp sgt i64 %187, %181
  br i1 %polly.loop_guard597.not, label %polly.loop_exit596, label %polly.loop_header594.preheader

polly.loop_header594.preheader:                   ; preds = %polly.loop_header586
  %smax886 = call i64 @llvm.smax.i64(i64 %indvars.iv884, i64 0)
  %188 = add i64 %smax886, %indvars.iv889
  %189 = sub nsw i64 %182, %184
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit603, %polly.loop_header586
  %polly.indvar_next591 = add nuw i64 %polly.indvar590, 1
  %indvars.iv.next885 = add i64 %indvars.iv884, 20
  %indvars.iv.next890 = add i64 %indvars.iv889, -20
  %exitcond896.not = icmp eq i64 %polly.indvar590, %177
  br i1 %exitcond896.not, label %polly.loop_exit588, label %polly.loop_header586

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit603
  %indvars.iv891 = phi i64 [ %188, %polly.loop_header594.preheader ], [ %indvars.iv.next892, %polly.loop_exit603 ]
  %polly.indvar598 = phi i64 [ %187, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit603 ]
  %smin893 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 19)
  %190 = add nsw i64 %polly.indvar598, %189
  %polly.loop_guard611936 = icmp sgt i64 %190, -1
  %191 = add nuw nsw i64 %polly.indvar598, %182
  %192 = mul i64 %191, 8000
  %193 = mul i64 %191, 9600
  br i1 %polly.loop_guard611936, label %polly.loop_header601.us, label %polly.loop_exit603

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.loop_exit610.loopexit.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_exit610.loopexit.us ], [ 0, %polly.loop_header594 ]
  %194 = add nuw nsw i64 %polly.indvar604.us, %183
  %195 = shl i64 %194, 3
  %polly.access.mul.Packed_MemRef_call2457618.us = mul nuw nsw i64 %194, 1200
  %polly.access.add.Packed_MemRef_call2457619.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2457618.us, %191
  %polly.access.Packed_MemRef_call2457620.us = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457619.us
  %_p_scalar_621.us = load double, double* %polly.access.Packed_MemRef_call2457620.us, align 8
  %196 = add i64 %195, %192
  %scevgep626.us = getelementptr i8, i8* %call1, i64 %196
  %scevgep626627.us = bitcast i8* %scevgep626.us to double*
  %_p_scalar_628.us = load double, double* %scevgep626627.us, align 8, !alias.scope !86, !noalias !92
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %197 = add nuw nsw i64 %polly.indvar612.us, %184
  %198 = mul i64 %197, 8000
  %199 = add i64 %198, %195
  %scevgep615.us = getelementptr i8, i8* %call1, i64 %199
  %scevgep615616.us = bitcast i8* %scevgep615.us to double*
  %_p_scalar_617.us = load double, double* %scevgep615616.us, align 8, !alias.scope !86, !noalias !92
  %p_mul27.i.us = fmul fast double %_p_scalar_621.us, %_p_scalar_617.us
  %polly.access.add.Packed_MemRef_call2457623.us = add nuw nsw i64 %197, %polly.access.mul.Packed_MemRef_call2457618.us
  %polly.access.Packed_MemRef_call2457624.us = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457623.us
  %_p_scalar_625.us = load double, double* %polly.access.Packed_MemRef_call2457624.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_628.us, %_p_scalar_625.us
  %200 = shl i64 %197, 3
  %201 = add i64 %200, %193
  %scevgep629.us = getelementptr i8, i8* %call, i64 %201
  %scevgep629630.us = bitcast i8* %scevgep629.us to double*
  %_p_scalar_631.us = load double, double* %scevgep629630.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_631.us
  store double %p_add42.i.us, double* %scevgep629630.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond894.not = icmp eq i64 %polly.indvar612.us, %smin893
  br i1 %exitcond894.not, label %polly.loop_exit610.loopexit.us, label %polly.loop_header608.us

polly.loop_exit610.loopexit.us:                   ; preds = %polly.loop_header608.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next605.us, 20
  br i1 %exitcond895.not, label %polly.loop_exit603, label %polly.loop_header601.us

polly.loop_exit603:                               ; preds = %polly.loop_exit610.loopexit.us, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp ult i64 %polly.indvar598, %181
  %indvars.iv.next892 = add i64 %indvars.iv891, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header758:                             ; preds = %entry, %polly.loop_exit766
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %polly.loop_exit766 ], [ 0, %entry ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %entry ]
  %smin929 = call i64 @llvm.smin.i64(i64 %indvars.iv927, i64 -1168)
  %202 = shl nsw i64 %polly.indvar761, 5
  %203 = add nsw i64 %smin929, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next928 = add nsw i64 %indvars.iv927, -32
  %exitcond932.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond932.not, label %polly.loop_header785, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %204 = mul nsw i64 %polly.indvar767, -32
  %smin958 = call i64 @llvm.smin.i64(i64 %204, i64 -1168)
  %205 = add nsw i64 %smin958, 1200
  %smin925 = call i64 @llvm.smin.i64(i64 %indvars.iv923, i64 -1168)
  %206 = shl nsw i64 %polly.indvar767, 5
  %207 = add nsw i64 %smin925, 1199
  br label %polly.loop_header770

polly.loop_exit772:                               ; preds = %polly.loop_exit778
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %indvars.iv.next924 = add nsw i64 %indvars.iv923, -32
  %exitcond931.not = icmp eq i64 %polly.indvar_next768, 38
  br i1 %exitcond931.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_exit778, %polly.loop_header764
  %polly.indvar773 = phi i64 [ 0, %polly.loop_header764 ], [ %polly.indvar_next774, %polly.loop_exit778 ]
  %208 = add nuw nsw i64 %polly.indvar773, %202
  %209 = trunc i64 %208 to i32
  %210 = mul nuw nsw i64 %208, 9600
  %min.iters.check = icmp eq i64 %205, 0
  br i1 %min.iters.check, label %polly.loop_header776, label %vector.ph959

vector.ph959:                                     ; preds = %polly.loop_header770
  %broadcast.splatinsert966 = insertelement <4 x i64> poison, i64 %206, i32 0
  %broadcast.splat967 = shufflevector <4 x i64> %broadcast.splatinsert966, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert968 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat969 = shufflevector <4 x i32> %broadcast.splatinsert968, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph959
  %index960 = phi i64 [ 0, %vector.ph959 ], [ %index.next961, %vector.body957 ]
  %vec.ind964 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph959 ], [ %vec.ind.next965, %vector.body957 ]
  %211 = add nuw nsw <4 x i64> %vec.ind964, %broadcast.splat967
  %212 = trunc <4 x i64> %211 to <4 x i32>
  %213 = mul <4 x i32> %broadcast.splat969, %212
  %214 = add <4 x i32> %213, <i32 3, i32 3, i32 3, i32 3>
  %215 = urem <4 x i32> %214, <i32 1200, i32 1200, i32 1200, i32 1200>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %218 = extractelement <4 x i64> %211, i32 0
  %219 = shl i64 %218, 3
  %220 = add nuw nsw i64 %219, %210
  %221 = getelementptr i8, i8* %call, i64 %220
  %222 = bitcast i8* %221 to <4 x double>*
  store <4 x double> %217, <4 x double>* %222, align 8, !alias.scope !93, !noalias !95
  %index.next961 = add i64 %index960, 4
  %vec.ind.next965 = add <4 x i64> %vec.ind964, <i64 4, i64 4, i64 4, i64 4>
  %223 = icmp eq i64 %index.next961, %205
  br i1 %223, label %polly.loop_exit778, label %vector.body957, !llvm.loop !98

polly.loop_exit778:                               ; preds = %vector.body957, %polly.loop_header776
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond930.not = icmp eq i64 %polly.indvar773, %203
  br i1 %exitcond930.not, label %polly.loop_exit772, label %polly.loop_header770

polly.loop_header776:                             ; preds = %polly.loop_header770, %polly.loop_header776
  %polly.indvar779 = phi i64 [ %polly.indvar_next780, %polly.loop_header776 ], [ 0, %polly.loop_header770 ]
  %224 = add nuw nsw i64 %polly.indvar779, %206
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %225, %209
  %227 = add i32 %226, 3
  %228 = urem i32 %227, 1200
  %p_conv31.i = sitofp i32 %228 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %229 = shl i64 %224, 3
  %230 = add nuw nsw i64 %229, %210
  %scevgep782 = getelementptr i8, i8* %call, i64 %230
  %scevgep782783 = bitcast i8* %scevgep782 to double*
  store double %p_div33.i, double* %scevgep782783, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next780 = add nuw nsw i64 %polly.indvar779, 1
  %exitcond926.not = icmp eq i64 %polly.indvar779, %207
  br i1 %exitcond926.not, label %polly.loop_exit778, label %polly.loop_header776, !llvm.loop !99

polly.loop_header785:                             ; preds = %polly.loop_exit766, %polly.loop_exit793
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %smin919 = call i64 @llvm.smin.i64(i64 %indvars.iv917, i64 -1168)
  %231 = shl nsw i64 %polly.indvar788, 5
  %232 = add nsw i64 %smin919, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, -32
  %exitcond922.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond922.not, label %polly.loop_header811, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %233 = mul nsw i64 %polly.indvar794, -32
  %smin973 = call i64 @llvm.smin.i64(i64 %233, i64 -968)
  %234 = add nsw i64 %smin973, 1000
  %smin915 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 -968)
  %235 = shl nsw i64 %polly.indvar794, 5
  %236 = add nsw i64 %smin915, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -32
  %exitcond921.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond921.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %237 = add nuw nsw i64 %polly.indvar800, %231
  %238 = trunc i64 %237 to i32
  %239 = mul nuw nsw i64 %237, 8000
  %min.iters.check974 = icmp eq i64 %234, 0
  br i1 %min.iters.check974, label %polly.loop_header803, label %vector.ph975

vector.ph975:                                     ; preds = %polly.loop_header797
  %broadcast.splatinsert984 = insertelement <4 x i64> poison, i64 %235, i32 0
  %broadcast.splat985 = shufflevector <4 x i64> %broadcast.splatinsert984, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %238, i32 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph975
  %index978 = phi i64 [ 0, %vector.ph975 ], [ %index.next979, %vector.body972 ]
  %vec.ind982 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph975 ], [ %vec.ind.next983, %vector.body972 ]
  %240 = add nuw nsw <4 x i64> %vec.ind982, %broadcast.splat985
  %241 = trunc <4 x i64> %240 to <4 x i32>
  %242 = mul <4 x i32> %broadcast.splat987, %241
  %243 = add <4 x i32> %242, <i32 2, i32 2, i32 2, i32 2>
  %244 = urem <4 x i32> %243, <i32 1000, i32 1000, i32 1000, i32 1000>
  %245 = sitofp <4 x i32> %244 to <4 x double>
  %246 = fmul fast <4 x double> %245, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %247 = extractelement <4 x i64> %240, i32 0
  %248 = shl i64 %247, 3
  %249 = add nuw nsw i64 %248, %239
  %250 = getelementptr i8, i8* %call2, i64 %249
  %251 = bitcast i8* %250 to <4 x double>*
  store <4 x double> %246, <4 x double>* %251, align 8, !alias.scope !97, !noalias !100
  %index.next979 = add i64 %index978, 4
  %vec.ind.next983 = add <4 x i64> %vec.ind982, <i64 4, i64 4, i64 4, i64 4>
  %252 = icmp eq i64 %index.next979, %234
  br i1 %252, label %polly.loop_exit805, label %vector.body972, !llvm.loop !101

polly.loop_exit805:                               ; preds = %vector.body972, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond920.not = icmp eq i64 %polly.indvar800, %232
  br i1 %exitcond920.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %253 = add nuw nsw i64 %polly.indvar806, %235
  %254 = trunc i64 %253 to i32
  %255 = mul i32 %254, %238
  %256 = add i32 %255, 2
  %257 = urem i32 %256, 1000
  %p_conv10.i = sitofp i32 %257 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %258 = shl i64 %253, 3
  %259 = add nuw nsw i64 %258, %239
  %scevgep809 = getelementptr i8, i8* %call2, i64 %259
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div12.i, double* %scevgep809810, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond916.not = icmp eq i64 %polly.indvar806, %236
  br i1 %exitcond916.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !102

polly.loop_header811:                             ; preds = %polly.loop_exit793, %polly.loop_exit819
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 -1168)
  %260 = shl nsw i64 %polly.indvar814, 5
  %261 = add nsw i64 %smin909, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, -32
  %exitcond912.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond912.not, label %init_array.exit, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %262 = mul nsw i64 %polly.indvar820, -32
  %smin991 = call i64 @llvm.smin.i64(i64 %262, i64 -968)
  %263 = add nsw i64 %smin991, 1000
  %smin905 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -968)
  %264 = shl nsw i64 %polly.indvar820, 5
  %265 = add nsw i64 %smin905, 999
  br label %polly.loop_header823

polly.loop_exit825:                               ; preds = %polly.loop_exit831
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -32
  %exitcond911.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond911.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_exit831, %polly.loop_header817
  %polly.indvar826 = phi i64 [ 0, %polly.loop_header817 ], [ %polly.indvar_next827, %polly.loop_exit831 ]
  %266 = add nuw nsw i64 %polly.indvar826, %260
  %267 = trunc i64 %266 to i32
  %268 = mul nuw nsw i64 %266, 8000
  %min.iters.check992 = icmp eq i64 %263, 0
  br i1 %min.iters.check992, label %polly.loop_header829, label %vector.ph993

vector.ph993:                                     ; preds = %polly.loop_header823
  %broadcast.splatinsert1002 = insertelement <4 x i64> poison, i64 %264, i32 0
  %broadcast.splat1003 = shufflevector <4 x i64> %broadcast.splatinsert1002, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body990

vector.body990:                                   ; preds = %vector.body990, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next997, %vector.body990 ]
  %vec.ind1000 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph993 ], [ %vec.ind.next1001, %vector.body990 ]
  %269 = add nuw nsw <4 x i64> %vec.ind1000, %broadcast.splat1003
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = mul <4 x i32> %broadcast.splat1005, %270
  %272 = add <4 x i32> %271, <i32 1, i32 1, i32 1, i32 1>
  %273 = urem <4 x i32> %272, <i32 1200, i32 1200, i32 1200, i32 1200>
  %274 = sitofp <4 x i32> %273 to <4 x double>
  %275 = fmul fast <4 x double> %274, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %276 = extractelement <4 x i64> %269, i32 0
  %277 = shl i64 %276, 3
  %278 = add nuw nsw i64 %277, %268
  %279 = getelementptr i8, i8* %call1, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %275, <4 x double>* %280, align 8, !alias.scope !96, !noalias !103
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1001 = add <4 x i64> %vec.ind1000, <i64 4, i64 4, i64 4, i64 4>
  %281 = icmp eq i64 %index.next997, %263
  br i1 %281, label %polly.loop_exit831, label %vector.body990, !llvm.loop !104

polly.loop_exit831:                               ; preds = %vector.body990, %polly.loop_header829
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond910.not = icmp eq i64 %polly.indvar826, %261
  br i1 %exitcond910.not, label %polly.loop_exit825, label %polly.loop_header823

polly.loop_header829:                             ; preds = %polly.loop_header823, %polly.loop_header829
  %polly.indvar832 = phi i64 [ %polly.indvar_next833, %polly.loop_header829 ], [ 0, %polly.loop_header823 ]
  %282 = add nuw nsw i64 %polly.indvar832, %264
  %283 = trunc i64 %282 to i32
  %284 = mul i32 %283, %267
  %285 = add i32 %284, 1
  %286 = urem i32 %285, 1200
  %p_conv.i = sitofp i32 %286 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %287 = shl i64 %282, 3
  %288 = add nuw nsw i64 %287, %268
  %scevgep836 = getelementptr i8, i8* %call1, i64 %288
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div.i, double* %scevgep836837, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next833 = add nuw nsw i64 %polly.indvar832, 1
  %exitcond906.not = icmp eq i64 %polly.indvar832, %265
  br i1 %exitcond906.not, label %polly.loop_exit831, label %polly.loop_header829, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!44 = !{!"llvm.loop.tile.size", i32 32}
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
