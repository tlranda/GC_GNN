; ModuleID = 'syr2k_exhaustive/mmp_all_XL_9372.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_9372.c"
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
  %call714 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1575 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1575, %call2
  %polly.access.call2595 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2595, %call1
  %2 = or i1 %0, %1
  %polly.access.call615 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call615, %call2
  %4 = icmp ule i8* %polly.access.call2595, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call615, %call1
  %8 = icmp ule i8* %polly.access.call1575, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header688, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep877 = getelementptr i8, i8* %call2, i64 %12
  %scevgep876 = getelementptr i8, i8* %call2, i64 %11
  %scevgep875 = getelementptr i8, i8* %call1, i64 %12
  %scevgep874 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep874, %scevgep877
  %bound1 = icmp ult i8* %scevgep876, %scevgep875
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
  br i1 %exitcond18.not.i, label %vector.ph881, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph881:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert888 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat889 = shufflevector <4 x i64> %broadcast.splatinsert888, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph881
  %index882 = phi i64 [ 0, %vector.ph881 ], [ %index.next883, %vector.body880 ]
  %vec.ind886 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph881 ], [ %vec.ind.next887, %vector.body880 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind886, %broadcast.splat889
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv7.i, i64 %index882
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next883 = add i64 %index882, 4
  %vec.ind.next887 = add <4 x i64> %vec.ind886, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next883, 1200
  br i1 %40, label %for.inc41.i, label %vector.body880, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body880
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph881, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit749
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header492, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check944 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check944, label %for.body3.i46.preheader1021, label %vector.ph945

vector.ph945:                                     ; preds = %for.body3.i46.preheader
  %n.vec947 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body943

vector.body943:                                   ; preds = %vector.body943, %vector.ph945
  %index948 = phi i64 [ 0, %vector.ph945 ], [ %index.next949, %vector.body943 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %index948
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next949 = add i64 %index948, 4
  %46 = icmp eq i64 %index.next949, %n.vec947
  br i1 %46, label %middle.block941, label %vector.body943, !llvm.loop !18

middle.block941:                                  ; preds = %vector.body943
  %cmp.n951 = icmp eq i64 %indvars.iv21.i, %n.vec947
  br i1 %cmp.n951, label %for.inc6.i, label %for.body3.i46.preheader1021

for.body3.i46.preheader1021:                      ; preds = %for.body3.i46.preheader, %middle.block941
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec947, %middle.block941 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1021, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1021 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block941, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check967 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check967, label %for.body3.i60.preheader1019, label %vector.ph968

vector.ph968:                                     ; preds = %for.body3.i60.preheader
  %n.vec970 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %index971
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load975 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load975, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %57 = icmp eq i64 %index.next972, %n.vec970
  br i1 %57, label %middle.block964, label %vector.body966, !llvm.loop !51

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %indvars.iv21.i52, %n.vec970
  br i1 %cmp.n974, label %for.inc6.i63, label %for.body3.i60.preheader1019

for.body3.i60.preheader1019:                      ; preds = %for.body3.i60.preheader, %middle.block964
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec970, %middle.block964 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1019, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1019 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block964, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check993 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check993, label %for.body3.i99.preheader1017, label %vector.ph994

vector.ph994:                                     ; preds = %for.body3.i99.preheader
  %n.vec996 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body992 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %index997
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next998 = add i64 %index997, 4
  %68 = icmp eq i64 %index.next998, %n.vec996
  br i1 %68, label %middle.block990, label %vector.body992, !llvm.loop !53

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %indvars.iv21.i91, %n.vec996
  br i1 %cmp.n1000, label %for.inc6.i102, label %for.body3.i99.preheader1017

for.body3.i99.preheader1017:                      ; preds = %for.body3.i99.preheader, %middle.block990
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec996, %middle.block990 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1017, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1017 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block990, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1005 = phi i64 [ %indvar.next1006, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1005, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1007 = icmp ult i64 %88, 4
  br i1 %min.iters.check1007, label %polly.loop_header191.preheader, label %vector.ph1008

vector.ph1008:                                    ; preds = %polly.loop_header
  %n.vec1010 = and i64 %88, -4
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1004 ]
  %90 = shl nuw nsw i64 %index1011, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1015 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1015, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1012 = add i64 %index1011, 4
  %95 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %95, label %middle.block1002, label %vector.body1004, !llvm.loop !64

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1014 = icmp eq i64 %88, %n.vec1010
  br i1 %cmp.n1014, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1002
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1010, %middle.block1002 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1002
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1006 = add i64 %indvar1005, 1
  br i1 %exitcond789.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond788.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = lshr i64 %polly.indvar202, 2
  %98 = shl nsw i64 %polly.indvar202, 2
  %99 = mul nsw i64 %polly.indvar202, 32000
  %100 = mul nsw i64 %polly.indvar202, 38400
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 8000
  %103 = mul nuw nsw i64 %101, 9600
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 8000
  %106 = mul nuw nsw i64 %104, 9600
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 8000
  %109 = mul nuw nsw i64 %107, 9600
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond787.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond787.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %110 = mul nuw nsw i64 %polly.indvar208, 50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit225.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond786.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit225.3, %polly.loop_header205
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit225.3 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit225.3 ], [ 0, %polly.loop_header205 ]
  %111 = shl nsw i64 %polly.indvar214, 4
  %112 = sub nsw i64 %98, %111
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 15)
  %polly.loop_guard854 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard854, label %polly.loop_header223.us, label %polly.loop_exit225

polly.loop_header223.us:                          ; preds = %polly.loop_header211, %polly.loop_exit231.loopexit.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.loopexit.us ], [ 0, %polly.loop_header211 ]
  %113 = add nuw nsw i64 %polly.indvar226.us, %110
  %114 = shl i64 %113, 3
  %115 = add nuw nsw i64 %114, %99
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %115
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %116 = add nuw nsw i64 %polly.indvar232.us, %111
  %117 = mul nuw nsw i64 %116, 8000
  %118 = add nuw nsw i64 %117, %114
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %118
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %119 = shl i64 %116, 3
  %120 = add nuw nsw i64 %119, %100
  %scevgep247.us = getelementptr i8, i8* %call, i64 %120
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.loopexit.us, label %polly.loop_header229.us

polly.loop_exit231.loopexit.us:                   ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond783.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond783.not, label %polly.loop_exit225, label %polly.loop_header223.us

