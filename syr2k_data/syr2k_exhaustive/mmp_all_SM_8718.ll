; ModuleID = 'syr2k_exhaustive/mmp_all_SM_8718.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_8718.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv7.i, i64 %index882
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit747
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %index948
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %min.iters.check967 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check967, label %for.body3.i60.preheader1019, label %vector.ph968

vector.ph968:                                     ; preds = %for.body3.i60.preheader
  %n.vec970 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph968
  %index971 = phi i64 [ 0, %vector.ph968 ], [ %index.next972, %vector.body966 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %index971
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load975 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load975, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %57 = icmp eq i64 %index.next972, %n.vec970
  br i1 %57, label %middle.block964, label %vector.body966, !llvm.loop !53

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %indvars.iv21.i52, %n.vec970
  br i1 %cmp.n974, label %for.inc6.i63, label %for.body3.i60.preheader1019

for.body3.i60.preheader1019:                      ; preds = %for.body3.i60.preheader, %middle.block964
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec970, %middle.block964 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1019, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1019 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !54

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
  %min.iters.check993 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check993, label %for.body3.i99.preheader1017, label %vector.ph994

vector.ph994:                                     ; preds = %for.body3.i99.preheader
  %n.vec996 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph994
  %index997 = phi i64 [ 0, %vector.ph994 ], [ %index.next998, %vector.body992 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %index997
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next998 = add i64 %index997, 4
  %68 = icmp eq i64 %index.next998, %n.vec996
  br i1 %68, label %middle.block990, label %vector.body992, !llvm.loop !55

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %indvars.iv21.i91, %n.vec996
  br i1 %cmp.n1000, label %for.inc6.i102, label %for.body3.i99.preheader1017

for.body3.i99.preheader1017:                      ; preds = %for.body3.i99.preheader, %middle.block990
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec996, %middle.block990 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1017, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1017 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !56

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !57
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !59

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !60

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !57
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
  %wide.load1015 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !61, !noalias !63
  %93 = fmul fast <4 x double> %wide.load1015, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !61, !noalias !63
  %index.next1012 = add i64 %index1011, 4
  %95 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %95, label %middle.block1002, label %vector.body1004, !llvm.loop !66

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1014 = icmp eq i64 %88, %n.vec1010
  br i1 %cmp.n1014, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1002
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1010, %middle.block1002 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1002
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond790.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1006 = add i64 %indvar1005, 1
  br i1 %exitcond790.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond789.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !67

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar202, 5
  %98 = shl i64 %polly.indvar202, 5
  %99 = shl i64 %polly.indvar202, 5
  %100 = or i64 %99, 8
  %101 = shl i64 %polly.indvar202, 5
  %102 = or i64 %101, 16
  %103 = or i64 %97, 24
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next203, 250
  br i1 %exitcond788.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %104 = shl nsw i64 %polly.indvar208, 6
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next780 = add nsw i64 %indvars.iv779, -64
  %exitcond787.not = icmp eq i64 %polly.indvar_next209, 19
  br i1 %exitcond787.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit219 ], [ %indvars.iv779, %polly.loop_header205 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 -1136)
  %105 = add nsw i64 %smin783, 1199
  %smax = call i64 @llvm.smax.i64(i64 %105, i64 0)
  %106 = mul nsw i64 %polly.indvar214, -64
  %polly.loop_guard863 = icmp sgt i64 %106, -1200
  %107 = shl nsw i64 %polly.indvar214, 6
  br i1 %polly.loop_guard863, label %polly.loop_header223.us, label %polly.loop_exit219

polly.loop_header223.us:                          ; preds = %polly.loop_header211, %polly.loop_exit231.us
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit231.us ], [ %indvars.iv, %polly.loop_header211 ]
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_exit231.us ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv777, i64 63)
  %108 = add nuw nsw i64 %polly.indvar226.us, %107
  %109 = mul nuw nsw i64 %108, 8000
  %110 = add nuw nsw i64 %109, %98
  %scevgep238.us = getelementptr i8, i8* %call2, i64 %110
  %scevgep238239.us = bitcast i8* %scevgep238.us to double*
  %_p_scalar_240.us = load double, double* %scevgep238239.us, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us = getelementptr i8, i8* %call1, i64 %110
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !64, !noalias !70
  %111 = mul nuw nsw i64 %108, 9600
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header229.us, %polly.loop_header223.us
  %polly.indvar232.us = phi i64 [ 0, %polly.loop_header223.us ], [ %polly.indvar_next233.us, %polly.loop_header229.us ]
  %112 = add nuw nsw i64 %polly.indvar232.us, %104
  %113 = mul nuw nsw i64 %112, 8000
  %114 = add nuw nsw i64 %113, %98
  %scevgep235.us = getelementptr i8, i8* %call1, i64 %114
  %scevgep235236.us = bitcast i8* %scevgep235.us to double*
  %_p_scalar_237.us = load double, double* %scevgep235236.us, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_240.us, %_p_scalar_237.us
  %scevgep241.us = getelementptr i8, i8* %call2, i64 %114
  %scevgep241242.us = bitcast i8* %scevgep241.us to double*
  %_p_scalar_243.us = load double, double* %scevgep241242.us, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_243.us
  %115 = shl i64 %112, 3
  %116 = add nuw nsw i64 %115, %111
  %scevgep247.us = getelementptr i8, i8* %call, i64 %116
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar232.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit231.us, label %polly.loop_header229.us

polly.loop_exit231.us:                            ; preds = %polly.loop_header229.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1
  %exitcond784.not = icmp eq i64 %polly.indvar226.us, %smax
  br i1 %exitcond784.not, label %polly.loop_header223.us.1, label %polly.loop_header223.us

polly.loop_exit219:                               ; preds = %polly.loop_exit231.us.3, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %indvars.iv.next782 = add nsw i64 %indvars.iv781, -64
  %exitcond786.not = icmp eq i64 %polly.indvar_next215, 19
  br i1 %exitcond786.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar979 = phi i64 [ %indvar.next980, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %117 = add i64 %indvar979, 1
  %118 = mul nuw nsw i64 %polly.indvar339, 9600
  %scevgep348 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check981 = icmp ult i64 %117, 4
  br i1 %min.iters.check981, label %polly.loop_header342.preheader, label %vector.ph982

vector.ph982:                                     ; preds = %polly.loop_header336
  %n.vec984 = and i64 %117, -4
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body978 ]
  %119 = shl nuw nsw i64 %index985, 3
  %120 = getelementptr i8, i8* %scevgep348, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load989 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !71, !noalias !73
  %122 = fmul fast <4 x double> %wide.load989, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !71, !noalias !73
  %index.next986 = add i64 %index985, 4
  %124 = icmp eq i64 %index.next986, %n.vec984
  br i1 %124, label %middle.block976, label %vector.body978, !llvm.loop !76

middle.block976:                                  ; preds = %vector.body978
  %cmp.n988 = icmp eq i64 %117, %n.vec984
  br i1 %cmp.n988, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block976
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec984, %middle.block976 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block976
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next340, 1200
  %indvar.next980 = add i64 %indvar979, 1
  br i1 %exitcond809.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %125
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond808.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond808.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !77

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit360
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 0, %polly.loop_exit344 ]
  %126 = shl i64 %polly.indvar355, 5
  %127 = shl i64 %polly.indvar355, 5
  %128 = shl i64 %polly.indvar355, 5
  %129 = or i64 %128, 8
  %130 = shl i64 %polly.indvar355, 5
  %131 = or i64 %130, 16
  %132 = or i64 %126, 24
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_exit366
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next356, 250
  br i1 %exitcond807.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.loop_header352
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_header352 ]
  %133 = shl nsw i64 %polly.indvar361, 6
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next798 = add nsw i64 %indvars.iv797, -64
  %exitcond806.not = icmp eq i64 %polly.indvar_next362, 19
  br i1 %exitcond806.not, label %polly.loop_exit360, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %polly.loop_exit372 ], [ %indvars.iv797, %polly.loop_header358 ]
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %polly.loop_exit372 ], [ 0, %polly.loop_header358 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ %polly.indvar361, %polly.loop_header358 ]
  %smin801 = call i64 @llvm.smin.i64(i64 %indvars.iv799, i64 -1136)
  %134 = add nsw i64 %smin801, 1199
  %smax802 = call i64 @llvm.smax.i64(i64 %134, i64 0)
  %135 = mul nsw i64 %polly.indvar367, -64
  %polly.loop_guard380864 = icmp sgt i64 %135, -1200
  %136 = shl nsw i64 %polly.indvar367, 6
  br i1 %polly.loop_guard380864, label %polly.loop_header377.us, label %polly.loop_exit372

