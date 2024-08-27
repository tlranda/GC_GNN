; ModuleID = 'syr2k_exhaustive/mmp_all_XL_8951.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_8951.c"
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
  %call706 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.call1567 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1567, %call2
  %polly.access.call2587 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2587, %call1
  %2 = or i1 %0, %1
  %polly.access.call607 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call607, %call2
  %4 = icmp ule i8* %polly.access.call2587, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call607, %call1
  %8 = icmp ule i8* %polly.access.call1567, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header680, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv7.i, i64 %index882
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit741
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header487, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %index948
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517.4
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header334, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %index971
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load975 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load975, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %57 = icmp eq i64 %index.next972, %n.vec970
  br i1 %57, label %middle.block964, label %vector.body966, !llvm.loop !54

middle.block964:                                  ; preds = %vector.body966
  %cmp.n974 = icmp eq i64 %indvars.iv21.i52, %n.vec970
  br i1 %cmp.n974, label %for.inc6.i63, label %for.body3.i60.preheader1019

for.body3.i60.preheader1019:                      ; preds = %for.body3.i60.preheader, %middle.block964
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec970, %middle.block964 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1019, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1019 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit364.4
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %index997
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1001 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1001, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next998 = add i64 %index997, 4
  %68 = icmp eq i64 %index.next998, %n.vec996
  br i1 %68, label %middle.block990, label %vector.body992, !llvm.loop !56

middle.block990:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %indvars.iv21.i91, %n.vec996
  br i1 %cmp.n1000, label %for.inc6.i102, label %for.body3.i99.preheader1017

for.body3.i99.preheader1017:                      ; preds = %for.body3.i99.preheader, %middle.block990
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec996, %middle.block990 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1017, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1017 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.4
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call706, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %wide.load1015 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1015, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1012 = add i64 %index1011, 4
  %95 = icmp eq i64 %index.next1012, %n.vec1010
  br i1 %95, label %middle.block1002, label %vector.body1004, !llvm.loop !67

middle.block1002:                                 ; preds = %vector.body1004
  %cmp.n1014 = icmp eq i64 %88, %n.vec1010
  br i1 %cmp.n1014, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1002
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1010, %middle.block1002 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1002
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1006 = add i64 %indvar1005, 1
  br i1 %exitcond780.not, label %polly.loop_header205, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond779.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header205:                             ; preds = %polly.loop_exit193, %polly.loop_exit213
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_exit193 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv768, i64 0)
  %97 = add nuw i64 %smax, %indvars.iv772
  %98 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next769 = add nsw i64 %indvars.iv768, -80
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 80
  %exitcond777.not = icmp eq i64 %polly.indvar_next209, 15
  br i1 %exitcond777.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %99 = shl nuw nsw i64 %polly.indvar214, 3
  %scevgep229 = getelementptr i8, i8* %call1, i64 %99
  %scevgep233 = getelementptr i8, i8* %call2, i64 %99
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond776.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %polly.loop_exit225 ], [ %97, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv774, i64 255)
  %100 = add nuw i64 %polly.indvar220, %98
  %polly.loop_guard851 = icmp sgt i64 %100, -1
  br i1 %polly.loop_guard851, label %polly.loop_header223.preheader, label %polly.loop_exit225

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217
  %101 = mul i64 %100, 8000
  %scevgep234 = getelementptr i8, i8* %scevgep233, i64 %101
  %scevgep234235 = bitcast i8* %scevgep234 to double*
  %_p_scalar_236 = load double, double* %scevgep234235, align 8, !alias.scope !66, !noalias !70
  %scevgep242 = getelementptr i8, i8* %scevgep229, i64 %101
  %scevgep242243 = bitcast i8* %scevgep242 to double*
  %_p_scalar_244 = load double, double* %scevgep242243, align 8, !alias.scope !65, !noalias !71
  %102 = mul i64 %100, 9600
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 79
  %indvars.iv.next775 = add i64 %indvars.iv774, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header223:                             ; preds = %polly.loop_header223.preheader, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header223.preheader ]
  %103 = mul nuw nsw i64 %polly.indvar226, 8000
  %scevgep230 = getelementptr i8, i8* %scevgep229, i64 %103
  %scevgep230231 = bitcast i8* %scevgep230 to double*
  %_p_scalar_232 = load double, double* %scevgep230231, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_236, %_p_scalar_232
  %scevgep238 = getelementptr i8, i8* %scevgep233, i64 %103
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_244, %_p_scalar_240
  %104 = shl i64 %polly.indvar226, 3
  %105 = add i64 %104, %102
  %scevgep245 = getelementptr i8, i8* %call, i64 %105
  %scevgep245246 = bitcast i8* %scevgep245 to double*
  %_p_scalar_247 = load double, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_247
  store double %p_add42.i118, double* %scevgep245246, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header334:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit342
  %indvar979 = phi i64 [ %indvar.next980, %polly.loop_exit342 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar337 = phi i64 [ %polly.indvar_next338, %polly.loop_exit342 ], [ 1, %kernel_syr2k.exit ]
  %106 = add i64 %indvar979, 1
  %107 = mul nuw nsw i64 %polly.indvar337, 9600
  %scevgep346 = getelementptr i8, i8* %call, i64 %107
  %min.iters.check981 = icmp ult i64 %106, 4
  br i1 %min.iters.check981, label %polly.loop_header340.preheader, label %vector.ph982

vector.ph982:                                     ; preds = %polly.loop_header334
  %n.vec984 = and i64 %106, -4
  br label %vector.body978

vector.body978:                                   ; preds = %vector.body978, %vector.ph982
  %index985 = phi i64 [ 0, %vector.ph982 ], [ %index.next986, %vector.body978 ]
  %108 = shl nuw nsw i64 %index985, 3
  %109 = getelementptr i8, i8* %scevgep346, i64 %108
  %110 = bitcast i8* %109 to <4 x double>*
  %wide.load989 = load <4 x double>, <4 x double>* %110, align 8, !alias.scope !72, !noalias !74
  %111 = fmul fast <4 x double> %wide.load989, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %112 = bitcast i8* %109 to <4 x double>*
  store <4 x double> %111, <4 x double>* %112, align 8, !alias.scope !72, !noalias !74
  %index.next986 = add i64 %index985, 4
  %113 = icmp eq i64 %index.next986, %n.vec984
  br i1 %113, label %middle.block976, label %vector.body978, !llvm.loop !77

middle.block976:                                  ; preds = %vector.body978
  %cmp.n988 = icmp eq i64 %106, %n.vec984
  br i1 %cmp.n988, label %polly.loop_exit342, label %polly.loop_header340.preheader

polly.loop_header340.preheader:                   ; preds = %polly.loop_header334, %middle.block976
  %polly.indvar343.ph = phi i64 [ 0, %polly.loop_header334 ], [ %n.vec984, %middle.block976 ]
  br label %polly.loop_header340

polly.loop_exit342:                               ; preds = %polly.loop_header340, %middle.block976
  %polly.indvar_next338 = add nuw nsw i64 %polly.indvar337, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next338, 1200
  %indvar.next980 = add i64 %indvar979, 1
  br i1 %exitcond798.not, label %polly.loop_header356, label %polly.loop_header334

polly.loop_header340:                             ; preds = %polly.loop_header340.preheader, %polly.loop_header340
  %polly.indvar343 = phi i64 [ %polly.indvar_next344, %polly.loop_header340 ], [ %polly.indvar343.ph, %polly.loop_header340.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar343, 3
  %scevgep347 = getelementptr i8, i8* %scevgep346, i64 %114
  %scevgep347348 = bitcast i8* %scevgep347 to double*
  %_p_scalar_349 = load double, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_349, 1.200000e+00
  store double %p_mul.i57, double* %scevgep347348, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next344 = add nuw nsw i64 %polly.indvar343, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next344, %polly.indvar337
  br i1 %exitcond797.not, label %polly.loop_exit342, label %polly.loop_header340, !llvm.loop !78

polly.loop_header356:                             ; preds = %polly.loop_exit342, %polly.loop_exit364
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 0, %polly.loop_exit342 ]
  %smax785 = call i64 @llvm.smax.i64(i64 %indvars.iv783, i64 0)
  %115 = add nuw i64 %smax785, %indvars.iv788
  %116 = mul nuw nsw i64 %polly.indvar359, 80
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_exit370
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %indvars.iv.next784 = add nsw i64 %indvars.iv783, -80
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 80
  %exitcond795.not = icmp eq i64 %polly.indvar_next360, 15
  br i1 %exitcond795.not, label %polly.loop_header356.1, label %polly.loop_header356

polly.loop_header362:                             ; preds = %polly.loop_exit370, %polly.loop_header356
  %polly.indvar365 = phi i64 [ 0, %polly.loop_header356 ], [ %polly.indvar_next366, %polly.loop_exit370 ]
  %117 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep382 = getelementptr i8, i8* %call1, i64 %117
  %scevgep386 = getelementptr i8, i8* %call2, i64 %117
  br label %polly.loop_header368

polly.loop_exit370:                               ; preds = %polly.loop_exit377
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next366, 1000
  br i1 %exitcond794.not, label %polly.loop_exit364, label %polly.loop_header362

polly.loop_header368:                             ; preds = %polly.loop_exit377, %polly.loop_header362
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit377 ], [ %115, %polly.loop_header362 ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit377 ], [ 0, %polly.loop_header362 ]
  %smin792 = call i64 @llvm.smin.i64(i64 %indvars.iv790, i64 255)
  %118 = add nuw i64 %polly.indvar371, %116
  %polly.loop_guard378856 = icmp sgt i64 %118, -1
  br i1 %polly.loop_guard378856, label %polly.loop_header375.preheader, label %polly.loop_exit377

polly.loop_header375.preheader:                   ; preds = %polly.loop_header368
  %119 = mul i64 %118, 8000
  %scevgep387 = getelementptr i8, i8* %scevgep386, i64 %119
  %scevgep387388 = bitcast i8* %scevgep387 to double*
  %_p_scalar_389 = load double, double* %scevgep387388, align 8, !alias.scope !76, !noalias !79
  %scevgep395 = getelementptr i8, i8* %scevgep382, i64 %119
  %scevgep395396 = bitcast i8* %scevgep395 to double*
  %_p_scalar_397 = load double, double* %scevgep395396, align 8, !alias.scope !75, !noalias !80
  %120 = mul i64 %118, 9600
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %polly.loop_header368
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %polly.loop_cond373 = icmp ult i64 %polly.indvar371, 79
  %indvars.iv.next791 = add i64 %indvars.iv790, 1
  br i1 %polly.loop_cond373, label %polly.loop_header368, label %polly.loop_exit370

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_header375 ], [ 0, %polly.loop_header375.preheader ]
  %121 = mul nuw nsw i64 %polly.indvar379, 8000
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %121
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_389, %_p_scalar_385
  %scevgep391 = getelementptr i8, i8* %scevgep386, i64 %121
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_397, %_p_scalar_393
  %122 = shl i64 %polly.indvar379, 3
  %123 = add i64 %122, %120
  %scevgep398 = getelementptr i8, i8* %call, i64 %123
  %scevgep398399 = bitcast i8* %scevgep398 to double*
  %_p_scalar_400 = load double, double* %scevgep398399, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_400
  store double %p_add42.i79, double* %scevgep398399, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond793.not = icmp eq i64 %polly.indvar379, %smin792
  br i1 %exitcond793.not, label %polly.loop_exit377, label %polly.loop_header375

polly.loop_header487:                             ; preds = %init_array.exit, %polly.loop_exit495
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit495 ], [ 0, %init_array.exit ]
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_exit495 ], [ 1, %init_array.exit ]
  %124 = add i64 %indvar, 1
  %125 = mul nuw nsw i64 %polly.indvar490, 9600
  %scevgep499 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check955 = icmp ult i64 %124, 4
  br i1 %min.iters.check955, label %polly.loop_header493.preheader, label %vector.ph956

vector.ph956:                                     ; preds = %polly.loop_header487
  %n.vec958 = and i64 %124, -4
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph956
  %index959 = phi i64 [ 0, %vector.ph956 ], [ %index.next960, %vector.body954 ]
  %126 = shl nuw nsw i64 %index959, 3
  %127 = getelementptr i8, i8* %scevgep499, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load963 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !81, !noalias !83
  %129 = fmul fast <4 x double> %wide.load963, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !81, !noalias !83
  %index.next960 = add i64 %index959, 4
  %131 = icmp eq i64 %index.next960, %n.vec958
  br i1 %131, label %middle.block952, label %vector.body954, !llvm.loop !86