polly.loop_exit225:                               ; preds = %polly.loop_exit231.loopexit.us, %polly.loop_header211
  %indvars.iv.next782 = or i64 %indvars.iv779, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782, i64 15)
  %polly.loop_guard.1855 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.1855, label %polly.loop_header223.us.1, label %polly.loop_exit225.1

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar979 = phi i64 [ %indvar.next980, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %121 = add i64 %indvar979, 1
  %122 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check981 = icmp ult i64 %121, 4
  br i1 %min.iters.check981, label %polly.loop_header342.preheader, label %vector.ph982

vector.ph982:                                     ; preds = %polly.loop_header336
  %n.vec984 = and i64 %121, -4
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body978 ]
  %123 = shl nuw nsw i64 %index985, 3
  %124 = getelementptr i8, i8* %scevgep348, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load989 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !69, !noalias !71
  %126 = fmul fast <4 x double> %wide.load989, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !69, !noalias !71
  %index.next986 = add i64 %index985, 4
  %128 = icmp eq i64 %index.next986, %n.vec984
  br i1 %128, label %middle.block976, label %vector.body978, !llvm.loop !74

middle.block976:                                  ; preds = %vector.body978
  %cmp.n988 = icmp eq i64 %121, %n.vec984
  br i1 %cmp.n988, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block976
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec984, %middle.block976 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block976
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next980 = add i64 %indvar979, 1
  br i1 %exitcond804.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %129
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond803.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !75

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %130 = lshr i64 %polly.indvar355, 2
  %131 = shl nsw i64 %polly.indvar355, 2
  %132 = mul nsw i64 %polly.indvar355, 32000
  %133 = mul nsw i64 %polly.indvar355, 38400
  %134 = or i64 %131, 1
  %135 = mul nuw nsw i64 %134, 8000
  %136 = mul nuw nsw i64 %134, 9600
  %137 = or i64 %131, 2
  %138 = mul nuw nsw i64 %137, 8000
  %139 = mul nuw nsw i64 %137, 9600
  %140 = or i64 %131, 3
  %141 = mul nuw nsw i64 %140, 8000
  %142 = mul nuw nsw i64 %140, 9600
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 4
  %exitcond802.not = icmp eq i64 %polly.indvar_next356, 300
  br i1 %exitcond802.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %polly.indvar361 = phi i64 [ 0, %polly.loop_header352 ], [ %polly.indvar_next362, %polly.loop_exit367 ]
  %143 = mul nuw nsw i64 %polly.indvar361, 50
  br label %polly.loop_header365

polly.loop_exit367:                               ; preds = %polly.loop_exit379.3
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next362, 20
  br i1 %exitcond801.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header365:                             ; preds = %polly.loop_exit379.3, %polly.loop_header358
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %polly.loop_exit379.3 ], [ %indvars.iv790, %polly.loop_header358 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit379.3 ], [ 0, %polly.loop_header358 ]
  %144 = shl nsw i64 %polly.indvar368, 4
  %145 = sub nsw i64 %131, %144
  %smin796 = call i64 @llvm.smin.i64(i64 %indvars.iv792, i64 15)
  %polly.loop_guard387858 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387858, label %polly.loop_header377.us, label %polly.loop_exit379

polly.loop_header377.us:                          ; preds = %polly.loop_header365, %polly.loop_exit386.loopexit.us
  %polly.indvar380.us = phi i64 [ %polly.indvar_next381.us, %polly.loop_exit386.loopexit.us ], [ 0, %polly.loop_header365 ]
  %146 = add nuw nsw i64 %polly.indvar380.us, %143
  %147 = shl i64 %146, 3
  %148 = add nuw nsw i64 %147, %132
  %scevgep394.us = getelementptr i8, i8* %call2, i64 %148
  %scevgep394395.us = bitcast i8* %scevgep394.us to double*
  %_p_scalar_396.us = load double, double* %scevgep394395.us, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us = getelementptr i8, i8* %call1, i64 %148
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header377.us, %polly.loop_header384.us
  %polly.indvar388.us = phi i64 [ %polly.indvar_next389.us, %polly.loop_header384.us ], [ 0, %polly.loop_header377.us ]
  %149 = add nuw nsw i64 %polly.indvar388.us, %144
  %150 = mul nuw nsw i64 %149, 8000
  %151 = add nuw nsw i64 %150, %147
  %scevgep391.us = getelementptr i8, i8* %call1, i64 %151
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us = fmul fast double %_p_scalar_396.us, %_p_scalar_393.us
  %scevgep397.us = getelementptr i8, i8* %call2, i64 %151
  %scevgep397398.us = bitcast i8* %scevgep397.us to double*
  %_p_scalar_399.us = load double, double* %scevgep397398.us, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_399.us
  %152 = shl i64 %149, 3
  %153 = add nuw nsw i64 %152, %133
  %scevgep403.us = getelementptr i8, i8* %call, i64 %153
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us = add nuw nsw i64 %polly.indvar388.us, 1
  %exitcond797.not = icmp eq i64 %polly.indvar388.us, %smin796
  br i1 %exitcond797.not, label %polly.loop_exit386.loopexit.us, label %polly.loop_header384.us

polly.loop_exit386.loopexit.us:                   ; preds = %polly.loop_header384.us
  %polly.indvar_next381.us = add nuw nsw i64 %polly.indvar380.us, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next381.us, 50
  br i1 %exitcond798.not, label %polly.loop_exit379, label %polly.loop_header377.us

polly.loop_exit379:                               ; preds = %polly.loop_exit386.loopexit.us, %polly.loop_header365
  %indvars.iv.next795 = or i64 %indvars.iv792, 1
  %smin796.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795, i64 15)
  %polly.loop_guard387.1859 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.1859, label %polly.loop_header377.us.1, label %polly.loop_exit379.1

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar495, 9600
  %scevgep504 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check955 = icmp ult i64 %154, 4
  br i1 %min.iters.check955, label %polly.loop_header498.preheader, label %vector.ph956

vector.ph956:                                     ; preds = %polly.loop_header492
  %n.vec958 = and i64 %154, -4
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph956
  %index959 = phi i64 [ 0, %vector.ph956 ], [ %index.next960, %vector.body954 ]
  %156 = shl nuw nsw i64 %index959, 3
  %157 = getelementptr i8, i8* %scevgep504, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load963 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !78, !noalias !80
  %159 = fmul fast <4 x double> %wide.load963, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !78, !noalias !80
  %index.next960 = add i64 %index959, 4
  %161 = icmp eq i64 %index.next960, %n.vec958
  br i1 %161, label %middle.block952, label %vector.body954, !llvm.loop !83

middle.block952:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %154, %n.vec958
  br i1 %cmp.n962, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block952
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec958, %middle.block952 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block952
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond819.not = icmp eq i64 %polly.indvar_next496, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond819.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %162
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond818.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !84

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit516
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit516 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit516 ], [ 0, %polly.loop_exit500 ]
  %163 = lshr i64 %polly.indvar511, 2
  %164 = shl nsw i64 %polly.indvar511, 2
  %165 = mul nsw i64 %polly.indvar511, 32000
  %166 = mul nsw i64 %polly.indvar511, 38400
  %167 = or i64 %164, 1
  %168 = mul nuw nsw i64 %167, 8000
  %169 = mul nuw nsw i64 %167, 9600
  %170 = or i64 %164, 2
  %171 = mul nuw nsw i64 %170, 8000
  %172 = mul nuw nsw i64 %170, 9600
  %173 = or i64 %164, 3
  %174 = mul nuw nsw i64 %173, 8000
  %175 = mul nuw nsw i64 %173, 9600
  br label %polly.loop_header514