polly.loop_header377.us:                          ; preds = %polly.loop_header364, %polly.loop_exit386.us
  %indvars.iv793 = phi i64 [ %indvars.iv.next794, %polly.loop_exit386.us ], [ %indvars.iv791, %polly.loop_header364 ]
  %polly.indvar381.us = phi i64 [ %polly.indvar_next382.us, %polly.loop_exit386.us ], [ 0, %polly.loop_header364 ]
  %smin795 = call i64 @llvm.smin.i64(i64 %indvars.iv793, i64 63)
  %137 = add nuw nsw i64 %polly.indvar381.us, %136
  %138 = mul nuw nsw i64 %137, 8000
  %139 = add nuw nsw i64 %138, %127
  %scevgep393.us = getelementptr i8, i8* %call2, i64 %139
  %scevgep393394.us = bitcast i8* %scevgep393.us to double*
  %_p_scalar_395.us = load double, double* %scevgep393394.us, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us = getelementptr i8, i8* %call1, i64 %139
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !74, !noalias !79
  %140 = mul nuw nsw i64 %137, 9600
  br label %polly.loop_header384.us

polly.loop_header384.us:                          ; preds = %polly.loop_header384.us, %polly.loop_header377.us
  %polly.indvar387.us = phi i64 [ 0, %polly.loop_header377.us ], [ %polly.indvar_next388.us, %polly.loop_header384.us ]
  %141 = add nuw nsw i64 %polly.indvar387.us, %133
  %142 = mul nuw nsw i64 %141, 8000
  %143 = add nuw nsw i64 %142, %127
  %scevgep390.us = getelementptr i8, i8* %call1, i64 %143
  %scevgep390391.us = bitcast i8* %scevgep390.us to double*
  %_p_scalar_392.us = load double, double* %scevgep390391.us, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_395.us, %_p_scalar_392.us
  %scevgep396.us = getelementptr i8, i8* %call2, i64 %143
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_398.us
  %144 = shl i64 %141, 3
  %145 = add nuw nsw i64 %144, %140
  %scevgep402.us = getelementptr i8, i8* %call, i64 %145
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us = add nuw nsw i64 %polly.indvar387.us, 1
  %exitcond796.not = icmp eq i64 %polly.indvar387.us, %smin795
  br i1 %exitcond796.not, label %polly.loop_exit386.us, label %polly.loop_header384.us

polly.loop_exit386.us:                            ; preds = %polly.loop_header384.us
  %polly.indvar_next382.us = add nuw nsw i64 %polly.indvar381.us, 1
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1
  %exitcond803.not = icmp eq i64 %polly.indvar381.us, %smax802
  br i1 %exitcond803.not, label %polly.loop_header377.us.1, label %polly.loop_header377.us

polly.loop_exit372:                               ; preds = %polly.loop_exit386.us.3, %polly.loop_header364
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next792 = add nuw nsw i64 %indvars.iv791, 64
  %indvars.iv.next800 = add nsw i64 %indvars.iv799, -64
  %exitcond805.not = icmp eq i64 %polly.indvar_next368, 19
  br i1 %exitcond805.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar494, 9600
  %scevgep503 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check955 = icmp ult i64 %146, 4
  br i1 %min.iters.check955, label %polly.loop_header497.preheader, label %vector.ph956

vector.ph956:                                     ; preds = %polly.loop_header491
  %n.vec958 = and i64 %146, -4
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph956
  %index959 = phi i64 [ 0, %vector.ph956 ], [ %index.next960, %vector.body954 ]
  %148 = shl nuw nsw i64 %index959, 3
  %149 = getelementptr i8, i8* %scevgep503, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load963 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !80, !noalias !82
  %151 = fmul fast <4 x double> %wide.load963, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !80, !noalias !82
  %index.next960 = add i64 %index959, 4
  %153 = icmp eq i64 %index.next960, %n.vec958
  br i1 %153, label %middle.block952, label %vector.body954, !llvm.loop !85

middle.block952:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %146, %n.vec958
  br i1 %cmp.n962, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block952
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec958, %middle.block952 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block952
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond828.not = icmp eq i64 %polly.indvar_next495, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond828.not, label %polly.loop_header507, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %154
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond827.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !86

polly.loop_header507:                             ; preds = %polly.loop_exit499, %polly.loop_exit515
  %polly.indvar510 = phi i64 [ %polly.indvar_next511, %polly.loop_exit515 ], [ 0, %polly.loop_exit499 ]
  %155 = shl i64 %polly.indvar510, 5
  %156 = shl i64 %polly.indvar510, 5
  %157 = shl i64 %polly.indvar510, 5
  %158 = or i64 %157, 8
  %159 = shl i64 %polly.indvar510, 5
  %160 = or i64 %159, 16
  %161 = or i64 %155, 24
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit521
  %polly.indvar_next511 = add nuw nsw i64 %polly.indvar510, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next511, 250
  br i1 %exitcond826.not, label %kernel_syr2k.exit, label %polly.loop_header507

polly.loop_header513:                             ; preds = %polly.loop_exit521, %polly.loop_header507
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %polly.indvar516 = phi i64 [ %polly.indvar_next517, %polly.loop_exit521 ], [ 0, %polly.loop_header507 ]
  %162 = shl nsw i64 %polly.indvar516, 6
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next517 = add nuw nsw i64 %polly.indvar516, 1
  %indvars.iv.next817 = add nsw i64 %indvars.iv816, -64
  %exitcond825.not = icmp eq i64 %polly.indvar_next517, 19
  br i1 %exitcond825.not, label %polly.loop_exit515, label %polly.loop_header513

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.loop_header513
  %indvars.iv818 = phi i64 [ %indvars.iv.next819, %polly.loop_exit527 ], [ %indvars.iv816, %polly.loop_header513 ]
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %polly.loop_exit527 ], [ 0, %polly.loop_header513 ]
  %polly.indvar522 = phi i64 [ %polly.indvar_next523, %polly.loop_exit527 ], [ %polly.indvar516, %polly.loop_header513 ]
  %smin820 = call i64 @llvm.smin.i64(i64 %indvars.iv818, i64 -1136)
  %163 = add nsw i64 %smin820, 1199
  %smax821 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = mul nsw i64 %polly.indvar522, -64
  %polly.loop_guard535865 = icmp sgt i64 %164, -1200
  %165 = shl nsw i64 %polly.indvar522, 6
  br i1 %polly.loop_guard535865, label %polly.loop_header532.us, label %polly.loop_exit527

polly.loop_header532.us:                          ; preds = %polly.loop_header519, %polly.loop_exit541.us
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %polly.loop_exit541.us ], [ %indvars.iv810, %polly.loop_header519 ]
  %polly.indvar536.us = phi i64 [ %polly.indvar_next537.us, %polly.loop_exit541.us ], [ 0, %polly.loop_header519 ]
  %smin814 = call i64 @llvm.smin.i64(i64 %indvars.iv812, i64 63)
  %166 = add nuw nsw i64 %polly.indvar536.us, %165
  %167 = mul nuw nsw i64 %166, 8000
  %168 = add nuw nsw i64 %167, %156
  %scevgep548.us = getelementptr i8, i8* %call2, i64 %168
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us = getelementptr i8, i8* %call1, i64 %168
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !83, !noalias !88
  %169 = mul nuw nsw i64 %166, 9600
  br label %polly.loop_header539.us