middle.block952:                                  ; preds = %vector.body954
  %cmp.n962 = icmp eq i64 %124, %n.vec958
  br i1 %cmp.n962, label %polly.loop_exit495, label %polly.loop_header493.preheader

polly.loop_header493.preheader:                   ; preds = %polly.loop_header487, %middle.block952
  %polly.indvar496.ph = phi i64 [ 0, %polly.loop_header487 ], [ %n.vec958, %middle.block952 ]
  br label %polly.loop_header493

polly.loop_exit495:                               ; preds = %polly.loop_header493, %middle.block952
  %polly.indvar_next491 = add nuw nsw i64 %polly.indvar490, 1
  %exitcond816.not = icmp eq i64 %polly.indvar_next491, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond816.not, label %polly.loop_header509, label %polly.loop_header487

polly.loop_header493:                             ; preds = %polly.loop_header493.preheader, %polly.loop_header493
  %polly.indvar496 = phi i64 [ %polly.indvar_next497, %polly.loop_header493 ], [ %polly.indvar496.ph, %polly.loop_header493.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar496, 3
  %scevgep500 = getelementptr i8, i8* %scevgep499, i64 %132
  %scevgep500501 = bitcast i8* %scevgep500 to double*
  %_p_scalar_502 = load double, double* %scevgep500501, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_502, 1.200000e+00
  store double %p_mul.i, double* %scevgep500501, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next497 = add nuw nsw i64 %polly.indvar496, 1
  %exitcond815.not = icmp eq i64 %polly.indvar_next497, %polly.indvar490
  br i1 %exitcond815.not, label %polly.loop_exit495, label %polly.loop_header493, !llvm.loop !87

polly.loop_header509:                             ; preds = %polly.loop_exit495, %polly.loop_exit517
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %indvars.iv801 = phi i64 [ %indvars.iv.next802, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 0, %polly.loop_exit495 ]
  %smax803 = call i64 @llvm.smax.i64(i64 %indvars.iv801, i64 0)
  %133 = add nuw i64 %smax803, %indvars.iv806
  %134 = mul nuw nsw i64 %polly.indvar512, 80
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit523
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %indvars.iv.next802 = add nsw i64 %indvars.iv801, -80
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 80
  %exitcond813.not = icmp eq i64 %polly.indvar_next513, 15
  br i1 %exitcond813.not, label %polly.loop_header509.1, label %polly.loop_header509

polly.loop_header515:                             ; preds = %polly.loop_exit523, %polly.loop_header509
  %polly.indvar518 = phi i64 [ 0, %polly.loop_header509 ], [ %polly.indvar_next519, %polly.loop_exit523 ]
  %135 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep535 = getelementptr i8, i8* %call1, i64 %135
  %scevgep539 = getelementptr i8, i8* %call2, i64 %135
  br label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_exit530
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next519, 1000
  br i1 %exitcond812.not, label %polly.loop_exit517, label %polly.loop_header515

polly.loop_header521:                             ; preds = %polly.loop_exit530, %polly.loop_header515
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %polly.loop_exit530 ], [ %133, %polly.loop_header515 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit530 ], [ 0, %polly.loop_header515 ]
  %smin810 = call i64 @llvm.smin.i64(i64 %indvars.iv808, i64 255)
  %136 = add nuw i64 %polly.indvar524, %134
  %polly.loop_guard531861 = icmp sgt i64 %136, -1
  br i1 %polly.loop_guard531861, label %polly.loop_header528.preheader, label %polly.loop_exit530

polly.loop_header528.preheader:                   ; preds = %polly.loop_header521
  %137 = mul i64 %136, 8000
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %137
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !85, !noalias !88
  %scevgep548 = getelementptr i8, i8* %scevgep535, i64 %137
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !84, !noalias !89
  %138 = mul i64 %136, 9600
  br label %polly.loop_header528

polly.loop_exit530:                               ; preds = %polly.loop_header528, %polly.loop_header521
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %polly.loop_cond526 = icmp ult i64 %polly.indvar524, 79
  %indvars.iv.next809 = add i64 %indvars.iv808, 1
  br i1 %polly.loop_cond526, label %polly.loop_header521, label %polly.loop_exit523

polly.loop_header528:                             ; preds = %polly.loop_header528.preheader, %polly.loop_header528
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_header528 ], [ 0, %polly.loop_header528.preheader ]
  %139 = mul nuw nsw i64 %polly.indvar532, 8000
  %scevgep536 = getelementptr i8, i8* %scevgep535, i64 %139
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %scevgep544 = getelementptr i8, i8* %scevgep539, i64 %139
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_550, %_p_scalar_546
  %140 = shl i64 %polly.indvar532, 3
  %141 = add i64 %140, %138
  %scevgep551 = getelementptr i8, i8* %call, i64 %141
  %scevgep551552 = bitcast i8* %scevgep551 to double*
  %_p_scalar_553 = load double, double* %scevgep551552, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_553
  store double %p_add42.i, double* %scevgep551552, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond811.not = icmp eq i64 %polly.indvar532, %smin810
  br i1 %exitcond811.not, label %polly.loop_exit530, label %polly.loop_header528

polly.loop_header680:                             ; preds = %entry, %polly.loop_exit688
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %polly.loop_exit688 ], [ 0, %entry ]
  %polly.indvar683 = phi i64 [ %polly.indvar_next684, %polly.loop_exit688 ], [ 0, %entry ]
  %smin843 = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 -1168)
  %142 = shl nsw i64 %polly.indvar683, 5
  %143 = add nsw i64 %smin843, 1199
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit694
  %polly.indvar_next684 = add nuw nsw i64 %polly.indvar683, 1
  %indvars.iv.next842 = add nsw i64 %indvars.iv841, -32
  %exitcond846.not = icmp eq i64 %polly.indvar_next684, 38
  br i1 %exitcond846.not, label %polly.loop_header707, label %polly.loop_header680

polly.loop_header686:                             ; preds = %polly.loop_exit694, %polly.loop_header680
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit694 ], [ 0, %polly.loop_header680 ]
  %144 = mul nsw i64 %polly.indvar689, -32
  %smin893 = call i64 @llvm.smin.i64(i64 %144, i64 -1168)
  %145 = add nsw i64 %smin893, 1200
  %smin839 = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 -1168)
  %146 = shl nsw i64 %polly.indvar689, 5
  %147 = add nsw i64 %smin839, 1199
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit700
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, -32
  %exitcond845.not = icmp eq i64 %polly.indvar_next690, 38
  br i1 %exitcond845.not, label %polly.loop_exit688, label %polly.loop_header686

polly.loop_header692:                             ; preds = %polly.loop_exit700, %polly.loop_header686
  %polly.indvar695 = phi i64 [ 0, %polly.loop_header686 ], [ %polly.indvar_next696, %polly.loop_exit700 ]
  %148 = add nuw nsw i64 %polly.indvar695, %142
  %149 = trunc i64 %148 to i32
  %150 = mul nuw nsw i64 %148, 9600
  %min.iters.check = icmp eq i64 %145, 0
  br i1 %min.iters.check, label %polly.loop_header698, label %vector.ph894

vector.ph894:                                     ; preds = %polly.loop_header692
  %broadcast.splatinsert901 = insertelement <4 x i64> poison, i64 %146, i32 0
  %broadcast.splat902 = shufflevector <4 x i64> %broadcast.splatinsert901, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat904 = shufflevector <4 x i32> %broadcast.splatinsert903, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph894
  %index895 = phi i64 [ 0, %vector.ph894 ], [ %index.next896, %vector.body892 ]
  %vec.ind899 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph894 ], [ %vec.ind.next900, %vector.body892 ]
  %151 = add nuw nsw <4 x i64> %vec.ind899, %broadcast.splat902
  %152 = trunc <4 x i64> %151 to <4 x i32>
  %153 = mul <4 x i32> %broadcast.splat904, %152
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 1200, i32 1200, i32 1200, i32 1200>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %158 = extractelement <4 x i64> %151, i32 0
  %159 = shl i64 %158, 3
  %160 = add nuw nsw i64 %159, %150
  %161 = getelementptr i8, i8* %call, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %157, <4 x double>* %162, align 8, !alias.scope !90, !noalias !92
  %index.next896 = add i64 %index895, 4
  %vec.ind.next900 = add <4 x i64> %vec.ind899, <i64 4, i64 4, i64 4, i64 4>
  %163 = icmp eq i64 %index.next896, %145
  br i1 %163, label %polly.loop_exit700, label %vector.body892, !llvm.loop !95

polly.loop_exit700:                               ; preds = %vector.body892, %polly.loop_header698
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %exitcond844.not = icmp eq i64 %polly.indvar695, %143
  br i1 %exitcond844.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header698:                             ; preds = %polly.loop_header692, %polly.loop_header698
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_header698 ], [ 0, %polly.loop_header692 ]
  %164 = add nuw nsw i64 %polly.indvar701, %146
  %165 = trunc i64 %164 to i32
  %166 = mul i32 %165, %149
  %167 = add i32 %166, 3
  %168 = urem i32 %167, 1200
  %p_conv31.i = sitofp i32 %168 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %169 = shl i64 %164, 3
  %170 = add nuw nsw i64 %169, %150
  %scevgep704 = getelementptr i8, i8* %call, i64 %170
  %scevgep704705 = bitcast i8* %scevgep704 to double*
  store double %p_div33.i, double* %scevgep704705, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond840.not = icmp eq i64 %polly.indvar701, %147
  br i1 %exitcond840.not, label %polly.loop_exit700, label %polly.loop_header698, !llvm.loop !96

polly.loop_header707:                             ; preds = %polly.loop_exit688, %polly.loop_exit715
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %polly.indvar710 = phi i64 [ %polly.indvar_next711, %polly.loop_exit715 ], [ 0, %polly.loop_exit688 ]
  %smin833 = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 -1168)
  %171 = shl nsw i64 %polly.indvar710, 5
  %172 = add nsw i64 %smin833, 1199
  br label %polly.loop_header713

polly.loop_exit715:                               ; preds = %polly.loop_exit721
  %polly.indvar_next711 = add nuw nsw i64 %polly.indvar710, 1
  %indvars.iv.next832 = add nsw i64 %indvars.iv831, -32
  %exitcond836.not = icmp eq i64 %polly.indvar_next711, 38
  br i1 %exitcond836.not, label %polly.loop_header733, label %polly.loop_header707

polly.loop_header713:                             ; preds = %polly.loop_exit721, %polly.loop_header707
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_exit721 ], [ 0, %polly.loop_header707 ]
  %173 = mul nsw i64 %polly.indvar716, -32
  %smin908 = call i64 @llvm.smin.i64(i64 %173, i64 -968)
  %174 = add nsw i64 %smin908, 1000
  %smin829 = call i64 @llvm.smin.i64(i64 %indvars.iv827, i64 -968)
  %175 = shl nsw i64 %polly.indvar716, 5
  %176 = add nsw i64 %smin829, 999
  br label %polly.loop_header719

polly.loop_exit721:                               ; preds = %polly.loop_exit727
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %indvars.iv.next828 = add nsw i64 %indvars.iv827, -32
  %exitcond835.not = icmp eq i64 %polly.indvar_next717, 32
  br i1 %exitcond835.not, label %polly.loop_exit715, label %polly.loop_header713

polly.loop_header719:                             ; preds = %polly.loop_exit727, %polly.loop_header713
  %polly.indvar722 = phi i64 [ 0, %polly.loop_header713 ], [ %polly.indvar_next723, %polly.loop_exit727 ]
  %177 = add nuw nsw i64 %polly.indvar722, %171
  %178 = trunc i64 %177 to i32
  %179 = mul nuw nsw i64 %177, 8000
  %min.iters.check909 = icmp eq i64 %174, 0
  br i1 %min.iters.check909, label %polly.loop_header725, label %vector.ph910