polly.loop_exit516:                               ; preds = %polly.loop_exit523
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 4
  %exitcond817.not = icmp eq i64 %polly.indvar_next512, 300
  br i1 %exitcond817.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header514:                             ; preds = %polly.loop_exit523, %polly.loop_header508
  %polly.indvar517 = phi i64 [ 0, %polly.loop_header508 ], [ %polly.indvar_next518, %polly.loop_exit523 ]
  %176 = mul nuw nsw i64 %polly.indvar517, 50
  br label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_exit535.3
  %polly.indvar_next518 = add nuw nsw i64 %polly.indvar517, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next518, 20
  br i1 %exitcond816.not, label %polly.loop_exit516, label %polly.loop_header514

polly.loop_header521:                             ; preds = %polly.loop_exit535.3, %polly.loop_header514
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit535.3 ], [ %indvars.iv805, %polly.loop_header514 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit535.3 ], [ 0, %polly.loop_header514 ]
  %177 = shl nsw i64 %polly.indvar524, 4
  %178 = sub nsw i64 %164, %177
  %smin811 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 15)
  %polly.loop_guard543862 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543862, label %polly.loop_header533.us, label %polly.loop_exit535

polly.loop_header533.us:                          ; preds = %polly.loop_header521, %polly.loop_exit542.loopexit.us
  %polly.indvar536.us = phi i64 [ %polly.indvar_next537.us, %polly.loop_exit542.loopexit.us ], [ 0, %polly.loop_header521 ]
  %179 = add nuw nsw i64 %polly.indvar536.us, %176
  %180 = shl i64 %179, 3
  %181 = add nuw nsw i64 %180, %165
  %scevgep550.us = getelementptr i8, i8* %call2, i64 %181
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us = getelementptr i8, i8* %call1, i64 %181
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us

polly.loop_header540.us:                          ; preds = %polly.loop_header533.us, %polly.loop_header540.us
  %polly.indvar544.us = phi i64 [ %polly.indvar_next545.us, %polly.loop_header540.us ], [ 0, %polly.loop_header533.us ]
  %182 = add nuw nsw i64 %polly.indvar544.us, %177
  %183 = mul nuw nsw i64 %182, 8000
  %184 = add nuw nsw i64 %183, %180
  %scevgep547.us = getelementptr i8, i8* %call1, i64 %184
  %scevgep547548.us = bitcast i8* %scevgep547.us to double*
  %_p_scalar_549.us = load double, double* %scevgep547548.us, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us = fmul fast double %_p_scalar_552.us, %_p_scalar_549.us
  %scevgep553.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep553554.us = bitcast i8* %scevgep553.us to double*
  %_p_scalar_555.us = load double, double* %scevgep553554.us, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_555.us
  %185 = shl i64 %182, 3
  %186 = add nuw nsw i64 %185, %166
  %scevgep559.us = getelementptr i8, i8* %call, i64 %186
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us = add nuw nsw i64 %polly.indvar544.us, 1
  %exitcond812.not = icmp eq i64 %polly.indvar544.us, %smin811
  br i1 %exitcond812.not, label %polly.loop_exit542.loopexit.us, label %polly.loop_header540.us

polly.loop_exit542.loopexit.us:                   ; preds = %polly.loop_header540.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next537.us, 50
  br i1 %exitcond813.not, label %polly.loop_exit535, label %polly.loop_header533.us

polly.loop_exit535:                               ; preds = %polly.loop_exit542.loopexit.us, %polly.loop_header521
  %indvars.iv.next810 = or i64 %indvars.iv807, 1
  %smin811.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810, i64 15)
  %polly.loop_guard543.1863 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.1863, label %polly.loop_header533.us.1, label %polly.loop_exit535.1

polly.loop_header688:                             ; preds = %entry, %polly.loop_exit696
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit696 ], [ 0, %entry ]
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_exit696 ], [ 0, %entry ]
  %smin846 = call i64 @llvm.smin.i64(i64 %indvars.iv844, i64 -1168)
  %187 = shl nsw i64 %polly.indvar691, 5
  %188 = add nsw i64 %smin846, 1199
  br label %polly.loop_header694

polly.loop_exit696:                               ; preds = %polly.loop_exit702
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %indvars.iv.next845 = add nsw i64 %indvars.iv844, -32
  %exitcond849.not = icmp eq i64 %polly.indvar_next692, 38
  br i1 %exitcond849.not, label %polly.loop_header715, label %polly.loop_header688

polly.loop_header694:                             ; preds = %polly.loop_exit702, %polly.loop_header688
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %polly.loop_header688 ]
  %189 = mul nsw i64 %polly.indvar697, -32
  %smin893 = call i64 @llvm.smin.i64(i64 %189, i64 -1168)
  %190 = add nsw i64 %smin893, 1200
  %smin842 = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 -1168)
  %191 = shl nsw i64 %polly.indvar697, 5
  %192 = add nsw i64 %smin842, 1199
  br label %polly.loop_header700

polly.loop_exit702:                               ; preds = %polly.loop_exit708
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next698, 38
  br i1 %exitcond848.not, label %polly.loop_exit696, label %polly.loop_header694

polly.loop_header700:                             ; preds = %polly.loop_exit708, %polly.loop_header694
  %polly.indvar703 = phi i64 [ 0, %polly.loop_header694 ], [ %polly.indvar_next704, %polly.loop_exit708 ]
  %193 = add nuw nsw i64 %polly.indvar703, %187
  %194 = trunc i64 %193 to i32
  %195 = mul nuw nsw i64 %193, 9600
  %min.iters.check = icmp eq i64 %190, 0
  br i1 %min.iters.check, label %polly.loop_header706, label %vector.ph894

vector.ph894:                                     ; preds = %polly.loop_header700
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %191, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph894
  %index895 = phi i64 [ 0, %vector.ph894 ], [ %index.next896, %vector.body892 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph894 ], [ %vec.ind.next900, %vector.body892 ]
  %196 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %197 = trunc <4 x i64> %196 to <4 x i32>
  %198 = mul <4 x i32> %broadcast.splat904, %197
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 1200, i32 1200, i32 1200, i32 1200>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %203 = extractelement <4 x i64> %196, i32 0
  %204 = shl i64 %203, 3
  %205 = add nuw nsw i64 %204, %195
  %206 = getelementptr i8, i8* %call, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %202, <4 x double>* %207, align 8, !alias.scope !87, !noalias !89
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %208 = icmp eq i64 %index.next896, %190
  br i1 %208, label %polly.loop_exit708, label %vector.body892, !llvm.loop !92