polly.loop_header539.us:                          ; preds = %polly.loop_header539.us, %polly.loop_header532.us
  %polly.indvar542.us = phi i64 [ 0, %polly.loop_header532.us ], [ %polly.indvar_next543.us, %polly.loop_header539.us ]
  %170 = add nuw nsw i64 %polly.indvar542.us, %162
  %171 = mul nuw nsw i64 %170, 8000
  %172 = add nuw nsw i64 %171, %156
  %scevgep545.us = getelementptr i8, i8* %call1, i64 %172
  %scevgep545546.us = bitcast i8* %scevgep545.us to double*
  %_p_scalar_547.us = load double, double* %scevgep545546.us, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_547.us
  %scevgep551.us = getelementptr i8, i8* %call2, i64 %172
  %scevgep551552.us = bitcast i8* %scevgep551.us to double*
  %_p_scalar_553.us = load double, double* %scevgep551552.us, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_553.us
  %173 = shl i64 %170, 3
  %174 = add nuw nsw i64 %173, %169
  %scevgep557.us = getelementptr i8, i8* %call, i64 %174
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us = add nuw nsw i64 %polly.indvar542.us, 1
  %exitcond815.not = icmp eq i64 %polly.indvar542.us, %smin814
  br i1 %exitcond815.not, label %polly.loop_exit541.us, label %polly.loop_header539.us

polly.loop_exit541.us:                            ; preds = %polly.loop_header539.us
  %polly.indvar_next537.us = add nuw nsw i64 %polly.indvar536.us, 1
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1
  %exitcond822.not = icmp eq i64 %polly.indvar536.us, %smax821
  br i1 %exitcond822.not, label %polly.loop_header532.us.1, label %polly.loop_header532.us

polly.loop_exit527:                               ; preds = %polly.loop_exit541.us.3, %polly.loop_header519
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 64
  %indvars.iv.next819 = add nsw i64 %indvars.iv818, -64
  %exitcond824.not = icmp eq i64 %polly.indvar_next523, 19
  br i1 %exitcond824.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header686:                             ; preds = %entry, %polly.loop_exit694
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %polly.loop_exit694 ], [ 0, %entry ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %entry ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -1168)
  %175 = shl nsw i64 %polly.indvar689, 5
  %176 = add nsw i64 %smin855, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -32
  %exitcond858.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond858.not, label %polly.loop_header713, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit700 ], [ 0, %polly.loop_header686 ]
  %177 = mul nsw i64 %polly.indvar695, -32
  %smin893 = call i64 @llvm.smin.i64(i64 %177, i64 -1168)
  %178 = add nsw i64 %smin893, 1200
  %smin851 = call i64 @llvm.smin.i64(i64 %indvars.iv849, i64 -1168)
  %179 = shl nsw i64 %polly.indvar695, 5
  %180 = add nsw i64 %smin851, 1199
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_exit706
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -32
  %exitcond857.not = icmp eq i64 %polly.indvar_next696, 38
  br i1 %exitcond857.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_exit706, %polly.loop_header692
  %polly.indvar701 = phi i64 [ 0, %polly.loop_header692 ], [ %polly.indvar_next702, %polly.loop_exit706 ]
  %181 = add nuw nsw i64 %polly.indvar701, %175
  %182 = trunc i64 %181 to i32
  %183 = mul nuw nsw i64 %181, 9600
  %min.iters.check = icmp eq i64 %178, 0
  br i1 %min.iters.check, label %polly.loop_header704, label %vector.ph894

vector.ph894:                                     ; preds = %polly.loop_header698
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %179, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph894
  %index895 = phi i64 [ 0, %vector.ph894 ], [ %index.next896, %vector.body892 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph894 ], [ %vec.ind.next900, %vector.body892 ]
  %184 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %185 = trunc <4 x i64> %184 to <4 x i32>
  %186 = mul <4 x i32> %broadcast.splat904, %185
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 1200, i32 1200, i32 1200, i32 1200>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %191 = extractelement <4 x i64> %184, i32 0
  %192 = shl i64 %191, 3
  %193 = add nuw nsw i64 %192, %183
  %194 = getelementptr i8, i8* %call, i64 %193
  %195 = bitcast i8* %194 to <4 x double>*
  store <4 x double> %190, <4 x double>* %195, align 8, !alias.scope !89, !noalias !91
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %196 = icmp eq i64 %index.next896, %178
  br i1 %196, label %polly.loop_exit706, label %vector.body892, !llvm.loop !94

polly.loop_exit706:                               ; preds = %vector.body892, %polly.loop_header704
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond856.not = icmp eq i64 %polly.indvar701, %176
  br i1 %exitcond856.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header704:                             ; preds = %polly.loop_header698, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header698 ]
  %197 = add nuw nsw i64 %polly.indvar707, %179
  %198 = trunc i64 %197 to i32
  %199 = mul i32 %198, %182
  %200 = add i32 %199, 3
  %201 = urem i32 %200, 1200
  %p_conv31.i = sitofp i32 %201 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %202 = shl i64 %197, 3
  %203 = add nuw nsw i64 %202, %183
  %scevgep710 = getelementptr i8, i8* %call, i64 %203
  %scevgep710711 = bitcast i8* %scevgep710 to double*
  store double %p_div33.i, double* %scevgep710711, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond852.not = icmp eq i64 %polly.indvar707, %180
  br i1 %exitcond852.not, label %polly.loop_exit706, label %polly.loop_header704, !llvm.loop !95

polly.loop_header713:                             ; preds = %polly.loop_exit694, %polly.loop_exit721
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_exit694 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -1168)
  %204 = shl nsw i64 %polly.indvar716, 5
  %205 = add nsw i64 %smin845, 1199
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -32
  %exitcond848.not = icmp eq i64 %polly.indvar_next717, 38
  br i1 %exitcond848.not, label %polly.loop_header739, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %polly.indvar722 = phi i64 [ %polly.indvar_next723, %polly.loop_exit727 ], [ 0, %polly.loop_header713 ]
  %206 = mul nsw i64 %polly.indvar722, -32
  %smin908 = call i64 @llvm.smin.i64(i64 %206, i64 -968)
  %207 = add nsw i64 %smin908, 1000
  %smin841 = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 -968)
  %208 = shl nsw i64 %polly.indvar722, 5
  %209 = add nsw i64 %smin841, 999
  br label %polly.loop_header725

polly.loop_exit727:                               ; preds = %polly.loop_exit733
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -32
  %exitcond847.not = icmp eq i64 %polly.indvar_next723, 32
  br i1 %exitcond847.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_exit733, %polly.loop_header719
  %polly.indvar728 = phi i64 [ 0, %polly.loop_header719 ], [ %polly.indvar_next729, %polly.loop_exit733 ]
  %210 = add nuw nsw i64 %polly.indvar728, %204
  %211 = trunc i64 %210 to i32
  %212 = mul nuw nsw i64 %210, 8000
  %min.iters.check909 = icmp eq i64 %207, 0
  br i1 %min.iters.check909, label %polly.loop_header731, label %vector.ph910