vector.ph910:                                     ; preds = %polly.loop_header719
  %broadcast.splatinsert919 = insertelement <4 x i64> poison, i64 %175, i32 0
  %broadcast.splat920 = shufflevector <4 x i64> %broadcast.splatinsert919, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert921 = insertelement <4 x i32> poison, i32 %178, i32 0
  %broadcast.splat922 = shufflevector <4 x i32> %broadcast.splatinsert921, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph910
  %index913 = phi i64 [ 0, %vector.ph910 ], [ %index.next914, %vector.body907 ]
  %vec.ind917 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph910 ], [ %vec.ind.next918, %vector.body907 ]
  %180 = add nuw nsw <4 x i64> %vec.ind917, %broadcast.splat920
  %181 = trunc <4 x i64> %180 to <4 x i32>
  %182 = mul <4 x i32> %broadcast.splat922, %181
  %183 = add <4 x i32> %182, <i32 2, i32 2, i32 2, i32 2>
  %184 = urem <4 x i32> %183, <i32 1000, i32 1000, i32 1000, i32 1000>
  %185 = sitofp <4 x i32> %184 to <4 x double>
  %186 = fmul fast <4 x double> %185, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %187 = extractelement <4 x i64> %180, i32 0
  %188 = shl i64 %187, 3
  %189 = add nuw nsw i64 %188, %179
  %190 = getelementptr i8, i8* %call2, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %186, <4 x double>* %191, align 8, !alias.scope !94, !noalias !97
  %index.next914 = add i64 %index913, 4
  %vec.ind.next918 = add <4 x i64> %vec.ind917, <i64 4, i64 4, i64 4, i64 4>
  %192 = icmp eq i64 %index.next914, %174
  br i1 %192, label %polly.loop_exit727, label %vector.body907, !llvm.loop !98

polly.loop_exit727:                               ; preds = %vector.body907, %polly.loop_header725
  %polly.indvar_next723 = add nuw nsw i64 %polly.indvar722, 1
  %exitcond834.not = icmp eq i64 %polly.indvar722, %172
  br i1 %exitcond834.not, label %polly.loop_exit721, label %polly.loop_header719

polly.loop_header725:                             ; preds = %polly.loop_header719, %polly.loop_header725
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_header725 ], [ 0, %polly.loop_header719 ]
  %193 = add nuw nsw i64 %polly.indvar728, %175
  %194 = trunc i64 %193 to i32
  %195 = mul i32 %194, %178
  %196 = add i32 %195, 2
  %197 = urem i32 %196, 1000
  %p_conv10.i = sitofp i32 %197 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %198 = shl i64 %193, 3
  %199 = add nuw nsw i64 %198, %179
  %scevgep731 = getelementptr i8, i8* %call2, i64 %199
  %scevgep731732 = bitcast i8* %scevgep731 to double*
  store double %p_div12.i, double* %scevgep731732, align 8, !alias.scope !94, !noalias !97
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond830.not = icmp eq i64 %polly.indvar728, %176
  br i1 %exitcond830.not, label %polly.loop_exit727, label %polly.loop_header725, !llvm.loop !99

polly.loop_header733:                             ; preds = %polly.loop_exit715, %polly.loop_exit741
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %polly.indvar736 = phi i64 [ %polly.indvar_next737, %polly.loop_exit741 ], [ 0, %polly.loop_exit715 ]
  %smin823 = call i64 @llvm.smin.i64(i64 %indvars.iv821, i64 -1168)
  %200 = shl nsw i64 %polly.indvar736, 5
  %201 = add nsw i64 %smin823, 1199
  br label %polly.loop_header739

polly.loop_exit741:                               ; preds = %polly.loop_exit747
  %polly.indvar_next737 = add nuw nsw i64 %polly.indvar736, 1
  %indvars.iv.next822 = add nsw i64 %indvars.iv821, -32
  %exitcond826.not = icmp eq i64 %polly.indvar_next737, 38
  br i1 %exitcond826.not, label %init_array.exit, label %polly.loop_header733

polly.loop_header739:                             ; preds = %polly.loop_exit747, %polly.loop_header733
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %polly.indvar742 = phi i64 [ %polly.indvar_next743, %polly.loop_exit747 ], [ 0, %polly.loop_header733 ]
  %202 = mul nsw i64 %polly.indvar742, -32
  %smin926 = call i64 @llvm.smin.i64(i64 %202, i64 -968)
  %203 = add nsw i64 %smin926, 1000
  %smin819 = call i64 @llvm.smin.i64(i64 %indvars.iv817, i64 -968)
  %204 = shl nsw i64 %polly.indvar742, 5
  %205 = add nsw i64 %smin819, 999
  br label %polly.loop_header745

polly.loop_exit747:                               ; preds = %polly.loop_exit753
  %polly.indvar_next743 = add nuw nsw i64 %polly.indvar742, 1
  %indvars.iv.next818 = add nsw i64 %indvars.iv817, -32
  %exitcond825.not = icmp eq i64 %polly.indvar_next743, 32
  br i1 %exitcond825.not, label %polly.loop_exit741, label %polly.loop_header739

polly.loop_header745:                             ; preds = %polly.loop_exit753, %polly.loop_header739
  %polly.indvar748 = phi i64 [ 0, %polly.loop_header739 ], [ %polly.indvar_next749, %polly.loop_exit753 ]
  %206 = add nuw nsw i64 %polly.indvar748, %200
  %207 = trunc i64 %206 to i32
  %208 = mul nuw nsw i64 %206, 8000
  %min.iters.check927 = icmp eq i64 %203, 0
  br i1 %min.iters.check927, label %polly.loop_header751, label %vector.ph928

vector.ph928:                                     ; preds = %polly.loop_header745
  %broadcast.splatinsert937 = insertelement <4 x i64> poison, i64 %204, i32 0
  %broadcast.splat938 = shufflevector <4 x i64> %broadcast.splatinsert937, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert939 = insertelement <4 x i32> poison, i32 %207, i32 0
  %broadcast.splat940 = shufflevector <4 x i32> %broadcast.splatinsert939, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next932, %vector.body925 ]
  %vec.ind935 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph928 ], [ %vec.ind.next936, %vector.body925 ]
  %209 = add nuw nsw <4 x i64> %vec.ind935, %broadcast.splat938
  %210 = trunc <4 x i64> %209 to <4 x i32>
  %211 = mul <4 x i32> %broadcast.splat940, %210
  %212 = add <4 x i32> %211, <i32 1, i32 1, i32 1, i32 1>
  %213 = urem <4 x i32> %212, <i32 1200, i32 1200, i32 1200, i32 1200>
  %214 = sitofp <4 x i32> %213 to <4 x double>
  %215 = fmul fast <4 x double> %214, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %216 = extractelement <4 x i64> %209, i32 0
  %217 = shl i64 %216, 3
  %218 = add nuw nsw i64 %217, %208
  %219 = getelementptr i8, i8* %call1, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %215, <4 x double>* %220, align 8, !alias.scope !93, !noalias !100
  %index.next932 = add i64 %index931, 4
  %vec.ind.next936 = add <4 x i64> %vec.ind935, <i64 4, i64 4, i64 4, i64 4>
  %221 = icmp eq i64 %index.next932, %203
  br i1 %221, label %polly.loop_exit753, label %vector.body925, !llvm.loop !101

polly.loop_exit753:                               ; preds = %vector.body925, %polly.loop_header751
  %polly.indvar_next749 = add nuw nsw i64 %polly.indvar748, 1
  %exitcond824.not = icmp eq i64 %polly.indvar748, %201
  br i1 %exitcond824.not, label %polly.loop_exit747, label %polly.loop_header745

polly.loop_header751:                             ; preds = %polly.loop_header745, %polly.loop_header751
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_header751 ], [ 0, %polly.loop_header745 ]
  %222 = add nuw nsw i64 %polly.indvar754, %204
  %223 = trunc i64 %222 to i32
  %224 = mul i32 %223, %207
  %225 = add i32 %224, 1
  %226 = urem i32 %225, 1200
  %p_conv.i = sitofp i32 %226 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %227 = shl i64 %222, 3
  %228 = add nuw nsw i64 %227, %208
  %scevgep758 = getelementptr i8, i8* %call1, i64 %228
  %scevgep758759 = bitcast i8* %scevgep758 to double*
  store double %p_div.i, double* %scevgep758759, align 8, !alias.scope !93, !noalias !100
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond820.not = icmp eq i64 %polly.indvar754, %205
  br i1 %exitcond820.not, label %polly.loop_exit753, label %polly.loop_header751, !llvm.loop !102

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv772.1 = phi i64 [ %indvars.iv.next773.1, %polly.loop_exit213.1 ], [ -16, %polly.loop_exit213 ]
  %indvars.iv768.1 = phi i64 [ %indvars.iv.next769.1, %polly.loop_exit213.1 ], [ 16, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 3, %polly.loop_exit213 ]
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv768.1, i64 0)
  %229 = add i64 %smax.1, %indvars.iv772.1
  %230 = mul nuw nsw i64 %polly.indvar208.1, 80
  %231 = sub nsw i64 256, %230
  %232 = icmp sgt i64 %231, 0
  %233 = select i1 %232, i64 %231, i64 0
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %234 = shl nuw nsw i64 %polly.indvar214.1, 3
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %234
  %scevgep233.1 = getelementptr i8, i8* %call2, i64 %234
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv774.1 = phi i64 [ %indvars.iv.next775.1, %polly.loop_exit225.1 ], [ %229, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ %233, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv774.1, i64 255)
  %235 = add nuw i64 %polly.indvar220.1, %230
  %236 = add i64 %235, -256
  %polly.loop_guard.1852 = icmp sgt i64 %236, -1
  br i1 %polly.loop_guard.1852, label %polly.loop_header223.preheader.1, label %polly.loop_exit225.1

polly.loop_header223.preheader.1:                 ; preds = %polly.loop_header217.1
  %237 = mul i64 %235, 8000
  %scevgep234.1 = getelementptr i8, i8* %scevgep233.1, i64 %237
  %scevgep234235.1 = bitcast i8* %scevgep234.1 to double*
  %_p_scalar_236.1 = load double, double* %scevgep234235.1, align 8, !alias.scope !66, !noalias !70
  %scevgep242.1 = getelementptr i8, i8* %scevgep229.1, i64 %237
  %scevgep242243.1 = bitcast i8* %scevgep242.1 to double*
  %_p_scalar_244.1 = load double, double* %scevgep242243.1, align 8, !alias.scope !65, !noalias !71
  %238 = mul i64 %235, 9600
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header223.preheader.1
  %polly.indvar226.1 = phi i64 [ %polly.indvar_next227.1, %polly.loop_header223.1 ], [ 0, %polly.loop_header223.preheader.1 ]
  %239 = add nuw nsw i64 %polly.indvar226.1, 256
  %240 = mul nuw nsw i64 %239, 8000
  %scevgep230.1 = getelementptr i8, i8* %scevgep229.1, i64 %240
  %scevgep230231.1 = bitcast i8* %scevgep230.1 to double*
  %_p_scalar_232.1 = load double, double* %scevgep230231.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_236.1, %_p_scalar_232.1
  %scevgep238.1 = getelementptr i8, i8* %scevgep233.1, i64 %240
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_244.1, %_p_scalar_240.1
  %241 = shl i64 %239, 3
  %242 = add i64 %241, %238
  %scevgep245.1 = getelementptr i8, i8* %call, i64 %242
  %scevgep245246.1 = bitcast i8* %scevgep245.1 to double*
  %_p_scalar_247.1 = load double, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_247.1
  store double %p_add42.i118.1, double* %scevgep245246.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.1 = icmp ult i64 %polly.indvar220.1, 79
  %indvars.iv.next775.1 = add i64 %indvars.iv774.1, 1
  br i1 %polly.loop_cond222.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar_next215.1, 1000
  br i1 %exitcond776.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next769.1 = add nsw i64 %indvars.iv768.1, -80
  %indvars.iv.next773.1 = add nsw i64 %indvars.iv772.1, 80
  %exitcond777.1.not = icmp eq i64 %polly.indvar_next209.1, 15
  br i1 %exitcond777.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit213.1, %polly.loop_exit213.2
  %indvars.iv772.2 = phi i64 [ %indvars.iv.next773.2, %polly.loop_exit213.2 ], [ -32, %polly.loop_exit213.1 ]
  %indvars.iv768.2 = phi i64 [ %indvars.iv.next769.2, %polly.loop_exit213.2 ], [ 32, %polly.loop_exit213.1 ]
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit213.2 ], [ 6, %polly.loop_exit213.1 ]
  %smax.2 = call i64 @llvm.smax.i64(i64 %indvars.iv768.2, i64 0)
  %243 = add i64 %smax.2, %indvars.iv772.2
  %244 = mul nuw nsw i64 %polly.indvar208.2, 80
  %245 = sub nsw i64 512, %244
  %246 = icmp sgt i64 %245, 0
  %247 = select i1 %246, i64 %245, i64 0
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.2, %polly.loop_header205.2
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_header205.2 ], [ %polly.indvar_next215.2, %polly.loop_exit219.2 ]
  %248 = shl nuw nsw i64 %polly.indvar214.2, 3
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %248
  %scevgep233.2 = getelementptr i8, i8* %call2, i64 %248
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %indvars.iv774.2 = phi i64 [ %indvars.iv.next775.2, %polly.loop_exit225.2 ], [ %243, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ %247, %polly.loop_header211.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv774.2, i64 255)
  %249 = add nuw i64 %polly.indvar220.2, %244
  %250 = add i64 %249, -512
  %polly.loop_guard.2853 = icmp sgt i64 %250, -1
  br i1 %polly.loop_guard.2853, label %polly.loop_header223.preheader.2, label %polly.loop_exit225.2