polly.loop_exit708:                               ; preds = %vector.body892, %polly.loop_header706
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond847.not = icmp eq i64 %polly.indvar703, %188
  br i1 %exitcond847.not, label %polly.loop_exit702, label %polly.loop_header700

polly.loop_header706:                             ; preds = %polly.loop_header700, %polly.loop_header706
  %polly.indvar709 = phi i64 [ %polly.indvar_next710, %polly.loop_header706 ], [ 0, %polly.loop_header700 ]
  %209 = add nuw nsw i64 %polly.indvar709, %191
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %210, %194
  %212 = add i32 %211, 3
  %213 = urem i32 %212, 1200
  %p_conv31.i = sitofp i32 %213 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %214 = shl i64 %209, 3
  %215 = add nuw nsw i64 %214, %195
  %scevgep712 = getelementptr i8, i8* %call, i64 %215
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  store double %p_div33.i, double* %scevgep712713, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next710 = add nuw nsw i64 %polly.indvar709, 1
  %exitcond843.not = icmp eq i64 %polly.indvar709, %192
  br i1 %exitcond843.not, label %polly.loop_exit708, label %polly.loop_header706, !llvm.loop !93

polly.loop_header715:                             ; preds = %polly.loop_exit696, %polly.loop_exit723
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %polly.indvar718 = phi i64 [ %polly.indvar_next719, %polly.loop_exit723 ], [ 0, %polly.loop_exit696 ]
  %smin836 = call i64 @llvm.smin.i64(i64 %indvars.iv834, i64 -1168)
  %216 = shl nsw i64 %polly.indvar718, 5
  %217 = add nsw i64 %smin836, 1199
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_exit729
  %polly.indvar_next719 = add nuw nsw i64 %polly.indvar718, 1
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -32
  %exitcond839.not = icmp eq i64 %polly.indvar_next719, 38
  br i1 %exitcond839.not, label %polly.loop_header741, label %polly.loop_header715

polly.loop_header721:                             ; preds = %polly.loop_exit729, %polly.loop_header715
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_header715 ]
  %218 = mul nsw i64 %polly.indvar724, -32
  %smin908 = call i64 @llvm.smin.i64(i64 %218, i64 -968)
  %219 = add nsw i64 %smin908, 1000
  %smin832 = call i64 @llvm.smin.i64(i64 %indvars.iv830, i64 -968)
  %220 = shl nsw i64 %polly.indvar724, 5
  %221 = add nsw i64 %smin832, 999
  br label %polly.loop_header727

polly.loop_exit729:                               ; preds = %polly.loop_exit735
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %indvars.iv.next831 = add nsw i64 %indvars.iv830, -32
  %exitcond838.not = icmp eq i64 %polly.indvar_next725, 32
  br i1 %exitcond838.not, label %polly.loop_exit723, label %polly.loop_header721

polly.loop_header727:                             ; preds = %polly.loop_exit735, %polly.loop_header721
  %polly.indvar730 = phi i64 [ 0, %polly.loop_header721 ], [ %polly.indvar_next731, %polly.loop_exit735 ]
  %222 = add nuw nsw i64 %polly.indvar730, %216
  %223 = trunc i64 %222 to i32
  %224 = mul nuw nsw i64 %222, 8000
  %min.iters.check909 = icmp eq i64 %219, 0
  br i1 %min.iters.check909, label %polly.loop_header733, label %vector.ph910

vector.ph910:                                     ; preds = %polly.loop_header727
  %broadcast.splatinsert919 = insertelement <4 x i64> poison, i64 %220, i32 0
  %broadcast.splat920 = shufflevector <4 x i64> %broadcast.splatinsert919, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert921 = insertelement <4 x i32> poison, i32 %223, i32 0
  %broadcast.splat922 = shufflevector <4 x i32> %broadcast.splatinsert921, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph910
  %index913 = phi i64 [ 0, %vector.ph910 ], [ %index.next914, %vector.body907 ]
  %vec.ind917 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph910 ], [ %vec.ind.next918, %vector.body907 ]
  %225 = add nuw nsw <4 x i64> %vec.ind917, %broadcast.splat920
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat922, %226
  %228 = add <4 x i32> %227, <i32 2, i32 2, i32 2, i32 2>
  %229 = urem <4 x i32> %228, <i32 1000, i32 1000, i32 1000, i32 1000>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add nuw nsw i64 %233, %224
  %235 = getelementptr i8, i8* %call2, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !91, !noalias !94
  %index.next914 = add i64 %index913, 4
  %vec.ind.next918 = add <4 x i64> %vec.ind917, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next914, %219
  br i1 %237, label %polly.loop_exit735, label %vector.body907, !llvm.loop !95

polly.loop_exit735:                               ; preds = %vector.body907, %polly.loop_header733
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond837.not = icmp eq i64 %polly.indvar730, %217
  br i1 %exitcond837.not, label %polly.loop_exit729, label %polly.loop_header727

polly.loop_header733:                             ; preds = %polly.loop_header727, %polly.loop_header733
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_header733 ], [ 0, %polly.loop_header727 ]
  %238 = add nuw nsw i64 %polly.indvar736, %220
  %239 = trunc i64 %238 to i32
  %240 = mul i32 %239, %223
  %241 = add i32 %240, 2
  %242 = urem i32 %241, 1000
  %p_conv10.i = sitofp i32 %242 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %243 = shl i64 %238, 3
  %244 = add nuw nsw i64 %243, %224
  %scevgep739 = getelementptr i8, i8* %call2, i64 %244
  %scevgep739740 = bitcast i8* %scevgep739 to double*
  store double %p_div12.i, double* %scevgep739740, align 8, !alias.scope !91, !noalias !94
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %exitcond833.not = icmp eq i64 %polly.indvar736, %221
  br i1 %exitcond833.not, label %polly.loop_exit735, label %polly.loop_header733, !llvm.loop !96

polly.loop_header741:                             ; preds = %polly.loop_exit723, %polly.loop_exit749
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %polly.indvar744 = phi i64 [ %polly.indvar_next745, %polly.loop_exit749 ], [ 0, %polly.loop_exit723 ]
  %smin826 = call i64 @llvm.smin.i64(i64 %indvars.iv824, i64 -1168)
  %245 = shl nsw i64 %polly.indvar744, 5
  %246 = add nsw i64 %smin826, 1199
  br label %polly.loop_header747

polly.loop_exit749:                               ; preds = %polly.loop_exit755
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, -32
  %exitcond829.not = icmp eq i64 %polly.indvar_next745, 38
  br i1 %exitcond829.not, label %init_array.exit, label %polly.loop_header741