vector.ph910:                                     ; preds = %polly.loop_header725
  %broadcast.splatinsert919 = insertelement <4 x i64> poison, i64 %208, i32 0
  %broadcast.splat920 = shufflevector <4 x i64> %broadcast.splatinsert919, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert921 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat922 = shufflevector <4 x i32> %broadcast.splatinsert921, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph910
  %index913 = phi i64 [ 0, %vector.ph910 ], [ %index.next914, %vector.body907 ]
  %vec.ind917 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph910 ], [ %vec.ind.next918, %vector.body907 ]
  %213 = add nuw nsw <4 x i64> %vec.ind917, %broadcast.splat920
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat922, %214
  %216 = add <4 x i32> %215, <i32 2, i32 2, i32 2, i32 2>
  %217 = urem <4 x i32> %216, <i32 1000, i32 1000, i32 1000, i32 1000>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add nuw nsw i64 %221, %212
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !93, !noalias !96
  %index.next914 = add i64 %index913, 4
  %vec.ind.next918 = add <4 x i64> %vec.ind917, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next914, %207
  br i1 %225, label %polly.loop_exit733, label %vector.body907, !llvm.loop !97

polly.loop_exit733:                               ; preds = %vector.body907, %polly.loop_header731
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond846.not = icmp eq i64 %polly.indvar728, %205
  br i1 %exitcond846.not, label %polly.loop_exit727, label %polly.loop_header725

polly.loop_header731:                             ; preds = %polly.loop_header725, %polly.loop_header731
  %polly.indvar734 = phi i64 [ %polly.indvar_next735, %polly.loop_header731 ], [ 0, %polly.loop_header725 ]
  %226 = add nuw nsw i64 %polly.indvar734, %208
  %227 = trunc i64 %226 to i32
  %228 = mul i32 %227, %211
  %229 = add i32 %228, 2
  %230 = urem i32 %229, 1000
  %p_conv10.i = sitofp i32 %230 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %231 = shl i64 %226, 3
  %232 = add nuw nsw i64 %231, %212
  %scevgep737 = getelementptr i8, i8* %call2, i64 %232
  %scevgep737738 = bitcast i8* %scevgep737 to double*
  store double %p_div12.i, double* %scevgep737738, align 8, !alias.scope !93, !noalias !96
  %polly.indvar_next735 = add nuw nsw i64 %polly.indvar734, 1
  %exitcond842.not = icmp eq i64 %polly.indvar734, %209
  br i1 %exitcond842.not, label %polly.loop_exit733, label %polly.loop_header731, !llvm.loop !98

polly.loop_header739:                             ; preds = %polly.loop_exit721, %polly.loop_exit747
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_exit721 ]
  %smin835 = call i64 @llvm.smin.i64(i64 %indvars.iv833, i64 -1168)
  %233 = shl nsw i64 %polly.indvar742, 5
  %234 = add nsw i64 %smin835, 1199
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next834 = add nsw i64 %indvars.iv833, -32
  %exitcond838.not = icmp eq i64 %polly.indvar_next743, 38
  br i1 %exitcond838.not, label %init_array.exit, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %polly.indvar748 = phi i64 [ %polly.indvar_next749, %polly.loop_exit753 ], [ 0, %polly.loop_header739 ]
  %235 = mul nsw i64 %polly.indvar748, -32
  %smin926 = call i64 @llvm.smin.i64(i64 %235, i64 -968)
  %236 = add nsw i64 %smin926, 1000
  %smin831 = call i64 @llvm.smin.i64(i64 %indvars.iv829, i64 -968)
  %237 = shl nsw i64 %polly.indvar748, 5
  %238 = add nsw i64 %smin831, 999
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_exit759
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -32
  %exitcond837.not = icmp eq i64 %polly.indvar_next749, 32
  br i1 %exitcond837.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_exit759, %polly.loop_header745
  %polly.indvar754 = phi i64 [ 0, %polly.loop_header745 ], [ %polly.indvar_next755, %polly.loop_exit759 ]
  %239 = add nuw nsw i64 %polly.indvar754, %233
  %240 = trunc i64 %239 to i32
  %241 = mul nuw nsw i64 %239, 8000
  %min.iters.check927 = icmp eq i64 %236, 0
  br i1 %min.iters.check927, label %polly.loop_header757, label %vector.ph928

vector.ph928:                                     ; preds = %polly.loop_header751
  %broadcast.splatinsert937 = insertelement <4 x i64> poison, i64 %237, i32 0
  %broadcast.splat938 = shufflevector <4 x i64> %broadcast.splatinsert937, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next932, %vector.body925 ]
  %vec.ind935 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next936, %vector.body925 ]
  %242 = add nuw nsw <4 x i64> %vec.ind935, %broadcast.splat938
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat940, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 1200, i32 1200, i32 1200, i32 1200>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add nuw nsw i64 %250, %241
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !92, !noalias !99
  %index.next932 = add i64 %index931, 4
  %vec.ind.next936 = add <4 x i64> %vec.ind935, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next932, %236
  br i1 %254, label %polly.loop_exit759, label %vector.body925, !llvm.loop !100

polly.loop_exit759:                               ; preds = %vector.body925, %polly.loop_header757
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond836.not = icmp eq i64 %polly.indvar754, %234
  br i1 %exitcond836.not, label %polly.loop_exit753, label %polly.loop_header751

polly.loop_header757:                             ; preds = %polly.loop_header751, %polly.loop_header757
  %polly.indvar760 = phi i64 [ %polly.indvar_next761, %polly.loop_header757 ], [ 0, %polly.loop_header751 ]
  %255 = add nuw nsw i64 %polly.indvar760, %237
  %256 = trunc i64 %255 to i32
  %257 = mul i32 %256, %240
  %258 = add i32 %257, 1
  %259 = urem i32 %258, 1200
  %p_conv.i = sitofp i32 %259 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %260 = shl i64 %255, 3
  %261 = add nuw nsw i64 %260, %241
  %scevgep764 = getelementptr i8, i8* %call1, i64 %261
  %scevgep764765 = bitcast i8* %scevgep764 to double*
  store double %p_div.i, double* %scevgep764765, align 8, !alias.scope !92, !noalias !99
  %polly.indvar_next761 = add nuw nsw i64 %polly.indvar760, 1
  %exitcond832.not = icmp eq i64 %polly.indvar760, %238
  br i1 %exitcond832.not, label %polly.loop_exit759, label %polly.loop_header757, !llvm.loop !101

polly.loop_header223.us.1:                        ; preds = %polly.loop_exit231.us, %polly.loop_exit231.us.1
  %indvars.iv777.1 = phi i64 [ %indvars.iv.next778.1, %polly.loop_exit231.us.1 ], [ %indvars.iv, %polly.loop_exit231.us ]
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.loop_exit231.us.1 ], [ 0, %polly.loop_exit231.us ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv777.1, i64 63)
  %262 = add nuw nsw i64 %polly.indvar226.us.1, %107
  %263 = mul nuw nsw i64 %262, 8000
  %264 = add nuw nsw i64 %263, %100
  %scevgep238.us.1 = getelementptr i8, i8* %call2, i64 %264
  %scevgep238239.us.1 = bitcast i8* %scevgep238.us.1 to double*
  %_p_scalar_240.us.1 = load double, double* %scevgep238239.us.1, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.1 = getelementptr i8, i8* %call1, i64 %264
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !64, !noalias !70
  %265 = mul nuw nsw i64 %262, 9600
  br label %polly.loop_header229.us.1

polly.loop_header229.us.1:                        ; preds = %polly.loop_header229.us.1, %polly.loop_header223.us.1
  %polly.indvar232.us.1 = phi i64 [ 0, %polly.loop_header223.us.1 ], [ %polly.indvar_next233.us.1, %polly.loop_header229.us.1 ]
  %266 = add nuw nsw i64 %polly.indvar232.us.1, %104
  %267 = mul nuw nsw i64 %266, 8000
  %268 = add nuw nsw i64 %267, %100
  %scevgep235.us.1 = getelementptr i8, i8* %call1, i64 %268
  %scevgep235236.us.1 = bitcast i8* %scevgep235.us.1 to double*
  %_p_scalar_237.us.1 = load double, double* %scevgep235236.us.1, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_240.us.1, %_p_scalar_237.us.1
  %scevgep241.us.1 = getelementptr i8, i8* %call2, i64 %268
  %scevgep241242.us.1 = bitcast i8* %scevgep241.us.1 to double*
  %_p_scalar_243.us.1 = load double, double* %scevgep241242.us.1, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_243.us.1
  %269 = shl i64 %266, 3
  %270 = add nuw nsw i64 %269, %265
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %270
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar232.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.us.1, label %polly.loop_header229.us.1