polly.loop_header223.preheader.2:                 ; preds = %polly.loop_header217.2
  %251 = mul i64 %249, 8000
  %scevgep234.2 = getelementptr i8, i8* %scevgep233.2, i64 %251
  %scevgep234235.2 = bitcast i8* %scevgep234.2 to double*
  %_p_scalar_236.2 = load double, double* %scevgep234235.2, align 8, !alias.scope !66, !noalias !70
  %scevgep242.2 = getelementptr i8, i8* %scevgep229.2, i64 %251
  %scevgep242243.2 = bitcast i8* %scevgep242.2 to double*
  %_p_scalar_244.2 = load double, double* %scevgep242243.2, align 8, !alias.scope !65, !noalias !71
  %252 = mul i64 %249, 9600
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header223.preheader.2
  %polly.indvar226.2 = phi i64 [ %polly.indvar_next227.2, %polly.loop_header223.2 ], [ 0, %polly.loop_header223.preheader.2 ]
  %253 = add nuw nsw i64 %polly.indvar226.2, 512
  %254 = mul nuw nsw i64 %253, 8000
  %scevgep230.2 = getelementptr i8, i8* %scevgep229.2, i64 %254
  %scevgep230231.2 = bitcast i8* %scevgep230.2 to double*
  %_p_scalar_232.2 = load double, double* %scevgep230231.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_236.2, %_p_scalar_232.2
  %scevgep238.2 = getelementptr i8, i8* %scevgep233.2, i64 %254
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_244.2, %_p_scalar_240.2
  %255 = shl i64 %253, 3
  %256 = add i64 %255, %252
  %scevgep245.2 = getelementptr i8, i8* %call, i64 %256
  %scevgep245246.2 = bitcast i8* %scevgep245.2 to double*
  %_p_scalar_247.2 = load double, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_247.2
  store double %p_add42.i118.2, double* %scevgep245246.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %polly.loop_cond222.2 = icmp ult i64 %polly.indvar220.2, 79
  %indvars.iv.next775.2 = add i64 %indvars.iv774.2, 1
  br i1 %polly.loop_cond222.2, label %polly.loop_header217.2, label %polly.loop_exit219.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond776.2.not = icmp eq i64 %polly.indvar_next215.2, 1000
  br i1 %exitcond776.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_exit219.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %indvars.iv.next769.2 = add nsw i64 %indvars.iv768.2, -80
  %indvars.iv.next773.2 = add nsw i64 %indvars.iv772.2, 80
  %exitcond777.2.not = icmp eq i64 %polly.indvar_next209.2, 15
  br i1 %exitcond777.2.not, label %polly.loop_header205.3, label %polly.loop_header205.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit213.2, %polly.loop_exit213.3
  %indvars.iv772.3 = phi i64 [ %indvars.iv.next773.3, %polly.loop_exit213.3 ], [ -48, %polly.loop_exit213.2 ]
  %indvars.iv768.3 = phi i64 [ %indvars.iv.next769.3, %polly.loop_exit213.3 ], [ 48, %polly.loop_exit213.2 ]
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_exit213.3 ], [ 9, %polly.loop_exit213.2 ]
  %smax.3 = call i64 @llvm.smax.i64(i64 %indvars.iv768.3, i64 0)
  %257 = add i64 %smax.3, %indvars.iv772.3
  %258 = mul nuw nsw i64 %polly.indvar208.3, 80
  %259 = sub nsw i64 768, %258
  %260 = icmp sgt i64 %259, 0
  %261 = select i1 %260, i64 %259, i64 0
  br label %polly.loop_header211.3

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.3, %polly.loop_header205.3
  %polly.indvar214.3 = phi i64 [ 0, %polly.loop_header205.3 ], [ %polly.indvar_next215.3, %polly.loop_exit219.3 ]
  %262 = shl nuw nsw i64 %polly.indvar214.3, 3
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %262
  %scevgep233.3 = getelementptr i8, i8* %call2, i64 %262
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %indvars.iv774.3 = phi i64 [ %indvars.iv.next775.3, %polly.loop_exit225.3 ], [ %257, %polly.loop_header211.3 ]
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ %261, %polly.loop_header211.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv774.3, i64 255)
  %263 = add nuw i64 %polly.indvar220.3, %258
  %264 = add i64 %263, -768
  %polly.loop_guard.3854 = icmp sgt i64 %264, -1
  br i1 %polly.loop_guard.3854, label %polly.loop_header223.preheader.3, label %polly.loop_exit225.3

polly.loop_header223.preheader.3:                 ; preds = %polly.loop_header217.3
  %265 = mul i64 %263, 8000
  %scevgep234.3 = getelementptr i8, i8* %scevgep233.3, i64 %265
  %scevgep234235.3 = bitcast i8* %scevgep234.3 to double*
  %_p_scalar_236.3 = load double, double* %scevgep234235.3, align 8, !alias.scope !66, !noalias !70
  %scevgep242.3 = getelementptr i8, i8* %scevgep229.3, i64 %265
  %scevgep242243.3 = bitcast i8* %scevgep242.3 to double*
  %_p_scalar_244.3 = load double, double* %scevgep242243.3, align 8, !alias.scope !65, !noalias !71
  %266 = mul i64 %263, 9600
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header223.preheader.3
  %polly.indvar226.3 = phi i64 [ %polly.indvar_next227.3, %polly.loop_header223.3 ], [ 0, %polly.loop_header223.preheader.3 ]
  %267 = add nuw nsw i64 %polly.indvar226.3, 768
  %268 = mul nuw nsw i64 %267, 8000
  %scevgep230.3 = getelementptr i8, i8* %scevgep229.3, i64 %268
  %scevgep230231.3 = bitcast i8* %scevgep230.3 to double*
  %_p_scalar_232.3 = load double, double* %scevgep230231.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_236.3, %_p_scalar_232.3
  %scevgep238.3 = getelementptr i8, i8* %scevgep233.3, i64 %268
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_244.3, %_p_scalar_240.3
  %269 = shl i64 %267, 3
  %270 = add i64 %269, %266
  %scevgep245.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep245246.3 = bitcast i8* %scevgep245.3 to double*
  %_p_scalar_247.3 = load double, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_247.3
  store double %p_add42.i118.3, double* %scevgep245246.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %polly.loop_cond222.3 = icmp ult i64 %polly.indvar220.3, 79
  %indvars.iv.next775.3 = add i64 %indvars.iv774.3, 1
  br i1 %polly.loop_cond222.3, label %polly.loop_header217.3, label %polly.loop_exit219.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond776.3.not = icmp eq i64 %polly.indvar_next215.3, 1000
  br i1 %exitcond776.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_exit219.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %indvars.iv.next769.3 = add nsw i64 %indvars.iv768.3, -80
  %indvars.iv.next773.3 = add nsw i64 %indvars.iv772.3, 80
  %exitcond777.3.not = icmp eq i64 %polly.indvar_next209.3, 15
  br i1 %exitcond777.3.not, label %polly.loop_header205.4, label %polly.loop_header205.3

polly.loop_header205.4:                           ; preds = %polly.loop_exit213.3, %polly.loop_exit213.4
  %indvars.iv772.4 = phi i64 [ %indvars.iv.next773.4, %polly.loop_exit213.4 ], [ -64, %polly.loop_exit213.3 ]
  %indvars.iv768.4 = phi i64 [ %indvars.iv.next769.4, %polly.loop_exit213.4 ], [ 64, %polly.loop_exit213.3 ]
  %polly.indvar208.4 = phi i64 [ %polly.indvar_next209.4, %polly.loop_exit213.4 ], [ 12, %polly.loop_exit213.3 ]
  %smax.4 = call i64 @llvm.smax.i64(i64 %indvars.iv768.4, i64 0)
  %271 = add i64 %smax.4, %indvars.iv772.4
  %272 = mul nuw nsw i64 %polly.indvar208.4, 80
  %273 = sub nsw i64 1024, %272
  %274 = icmp sgt i64 %273, 0
  %275 = select i1 %274, i64 %273, i64 0
  br label %polly.loop_header211.4

polly.loop_header211.4:                           ; preds = %polly.loop_exit219.4, %polly.loop_header205.4
  %polly.indvar214.4 = phi i64 [ 0, %polly.loop_header205.4 ], [ %polly.indvar_next215.4, %polly.loop_exit219.4 ]
  %276 = shl nuw nsw i64 %polly.indvar214.4, 3
  %scevgep229.4 = getelementptr i8, i8* %call1, i64 %276
  %scevgep233.4 = getelementptr i8, i8* %call2, i64 %276
  br label %polly.loop_header217.4

polly.loop_header217.4:                           ; preds = %polly.loop_exit225.4, %polly.loop_header211.4
  %indvars.iv774.4 = phi i64 [ %indvars.iv.next775.4, %polly.loop_exit225.4 ], [ %271, %polly.loop_header211.4 ]
  %polly.indvar220.4 = phi i64 [ %polly.indvar_next221.4, %polly.loop_exit225.4 ], [ %275, %polly.loop_header211.4 ]
  %smin.4 = call i64 @llvm.smin.i64(i64 %indvars.iv774.4, i64 255)
  %277 = add nuw i64 %polly.indvar220.4, %272
  %278 = add i64 %277, -1024
  %polly.loop_guard.4855 = icmp sgt i64 %278, -1
  br i1 %polly.loop_guard.4855, label %polly.loop_header223.preheader.4, label %polly.loop_exit225.4

polly.loop_header223.preheader.4:                 ; preds = %polly.loop_header217.4
  %279 = mul i64 %277, 8000
  %scevgep234.4 = getelementptr i8, i8* %scevgep233.4, i64 %279
  %scevgep234235.4 = bitcast i8* %scevgep234.4 to double*
  %_p_scalar_236.4 = load double, double* %scevgep234235.4, align 8, !alias.scope !66, !noalias !70
  %scevgep242.4 = getelementptr i8, i8* %scevgep229.4, i64 %279
  %scevgep242243.4 = bitcast i8* %scevgep242.4 to double*
  %_p_scalar_244.4 = load double, double* %scevgep242243.4, align 8, !alias.scope !65, !noalias !71
  %280 = mul i64 %277, 9600
  br label %polly.loop_header223.4

polly.loop_header223.4:                           ; preds = %polly.loop_header223.4, %polly.loop_header223.preheader.4
  %polly.indvar226.4 = phi i64 [ %polly.indvar_next227.4, %polly.loop_header223.4 ], [ 0, %polly.loop_header223.preheader.4 ]
  %281 = add nuw nsw i64 %polly.indvar226.4, 1024
  %282 = mul nuw nsw i64 %281, 8000
  %scevgep230.4 = getelementptr i8, i8* %scevgep229.4, i64 %282
  %scevgep230231.4 = bitcast i8* %scevgep230.4 to double*
  %_p_scalar_232.4 = load double, double* %scevgep230231.4, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.4 = fmul fast double %_p_scalar_236.4, %_p_scalar_232.4
  %scevgep238.4 = getelementptr i8, i8* %scevgep233.4, i64 %282
  %scevgep238239.4 = bitcast i8* %scevgep238.4 to double*
  %_p_scalar_240.4 = load double, double* %scevgep238239.4, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.4 = fmul fast double %_p_scalar_244.4, %_p_scalar_240.4
  %283 = shl i64 %281, 3
  %284 = add i64 %283, %280
  %scevgep245.4 = getelementptr i8, i8* %call, i64 %284
  %scevgep245246.4 = bitcast i8* %scevgep245.4 to double*
  %_p_scalar_247.4 = load double, double* %scevgep245246.4, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_247.4
  store double %p_add42.i118.4, double* %scevgep245246.4, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.4 = add nuw nsw i64 %polly.indvar226.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar226.4, %smin.4
  br i1 %exitcond.4.not, label %polly.loop_exit225.4, label %polly.loop_header223.4