polly.loop_header747:                             ; preds = %polly.loop_exit755, %polly.loop_header741
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_header741 ]
  %247 = mul nsw i64 %polly.indvar750, -32
  %smin926 = call i64 @llvm.smin.i64(i64 %247, i64 -968)
  %248 = add nsw i64 %smin926, 1000
  %smin822 = call i64 @llvm.smin.i64(i64 %indvars.iv820, i64 -968)
  %249 = shl nsw i64 %polly.indvar750, 5
  %250 = add nsw i64 %smin822, 999
  br label %polly.loop_header753

polly.loop_exit755:                               ; preds = %polly.loop_exit761
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, -32
  %exitcond828.not = icmp eq i64 %polly.indvar_next751, 32
  br i1 %exitcond828.not, label %polly.loop_exit749, label %polly.loop_header747

polly.loop_header753:                             ; preds = %polly.loop_exit761, %polly.loop_header747
  %polly.indvar756 = phi i64 [ 0, %polly.loop_header747 ], [ %polly.indvar_next757, %polly.loop_exit761 ]
  %251 = add nuw nsw i64 %polly.indvar756, %245
  %252 = trunc i64 %251 to i32
  %253 = mul nuw nsw i64 %251, 8000
  %min.iters.check927 = icmp eq i64 %248, 0
  br i1 %min.iters.check927, label %polly.loop_header759, label %vector.ph928

vector.ph928:                                     ; preds = %polly.loop_header753
  %broadcast.splatinsert937 = insertelement <4 x i64> poison, i64 %249, i32 0
  %broadcast.splat938 = shufflevector <4 x i64> %broadcast.splatinsert937, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next932, %vector.body925 ]
  %vec.ind935 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next936, %vector.body925 ]
  %254 = add nuw nsw <4 x i64> %vec.ind935, %broadcast.splat938
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat940, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 1200, i32 1200, i32 1200, i32 1200>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add nuw nsw i64 %262, %253
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !90, !noalias !97
  %index.next932 = add i64 %index931, 4
  %vec.ind.next936 = add <4 x i64> %vec.ind935, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next932, %248
  br i1 %266, label %polly.loop_exit761, label %vector.body925, !llvm.loop !98

polly.loop_exit761:                               ; preds = %vector.body925, %polly.loop_header759
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond827.not = icmp eq i64 %polly.indvar756, %246
  br i1 %exitcond827.not, label %polly.loop_exit755, label %polly.loop_header753

polly.loop_header759:                             ; preds = %polly.loop_header753, %polly.loop_header759
  %polly.indvar762 = phi i64 [ %polly.indvar_next763, %polly.loop_header759 ], [ 0, %polly.loop_header753 ]
  %267 = add nuw nsw i64 %polly.indvar762, %249
  %268 = trunc i64 %267 to i32
  %269 = mul i32 %268, %252
  %270 = add i32 %269, 1
  %271 = urem i32 %270, 1200
  %p_conv.i = sitofp i32 %271 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %272 = shl i64 %267, 3
  %273 = add nuw nsw i64 %272, %253
  %scevgep766 = getelementptr i8, i8* %call1, i64 %273
  %scevgep766767 = bitcast i8* %scevgep766 to double*
  store double %p_div.i, double* %scevgep766767, align 8, !alias.scope !90, !noalias !97
  %polly.indvar_next763 = add nuw nsw i64 %polly.indvar762, 1
  %exitcond823.not = icmp eq i64 %polly.indvar762, %250
  br i1 %exitcond823.not, label %polly.loop_exit761, label %polly.loop_header759, !llvm.loop !99

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit225, %polly.loop_exit231.loopexit.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.loopexit.us.1 ], [ 0, %polly.loop_exit225 ]
  %274 = add nuw nsw i64 %polly.indvar226.us.1, %110
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %102
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %276
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %276
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %277 = add nuw nsw i64 %polly.indvar232.us.1, %111
  %278 = mul nuw nsw i64 %277, 8000
  %279 = add nuw nsw i64 %278, %275
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %279
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %280 = shl i64 %277, 3
  %281 = add nuw nsw i64 %280, %103
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.loopexit.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.loopexit.us.1:                 ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond783.1.not = icmp eq i64 %polly.indvar_next227.us.1, 50
  br i1 %exitcond783.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.us.1

polly.loop_exit225.1:                             ; preds = %polly.loop_exit231.loopexit.us.1, %polly.loop_exit225
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv.next782, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.1, i64 15)
  %polly.loop_guard.2856 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.2856, label %polly.loop_header223.us.2, label %polly.loop_exit225.2

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit225.1, %polly.loop_exit231.loopexit.us.2
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit231.loopexit.us.2 ], [ 0, %polly.loop_exit225.1 ]
  %282 = add nuw nsw i64 %polly.indvar226.us.2, %110
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %105
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %284
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ], [ 0, %polly.loop_header223.us.2 ]
  %285 = add nuw nsw i64 %polly.indvar232.us.2, %111
  %286 = mul nuw nsw i64 %285, 8000
  %287 = add nuw nsw i64 %286, %283
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %287
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %287
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %288 = shl i64 %285, 3
  %289 = add nuw nsw i64 %288, %106
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %289
  %scevgep247248.us.2 = bitcast i8* %scevgep247.us.2 to double*
  %_p_scalar_249.us.2 = load double, double* %scevgep247248.us.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_249.us.2
  store double %p_add42.i118.us.2, double* %scevgep247248.us.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.loopexit.us.2, label %polly.loop_header229.us.2

polly.loop_exit231.loopexit.us.2:                 ; preds = %polly.loop_header229.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %exitcond783.2.not = icmp eq i64 %polly.indvar_next227.us.2, 50
  br i1 %exitcond783.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.us.2

polly.loop_exit225.2:                             ; preds = %polly.loop_exit231.loopexit.us.2, %polly.loop_exit225.1
  %indvars.iv.next782.2 = or i64 %indvars.iv779, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next782.2, i64 15)
  %polly.loop_guard.3857 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard.3857, label %polly.loop_header223.us.3, label %polly.loop_exit225.3

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit225.2, %polly.loop_exit231.loopexit.us.3
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit231.loopexit.us.3 ], [ 0, %polly.loop_exit225.2 ]
  %290 = add nuw nsw i64 %polly.indvar226.us.3, %110
  %291 = shl i64 %290, 3
  %292 = add nuw nsw i64 %291, %108
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %292
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !63, !noalias !67
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ], [ 0, %polly.loop_header223.us.3 ]
  %293 = add nuw nsw i64 %polly.indvar232.us.3, %111
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %291
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %295
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %295
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %109
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %297
  %scevgep247248.us.3 = bitcast i8* %scevgep247.us.3 to double*
  %_p_scalar_249.us.3 = load double, double* %scevgep247248.us.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_249.us.3
  store double %p_add42.i118.us.3, double* %scevgep247248.us.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.loopexit.us.3, label %polly.loop_header229.us.3