polly.loop_exit231.us.1:                          ; preds = %polly.loop_header229.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %indvars.iv.next778.1 = add nuw nsw i64 %indvars.iv777.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar226.us.1, %smax
  br i1 %exitcond784.1.not, label %polly.loop_header223.us.2, label %polly.loop_header223.us.1

polly.loop_header223.us.2:                        ; preds = %polly.loop_exit231.us.1, %polly.loop_exit231.us.2
  %indvars.iv777.2 = phi i64 [ %indvars.iv.next778.2, %polly.loop_exit231.us.2 ], [ %indvars.iv, %polly.loop_exit231.us.1 ]
  %polly.indvar226.us.2 = phi i64 [ %polly.indvar_next227.us.2, %polly.loop_exit231.us.2 ], [ 0, %polly.loop_exit231.us.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv777.2, i64 63)
  %271 = add nuw nsw i64 %polly.indvar226.us.2, %107
  %272 = mul nuw nsw i64 %271, 8000
  %273 = add nuw nsw i64 %272, %102
  %scevgep238.us.2 = getelementptr i8, i8* %call2, i64 %273
  %scevgep238239.us.2 = bitcast i8* %scevgep238.us.2 to double*
  %_p_scalar_240.us.2 = load double, double* %scevgep238239.us.2, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.2 = getelementptr i8, i8* %call1, i64 %273
  %scevgep244245.us.2 = bitcast i8* %scevgep244.us.2 to double*
  %_p_scalar_246.us.2 = load double, double* %scevgep244245.us.2, align 8, !alias.scope !64, !noalias !70
  %274 = mul nuw nsw i64 %271, 9600
  br label %polly.loop_header229.us.2

polly.loop_header229.us.2:                        ; preds = %polly.loop_header229.us.2, %polly.loop_header223.us.2
  %polly.indvar232.us.2 = phi i64 [ 0, %polly.loop_header223.us.2 ], [ %polly.indvar_next233.us.2, %polly.loop_header229.us.2 ]
  %275 = add nuw nsw i64 %polly.indvar232.us.2, %104
  %276 = mul nuw nsw i64 %275, 8000
  %277 = add nuw nsw i64 %276, %102
  %scevgep235.us.2 = getelementptr i8, i8* %call1, i64 %277
  %scevgep235236.us.2 = bitcast i8* %scevgep235.us.2 to double*
  %_p_scalar_237.us.2 = load double, double* %scevgep235236.us.2, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_240.us.2, %_p_scalar_237.us.2
  %scevgep241.us.2 = getelementptr i8, i8* %call2, i64 %277
  %scevgep241242.us.2 = bitcast i8* %scevgep241.us.2 to double*
  %_p_scalar_243.us.2 = load double, double* %scevgep241242.us.2, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_246.us.2, %_p_scalar_243.us.2
  %278 = shl i64 %275, 3
  %279 = add nuw nsw i64 %278, %274
  %scevgep247.us.2 = getelementptr i8, i8* %call, i64 %279
  %scevgep247248.us.2 = bitcast i8* %scevgep247.us.2 to double*
  %_p_scalar_249.us.2 = load double, double* %scevgep247248.us.2, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_249.us.2
  store double %p_add42.i118.us.2, double* %scevgep247248.us.2, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.2 = add nuw nsw i64 %polly.indvar232.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.us.2, label %polly.loop_header229.us.2

polly.loop_exit231.us.2:                          ; preds = %polly.loop_header229.us.2
  %polly.indvar_next227.us.2 = add nuw nsw i64 %polly.indvar226.us.2, 1
  %indvars.iv.next778.2 = add nuw nsw i64 %indvars.iv777.2, 1
  %exitcond784.2.not = icmp eq i64 %polly.indvar226.us.2, %smax
  br i1 %exitcond784.2.not, label %polly.loop_header223.us.3, label %polly.loop_header223.us.2

polly.loop_header223.us.3:                        ; preds = %polly.loop_exit231.us.2, %polly.loop_exit231.us.3
  %indvars.iv777.3 = phi i64 [ %indvars.iv.next778.3, %polly.loop_exit231.us.3 ], [ %indvars.iv, %polly.loop_exit231.us.2 ]
  %polly.indvar226.us.3 = phi i64 [ %polly.indvar_next227.us.3, %polly.loop_exit231.us.3 ], [ 0, %polly.loop_exit231.us.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv777.3, i64 63)
  %280 = add nuw nsw i64 %polly.indvar226.us.3, %107
  %281 = mul nuw nsw i64 %280, 8000
  %282 = add nuw nsw i64 %281, %103
  %scevgep238.us.3 = getelementptr i8, i8* %call2, i64 %282
  %scevgep238239.us.3 = bitcast i8* %scevgep238.us.3 to double*
  %_p_scalar_240.us.3 = load double, double* %scevgep238239.us.3, align 8, !alias.scope !65, !noalias !69
  %scevgep244.us.3 = getelementptr i8, i8* %call1, i64 %282
  %scevgep244245.us.3 = bitcast i8* %scevgep244.us.3 to double*
  %_p_scalar_246.us.3 = load double, double* %scevgep244245.us.3, align 8, !alias.scope !64, !noalias !70
  %283 = mul nuw nsw i64 %280, 9600
  br label %polly.loop_header229.us.3

polly.loop_header229.us.3:                        ; preds = %polly.loop_header229.us.3, %polly.loop_header223.us.3
  %polly.indvar232.us.3 = phi i64 [ 0, %polly.loop_header223.us.3 ], [ %polly.indvar_next233.us.3, %polly.loop_header229.us.3 ]
  %284 = add nuw nsw i64 %polly.indvar232.us.3, %104
  %285 = mul nuw nsw i64 %284, 8000
  %286 = add nuw nsw i64 %285, %103
  %scevgep235.us.3 = getelementptr i8, i8* %call1, i64 %286
  %scevgep235236.us.3 = bitcast i8* %scevgep235.us.3 to double*
  %_p_scalar_237.us.3 = load double, double* %scevgep235236.us.3, align 8, !alias.scope !64, !noalias !70
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_240.us.3, %_p_scalar_237.us.3
  %scevgep241.us.3 = getelementptr i8, i8* %call2, i64 %286
  %scevgep241242.us.3 = bitcast i8* %scevgep241.us.3 to double*
  %_p_scalar_243.us.3 = load double, double* %scevgep241242.us.3, align 8, !alias.scope !65, !noalias !69
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_246.us.3, %_p_scalar_243.us.3
  %287 = shl i64 %284, 3
  %288 = add nuw nsw i64 %287, %283
  %scevgep247.us.3 = getelementptr i8, i8* %call, i64 %288
  %scevgep247248.us.3 = bitcast i8* %scevgep247.us.3 to double*
  %_p_scalar_249.us.3 = load double, double* %scevgep247248.us.3, align 8, !alias.scope !61, !noalias !63
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_249.us.3
  store double %p_add42.i118.us.3, double* %scevgep247248.us.3, align 8, !alias.scope !61, !noalias !63
  %polly.indvar_next233.us.3 = add nuw nsw i64 %polly.indvar232.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.us.3, label %polly.loop_header229.us.3

polly.loop_exit231.us.3:                          ; preds = %polly.loop_header229.us.3
  %polly.indvar_next227.us.3 = add nuw nsw i64 %polly.indvar226.us.3, 1
  %indvars.iv.next778.3 = add nuw nsw i64 %indvars.iv777.3, 1
  %exitcond784.3.not = icmp eq i64 %polly.indvar226.us.3, %smax
  br i1 %exitcond784.3.not, label %polly.loop_exit219, label %polly.loop_header223.us.3