polly.loop_exit225.4:                             ; preds = %polly.loop_header223.4, %polly.loop_header217.4
  %polly.indvar_next221.4 = add nuw nsw i64 %polly.indvar220.4, 1
  %polly.loop_cond222.4 = icmp ult i64 %polly.indvar220.4, 79
  %indvars.iv.next775.4 = add i64 %indvars.iv774.4, 1
  br i1 %polly.loop_cond222.4, label %polly.loop_header217.4, label %polly.loop_exit219.4

polly.loop_exit219.4:                             ; preds = %polly.loop_exit225.4
  %polly.indvar_next215.4 = add nuw nsw i64 %polly.indvar214.4, 1
  %exitcond776.4.not = icmp eq i64 %polly.indvar_next215.4, 1000
  br i1 %exitcond776.4.not, label %polly.loop_exit213.4, label %polly.loop_header211.4

polly.loop_exit213.4:                             ; preds = %polly.loop_exit219.4
  %polly.indvar_next209.4 = add nuw nsw i64 %polly.indvar208.4, 1
  %indvars.iv.next769.4 = add nsw i64 %indvars.iv768.4, -80
  %indvars.iv.next773.4 = add nsw i64 %indvars.iv772.4, 80
  %exitcond777.4.not = icmp eq i64 %polly.indvar_next209.4, 15
  br i1 %exitcond777.4.not, label %kernel_syr2k.exit129, label %polly.loop_header205.4

polly.loop_header356.1:                           ; preds = %polly.loop_exit364, %polly.loop_exit364.1
  %indvars.iv788.1 = phi i64 [ %indvars.iv.next789.1, %polly.loop_exit364.1 ], [ -16, %polly.loop_exit364 ]
  %indvars.iv783.1 = phi i64 [ %indvars.iv.next784.1, %polly.loop_exit364.1 ], [ 16, %polly.loop_exit364 ]
  %polly.indvar359.1 = phi i64 [ %polly.indvar_next360.1, %polly.loop_exit364.1 ], [ 3, %polly.loop_exit364 ]
  %smax785.1 = call i64 @llvm.smax.i64(i64 %indvars.iv783.1, i64 0)
  %285 = add i64 %smax785.1, %indvars.iv788.1
  %286 = mul nuw nsw i64 %polly.indvar359.1, 80
  %287 = sub nsw i64 256, %286
  %288 = icmp sgt i64 %287, 0
  %289 = select i1 %288, i64 %287, i64 0
  br label %polly.loop_header362.1

polly.loop_header362.1:                           ; preds = %polly.loop_exit370.1, %polly.loop_header356.1
  %polly.indvar365.1 = phi i64 [ 0, %polly.loop_header356.1 ], [ %polly.indvar_next366.1, %polly.loop_exit370.1 ]
  %290 = shl nuw nsw i64 %polly.indvar365.1, 3
  %scevgep382.1 = getelementptr i8, i8* %call1, i64 %290
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %290
  br label %polly.loop_header368.1

polly.loop_header368.1:                           ; preds = %polly.loop_exit377.1, %polly.loop_header362.1
  %indvars.iv790.1 = phi i64 [ %indvars.iv.next791.1, %polly.loop_exit377.1 ], [ %285, %polly.loop_header362.1 ]
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_exit377.1 ], [ %289, %polly.loop_header362.1 ]
  %smin792.1 = call i64 @llvm.smin.i64(i64 %indvars.iv790.1, i64 255)
  %291 = add nuw i64 %polly.indvar371.1, %286
  %292 = add i64 %291, -256
  %polly.loop_guard378.1857 = icmp sgt i64 %292, -1
  br i1 %polly.loop_guard378.1857, label %polly.loop_header375.preheader.1, label %polly.loop_exit377.1

polly.loop_header375.preheader.1:                 ; preds = %polly.loop_header368.1
  %293 = mul i64 %291, 8000
  %scevgep387.1 = getelementptr i8, i8* %scevgep386.1, i64 %293
  %scevgep387388.1 = bitcast i8* %scevgep387.1 to double*
  %_p_scalar_389.1 = load double, double* %scevgep387388.1, align 8, !alias.scope !76, !noalias !79
  %scevgep395.1 = getelementptr i8, i8* %scevgep382.1, i64 %293
  %scevgep395396.1 = bitcast i8* %scevgep395.1 to double*
  %_p_scalar_397.1 = load double, double* %scevgep395396.1, align 8, !alias.scope !75, !noalias !80
  %294 = mul i64 %291, 9600
  br label %polly.loop_header375.1

polly.loop_header375.1:                           ; preds = %polly.loop_header375.1, %polly.loop_header375.preheader.1
  %polly.indvar379.1 = phi i64 [ %polly.indvar_next380.1, %polly.loop_header375.1 ], [ 0, %polly.loop_header375.preheader.1 ]
  %295 = add nuw nsw i64 %polly.indvar379.1, 256
  %296 = mul nuw nsw i64 %295, 8000
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %296
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_389.1, %_p_scalar_385.1
  %scevgep391.1 = getelementptr i8, i8* %scevgep386.1, i64 %296
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_397.1, %_p_scalar_393.1
  %297 = shl i64 %295, 3
  %298 = add i64 %297, %294
  %scevgep398.1 = getelementptr i8, i8* %call, i64 %298
  %scevgep398399.1 = bitcast i8* %scevgep398.1 to double*
  %_p_scalar_400.1 = load double, double* %scevgep398399.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_400.1
  store double %p_add42.i79.1, double* %scevgep398399.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.1 = add nuw nsw i64 %polly.indvar379.1, 1
  %exitcond793.1.not = icmp eq i64 %polly.indvar379.1, %smin792.1
  br i1 %exitcond793.1.not, label %polly.loop_exit377.1, label %polly.loop_header375.1

polly.loop_exit377.1:                             ; preds = %polly.loop_header375.1, %polly.loop_header368.1
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %polly.loop_cond373.1 = icmp ult i64 %polly.indvar371.1, 79
  %indvars.iv.next791.1 = add i64 %indvars.iv790.1, 1
  br i1 %polly.loop_cond373.1, label %polly.loop_header368.1, label %polly.loop_exit370.1

polly.loop_exit370.1:                             ; preds = %polly.loop_exit377.1
  %polly.indvar_next366.1 = add nuw nsw i64 %polly.indvar365.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next366.1, 1000
  br i1 %exitcond794.1.not, label %polly.loop_exit364.1, label %polly.loop_header362.1

polly.loop_exit364.1:                             ; preds = %polly.loop_exit370.1
  %polly.indvar_next360.1 = add nuw nsw i64 %polly.indvar359.1, 1
  %indvars.iv.next784.1 = add nsw i64 %indvars.iv783.1, -80
  %indvars.iv.next789.1 = add nsw i64 %indvars.iv788.1, 80
  %exitcond795.1.not = icmp eq i64 %polly.indvar_next360.1, 15
  br i1 %exitcond795.1.not, label %polly.loop_header356.2, label %polly.loop_header356.1

polly.loop_header356.2:                           ; preds = %polly.loop_exit364.1, %polly.loop_exit364.2
  %indvars.iv788.2 = phi i64 [ %indvars.iv.next789.2, %polly.loop_exit364.2 ], [ -32, %polly.loop_exit364.1 ]
  %indvars.iv783.2 = phi i64 [ %indvars.iv.next784.2, %polly.loop_exit364.2 ], [ 32, %polly.loop_exit364.1 ]
  %polly.indvar359.2 = phi i64 [ %polly.indvar_next360.2, %polly.loop_exit364.2 ], [ 6, %polly.loop_exit364.1 ]
  %smax785.2 = call i64 @llvm.smax.i64(i64 %indvars.iv783.2, i64 0)
  %299 = add i64 %smax785.2, %indvars.iv788.2
  %300 = mul nuw nsw i64 %polly.indvar359.2, 80
  %301 = sub nsw i64 512, %300
  %302 = icmp sgt i64 %301, 0
  %303 = select i1 %302, i64 %301, i64 0
  br label %polly.loop_header362.2

polly.loop_header362.2:                           ; preds = %polly.loop_exit370.2, %polly.loop_header356.2
  %polly.indvar365.2 = phi i64 [ 0, %polly.loop_header356.2 ], [ %polly.indvar_next366.2, %polly.loop_exit370.2 ]
  %304 = shl nuw nsw i64 %polly.indvar365.2, 3
  %scevgep382.2 = getelementptr i8, i8* %call1, i64 %304
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %304
  br label %polly.loop_header368.2

polly.loop_header368.2:                           ; preds = %polly.loop_exit377.2, %polly.loop_header362.2
  %indvars.iv790.2 = phi i64 [ %indvars.iv.next791.2, %polly.loop_exit377.2 ], [ %299, %polly.loop_header362.2 ]
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_exit377.2 ], [ %303, %polly.loop_header362.2 ]
  %smin792.2 = call i64 @llvm.smin.i64(i64 %indvars.iv790.2, i64 255)
  %305 = add nuw i64 %polly.indvar371.2, %300
  %306 = add i64 %305, -512
  %polly.loop_guard378.2858 = icmp sgt i64 %306, -1
  br i1 %polly.loop_guard378.2858, label %polly.loop_header375.preheader.2, label %polly.loop_exit377.2

polly.loop_header375.preheader.2:                 ; preds = %polly.loop_header368.2
  %307 = mul i64 %305, 8000
  %scevgep387.2 = getelementptr i8, i8* %scevgep386.2, i64 %307
  %scevgep387388.2 = bitcast i8* %scevgep387.2 to double*
  %_p_scalar_389.2 = load double, double* %scevgep387388.2, align 8, !alias.scope !76, !noalias !79
  %scevgep395.2 = getelementptr i8, i8* %scevgep382.2, i64 %307
  %scevgep395396.2 = bitcast i8* %scevgep395.2 to double*
  %_p_scalar_397.2 = load double, double* %scevgep395396.2, align 8, !alias.scope !75, !noalias !80
  %308 = mul i64 %305, 9600
  br label %polly.loop_header375.2

polly.loop_header375.2:                           ; preds = %polly.loop_header375.2, %polly.loop_header375.preheader.2
  %polly.indvar379.2 = phi i64 [ %polly.indvar_next380.2, %polly.loop_header375.2 ], [ 0, %polly.loop_header375.preheader.2 ]
  %309 = add nuw nsw i64 %polly.indvar379.2, 512
  %310 = mul nuw nsw i64 %309, 8000
  %scevgep383.2 = getelementptr i8, i8* %scevgep382.2, i64 %310
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_389.2, %_p_scalar_385.2
  %scevgep391.2 = getelementptr i8, i8* %scevgep386.2, i64 %310
  %scevgep391392.2 = bitcast i8* %scevgep391.2 to double*
  %_p_scalar_393.2 = load double, double* %scevgep391392.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_397.2, %_p_scalar_393.2
  %311 = shl i64 %309, 3
  %312 = add i64 %311, %308
  %scevgep398.2 = getelementptr i8, i8* %call, i64 %312
  %scevgep398399.2 = bitcast i8* %scevgep398.2 to double*
  %_p_scalar_400.2 = load double, double* %scevgep398399.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_400.2
  store double %p_add42.i79.2, double* %scevgep398399.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.2 = add nuw nsw i64 %polly.indvar379.2, 1
  %exitcond793.2.not = icmp eq i64 %polly.indvar379.2, %smin792.2
  br i1 %exitcond793.2.not, label %polly.loop_exit377.2, label %polly.loop_header375.2