polly.loop_exit231.loopexit.us.3:                 ; preds = %polly.loop_header229.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %exitcond783.3.not = icmp eq i64 %polly.indvar_next227.us.3, 50
  br i1 %exitcond783.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.us.3

polly.loop_exit225.3:                             ; preds = %polly.loop_exit231.loopexit.us.3, %polly.loop_exit225.2
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -16
  %exitcond785.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond785.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header377.us.1:                        ; preds = %polly.loop_exit379, %polly.loop_exit386.loopexit.us.1
  %polly.indvar380.us.1 = phi i64 [ %polly.indvar_next381.us.1, %polly.loop_exit386.loopexit.us.1 ], [ 0, %polly.loop_exit379 ]
  %298 = add nuw nsw i64 %polly.indvar380.us.1, %143
  %299 = shl i64 %298, 3
  %300 = add nuw nsw i64 %299, %135
  %scevgep394.us.1 = getelementptr i8, i8* %call2, i64 %300
  %scevgep394395.us.1 = bitcast i8* %scevgep394.us.1 to double*
  %_p_scalar_396.us.1 = load double, double* %scevgep394395.us.1, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.1 = getelementptr i8, i8* %call1, i64 %300
  %scevgep400401.us.1 = bitcast i8* %scevgep400.us.1 to double*
  %_p_scalar_402.us.1 = load double, double* %scevgep400401.us.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar388.us.1 = phi i64 [ %polly.indvar_next389.us.1, %polly.loop_header384.us.1 ], [ 0, %polly.loop_header377.us.1 ]
  %301 = add nuw nsw i64 %polly.indvar388.us.1, %144
  %302 = mul nuw nsw i64 %301, 8000
  %303 = add nuw nsw i64 %302, %299
  %scevgep391.us.1 = getelementptr i8, i8* %call1, i64 %303
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_396.us.1, %_p_scalar_393.us.1
  %scevgep397.us.1 = getelementptr i8, i8* %call2, i64 %303
  %scevgep397398.us.1 = bitcast i8* %scevgep397.us.1 to double*
  %_p_scalar_399.us.1 = load double, double* %scevgep397398.us.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_402.us.1, %_p_scalar_399.us.1
  %304 = shl i64 %301, 3
  %305 = add nuw nsw i64 %304, %136
  %scevgep403.us.1 = getelementptr i8, i8* %call, i64 %305
  %scevgep403404.us.1 = bitcast i8* %scevgep403.us.1 to double*
  %_p_scalar_405.us.1 = load double, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_405.us.1
  store double %p_add42.i79.us.1, double* %scevgep403404.us.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.1 = add nuw nsw i64 %polly.indvar388.us.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar388.us.1, %smin796.1
  br i1 %exitcond797.1.not, label %polly.loop_exit386.loopexit.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.loopexit.us.1:                 ; preds = %polly.loop_header384.us.1
  %polly.indvar_next381.us.1 = add nuw nsw i64 %polly.indvar380.us.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next381.us.1, 50
  br i1 %exitcond798.1.not, label %polly.loop_exit379.1, label %polly.loop_header377.us.1

polly.loop_exit379.1:                             ; preds = %polly.loop_exit386.loopexit.us.1, %polly.loop_exit379
  %indvars.iv.next795.1 = add nuw nsw i64 %indvars.iv.next795, 1
  %smin796.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.1, i64 15)
  %polly.loop_guard387.2860 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.2860, label %polly.loop_header377.us.2, label %polly.loop_exit379.2

polly.loop_header377.us.2:                        ; preds = %polly.loop_exit379.1, %polly.loop_exit386.loopexit.us.2
  %polly.indvar380.us.2 = phi i64 [ %polly.indvar_next381.us.2, %polly.loop_exit386.loopexit.us.2 ], [ 0, %polly.loop_exit379.1 ]
  %306 = add nuw nsw i64 %polly.indvar380.us.2, %143
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %138
  %scevgep394.us.2 = getelementptr i8, i8* %call2, i64 %308
  %scevgep394395.us.2 = bitcast i8* %scevgep394.us.2 to double*
  %_p_scalar_396.us.2 = load double, double* %scevgep394395.us.2, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.2 = getelementptr i8, i8* %call1, i64 %308
  %scevgep400401.us.2 = bitcast i8* %scevgep400.us.2 to double*
  %_p_scalar_402.us.2 = load double, double* %scevgep400401.us.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.2

polly.loop_header384.us.2:                        ; preds = %polly.loop_header384.us.2, %polly.loop_header377.us.2
  %polly.indvar388.us.2 = phi i64 [ %polly.indvar_next389.us.2, %polly.loop_header384.us.2 ], [ 0, %polly.loop_header377.us.2 ]
  %309 = add nuw nsw i64 %polly.indvar388.us.2, %144
  %310 = mul nuw nsw i64 %309, 8000
  %311 = add nuw nsw i64 %310, %307
  %scevgep391.us.2 = getelementptr i8, i8* %call1, i64 %311
  %scevgep391392.us.2 = bitcast i8* %scevgep391.us.2 to double*
  %_p_scalar_393.us.2 = load double, double* %scevgep391392.us.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_396.us.2, %_p_scalar_393.us.2
  %scevgep397.us.2 = getelementptr i8, i8* %call2, i64 %311
  %scevgep397398.us.2 = bitcast i8* %scevgep397.us.2 to double*
  %_p_scalar_399.us.2 = load double, double* %scevgep397398.us.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_402.us.2, %_p_scalar_399.us.2
  %312 = shl i64 %309, 3
  %313 = add nuw nsw i64 %312, %139
  %scevgep403.us.2 = getelementptr i8, i8* %call, i64 %313
  %scevgep403404.us.2 = bitcast i8* %scevgep403.us.2 to double*
  %_p_scalar_405.us.2 = load double, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_405.us.2
  store double %p_add42.i79.us.2, double* %scevgep403404.us.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.2 = add nuw nsw i64 %polly.indvar388.us.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar388.us.2, %smin796.2
  br i1 %exitcond797.2.not, label %polly.loop_exit386.loopexit.us.2, label %polly.loop_header384.us.2

polly.loop_exit386.loopexit.us.2:                 ; preds = %polly.loop_header384.us.2
  %polly.indvar_next381.us.2 = add nuw nsw i64 %polly.indvar380.us.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next381.us.2, 50
  br i1 %exitcond798.2.not, label %polly.loop_exit379.2, label %polly.loop_header377.us.2