polly.loop_header377.us.1:                        ; preds = %polly.loop_exit386.us, %polly.loop_exit386.us.1
  %indvars.iv793.1 = phi i64 [ %indvars.iv.next794.1, %polly.loop_exit386.us.1 ], [ %indvars.iv791, %polly.loop_exit386.us ]
  %polly.indvar381.us.1 = phi i64 [ %polly.indvar_next382.us.1, %polly.loop_exit386.us.1 ], [ 0, %polly.loop_exit386.us ]
  %smin795.1 = call i64 @llvm.smin.i64(i64 %indvars.iv793.1, i64 63)
  %289 = add nuw nsw i64 %polly.indvar381.us.1, %136
  %290 = mul nuw nsw i64 %289, 8000
  %291 = add nuw nsw i64 %290, %129
  %scevgep393.us.1 = getelementptr i8, i8* %call2, i64 %291
  %scevgep393394.us.1 = bitcast i8* %scevgep393.us.1 to double*
  %_p_scalar_395.us.1 = load double, double* %scevgep393394.us.1, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.1 = getelementptr i8, i8* %call1, i64 %291
  %scevgep399400.us.1 = bitcast i8* %scevgep399.us.1 to double*
  %_p_scalar_401.us.1 = load double, double* %scevgep399400.us.1, align 8, !alias.scope !74, !noalias !79
  %292 = mul nuw nsw i64 %289, 9600
  br label %polly.loop_header384.us.1

polly.loop_header384.us.1:                        ; preds = %polly.loop_header384.us.1, %polly.loop_header377.us.1
  %polly.indvar387.us.1 = phi i64 [ 0, %polly.loop_header377.us.1 ], [ %polly.indvar_next388.us.1, %polly.loop_header384.us.1 ]
  %293 = add nuw nsw i64 %polly.indvar387.us.1, %133
  %294 = mul nuw nsw i64 %293, 8000
  %295 = add nuw nsw i64 %294, %129
  %scevgep390.us.1 = getelementptr i8, i8* %call1, i64 %295
  %scevgep390391.us.1 = bitcast i8* %scevgep390.us.1 to double*
  %_p_scalar_392.us.1 = load double, double* %scevgep390391.us.1, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_395.us.1, %_p_scalar_392.us.1
  %scevgep396.us.1 = getelementptr i8, i8* %call2, i64 %295
  %scevgep396397.us.1 = bitcast i8* %scevgep396.us.1 to double*
  %_p_scalar_398.us.1 = load double, double* %scevgep396397.us.1, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_401.us.1, %_p_scalar_398.us.1
  %296 = shl i64 %293, 3
  %297 = add nuw nsw i64 %296, %292
  %scevgep402.us.1 = getelementptr i8, i8* %call, i64 %297
  %scevgep402403.us.1 = bitcast i8* %scevgep402.us.1 to double*
  %_p_scalar_404.us.1 = load double, double* %scevgep402403.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_404.us.1
  store double %p_add42.i79.us.1, double* %scevgep402403.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.1 = add nuw nsw i64 %polly.indvar387.us.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar387.us.1, %smin795.1
  br i1 %exitcond796.1.not, label %polly.loop_exit386.us.1, label %polly.loop_header384.us.1

polly.loop_exit386.us.1:                          ; preds = %polly.loop_header384.us.1
  %polly.indvar_next382.us.1 = add nuw nsw i64 %polly.indvar381.us.1, 1
  %indvars.iv.next794.1 = add nuw nsw i64 %indvars.iv793.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar381.us.1, %smax802
  br i1 %exitcond803.1.not, label %polly.loop_header377.us.2, label %polly.loop_header377.us.1

polly.loop_header377.us.2:                        ; preds = %polly.loop_exit386.us.1, %polly.loop_exit386.us.2
  %indvars.iv793.2 = phi i64 [ %indvars.iv.next794.2, %polly.loop_exit386.us.2 ], [ %indvars.iv791, %polly.loop_exit386.us.1 ]
  %polly.indvar381.us.2 = phi i64 [ %polly.indvar_next382.us.2, %polly.loop_exit386.us.2 ], [ 0, %polly.loop_exit386.us.1 ]
  %smin795.2 = call i64 @llvm.smin.i64(i64 %indvars.iv793.2, i64 63)
  %298 = add nuw nsw i64 %polly.indvar381.us.2, %136
  %299 = mul nuw nsw i64 %298, 8000
  %300 = add nuw nsw i64 %299, %131
  %scevgep393.us.2 = getelementptr i8, i8* %call2, i64 %300
  %scevgep393394.us.2 = bitcast i8* %scevgep393.us.2 to double*
  %_p_scalar_395.us.2 = load double, double* %scevgep393394.us.2, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.2 = getelementptr i8, i8* %call1, i64 %300
  %scevgep399400.us.2 = bitcast i8* %scevgep399.us.2 to double*
  %_p_scalar_401.us.2 = load double, double* %scevgep399400.us.2, align 8, !alias.scope !74, !noalias !79
  %301 = mul nuw nsw i64 %298, 9600
  br label %polly.loop_header384.us.2

polly.loop_header384.us.2:                        ; preds = %polly.loop_header384.us.2, %polly.loop_header377.us.2
  %polly.indvar387.us.2 = phi i64 [ 0, %polly.loop_header377.us.2 ], [ %polly.indvar_next388.us.2, %polly.loop_header384.us.2 ]
  %302 = add nuw nsw i64 %polly.indvar387.us.2, %133
  %303 = mul nuw nsw i64 %302, 8000
  %304 = add nuw nsw i64 %303, %131
  %scevgep390.us.2 = getelementptr i8, i8* %call1, i64 %304
  %scevgep390391.us.2 = bitcast i8* %scevgep390.us.2 to double*
  %_p_scalar_392.us.2 = load double, double* %scevgep390391.us.2, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_395.us.2, %_p_scalar_392.us.2
  %scevgep396.us.2 = getelementptr i8, i8* %call2, i64 %304
  %scevgep396397.us.2 = bitcast i8* %scevgep396.us.2 to double*
  %_p_scalar_398.us.2 = load double, double* %scevgep396397.us.2, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_401.us.2, %_p_scalar_398.us.2
  %305 = shl i64 %302, 3
  %306 = add nuw nsw i64 %305, %301
  %scevgep402.us.2 = getelementptr i8, i8* %call, i64 %306
  %scevgep402403.us.2 = bitcast i8* %scevgep402.us.2 to double*
  %_p_scalar_404.us.2 = load double, double* %scevgep402403.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_404.us.2
  store double %p_add42.i79.us.2, double* %scevgep402403.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.2 = add nuw nsw i64 %polly.indvar387.us.2, 1
  %exitcond796.2.not = icmp eq i64 %polly.indvar387.us.2, %smin795.2
  br i1 %exitcond796.2.not, label %polly.loop_exit386.us.2, label %polly.loop_header384.us.2

polly.loop_exit386.us.2:                          ; preds = %polly.loop_header384.us.2
  %polly.indvar_next382.us.2 = add nuw nsw i64 %polly.indvar381.us.2, 1
  %indvars.iv.next794.2 = add nuw nsw i64 %indvars.iv793.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar381.us.2, %smax802
  br i1 %exitcond803.2.not, label %polly.loop_header377.us.3, label %polly.loop_header377.us.2