polly.loop_exit377.2:                             ; preds = %polly.loop_header375.2, %polly.loop_header368.2
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %polly.loop_cond373.2 = icmp ult i64 %polly.indvar371.2, 79
  %indvars.iv.next791.2 = add i64 %indvars.iv790.2, 1
  br i1 %polly.loop_cond373.2, label %polly.loop_header368.2, label %polly.loop_exit370.2

polly.loop_exit370.2:                             ; preds = %polly.loop_exit377.2
  %polly.indvar_next366.2 = add nuw nsw i64 %polly.indvar365.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next366.2, 1000
  br i1 %exitcond794.2.not, label %polly.loop_exit364.2, label %polly.loop_header362.2

polly.loop_exit364.2:                             ; preds = %polly.loop_exit370.2
  %polly.indvar_next360.2 = add nuw nsw i64 %polly.indvar359.2, 1
  %indvars.iv.next784.2 = add nsw i64 %indvars.iv783.2, -80
  %indvars.iv.next789.2 = add nsw i64 %indvars.iv788.2, 80
  %exitcond795.2.not = icmp eq i64 %polly.indvar_next360.2, 15
  br i1 %exitcond795.2.not, label %polly.loop_header356.3, label %polly.loop_header356.2

polly.loop_header356.3:                           ; preds = %polly.loop_exit364.2, %polly.loop_exit364.3
  %indvars.iv788.3 = phi i64 [ %indvars.iv.next789.3, %polly.loop_exit364.3 ], [ -48, %polly.loop_exit364.2 ]
  %indvars.iv783.3 = phi i64 [ %indvars.iv.next784.3, %polly.loop_exit364.3 ], [ 48, %polly.loop_exit364.2 ]
  %polly.indvar359.3 = phi i64 [ %polly.indvar_next360.3, %polly.loop_exit364.3 ], [ 9, %polly.loop_exit364.2 ]
  %smax785.3 = call i64 @llvm.smax.i64(i64 %indvars.iv783.3, i64 0)
  %313 = add i64 %smax785.3, %indvars.iv788.3
  %314 = mul nuw nsw i64 %polly.indvar359.3, 80
  %315 = sub nsw i64 768, %314
  %316 = icmp sgt i64 %315, 0
  %317 = select i1 %316, i64 %315, i64 0
  br label %polly.loop_header362.3

polly.loop_header362.3:                           ; preds = %polly.loop_exit370.3, %polly.loop_header356.3
  %polly.indvar365.3 = phi i64 [ 0, %polly.loop_header356.3 ], [ %polly.indvar_next366.3, %polly.loop_exit370.3 ]
  %318 = shl nuw nsw i64 %polly.indvar365.3, 3
  %scevgep382.3 = getelementptr i8, i8* %call1, i64 %318
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %318
  br label %polly.loop_header368.3

polly.loop_header368.3:                           ; preds = %polly.loop_exit377.3, %polly.loop_header362.3
  %indvars.iv790.3 = phi i64 [ %indvars.iv.next791.3, %polly.loop_exit377.3 ], [ %313, %polly.loop_header362.3 ]
  %polly.indvar371.3 = phi i64 [ %polly.indvar_next372.3, %polly.loop_exit377.3 ], [ %317, %polly.loop_header362.3 ]
  %smin792.3 = call i64 @llvm.smin.i64(i64 %indvars.iv790.3, i64 255)
  %319 = add nuw i64 %polly.indvar371.3, %314
  %320 = add i64 %319, -768
  %polly.loop_guard378.3859 = icmp sgt i64 %320, -1
  br i1 %polly.loop_guard378.3859, label %polly.loop_header375.preheader.3, label %polly.loop_exit377.3

polly.loop_header375.preheader.3:                 ; preds = %polly.loop_header368.3
  %321 = mul i64 %319, 8000
  %scevgep387.3 = getelementptr i8, i8* %scevgep386.3, i64 %321
  %scevgep387388.3 = bitcast i8* %scevgep387.3 to double*
  %_p_scalar_389.3 = load double, double* %scevgep387388.3, align 8, !alias.scope !76, !noalias !79
  %scevgep395.3 = getelementptr i8, i8* %scevgep382.3, i64 %321
  %scevgep395396.3 = bitcast i8* %scevgep395.3 to double*
  %_p_scalar_397.3 = load double, double* %scevgep395396.3, align 8, !alias.scope !75, !noalias !80
  %322 = mul i64 %319, 9600
  br label %polly.loop_header375.3

polly.loop_header375.3:                           ; preds = %polly.loop_header375.3, %polly.loop_header375.preheader.3
  %polly.indvar379.3 = phi i64 [ %polly.indvar_next380.3, %polly.loop_header375.3 ], [ 0, %polly.loop_header375.preheader.3 ]
  %323 = add nuw nsw i64 %polly.indvar379.3, 768
  %324 = mul nuw nsw i64 %323, 8000
  %scevgep383.3 = getelementptr i8, i8* %scevgep382.3, i64 %324
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_389.3, %_p_scalar_385.3
  %scevgep391.3 = getelementptr i8, i8* %scevgep386.3, i64 %324
  %scevgep391392.3 = bitcast i8* %scevgep391.3 to double*
  %_p_scalar_393.3 = load double, double* %scevgep391392.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_397.3, %_p_scalar_393.3
  %325 = shl i64 %323, 3
  %326 = add i64 %325, %322
  %scevgep398.3 = getelementptr i8, i8* %call, i64 %326
  %scevgep398399.3 = bitcast i8* %scevgep398.3 to double*
  %_p_scalar_400.3 = load double, double* %scevgep398399.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_400.3
  store double %p_add42.i79.3, double* %scevgep398399.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.3 = add nuw nsw i64 %polly.indvar379.3, 1
  %exitcond793.3.not = icmp eq i64 %polly.indvar379.3, %smin792.3
  br i1 %exitcond793.3.not, label %polly.loop_exit377.3, label %polly.loop_header375.3

polly.loop_exit377.3:                             ; preds = %polly.loop_header375.3, %polly.loop_header368.3
  %polly.indvar_next372.3 = add nuw nsw i64 %polly.indvar371.3, 1
  %polly.loop_cond373.3 = icmp ult i64 %polly.indvar371.3, 79
  %indvars.iv.next791.3 = add i64 %indvars.iv790.3, 1
  br i1 %polly.loop_cond373.3, label %polly.loop_header368.3, label %polly.loop_exit370.3

polly.loop_exit370.3:                             ; preds = %polly.loop_exit377.3
  %polly.indvar_next366.3 = add nuw nsw i64 %polly.indvar365.3, 1
  %exitcond794.3.not = icmp eq i64 %polly.indvar_next366.3, 1000
  br i1 %exitcond794.3.not, label %polly.loop_exit364.3, label %polly.loop_header362.3

polly.loop_exit364.3:                             ; preds = %polly.loop_exit370.3
  %polly.indvar_next360.3 = add nuw nsw i64 %polly.indvar359.3, 1
  %indvars.iv.next784.3 = add nsw i64 %indvars.iv783.3, -80
  %indvars.iv.next789.3 = add nsw i64 %indvars.iv788.3, 80
  %exitcond795.3.not = icmp eq i64 %polly.indvar_next360.3, 15
  br i1 %exitcond795.3.not, label %polly.loop_header356.4, label %polly.loop_header356.3

polly.loop_header356.4:                           ; preds = %polly.loop_exit364.3, %polly.loop_exit364.4
  %indvars.iv788.4 = phi i64 [ %indvars.iv.next789.4, %polly.loop_exit364.4 ], [ -64, %polly.loop_exit364.3 ]
  %indvars.iv783.4 = phi i64 [ %indvars.iv.next784.4, %polly.loop_exit364.4 ], [ 64, %polly.loop_exit364.3 ]
  %polly.indvar359.4 = phi i64 [ %polly.indvar_next360.4, %polly.loop_exit364.4 ], [ 12, %polly.loop_exit364.3 ]
  %smax785.4 = call i64 @llvm.smax.i64(i64 %indvars.iv783.4, i64 0)
  %327 = add i64 %smax785.4, %indvars.iv788.4
  %328 = mul nuw nsw i64 %polly.indvar359.4, 80
  %329 = sub nsw i64 1024, %328
  %330 = icmp sgt i64 %329, 0
  %331 = select i1 %330, i64 %329, i64 0
  br label %polly.loop_header362.4

polly.loop_header362.4:                           ; preds = %polly.loop_exit370.4, %polly.loop_header356.4
  %polly.indvar365.4 = phi i64 [ 0, %polly.loop_header356.4 ], [ %polly.indvar_next366.4, %polly.loop_exit370.4 ]
  %332 = shl nuw nsw i64 %polly.indvar365.4, 3
  %scevgep382.4 = getelementptr i8, i8* %call1, i64 %332
  %scevgep386.4 = getelementptr i8, i8* %call2, i64 %332
  br label %polly.loop_header368.4

polly.loop_header368.4:                           ; preds = %polly.loop_exit377.4, %polly.loop_header362.4
  %indvars.iv790.4 = phi i64 [ %indvars.iv.next791.4, %polly.loop_exit377.4 ], [ %327, %polly.loop_header362.4 ]
  %polly.indvar371.4 = phi i64 [ %polly.indvar_next372.4, %polly.loop_exit377.4 ], [ %331, %polly.loop_header362.4 ]
  %smin792.4 = call i64 @llvm.smin.i64(i64 %indvars.iv790.4, i64 255)
  %333 = add nuw i64 %polly.indvar371.4, %328
  %334 = add i64 %333, -1024
  %polly.loop_guard378.4860 = icmp sgt i64 %334, -1
  br i1 %polly.loop_guard378.4860, label %polly.loop_header375.preheader.4, label %polly.loop_exit377.4

polly.loop_header375.preheader.4:                 ; preds = %polly.loop_header368.4
  %335 = mul i64 %333, 8000
  %scevgep387.4 = getelementptr i8, i8* %scevgep386.4, i64 %335
  %scevgep387388.4 = bitcast i8* %scevgep387.4 to double*
  %_p_scalar_389.4 = load double, double* %scevgep387388.4, align 8, !alias.scope !76, !noalias !79
  %scevgep395.4 = getelementptr i8, i8* %scevgep382.4, i64 %335
  %scevgep395396.4 = bitcast i8* %scevgep395.4 to double*
  %_p_scalar_397.4 = load double, double* %scevgep395396.4, align 8, !alias.scope !75, !noalias !80
  %336 = mul i64 %333, 9600
  br label %polly.loop_header375.4

polly.loop_header375.4:                           ; preds = %polly.loop_header375.4, %polly.loop_header375.preheader.4
  %polly.indvar379.4 = phi i64 [ %polly.indvar_next380.4, %polly.loop_header375.4 ], [ 0, %polly.loop_header375.preheader.4 ]
  %337 = add nuw nsw i64 %polly.indvar379.4, 1024
  %338 = mul nuw nsw i64 %337, 8000
  %scevgep383.4 = getelementptr i8, i8* %scevgep382.4, i64 %338
  %scevgep383384.4 = bitcast i8* %scevgep383.4 to double*
  %_p_scalar_385.4 = load double, double* %scevgep383384.4, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.4 = fmul fast double %_p_scalar_389.4, %_p_scalar_385.4
  %scevgep391.4 = getelementptr i8, i8* %scevgep386.4, i64 %338
  %scevgep391392.4 = bitcast i8* %scevgep391.4 to double*
  %_p_scalar_393.4 = load double, double* %scevgep391392.4, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.4 = fmul fast double %_p_scalar_397.4, %_p_scalar_393.4
  %339 = shl i64 %337, 3
  %340 = add i64 %339, %336
  %scevgep398.4 = getelementptr i8, i8* %call, i64 %340
  %scevgep398399.4 = bitcast i8* %scevgep398.4 to double*
  %_p_scalar_400.4 = load double, double* %scevgep398399.4, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_400.4
  store double %p_add42.i79.4, double* %scevgep398399.4, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next380.4 = add nuw nsw i64 %polly.indvar379.4, 1
  %exitcond793.4.not = icmp eq i64 %polly.indvar379.4, %smin792.4
  br i1 %exitcond793.4.not, label %polly.loop_exit377.4, label %polly.loop_header375.4