polly.loop_exit379.2:                             ; preds = %polly.loop_exit386.loopexit.us.2, %polly.loop_exit379.1
  %indvars.iv.next795.2 = or i64 %indvars.iv792, 3
  %smin796.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next795.2, i64 15)
  %polly.loop_guard387.3861 = icmp sgt i64 %145, -1
  br i1 %polly.loop_guard387.3861, label %polly.loop_header377.us.3, label %polly.loop_exit379.3

polly.loop_header377.us.3:                        ; preds = %polly.loop_exit379.2, %polly.loop_exit386.loopexit.us.3
  %polly.indvar380.us.3 = phi i64 [ %polly.indvar_next381.us.3, %polly.loop_exit386.loopexit.us.3 ], [ 0, %polly.loop_exit379.2 ]
  %314 = add nuw nsw i64 %polly.indvar380.us.3, %143
  %315 = shl i64 %314, 3
  %316 = add nuw nsw i64 %315, %141
  %scevgep394.us.3 = getelementptr i8, i8* %call2, i64 %316
  %scevgep394395.us.3 = bitcast i8* %scevgep394.us.3 to double*
  %_p_scalar_396.us.3 = load double, double* %scevgep394395.us.3, align 8, !alias.scope !73, !noalias !76
  %scevgep400.us.3 = getelementptr i8, i8* %call1, i64 %316
  %scevgep400401.us.3 = bitcast i8* %scevgep400.us.3 to double*
  %_p_scalar_402.us.3 = load double, double* %scevgep400401.us.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header384.us.3

polly.loop_header384.us.3:                        ; preds = %polly.loop_header384.us.3, %polly.loop_header377.us.3
  %polly.indvar388.us.3 = phi i64 [ %polly.indvar_next389.us.3, %polly.loop_header384.us.3 ], [ 0, %polly.loop_header377.us.3 ]
  %317 = add nuw nsw i64 %polly.indvar388.us.3, %144
  %318 = mul nuw nsw i64 %317, 8000
  %319 = add nuw nsw i64 %318, %315
  %scevgep391.us.3 = getelementptr i8, i8* %call1, i64 %319
  %scevgep391392.us.3 = bitcast i8* %scevgep391.us.3 to double*
  %_p_scalar_393.us.3 = load double, double* %scevgep391392.us.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_396.us.3, %_p_scalar_393.us.3
  %scevgep397.us.3 = getelementptr i8, i8* %call2, i64 %319
  %scevgep397398.us.3 = bitcast i8* %scevgep397.us.3 to double*
  %_p_scalar_399.us.3 = load double, double* %scevgep397398.us.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_402.us.3, %_p_scalar_399.us.3
  %320 = shl i64 %317, 3
  %321 = add nuw nsw i64 %320, %142
  %scevgep403.us.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep403404.us.3 = bitcast i8* %scevgep403.us.3 to double*
  %_p_scalar_405.us.3 = load double, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_405.us.3
  store double %p_add42.i79.us.3, double* %scevgep403404.us.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next389.us.3 = add nuw nsw i64 %polly.indvar388.us.3, 1
  %exitcond797.3.not = icmp eq i64 %polly.indvar388.us.3, %smin796.3
  br i1 %exitcond797.3.not, label %polly.loop_exit386.loopexit.us.3, label %polly.loop_header384.us.3

polly.loop_exit386.loopexit.us.3:                 ; preds = %polly.loop_header384.us.3
  %polly.indvar_next381.us.3 = add nuw nsw i64 %polly.indvar380.us.3, 1
  %exitcond798.3.not = icmp eq i64 %polly.indvar_next381.us.3, 50
  br i1 %exitcond798.3.not, label %polly.loop_exit379.3, label %polly.loop_header377.us.3

polly.loop_exit379.3:                             ; preds = %polly.loop_exit386.loopexit.us.3, %polly.loop_exit379.2
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, -16
  %exitcond800.not = icmp eq i64 %polly.indvar368, %130
  br i1 %exitcond800.not, label %polly.loop_exit367, label %polly.loop_header365

polly.loop_header533.us.1:                        ; preds = %polly.loop_exit535, %polly.loop_exit542.loopexit.us.1
  %polly.indvar536.us.1 = phi i64 [ %polly.indvar_next537.us.1, %polly.loop_exit542.loopexit.us.1 ], [ 0, %polly.loop_exit535 ]
  %322 = add nuw nsw i64 %polly.indvar536.us.1, %176
  %323 = shl i64 %322, 3
  %324 = add nuw nsw i64 %323, %168
  %scevgep550.us.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep550551.us.1 = bitcast i8* %scevgep550.us.1 to double*
  %_p_scalar_552.us.1 = load double, double* %scevgep550551.us.1, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep556557.us.1 = bitcast i8* %scevgep556.us.1 to double*
  %_p_scalar_558.us.1 = load double, double* %scevgep556557.us.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.1

polly.loop_header540.us.1:                        ; preds = %polly.loop_header540.us.1, %polly.loop_header533.us.1
  %polly.indvar544.us.1 = phi i64 [ %polly.indvar_next545.us.1, %polly.loop_header540.us.1 ], [ 0, %polly.loop_header533.us.1 ]
  %325 = add nuw nsw i64 %polly.indvar544.us.1, %177
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %323
  %scevgep547.us.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep547548.us.1 = bitcast i8* %scevgep547.us.1 to double*
  %_p_scalar_549.us.1 = load double, double* %scevgep547548.us.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_552.us.1, %_p_scalar_549.us.1
  %scevgep553.us.1 = getelementptr i8, i8* %call2, i64 %327
  %scevgep553554.us.1 = bitcast i8* %scevgep553.us.1 to double*
  %_p_scalar_555.us.1 = load double, double* %scevgep553554.us.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_558.us.1, %_p_scalar_555.us.1
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %169
  %scevgep559.us.1 = getelementptr i8, i8* %call, i64 %329
  %scevgep559560.us.1 = bitcast i8* %scevgep559.us.1 to double*
  %_p_scalar_561.us.1 = load double, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_561.us.1
  store double %p_add42.i.us.1, double* %scevgep559560.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.1 = add nuw nsw i64 %polly.indvar544.us.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar544.us.1, %smin811.1
  br i1 %exitcond812.1.not, label %polly.loop_exit542.loopexit.us.1, label %polly.loop_header540.us.1

polly.loop_exit542.loopexit.us.1:                 ; preds = %polly.loop_header540.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next537.us.1, 50
  br i1 %exitcond813.1.not, label %polly.loop_exit535.1, label %polly.loop_header533.us.1

polly.loop_exit535.1:                             ; preds = %polly.loop_exit542.loopexit.us.1, %polly.loop_exit535
  %indvars.iv.next810.1 = add nuw nsw i64 %indvars.iv.next810, 1
  %smin811.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810.1, i64 15)
  %polly.loop_guard543.2864 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.2864, label %polly.loop_header533.us.2, label %polly.loop_exit535.2