polly.loop_header377.us.3:                        ; preds = %polly.loop_exit386.us.2, %polly.loop_exit386.us.3
  %indvars.iv793.3 = phi i64 [ %indvars.iv.next794.3, %polly.loop_exit386.us.3 ], [ %indvars.iv791, %polly.loop_exit386.us.2 ]
  %polly.indvar381.us.3 = phi i64 [ %polly.indvar_next382.us.3, %polly.loop_exit386.us.3 ], [ 0, %polly.loop_exit386.us.2 ]
  %smin795.3 = call i64 @llvm.smin.i64(i64 %indvars.iv793.3, i64 63)
  %307 = add nuw nsw i64 %polly.indvar381.us.3, %136
  %308 = mul nuw nsw i64 %307, 8000
  %309 = add nuw nsw i64 %308, %132
  %scevgep393.us.3 = getelementptr i8, i8* %call2, i64 %309
  %scevgep393394.us.3 = bitcast i8* %scevgep393.us.3 to double*
  %_p_scalar_395.us.3 = load double, double* %scevgep393394.us.3, align 8, !alias.scope !75, !noalias !78
  %scevgep399.us.3 = getelementptr i8, i8* %call1, i64 %309
  %scevgep399400.us.3 = bitcast i8* %scevgep399.us.3 to double*
  %_p_scalar_401.us.3 = load double, double* %scevgep399400.us.3, align 8, !alias.scope !74, !noalias !79
  %310 = mul nuw nsw i64 %307, 9600
  br label %polly.loop_header384.us.3

polly.loop_header384.us.3:                        ; preds = %polly.loop_header384.us.3, %polly.loop_header377.us.3
  %polly.indvar387.us.3 = phi i64 [ 0, %polly.loop_header377.us.3 ], [ %polly.indvar_next388.us.3, %polly.loop_header384.us.3 ]
  %311 = add nuw nsw i64 %polly.indvar387.us.3, %133
  %312 = mul nuw nsw i64 %311, 8000
  %313 = add nuw nsw i64 %312, %132
  %scevgep390.us.3 = getelementptr i8, i8* %call1, i64 %313
  %scevgep390391.us.3 = bitcast i8* %scevgep390.us.3 to double*
  %_p_scalar_392.us.3 = load double, double* %scevgep390391.us.3, align 8, !alias.scope !74, !noalias !79
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_395.us.3, %_p_scalar_392.us.3
  %scevgep396.us.3 = getelementptr i8, i8* %call2, i64 %313
  %scevgep396397.us.3 = bitcast i8* %scevgep396.us.3 to double*
  %_p_scalar_398.us.3 = load double, double* %scevgep396397.us.3, align 8, !alias.scope !75, !noalias !78
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_401.us.3, %_p_scalar_398.us.3
  %314 = shl i64 %311, 3
  %315 = add nuw nsw i64 %314, %310
  %scevgep402.us.3 = getelementptr i8, i8* %call, i64 %315
  %scevgep402403.us.3 = bitcast i8* %scevgep402.us.3 to double*
  %_p_scalar_404.us.3 = load double, double* %scevgep402403.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_404.us.3
  store double %p_add42.i79.us.3, double* %scevgep402403.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next388.us.3 = add nuw nsw i64 %polly.indvar387.us.3, 1
  %exitcond796.3.not = icmp eq i64 %polly.indvar387.us.3, %smin795.3
  br i1 %exitcond796.3.not, label %polly.loop_exit386.us.3, label %polly.loop_header384.us.3

polly.loop_exit386.us.3:                          ; preds = %polly.loop_header384.us.3
  %polly.indvar_next382.us.3 = add nuw nsw i64 %polly.indvar381.us.3, 1
  %indvars.iv.next794.3 = add nuw nsw i64 %indvars.iv793.3, 1
  %exitcond803.3.not = icmp eq i64 %polly.indvar381.us.3, %smax802
  br i1 %exitcond803.3.not, label %polly.loop_exit372, label %polly.loop_header377.us.3

polly.loop_header532.us.1:                        ; preds = %polly.loop_exit541.us, %polly.loop_exit541.us.1
  %indvars.iv812.1 = phi i64 [ %indvars.iv.next813.1, %polly.loop_exit541.us.1 ], [ %indvars.iv810, %polly.loop_exit541.us ]
  %polly.indvar536.us.1 = phi i64 [ %polly.indvar_next537.us.1, %polly.loop_exit541.us.1 ], [ 0, %polly.loop_exit541.us ]
  %smin814.1 = call i64 @llvm.smin.i64(i64 %indvars.iv812.1, i64 63)
  %316 = add nuw nsw i64 %polly.indvar536.us.1, %165
  %317 = mul nuw nsw i64 %316, 8000
  %318 = add nuw nsw i64 %317, %158
  %scevgep548.us.1 = getelementptr i8, i8* %call2, i64 %318
  %scevgep548549.us.1 = bitcast i8* %scevgep548.us.1 to double*
  %_p_scalar_550.us.1 = load double, double* %scevgep548549.us.1, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.1 = getelementptr i8, i8* %call1, i64 %318
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !83, !noalias !88
  %319 = mul nuw nsw i64 %316, 9600
  br label %polly.loop_header539.us.1

polly.loop_header539.us.1:                        ; preds = %polly.loop_header539.us.1, %polly.loop_header532.us.1
  %polly.indvar542.us.1 = phi i64 [ 0, %polly.loop_header532.us.1 ], [ %polly.indvar_next543.us.1, %polly.loop_header539.us.1 ]
  %320 = add nuw nsw i64 %polly.indvar542.us.1, %162
  %321 = mul nuw nsw i64 %320, 8000
  %322 = add nuw nsw i64 %321, %158
  %scevgep545.us.1 = getelementptr i8, i8* %call1, i64 %322
  %scevgep545546.us.1 = bitcast i8* %scevgep545.us.1 to double*
  %_p_scalar_547.us.1 = load double, double* %scevgep545546.us.1, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_550.us.1, %_p_scalar_547.us.1
  %scevgep551.us.1 = getelementptr i8, i8* %call2, i64 %322
  %scevgep551552.us.1 = bitcast i8* %scevgep551.us.1 to double*
  %_p_scalar_553.us.1 = load double, double* %scevgep551552.us.1, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_553.us.1
  %323 = shl i64 %320, 3
  %324 = add nuw nsw i64 %323, %319
  %scevgep557.us.1 = getelementptr i8, i8* %call, i64 %324
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_559.us.1
  store double %p_add42.i.us.1, double* %scevgep557558.us.1, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.1 = add nuw nsw i64 %polly.indvar542.us.1, 1
  %exitcond815.1.not = icmp eq i64 %polly.indvar542.us.1, %smin814.1
  br i1 %exitcond815.1.not, label %polly.loop_exit541.us.1, label %polly.loop_header539.us.1

polly.loop_exit541.us.1:                          ; preds = %polly.loop_header539.us.1
  %polly.indvar_next537.us.1 = add nuw nsw i64 %polly.indvar536.us.1, 1
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar536.us.1, %smax821
  br i1 %exitcond822.1.not, label %polly.loop_header532.us.2, label %polly.loop_header532.us.1

polly.loop_header532.us.2:                        ; preds = %polly.loop_exit541.us.1, %polly.loop_exit541.us.2
  %indvars.iv812.2 = phi i64 [ %indvars.iv.next813.2, %polly.loop_exit541.us.2 ], [ %indvars.iv810, %polly.loop_exit541.us.1 ]
  %polly.indvar536.us.2 = phi i64 [ %polly.indvar_next537.us.2, %polly.loop_exit541.us.2 ], [ 0, %polly.loop_exit541.us.1 ]
  %smin814.2 = call i64 @llvm.smin.i64(i64 %indvars.iv812.2, i64 63)
  %325 = add nuw nsw i64 %polly.indvar536.us.2, %165
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %160
  %scevgep548.us.2 = getelementptr i8, i8* %call2, i64 %327
  %scevgep548549.us.2 = bitcast i8* %scevgep548.us.2 to double*
  %_p_scalar_550.us.2 = load double, double* %scevgep548549.us.2, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep554555.us.2 = bitcast i8* %scevgep554.us.2 to double*
  %_p_scalar_556.us.2 = load double, double* %scevgep554555.us.2, align 8, !alias.scope !83, !noalias !88
  %328 = mul nuw nsw i64 %325, 9600
  br label %polly.loop_header539.us.2