polly.loop_exit377.4:                             ; preds = %polly.loop_header375.4, %polly.loop_header368.4
  %polly.indvar_next372.4 = add nuw nsw i64 %polly.indvar371.4, 1
  %polly.loop_cond373.4 = icmp ult i64 %polly.indvar371.4, 79
  %indvars.iv.next791.4 = add i64 %indvars.iv790.4, 1
  br i1 %polly.loop_cond373.4, label %polly.loop_header368.4, label %polly.loop_exit370.4

polly.loop_exit370.4:                             ; preds = %polly.loop_exit377.4
  %polly.indvar_next366.4 = add nuw nsw i64 %polly.indvar365.4, 1
  %exitcond794.4.not = icmp eq i64 %polly.indvar_next366.4, 1000
  br i1 %exitcond794.4.not, label %polly.loop_exit364.4, label %polly.loop_header362.4

polly.loop_exit364.4:                             ; preds = %polly.loop_exit370.4
  %polly.indvar_next360.4 = add nuw nsw i64 %polly.indvar359.4, 1
  %indvars.iv.next784.4 = add nsw i64 %indvars.iv783.4, -80
  %indvars.iv.next789.4 = add nsw i64 %indvars.iv788.4, 80
  %exitcond795.4.not = icmp eq i64 %polly.indvar_next360.4, 15
  br i1 %exitcond795.4.not, label %kernel_syr2k.exit90, label %polly.loop_header356.4

polly.loop_header509.1:                           ; preds = %polly.loop_exit517, %polly.loop_exit517.1
  %indvars.iv806.1 = phi i64 [ %indvars.iv.next807.1, %polly.loop_exit517.1 ], [ -16, %polly.loop_exit517 ]
  %indvars.iv801.1 = phi i64 [ %indvars.iv.next802.1, %polly.loop_exit517.1 ], [ 16, %polly.loop_exit517 ]
  %polly.indvar512.1 = phi i64 [ %polly.indvar_next513.1, %polly.loop_exit517.1 ], [ 3, %polly.loop_exit517 ]
  %smax803.1 = call i64 @llvm.smax.i64(i64 %indvars.iv801.1, i64 0)
  %341 = add i64 %smax803.1, %indvars.iv806.1
  %342 = mul nuw nsw i64 %polly.indvar512.1, 80
  %343 = sub nsw i64 256, %342
  %344 = icmp sgt i64 %343, 0
  %345 = select i1 %344, i64 %343, i64 0
  br label %polly.loop_header515.1

polly.loop_header515.1:                           ; preds = %polly.loop_exit523.1, %polly.loop_header509.1
  %polly.indvar518.1 = phi i64 [ 0, %polly.loop_header509.1 ], [ %polly.indvar_next519.1, %polly.loop_exit523.1 ]
  %346 = shl nuw nsw i64 %polly.indvar518.1, 3
  %scevgep535.1 = getelementptr i8, i8* %call1, i64 %346
  %scevgep539.1 = getelementptr i8, i8* %call2, i64 %346
  br label %polly.loop_header521.1

polly.loop_header521.1:                           ; preds = %polly.loop_exit530.1, %polly.loop_header515.1
  %indvars.iv808.1 = phi i64 [ %indvars.iv.next809.1, %polly.loop_exit530.1 ], [ %341, %polly.loop_header515.1 ]
  %polly.indvar524.1 = phi i64 [ %polly.indvar_next525.1, %polly.loop_exit530.1 ], [ %345, %polly.loop_header515.1 ]
  %smin810.1 = call i64 @llvm.smin.i64(i64 %indvars.iv808.1, i64 255)
  %347 = add nuw i64 %polly.indvar524.1, %342
  %348 = add i64 %347, -256
  %polly.loop_guard531.1862 = icmp sgt i64 %348, -1
  br i1 %polly.loop_guard531.1862, label %polly.loop_header528.preheader.1, label %polly.loop_exit530.1

polly.loop_header528.preheader.1:                 ; preds = %polly.loop_header521.1
  %349 = mul i64 %347, 8000
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %349
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !85, !noalias !88
  %scevgep548.1 = getelementptr i8, i8* %scevgep535.1, i64 %349
  %scevgep548549.1 = bitcast i8* %scevgep548.1 to double*
  %_p_scalar_550.1 = load double, double* %scevgep548549.1, align 8, !alias.scope !84, !noalias !89
  %350 = mul i64 %347, 9600
  br label %polly.loop_header528.1

polly.loop_header528.1:                           ; preds = %polly.loop_header528.1, %polly.loop_header528.preheader.1
  %polly.indvar532.1 = phi i64 [ %polly.indvar_next533.1, %polly.loop_header528.1 ], [ 0, %polly.loop_header528.preheader.1 ]
  %351 = add nuw nsw i64 %polly.indvar532.1, 256
  %352 = mul nuw nsw i64 %351, 8000
  %scevgep536.1 = getelementptr i8, i8* %scevgep535.1, i64 %352
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %scevgep544.1 = getelementptr i8, i8* %scevgep539.1, i64 %352
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_550.1, %_p_scalar_546.1
  %353 = shl i64 %351, 3
  %354 = add i64 %353, %350
  %scevgep551.1 = getelementptr i8, i8* %call, i64 %354
  %scevgep551552.1 = bitcast i8* %scevgep551.1 to double*
  %_p_scalar_553.1 = load double, double* %scevgep551552.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_553.1
  store double %p_add42.i.1, double* %scevgep551552.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.1 = add nuw nsw i64 %polly.indvar532.1, 1
  %exitcond811.1.not = icmp eq i64 %polly.indvar532.1, %smin810.1
  br i1 %exitcond811.1.not, label %polly.loop_exit530.1, label %polly.loop_header528.1

polly.loop_exit530.1:                             ; preds = %polly.loop_header528.1, %polly.loop_header521.1
  %polly.indvar_next525.1 = add nuw nsw i64 %polly.indvar524.1, 1
  %polly.loop_cond526.1 = icmp ult i64 %polly.indvar524.1, 79
  %indvars.iv.next809.1 = add i64 %indvars.iv808.1, 1
  br i1 %polly.loop_cond526.1, label %polly.loop_header521.1, label %polly.loop_exit523.1

polly.loop_exit523.1:                             ; preds = %polly.loop_exit530.1
  %polly.indvar_next519.1 = add nuw nsw i64 %polly.indvar518.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next519.1, 1000
  br i1 %exitcond812.1.not, label %polly.loop_exit517.1, label %polly.loop_header515.1

polly.loop_exit517.1:                             ; preds = %polly.loop_exit523.1
  %polly.indvar_next513.1 = add nuw nsw i64 %polly.indvar512.1, 1
  %indvars.iv.next802.1 = add nsw i64 %indvars.iv801.1, -80
  %indvars.iv.next807.1 = add nsw i64 %indvars.iv806.1, 80
  %exitcond813.1.not = icmp eq i64 %polly.indvar_next513.1, 15
  br i1 %exitcond813.1.not, label %polly.loop_header509.2, label %polly.loop_header509.1

polly.loop_header509.2:                           ; preds = %polly.loop_exit517.1, %polly.loop_exit517.2
  %indvars.iv806.2 = phi i64 [ %indvars.iv.next807.2, %polly.loop_exit517.2 ], [ -32, %polly.loop_exit517.1 ]
  %indvars.iv801.2 = phi i64 [ %indvars.iv.next802.2, %polly.loop_exit517.2 ], [ 32, %polly.loop_exit517.1 ]
  %polly.indvar512.2 = phi i64 [ %polly.indvar_next513.2, %polly.loop_exit517.2 ], [ 6, %polly.loop_exit517.1 ]
  %smax803.2 = call i64 @llvm.smax.i64(i64 %indvars.iv801.2, i64 0)
  %355 = add i64 %smax803.2, %indvars.iv806.2
  %356 = mul nuw nsw i64 %polly.indvar512.2, 80
  %357 = sub nsw i64 512, %356
  %358 = icmp sgt i64 %357, 0
  %359 = select i1 %358, i64 %357, i64 0
  br label %polly.loop_header515.2

polly.loop_header515.2:                           ; preds = %polly.loop_exit523.2, %polly.loop_header509.2
  %polly.indvar518.2 = phi i64 [ 0, %polly.loop_header509.2 ], [ %polly.indvar_next519.2, %polly.loop_exit523.2 ]
  %360 = shl nuw nsw i64 %polly.indvar518.2, 3
  %scevgep535.2 = getelementptr i8, i8* %call1, i64 %360
  %scevgep539.2 = getelementptr i8, i8* %call2, i64 %360
  br label %polly.loop_header521.2

polly.loop_header521.2:                           ; preds = %polly.loop_exit530.2, %polly.loop_header515.2
  %indvars.iv808.2 = phi i64 [ %indvars.iv.next809.2, %polly.loop_exit530.2 ], [ %355, %polly.loop_header515.2 ]
  %polly.indvar524.2 = phi i64 [ %polly.indvar_next525.2, %polly.loop_exit530.2 ], [ %359, %polly.loop_header515.2 ]
  %smin810.2 = call i64 @llvm.smin.i64(i64 %indvars.iv808.2, i64 255)
  %361 = add nuw i64 %polly.indvar524.2, %356
  %362 = add i64 %361, -512
  %polly.loop_guard531.2863 = icmp sgt i64 %362, -1
  br i1 %polly.loop_guard531.2863, label %polly.loop_header528.preheader.2, label %polly.loop_exit530.2

polly.loop_header528.preheader.2:                 ; preds = %polly.loop_header521.2
  %363 = mul i64 %361, 8000
  %scevgep540.2 = getelementptr i8, i8* %scevgep539.2, i64 %363
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !85, !noalias !88
  %scevgep548.2 = getelementptr i8, i8* %scevgep535.2, i64 %363
  %scevgep548549.2 = bitcast i8* %scevgep548.2 to double*
  %_p_scalar_550.2 = load double, double* %scevgep548549.2, align 8, !alias.scope !84, !noalias !89
  %364 = mul i64 %361, 9600
  br label %polly.loop_header528.2

polly.loop_header528.2:                           ; preds = %polly.loop_header528.2, %polly.loop_header528.preheader.2
  %polly.indvar532.2 = phi i64 [ %polly.indvar_next533.2, %polly.loop_header528.2 ], [ 0, %polly.loop_header528.preheader.2 ]
  %365 = add nuw nsw i64 %polly.indvar532.2, 512
  %366 = mul nuw nsw i64 %365, 8000
  %scevgep536.2 = getelementptr i8, i8* %scevgep535.2, i64 %366
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %scevgep544.2 = getelementptr i8, i8* %scevgep539.2, i64 %366
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_550.2, %_p_scalar_546.2
  %367 = shl i64 %365, 3
  %368 = add i64 %367, %364
  %scevgep551.2 = getelementptr i8, i8* %call, i64 %368
  %scevgep551552.2 = bitcast i8* %scevgep551.2 to double*
  %_p_scalar_553.2 = load double, double* %scevgep551552.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_553.2
  store double %p_add42.i.2, double* %scevgep551552.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.2 = add nuw nsw i64 %polly.indvar532.2, 1
  %exitcond811.2.not = icmp eq i64 %polly.indvar532.2, %smin810.2
  br i1 %exitcond811.2.not, label %polly.loop_exit530.2, label %polly.loop_header528.2

polly.loop_exit530.2:                             ; preds = %polly.loop_header528.2, %polly.loop_header521.2
  %polly.indvar_next525.2 = add nuw nsw i64 %polly.indvar524.2, 1
  %polly.loop_cond526.2 = icmp ult i64 %polly.indvar524.2, 79
  %indvars.iv.next809.2 = add i64 %indvars.iv808.2, 1
  br i1 %polly.loop_cond526.2, label %polly.loop_header521.2, label %polly.loop_exit523.2

polly.loop_exit523.2:                             ; preds = %polly.loop_exit530.2
  %polly.indvar_next519.2 = add nuw nsw i64 %polly.indvar518.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next519.2, 1000
  br i1 %exitcond812.2.not, label %polly.loop_exit517.2, label %polly.loop_header515.2

polly.loop_exit517.2:                             ; preds = %polly.loop_exit523.2
  %polly.indvar_next513.2 = add nuw nsw i64 %polly.indvar512.2, 1
  %indvars.iv.next802.2 = add nsw i64 %indvars.iv801.2, -80
  %indvars.iv.next807.2 = add nsw i64 %indvars.iv806.2, 80
  %exitcond813.2.not = icmp eq i64 %polly.indvar_next513.2, 15
  br i1 %exitcond813.2.not, label %polly.loop_header509.3, label %polly.loop_header509.2