polly.loop_header533.us.2:                        ; preds = %polly.loop_exit535.1, %polly.loop_exit542.loopexit.us.2
  %polly.indvar536.us.2 = phi i64 [ %polly.indvar_next537.us.2, %polly.loop_exit542.loopexit.us.2 ], [ 0, %polly.loop_exit535.1 ]
  %330 = add nuw nsw i64 %polly.indvar536.us.2, %176
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %171
  %scevgep550.us.2 = getelementptr i8, i8* %call2, i64 %332
  %scevgep550551.us.2 = bitcast i8* %scevgep550.us.2 to double*
  %_p_scalar_552.us.2 = load double, double* %scevgep550551.us.2, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.2 = getelementptr i8, i8* %call1, i64 %332
  %scevgep556557.us.2 = bitcast i8* %scevgep556.us.2 to double*
  %_p_scalar_558.us.2 = load double, double* %scevgep556557.us.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.2

polly.loop_header540.us.2:                        ; preds = %polly.loop_header540.us.2, %polly.loop_header533.us.2
  %polly.indvar544.us.2 = phi i64 [ %polly.indvar_next545.us.2, %polly.loop_header540.us.2 ], [ 0, %polly.loop_header533.us.2 ]
  %333 = add nuw nsw i64 %polly.indvar544.us.2, %177
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %331
  %scevgep547.us.2 = getelementptr i8, i8* %call1, i64 %335
  %scevgep547548.us.2 = bitcast i8* %scevgep547.us.2 to double*
  %_p_scalar_549.us.2 = load double, double* %scevgep547548.us.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_552.us.2, %_p_scalar_549.us.2
  %scevgep553.us.2 = getelementptr i8, i8* %call2, i64 %335
  %scevgep553554.us.2 = bitcast i8* %scevgep553.us.2 to double*
  %_p_scalar_555.us.2 = load double, double* %scevgep553554.us.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_558.us.2, %_p_scalar_555.us.2
  %336 = shl i64 %333, 3
  %337 = add nuw nsw i64 %336, %172
  %scevgep559.us.2 = getelementptr i8, i8* %call, i64 %337
  %scevgep559560.us.2 = bitcast i8* %scevgep559.us.2 to double*
  %_p_scalar_561.us.2 = load double, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_561.us.2
  store double %p_add42.i.us.2, double* %scevgep559560.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.2 = add nuw nsw i64 %polly.indvar544.us.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar544.us.2, %smin811.2
  br i1 %exitcond812.2.not, label %polly.loop_exit542.loopexit.us.2, label %polly.loop_header540.us.2

polly.loop_exit542.loopexit.us.2:                 ; preds = %polly.loop_header540.us.2
  %polly.indvar_next537.us.2 = add nuw nsw i64 %polly.indvar536.us.2, 1
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next537.us.2, 50
  br i1 %exitcond813.2.not, label %polly.loop_exit535.2, label %polly.loop_header533.us.2

polly.loop_exit535.2:                             ; preds = %polly.loop_exit542.loopexit.us.2, %polly.loop_exit535.1
  %indvars.iv.next810.2 = or i64 %indvars.iv807, 3
  %smin811.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next810.2, i64 15)
  %polly.loop_guard543.3865 = icmp sgt i64 %178, -1
  br i1 %polly.loop_guard543.3865, label %polly.loop_header533.us.3, label %polly.loop_exit535.3

polly.loop_header533.us.3:                        ; preds = %polly.loop_exit535.2, %polly.loop_exit542.loopexit.us.3
  %polly.indvar536.us.3 = phi i64 [ %polly.indvar_next537.us.3, %polly.loop_exit542.loopexit.us.3 ], [ 0, %polly.loop_exit535.2 ]
  %338 = add nuw nsw i64 %polly.indvar536.us.3, %176
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %174
  %scevgep550.us.3 = getelementptr i8, i8* %call2, i64 %340
  %scevgep550551.us.3 = bitcast i8* %scevgep550.us.3 to double*
  %_p_scalar_552.us.3 = load double, double* %scevgep550551.us.3, align 8, !alias.scope !82, !noalias !85
  %scevgep556.us.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep556557.us.3 = bitcast i8* %scevgep556.us.3 to double*
  %_p_scalar_558.us.3 = load double, double* %scevgep556557.us.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header540.us.3

polly.loop_header540.us.3:                        ; preds = %polly.loop_header540.us.3, %polly.loop_header533.us.3
  %polly.indvar544.us.3 = phi i64 [ %polly.indvar_next545.us.3, %polly.loop_header540.us.3 ], [ 0, %polly.loop_header533.us.3 ]
  %341 = add nuw nsw i64 %polly.indvar544.us.3, %177
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %339
  %scevgep547.us.3 = getelementptr i8, i8* %call1, i64 %343
  %scevgep547548.us.3 = bitcast i8* %scevgep547.us.3 to double*
  %_p_scalar_549.us.3 = load double, double* %scevgep547548.us.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_552.us.3, %_p_scalar_549.us.3
  %scevgep553.us.3 = getelementptr i8, i8* %call2, i64 %343
  %scevgep553554.us.3 = bitcast i8* %scevgep553.us.3 to double*
  %_p_scalar_555.us.3 = load double, double* %scevgep553554.us.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_558.us.3, %_p_scalar_555.us.3
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %175
  %scevgep559.us.3 = getelementptr i8, i8* %call, i64 %345
  %scevgep559560.us.3 = bitcast i8* %scevgep559.us.3 to double*
  %_p_scalar_561.us.3 = load double, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_561.us.3
  store double %p_add42.i.us.3, double* %scevgep559560.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next545.us.3 = add nuw nsw i64 %polly.indvar544.us.3, 1
  %exitcond812.3.not = icmp eq i64 %polly.indvar544.us.3, %smin811.3
  br i1 %exitcond812.3.not, label %polly.loop_exit542.loopexit.us.3, label %polly.loop_header540.us.3

polly.loop_exit542.loopexit.us.3:                 ; preds = %polly.loop_header540.us.3
  %polly.indvar_next537.us.3 = add nuw nsw i64 %polly.indvar536.us.3, 1
  %exitcond813.3.not = icmp eq i64 %polly.indvar_next537.us.3, 50
  br i1 %exitcond813.3.not, label %polly.loop_exit535.3, label %polly.loop_header533.us.3

polly.loop_exit535.3:                             ; preds = %polly.loop_exit542.loopexit.us.3, %polly.loop_exit535.2
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %indvars.iv.next808 = add nsw i64 %indvars.iv807, -16
  %exitcond815.not = icmp eq i64 %polly.indvar524, %163
  br i1 %exitcond815.not, label %polly.loop_exit523, label %polly.loop_header521
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
!24 = !{!"llvm.loop.tile.size", i32 16}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
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
!44 = !{!"llvm.loop.tile.size", i32 4}
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