polly.loop_header539.us.2:                        ; preds = %polly.loop_header539.us.2, %polly.loop_header532.us.2
  %polly.indvar542.us.2 = phi i64 [ 0, %polly.loop_header532.us.2 ], [ %polly.indvar_next543.us.2, %polly.loop_header539.us.2 ]
  %329 = add nuw nsw i64 %polly.indvar542.us.2, %162
  %330 = mul nuw nsw i64 %329, 8000
  %331 = add nuw nsw i64 %330, %160
  %scevgep545.us.2 = getelementptr i8, i8* %call1, i64 %331
  %scevgep545546.us.2 = bitcast i8* %scevgep545.us.2 to double*
  %_p_scalar_547.us.2 = load double, double* %scevgep545546.us.2, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_550.us.2, %_p_scalar_547.us.2
  %scevgep551.us.2 = getelementptr i8, i8* %call2, i64 %331
  %scevgep551552.us.2 = bitcast i8* %scevgep551.us.2 to double*
  %_p_scalar_553.us.2 = load double, double* %scevgep551552.us.2, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_556.us.2, %_p_scalar_553.us.2
  %332 = shl i64 %329, 3
  %333 = add nuw nsw i64 %332, %328
  %scevgep557.us.2 = getelementptr i8, i8* %call, i64 %333
  %scevgep557558.us.2 = bitcast i8* %scevgep557.us.2 to double*
  %_p_scalar_559.us.2 = load double, double* %scevgep557558.us.2, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_559.us.2
  store double %p_add42.i.us.2, double* %scevgep557558.us.2, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.2 = add nuw nsw i64 %polly.indvar542.us.2, 1
  %exitcond815.2.not = icmp eq i64 %polly.indvar542.us.2, %smin814.2
  br i1 %exitcond815.2.not, label %polly.loop_exit541.us.2, label %polly.loop_header539.us.2

polly.loop_exit541.us.2:                          ; preds = %polly.loop_header539.us.2
  %polly.indvar_next537.us.2 = add nuw nsw i64 %polly.indvar536.us.2, 1
  %indvars.iv.next813.2 = add nuw nsw i64 %indvars.iv812.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar536.us.2, %smax821
  br i1 %exitcond822.2.not, label %polly.loop_header532.us.3, label %polly.loop_header532.us.2

polly.loop_header532.us.3:                        ; preds = %polly.loop_exit541.us.2, %polly.loop_exit541.us.3
  %indvars.iv812.3 = phi i64 [ %indvars.iv.next813.3, %polly.loop_exit541.us.3 ], [ %indvars.iv810, %polly.loop_exit541.us.2 ]
  %polly.indvar536.us.3 = phi i64 [ %polly.indvar_next537.us.3, %polly.loop_exit541.us.3 ], [ 0, %polly.loop_exit541.us.2 ]
  %smin814.3 = call i64 @llvm.smin.i64(i64 %indvars.iv812.3, i64 63)
  %334 = add nuw nsw i64 %polly.indvar536.us.3, %165
  %335 = mul nuw nsw i64 %334, 8000
  %336 = add nuw nsw i64 %335, %161
  %scevgep548.us.3 = getelementptr i8, i8* %call2, i64 %336
  %scevgep548549.us.3 = bitcast i8* %scevgep548.us.3 to double*
  %_p_scalar_550.us.3 = load double, double* %scevgep548549.us.3, align 8, !alias.scope !84, !noalias !87
  %scevgep554.us.3 = getelementptr i8, i8* %call1, i64 %336
  %scevgep554555.us.3 = bitcast i8* %scevgep554.us.3 to double*
  %_p_scalar_556.us.3 = load double, double* %scevgep554555.us.3, align 8, !alias.scope !83, !noalias !88
  %337 = mul nuw nsw i64 %334, 9600
  br label %polly.loop_header539.us.3

polly.loop_header539.us.3:                        ; preds = %polly.loop_header539.us.3, %polly.loop_header532.us.3
  %polly.indvar542.us.3 = phi i64 [ 0, %polly.loop_header532.us.3 ], [ %polly.indvar_next543.us.3, %polly.loop_header539.us.3 ]
  %338 = add nuw nsw i64 %polly.indvar542.us.3, %162
  %339 = mul nuw nsw i64 %338, 8000
  %340 = add nuw nsw i64 %339, %161
  %scevgep545.us.3 = getelementptr i8, i8* %call1, i64 %340
  %scevgep545546.us.3 = bitcast i8* %scevgep545.us.3 to double*
  %_p_scalar_547.us.3 = load double, double* %scevgep545546.us.3, align 8, !alias.scope !83, !noalias !88
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_550.us.3, %_p_scalar_547.us.3
  %scevgep551.us.3 = getelementptr i8, i8* %call2, i64 %340
  %scevgep551552.us.3 = bitcast i8* %scevgep551.us.3 to double*
  %_p_scalar_553.us.3 = load double, double* %scevgep551552.us.3, align 8, !alias.scope !84, !noalias !87
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_556.us.3, %_p_scalar_553.us.3
  %341 = shl i64 %338, 3
  %342 = add nuw nsw i64 %341, %337
  %scevgep557.us.3 = getelementptr i8, i8* %call, i64 %342
  %scevgep557558.us.3 = bitcast i8* %scevgep557.us.3 to double*
  %_p_scalar_559.us.3 = load double, double* %scevgep557558.us.3, align 8, !alias.scope !80, !noalias !82
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_559.us.3
  store double %p_add42.i.us.3, double* %scevgep557558.us.3, align 8, !alias.scope !80, !noalias !82
  %polly.indvar_next543.us.3 = add nuw nsw i64 %polly.indvar542.us.3, 1
  %exitcond815.3.not = icmp eq i64 %polly.indvar542.us.3, %smin814.3
  br i1 %exitcond815.3.not, label %polly.loop_exit541.us.3, label %polly.loop_header539.us.3

polly.loop_exit541.us.3:                          ; preds = %polly.loop_header539.us.3
  %polly.indvar_next537.us.3 = add nuw nsw i64 %polly.indvar536.us.3, 1
  %indvars.iv.next813.3 = add nuw nsw i64 %indvars.iv812.3, 1
  %exitcond822.3.not = icmp eq i64 %polly.indvar536.us.3, %smax821
  br i1 %exitcond822.3.not, label %polly.loop_exit527, label %polly.loop_header532.us.3
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 4}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !24, !44, !50}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !22, !46, !47, !48, !49}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.interchange.enable", i1 true}
!48 = !{!"llvm.loop.interchange.depth", i32 5}
!49 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!50 = !{!"llvm.loop.tile.followup_tile", !51}
!51 = distinct !{!51, !12, !22, !52}
!52 = !{!"llvm.loop.id", !"i2"}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !4, i64 0}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !62, !"polly.alias.scope.MemRef_call"}
!62 = distinct !{!62, !"polly.alias.scope.domain"}
!63 = !{!64, !65}
!64 = distinct !{!64, !62, !"polly.alias.scope.MemRef_call1"}
!65 = distinct !{!65, !62, !"polly.alias.scope.MemRef_call2"}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !68, !13}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!61, !64}
!70 = !{!61, !65}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !68, !13}
!78 = !{!71, !74}
!79 = !{!71, !75}
!80 = distinct !{!80, !81, !"polly.alias.scope.MemRef_call"}
!81 = distinct !{!81, !"polly.alias.scope.domain"}
!82 = !{!83, !84}
!83 = distinct !{!83, !81, !"polly.alias.scope.MemRef_call1"}
!84 = distinct !{!84, !81, !"polly.alias.scope.MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !68, !13}
!87 = !{!80, !83}
!88 = !{!80, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !68, !13}
!96 = !{!92, !89}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !68, !13}
!99 = !{!93, !89}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !68, !13}