polly.loop_header509.3:                           ; preds = %polly.loop_exit517.2, %polly.loop_exit517.3
  %indvars.iv806.3 = phi i64 [ %indvars.iv.next807.3, %polly.loop_exit517.3 ], [ -48, %polly.loop_exit517.2 ]
  %indvars.iv801.3 = phi i64 [ %indvars.iv.next802.3, %polly.loop_exit517.3 ], [ 48, %polly.loop_exit517.2 ]
  %polly.indvar512.3 = phi i64 [ %polly.indvar_next513.3, %polly.loop_exit517.3 ], [ 9, %polly.loop_exit517.2 ]
  %smax803.3 = call i64 @llvm.smax.i64(i64 %indvars.iv801.3, i64 0)
  %369 = add i64 %smax803.3, %indvars.iv806.3
  %370 = mul nuw nsw i64 %polly.indvar512.3, 80
  %371 = sub nsw i64 768, %370
  %372 = icmp sgt i64 %371, 0
  %373 = select i1 %372, i64 %371, i64 0
  br label %polly.loop_header515.3

polly.loop_header515.3:                           ; preds = %polly.loop_exit523.3, %polly.loop_header509.3
  %polly.indvar518.3 = phi i64 [ 0, %polly.loop_header509.3 ], [ %polly.indvar_next519.3, %polly.loop_exit523.3 ]
  %374 = shl nuw nsw i64 %polly.indvar518.3, 3
  %scevgep535.3 = getelementptr i8, i8* %call1, i64 %374
  %scevgep539.3 = getelementptr i8, i8* %call2, i64 %374
  br label %polly.loop_header521.3

polly.loop_header521.3:                           ; preds = %polly.loop_exit530.3, %polly.loop_header515.3
  %indvars.iv808.3 = phi i64 [ %indvars.iv.next809.3, %polly.loop_exit530.3 ], [ %369, %polly.loop_header515.3 ]
  %polly.indvar524.3 = phi i64 [ %polly.indvar_next525.3, %polly.loop_exit530.3 ], [ %373, %polly.loop_header515.3 ]
  %smin810.3 = call i64 @llvm.smin.i64(i64 %indvars.iv808.3, i64 255)
  %375 = add nuw i64 %polly.indvar524.3, %370
  %376 = add i64 %375, -768
  %polly.loop_guard531.3864 = icmp sgt i64 %376, -1
  br i1 %polly.loop_guard531.3864, label %polly.loop_header528.preheader.3, label %polly.loop_exit530.3

polly.loop_header528.preheader.3:                 ; preds = %polly.loop_header521.3
  %377 = mul i64 %375, 8000
  %scevgep540.3 = getelementptr i8, i8* %scevgep539.3, i64 %377
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !85, !noalias !88
  %scevgep548.3 = getelementptr i8, i8* %scevgep535.3, i64 %377
  %scevgep548549.3 = bitcast i8* %scevgep548.3 to double*
  %_p_scalar_550.3 = load double, double* %scevgep548549.3, align 8, !alias.scope !84, !noalias !89
  %378 = mul i64 %375, 9600
  br label %polly.loop_header528.3

polly.loop_header528.3:                           ; preds = %polly.loop_header528.3, %polly.loop_header528.preheader.3
  %polly.indvar532.3 = phi i64 [ %polly.indvar_next533.3, %polly.loop_header528.3 ], [ 0, %polly.loop_header528.preheader.3 ]
  %379 = add nuw nsw i64 %polly.indvar532.3, 768
  %380 = mul nuw nsw i64 %379, 8000
  %scevgep536.3 = getelementptr i8, i8* %scevgep535.3, i64 %380
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %scevgep544.3 = getelementptr i8, i8* %scevgep539.3, i64 %380
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_550.3, %_p_scalar_546.3
  %381 = shl i64 %379, 3
  %382 = add i64 %381, %378
  %scevgep551.3 = getelementptr i8, i8* %call, i64 %382
  %scevgep551552.3 = bitcast i8* %scevgep551.3 to double*
  %_p_scalar_553.3 = load double, double* %scevgep551552.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_553.3
  store double %p_add42.i.3, double* %scevgep551552.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.3 = add nuw nsw i64 %polly.indvar532.3, 1
  %exitcond811.3.not = icmp eq i64 %polly.indvar532.3, %smin810.3
  br i1 %exitcond811.3.not, label %polly.loop_exit530.3, label %polly.loop_header528.3

polly.loop_exit530.3:                             ; preds = %polly.loop_header528.3, %polly.loop_header521.3
  %polly.indvar_next525.3 = add nuw nsw i64 %polly.indvar524.3, 1
  %polly.loop_cond526.3 = icmp ult i64 %polly.indvar524.3, 79
  %indvars.iv.next809.3 = add i64 %indvars.iv808.3, 1
  br i1 %polly.loop_cond526.3, label %polly.loop_header521.3, label %polly.loop_exit523.3

polly.loop_exit523.3:                             ; preds = %polly.loop_exit530.3
  %polly.indvar_next519.3 = add nuw nsw i64 %polly.indvar518.3, 1
  %exitcond812.3.not = icmp eq i64 %polly.indvar_next519.3, 1000
  br i1 %exitcond812.3.not, label %polly.loop_exit517.3, label %polly.loop_header515.3

polly.loop_exit517.3:                             ; preds = %polly.loop_exit523.3
  %polly.indvar_next513.3 = add nuw nsw i64 %polly.indvar512.3, 1
  %indvars.iv.next802.3 = add nsw i64 %indvars.iv801.3, -80
  %indvars.iv.next807.3 = add nsw i64 %indvars.iv806.3, 80
  %exitcond813.3.not = icmp eq i64 %polly.indvar_next513.3, 15
  br i1 %exitcond813.3.not, label %polly.loop_header509.4, label %polly.loop_header509.3

polly.loop_header509.4:                           ; preds = %polly.loop_exit517.3, %polly.loop_exit517.4
  %indvars.iv806.4 = phi i64 [ %indvars.iv.next807.4, %polly.loop_exit517.4 ], [ -64, %polly.loop_exit517.3 ]
  %indvars.iv801.4 = phi i64 [ %indvars.iv.next802.4, %polly.loop_exit517.4 ], [ 64, %polly.loop_exit517.3 ]
  %polly.indvar512.4 = phi i64 [ %polly.indvar_next513.4, %polly.loop_exit517.4 ], [ 12, %polly.loop_exit517.3 ]
  %smax803.4 = call i64 @llvm.smax.i64(i64 %indvars.iv801.4, i64 0)
  %383 = add i64 %smax803.4, %indvars.iv806.4
  %384 = mul nuw nsw i64 %polly.indvar512.4, 80
  %385 = sub nsw i64 1024, %384
  %386 = icmp sgt i64 %385, 0
  %387 = select i1 %386, i64 %385, i64 0
  br label %polly.loop_header515.4

polly.loop_header515.4:                           ; preds = %polly.loop_exit523.4, %polly.loop_header509.4
  %polly.indvar518.4 = phi i64 [ 0, %polly.loop_header509.4 ], [ %polly.indvar_next519.4, %polly.loop_exit523.4 ]
  %388 = shl nuw nsw i64 %polly.indvar518.4, 3
  %scevgep535.4 = getelementptr i8, i8* %call1, i64 %388
  %scevgep539.4 = getelementptr i8, i8* %call2, i64 %388
  br label %polly.loop_header521.4

polly.loop_header521.4:                           ; preds = %polly.loop_exit530.4, %polly.loop_header515.4
  %indvars.iv808.4 = phi i64 [ %indvars.iv.next809.4, %polly.loop_exit530.4 ], [ %383, %polly.loop_header515.4 ]
  %polly.indvar524.4 = phi i64 [ %polly.indvar_next525.4, %polly.loop_exit530.4 ], [ %387, %polly.loop_header515.4 ]
  %smin810.4 = call i64 @llvm.smin.i64(i64 %indvars.iv808.4, i64 255)
  %389 = add nuw i64 %polly.indvar524.4, %384
  %390 = add i64 %389, -1024
  %polly.loop_guard531.4865 = icmp sgt i64 %390, -1
  br i1 %polly.loop_guard531.4865, label %polly.loop_header528.preheader.4, label %polly.loop_exit530.4

polly.loop_header528.preheader.4:                 ; preds = %polly.loop_header521.4
  %391 = mul i64 %389, 8000
  %scevgep540.4 = getelementptr i8, i8* %scevgep539.4, i64 %391
  %scevgep540541.4 = bitcast i8* %scevgep540.4 to double*
  %_p_scalar_542.4 = load double, double* %scevgep540541.4, align 8, !alias.scope !85, !noalias !88
  %scevgep548.4 = getelementptr i8, i8* %scevgep535.4, i64 %391
  %scevgep548549.4 = bitcast i8* %scevgep548.4 to double*
  %_p_scalar_550.4 = load double, double* %scevgep548549.4, align 8, !alias.scope !84, !noalias !89
  %392 = mul i64 %389, 9600
  br label %polly.loop_header528.4

polly.loop_header528.4:                           ; preds = %polly.loop_header528.4, %polly.loop_header528.preheader.4
  %polly.indvar532.4 = phi i64 [ %polly.indvar_next533.4, %polly.loop_header528.4 ], [ 0, %polly.loop_header528.preheader.4 ]
  %393 = add nuw nsw i64 %polly.indvar532.4, 1024
  %394 = mul nuw nsw i64 %393, 8000
  %scevgep536.4 = getelementptr i8, i8* %scevgep535.4, i64 %394
  %scevgep536537.4 = bitcast i8* %scevgep536.4 to double*
  %_p_scalar_538.4 = load double, double* %scevgep536537.4, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.4 = fmul fast double %_p_scalar_542.4, %_p_scalar_538.4
  %scevgep544.4 = getelementptr i8, i8* %scevgep539.4, i64 %394
  %scevgep544545.4 = bitcast i8* %scevgep544.4 to double*
  %_p_scalar_546.4 = load double, double* %scevgep544545.4, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.4 = fmul fast double %_p_scalar_550.4, %_p_scalar_546.4
  %395 = shl i64 %393, 3
  %396 = add i64 %395, %392
  %scevgep551.4 = getelementptr i8, i8* %call, i64 %396
  %scevgep551552.4 = bitcast i8* %scevgep551.4 to double*
  %_p_scalar_553.4 = load double, double* %scevgep551552.4, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_553.4
  store double %p_add42.i.4, double* %scevgep551552.4, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next533.4 = add nuw nsw i64 %polly.indvar532.4, 1
  %exitcond811.4.not = icmp eq i64 %polly.indvar532.4, %smin810.4
  br i1 %exitcond811.4.not, label %polly.loop_exit530.4, label %polly.loop_header528.4

polly.loop_exit530.4:                             ; preds = %polly.loop_header528.4, %polly.loop_header521.4
  %polly.indvar_next525.4 = add nuw nsw i64 %polly.indvar524.4, 1
  %polly.loop_cond526.4 = icmp ult i64 %polly.indvar524.4, 79
  %indvars.iv.next809.4 = add i64 %indvars.iv808.4, 1
  br i1 %polly.loop_cond526.4, label %polly.loop_header521.4, label %polly.loop_exit523.4

polly.loop_exit523.4:                             ; preds = %polly.loop_exit530.4
  %polly.indvar_next519.4 = add nuw nsw i64 %polly.indvar518.4, 1
  %exitcond812.4.not = icmp eq i64 %polly.indvar_next519.4, 1000
  br i1 %exitcond812.4.not, label %polly.loop_exit517.4, label %polly.loop_header515.4

polly.loop_exit517.4:                             ; preds = %polly.loop_exit523.4
  %polly.indvar_next513.4 = add nuw nsw i64 %polly.indvar512.4, 1
  %indvars.iv.next802.4 = add nsw i64 %indvars.iv801.4, -80
  %indvars.iv.next807.4 = add nsw i64 %indvars.iv806.4, 80
  %exitcond813.4.not = icmp eq i64 %polly.indvar_next513.4, 15
  br i1 %exitcond813.4.not, label %kernel_syr2k.exit, label %polly.loop_header509.4
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
!24 = !{!"llvm.loop.tile.size", i32 256}
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
!44 = !{!"llvm.loop.tile.size", i32 80}
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
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
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
