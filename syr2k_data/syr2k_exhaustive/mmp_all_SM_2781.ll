; ModuleID = 'syr2k_exhaustive/mmp_all_SM_2781.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_2781.c"
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
  %call803 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1655 = bitcast i8* %call1 to double*
  %polly.access.call1664 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1664, %call2
  %polly.access.call2684 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2684, %call1
  %2 = or i1 %0, %1
  %polly.access.call704 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call704, %call2
  %4 = icmp ule i8* %polly.access.call2684, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call704, %call1
  %8 = icmp ule i8* %polly.access.call1664, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header777, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep966 = getelementptr i8, i8* %call2, i64 %12
  %scevgep965 = getelementptr i8, i8* %call2, i64 %11
  %scevgep964 = getelementptr i8, i8* %call1, i64 %12
  %scevgep963 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep963, %scevgep966
  %bound1 = icmp ult i8* %scevgep965, %scevgep964
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
  br i1 %exitcond18.not.i, label %vector.ph970, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph970:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph970
  %index971 = phi i64 [ 0, %vector.ph970 ], [ %index.next972, %vector.body969 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph970 ], [ %vec.ind.next976, %vector.body969 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv7.i, i64 %index971
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next972, 1200
  br i1 %40, label %for.inc41.i, label %vector.body969, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body969
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph970, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit838
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1033 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1033, label %for.body3.i46.preheader1110, label %vector.ph1034

vector.ph1034:                                    ; preds = %for.body3.i46.preheader
  %n.vec1036 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1034
  %index1037 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1038, %vector.body1032 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i, i64 %index1037
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1038 = add i64 %index1037, 4
  %46 = icmp eq i64 %index.next1038, %n.vec1036
  br i1 %46, label %middle.block1030, label %vector.body1032, !llvm.loop !18

middle.block1030:                                 ; preds = %vector.body1032
  %cmp.n1040 = icmp eq i64 %indvars.iv21.i, %n.vec1036
  br i1 %cmp.n1040, label %for.inc6.i, label %for.body3.i46.preheader1110

for.body3.i46.preheader1110:                      ; preds = %for.body3.i46.preheader, %middle.block1030
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1036, %middle.block1030 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1110, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1110 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1030, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting468
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1056 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1056, label %for.body3.i60.preheader1108, label %vector.ph1057

vector.ph1057:                                    ; preds = %for.body3.i60.preheader
  %n.vec1059 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1057
  %index1060 = phi i64 [ 0, %vector.ph1057 ], [ %index.next1061, %vector.body1055 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i52, i64 %index1060
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1064 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1064, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1061 = add i64 %index1060, 4
  %57 = icmp eq i64 %index.next1061, %n.vec1059
  br i1 %57, label %middle.block1053, label %vector.body1055, !llvm.loop !60

middle.block1053:                                 ; preds = %vector.body1055
  %cmp.n1063 = icmp eq i64 %indvars.iv21.i52, %n.vec1059
  br i1 %cmp.n1063, label %for.inc6.i63, label %for.body3.i60.preheader1108

for.body3.i60.preheader1108:                      ; preds = %for.body3.i60.preheader, %middle.block1053
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1059, %middle.block1053 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1108, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1108 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1053, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting282
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1082 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1082, label %for.body3.i99.preheader1106, label %vector.ph1083

vector.ph1083:                                    ; preds = %for.body3.i99.preheader
  %n.vec1085 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1087, %vector.body1081 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i91, i64 %index1086
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1090 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1090, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1087 = add i64 %index1086, 4
  %68 = icmp eq i64 %index.next1087, %n.vec1085
  br i1 %68, label %middle.block1079, label %vector.body1081, !llvm.loop !62

middle.block1079:                                 ; preds = %vector.body1081
  %cmp.n1089 = icmp eq i64 %indvars.iv21.i91, %n.vec1085
  br i1 %cmp.n1089, label %for.inc6.i102, label %for.body3.i99.preheader1106

for.body3.i99.preheader1106:                      ; preds = %for.body3.i99.preheader, %middle.block1079
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1085, %middle.block1079 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1106, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1106 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1079, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call803, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1094 = phi i64 [ %indvar.next1095, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1094, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1096 = icmp ult i64 %88, 4
  br i1 %min.iters.check1096, label %polly.loop_header191.preheader, label %vector.ph1097

vector.ph1097:                                    ; preds = %polly.loop_header
  %n.vec1099 = and i64 %88, -4
  br label %vector.body1093

vector.body1093:                                  ; preds = %vector.body1093, %vector.ph1097
  %index1100 = phi i64 [ 0, %vector.ph1097 ], [ %index.next1101, %vector.body1093 ]
  %90 = shl nuw nsw i64 %index1100, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1104 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1104, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1101 = add i64 %index1100, 4
  %95 = icmp eq i64 %index.next1101, %n.vec1099
  br i1 %95, label %middle.block1091, label %vector.body1093, !llvm.loop !74

middle.block1091:                                 ; preds = %vector.body1093
  %cmp.n1103 = icmp eq i64 %88, %n.vec1099
  br i1 %cmp.n1103, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1091
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1099, %middle.block1091 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1091
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1095 = add i64 %indvar1094, 1
  br i1 %exitcond890.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond889.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar202, 5
  %98 = mul nsw i64 %polly.indvar202, -128
  %99 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit244
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond888.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit244, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit244 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit244 ], [ %97, %polly.loop_header199 ]
  %100 = shl nsw i64 %polly.indvar208, 2
  %101 = add nsw i64 %100, %98
  %102 = add nsw i64 %101, -1
  %.inv = icmp ugt i64 %101, 127
  %103 = select i1 %.inv, i64 127, i64 %102
  %polly.loop_guard = icmp sgt i64 %103, -1
  %104 = or i64 %101, 3
  %105 = add nuw nsw i64 %101, %99
  %polly.access.mul.call1236.us = mul nuw nsw i64 %105, 1000
  %polly.indvar_next233.us = or i64 %101, 1
  %polly.loop_cond234.not.not.us = icmp ult i64 %101, %104
  %106 = add nuw nsw i64 %polly.indvar_next233.us, %99
  %polly.access.mul.call1236.us.1 = mul nuw nsw i64 %106, 1000
  %polly.indvar_next233.us.1 = add nuw nsw i64 %polly.indvar_next233.us, 1
  %107 = add nuw nsw i64 %polly.indvar_next233.us.1, %99
  %polly.access.mul.call1236.us.2 = mul nuw nsw i64 %107, 1000
  %polly.indvar_next233.us.2 = or i64 %101, 3
  %108 = add nuw nsw i64 %polly.indvar_next233.us.2, %99
  %polly.access.mul.call1236.us.3 = mul nuw nsw i64 %108, 1000
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit230.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit230.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header211.us, %polly.loop_header217.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_header217.us ], [ 0, %polly.loop_header211.us ]
  %109 = add nuw nsw i64 %polly.indvar220.us, %99
  %polly.access.mul.call1224.us = mul nuw nsw i64 %109, 1000
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw i64 %polly.indvar220.us, 1
  %exitcond880.not = icmp eq i64 %polly.indvar220.us, %103
  br i1 %exitcond880.not, label %polly.loop_exit219.loopexit.us, label %polly.loop_header217.us

polly.loop_exit230.us:                            ; preds = %polly.loop_header228.us.1, %polly.loop_exit219.loopexit.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond881.not, label %polly.loop_header242.preheader, label %polly.loop_header211.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_header217.us
  %polly.access.add.call1237.us = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1241.us, align 8
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.us.1, label %polly.loop_exit230.us

polly.loop_exit244:                               ; preds = %polly.loop_exit256.3
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond887.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond887.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.loop_exit230
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit230 ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar214, 1200
  %polly.access.add.call1237 = add nuw nsw i64 %polly.access.mul.call1236.us, %polly.indvar214
  %polly.access.call1238 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237
  %polly.access.call1238.load = load double, double* %polly.access.call1238, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  store double %polly.access.call1238.load, double* %polly.access.Packed_MemRef_call1241, align 8
  br i1 %polly.loop_cond234.not.not.us, label %polly.loop_header228.1, label %polly.loop_exit230

polly.loop_exit230:                               ; preds = %polly.loop_header228.1, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond.not, label %polly.loop_header242.preheader, label %polly.loop_header211

polly.loop_header242.preheader:                   ; preds = %polly.loop_exit230, %polly.loop_exit230.us
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 127)
  %110 = mul nsw i64 %polly.indvar208, 32000
  %111 = mul nsw i64 %polly.indvar208, 38400
  %indvars.iv.next883 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next883, i64 127)
  %112 = or i64 %101, 1
  %113 = or i64 %100, 1
  %114 = mul nuw nsw i64 %113, 8000
  %115 = mul nuw nsw i64 %113, 9600
  %indvars.iv.next883.1 = add nuw nsw i64 %indvars.iv.next883, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next883.1, i64 127)
  %116 = or i64 %101, 2
  %117 = or i64 %100, 2
  %118 = mul nuw nsw i64 %117, 8000
  %119 = mul nuw nsw i64 %117, 9600
  %indvars.iv.next883.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next883.2, i64 127)
  %120 = or i64 %101, 3
  %121 = or i64 %100, 3
  %122 = mul nuw nsw i64 %121, 8000
  %123 = mul nuw nsw i64 %121, 9600
  br label %polly.loop_header242

polly.loop_header242:                             ; preds = %polly.loop_header242.preheader, %polly.loop_exit256.3
  %polly.indvar245 = phi i64 [ %polly.indvar_next246, %polly.loop_exit256.3 ], [ 0, %polly.loop_header242.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar245, 3
  %scevgep264 = getelementptr i8, i8* %call2, i64 %124
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar245, 1200
  %scevgep265 = getelementptr i8, i8* %scevgep264, i64 %110
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1274 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273
  %_p_scalar_275 = load double, double* %polly.access.Packed_MemRef_call1274, align 8
  br label %polly.loop_header254

polly.loop_exit256:                               ; preds = %polly.loop_header254
  %scevgep265.1 = getelementptr i8, i8* %scevgep264, i64 %114
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273.1 = add nuw nsw i64 %112, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1274.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.1
  %_p_scalar_275.1 = load double, double* %polly.access.Packed_MemRef_call1274.1, align 8
  br label %polly.loop_header254.1

polly.loop_header254:                             ; preds = %polly.loop_header254, %polly.loop_header242
  %polly.indvar257 = phi i64 [ 0, %polly.loop_header242 ], [ %polly.indvar_next258, %polly.loop_header254 ]
  %125 = add nuw nsw i64 %polly.indvar257, %99
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call1262, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_267, %_p_scalar_263
  %126 = mul nuw nsw i64 %125, 8000
  %scevgep269 = getelementptr i8, i8* %scevgep264, i64 %126
  %scevgep269270 = bitcast i8* %scevgep269 to double*
  %_p_scalar_271 = load double, double* %scevgep269270, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_275, %_p_scalar_271
  %127 = shl i64 %125, 3
  %128 = add nuw nsw i64 %127, %111
  %scevgep276 = getelementptr i8, i8* %call, i64 %128
  %scevgep276277 = bitcast i8* %scevgep276 to double*
  %_p_scalar_278 = load double, double* %scevgep276277, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_278
  store double %p_add42.i118, double* %scevgep276277, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %exitcond884.not = icmp eq i64 %polly.indvar257, %smin
  br i1 %exitcond884.not, label %polly.loop_exit256, label %polly.loop_header254

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* nonnull %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1068 = phi i64 [ %indvar.next1069, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %129 = add i64 %indvar1068, 1
  %130 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %130
  %min.iters.check1070 = icmp ult i64 %129, 4
  br i1 %min.iters.check1070, label %polly.loop_header373.preheader, label %vector.ph1071

vector.ph1071:                                    ; preds = %polly.loop_header367
  %n.vec1073 = and i64 %129, -4
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1075, %vector.body1067 ]
  %131 = shl nuw nsw i64 %index1074, 3
  %132 = getelementptr i8, i8* %scevgep379, i64 %131
  %133 = bitcast i8* %132 to <4 x double>*
  %wide.load1078 = load <4 x double>, <4 x double>* %133, align 8, !alias.scope !79, !noalias !81
  %134 = fmul fast <4 x double> %wide.load1078, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %135 = bitcast i8* %132 to <4 x double>*
  store <4 x double> %134, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %index.next1075 = add i64 %index1074, 4
  %136 = icmp eq i64 %index.next1075, %n.vec1073
  br i1 %136, label %middle.block1065, label %vector.body1067, !llvm.loop !85

middle.block1065:                                 ; preds = %vector.body1067
  %cmp.n1077 = icmp eq i64 %129, %n.vec1073
  br i1 %cmp.n1077, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1065
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1073, %middle.block1065 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1065
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1069 = add i64 %indvar1068, 1
  br i1 %exitcond905.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %137 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %137
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond904.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !86

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %polly.indvar386 = phi i64 [ %polly.indvar_next387, %polly.loop_exit391 ], [ 0, %polly.loop_header383.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar386, 5
  %139 = mul nsw i64 %polly.indvar386, -128
  %140 = shl nsw i64 %polly.indvar386, 7
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit430
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next387, 10
  br i1 %exitcond903.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit430, %polly.loop_header383
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit430 ], [ 0, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit430 ], [ %138, %polly.loop_header383 ]
  %141 = shl nsw i64 %polly.indvar392, 2
  %142 = add nsw i64 %141, %139
  %143 = add nsw i64 %142, -1
  %.inv857 = icmp ugt i64 %142, 127
  %144 = select i1 %.inv857, i64 127, i64 %143
  %polly.loop_guard405 = icmp sgt i64 %144, -1
  %145 = or i64 %142, 3
  %146 = add nuw nsw i64 %142, %140
  %polly.access.mul.call1422.us = mul nuw nsw i64 %146, 1000
  %polly.indvar_next419.us = or i64 %142, 1
  %polly.loop_cond420.not.not.us = icmp ult i64 %142, %145
  %147 = add nuw nsw i64 %polly.indvar_next419.us, %140
  %polly.access.mul.call1422.us.1 = mul nuw nsw i64 %147, 1000
  %polly.indvar_next419.us.1 = add nuw nsw i64 %polly.indvar_next419.us, 1
  %148 = add nuw nsw i64 %polly.indvar_next419.us.1, %140
  %polly.access.mul.call1422.us.2 = mul nuw nsw i64 %148, 1000
  %polly.indvar_next419.us.2 = or i64 %142, 3
  %149 = add nuw nsw i64 %polly.indvar_next419.us.2, %140
  %polly.access.mul.call1422.us.3 = mul nuw nsw i64 %149, 1000
  br i1 %polly.loop_guard405, label %polly.loop_header395.us, label %polly.loop_header395

polly.loop_header395.us:                          ; preds = %polly.loop_header389, %polly.loop_exit416.us
  %polly.indvar398.us = phi i64 [ %polly.indvar_next399.us, %polly.loop_exit416.us ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar398.us, 1200
  br label %polly.loop_header402.us

polly.loop_header402.us:                          ; preds = %polly.loop_header395.us, %polly.loop_header402.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header402.us ], [ 0, %polly.loop_header395.us ]
  %150 = add nuw nsw i64 %polly.indvar406.us, %140
  %polly.access.mul.call1410.us = mul nuw nsw i64 %150, 1000
  %polly.access.add.call1411.us = add nuw nsw i64 %polly.access.mul.call1410.us, %polly.indvar398.us
  %polly.access.call1412.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1411.us
  %polly.access.call1412.load.us = load double, double* %polly.access.call1412.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar406.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1412.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next407.us = add nuw i64 %polly.indvar406.us, 1
  %exitcond892.not = icmp eq i64 %polly.indvar406.us, %144
  br i1 %exitcond892.not, label %polly.loop_exit404.loopexit.us, label %polly.loop_header402.us

polly.loop_exit416.us:                            ; preds = %polly.loop_header414.us.1, %polly.loop_exit404.loopexit.us
  %polly.indvar_next399.us = add nuw nsw i64 %polly.indvar398.us, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next399.us, 1000
  br i1 %exitcond893.not, label %polly.loop_header428.preheader, label %polly.loop_header395.us

polly.loop_exit404.loopexit.us:                   ; preds = %polly.loop_header402.us
  %polly.access.add.call1423.us = add nuw nsw i64 %polly.access.mul.call1422.us, %polly.indvar398.us
  %polly.access.call1424.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.us
  %polly.access.call1424.load.us = load double, double* %polly.access.call1424.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284427.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.us
  store double %polly.access.call1424.load.us, double* %polly.access.Packed_MemRef_call1284427.us, align 8
  br i1 %polly.loop_cond420.not.not.us, label %polly.loop_header414.us.1, label %polly.loop_exit416.us

polly.loop_exit430:                               ; preds = %polly.loop_exit442.3
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 4
  %exitcond902.not = icmp eq i64 %polly.indvar_next393, 300
  br i1 %exitcond902.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_header389, %polly.loop_exit416
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit416 ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1284425 = mul nuw nsw i64 %polly.indvar398, 1200
  %polly.access.add.call1423 = add nuw nsw i64 %polly.access.mul.call1422.us, %polly.indvar398
  %polly.access.call1424 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423
  %polly.access.call1424.load = load double, double* %polly.access.call1424, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426 = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1284425
  %polly.access.Packed_MemRef_call1284427 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426
  store double %polly.access.call1424.load, double* %polly.access.Packed_MemRef_call1284427, align 8
  br i1 %polly.loop_cond420.not.not.us, label %polly.loop_header414.1, label %polly.loop_exit416

polly.loop_exit416:                               ; preds = %polly.loop_header414.1, %polly.loop_header395
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next399, 1000
  br i1 %exitcond891.not, label %polly.loop_header428.preheader, label %polly.loop_header395

polly.loop_header428.preheader:                   ; preds = %polly.loop_exit416, %polly.loop_exit416.us
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv894, i64 127)
  %151 = mul nsw i64 %polly.indvar392, 32000
  %152 = mul nsw i64 %polly.indvar392, 38400
  %indvars.iv.next897 = or i64 %indvars.iv894, 1
  %smin898.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next897, i64 127)
  %153 = or i64 %142, 1
  %154 = or i64 %141, 1
  %155 = mul nuw nsw i64 %154, 8000
  %156 = mul nuw nsw i64 %154, 9600
  %indvars.iv.next897.1 = add nuw nsw i64 %indvars.iv.next897, 1
  %smin898.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next897.1, i64 127)
  %157 = or i64 %142, 2
  %158 = or i64 %141, 2
  %159 = mul nuw nsw i64 %158, 8000
  %160 = mul nuw nsw i64 %158, 9600
  %indvars.iv.next897.2 = or i64 %indvars.iv894, 3
  %smin898.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next897.2, i64 127)
  %161 = or i64 %142, 3
  %162 = or i64 %141, 3
  %163 = mul nuw nsw i64 %162, 8000
  %164 = mul nuw nsw i64 %162, 9600
  br label %polly.loop_header428

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader, %polly.loop_exit442.3
  %polly.indvar431 = phi i64 [ %polly.indvar_next432, %polly.loop_exit442.3 ], [ 0, %polly.loop_header428.preheader ]
  %165 = shl nuw nsw i64 %polly.indvar431, 3
  %scevgep450 = getelementptr i8, i8* %call2, i64 %165
  %polly.access.mul.Packed_MemRef_call1284446 = mul nuw nsw i64 %polly.indvar431, 1200
  %scevgep451 = getelementptr i8, i8* %scevgep450, i64 %151
  %scevgep451452 = bitcast i8* %scevgep451 to double*
  %_p_scalar_453 = load double, double* %scevgep451452, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284459 = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284460 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284459
  %_p_scalar_461 = load double, double* %polly.access.Packed_MemRef_call1284460, align 8
  br label %polly.loop_header440

polly.loop_exit442:                               ; preds = %polly.loop_header440
  %scevgep451.1 = getelementptr i8, i8* %scevgep450, i64 %155
  %scevgep451452.1 = bitcast i8* %scevgep451.1 to double*
  %_p_scalar_453.1 = load double, double* %scevgep451452.1, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284459.1 = add nuw nsw i64 %153, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284460.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284459.1
  %_p_scalar_461.1 = load double, double* %polly.access.Packed_MemRef_call1284460.1, align 8
  br label %polly.loop_header440.1

polly.loop_header440:                             ; preds = %polly.loop_header440, %polly.loop_header428
  %polly.indvar443 = phi i64 [ 0, %polly.loop_header428 ], [ %polly.indvar_next444, %polly.loop_header440 ]
  %166 = add nuw nsw i64 %polly.indvar443, %140
  %polly.access.add.Packed_MemRef_call1284447 = add nuw nsw i64 %polly.indvar443, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284448 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284447
  %_p_scalar_449 = load double, double* %polly.access.Packed_MemRef_call1284448, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_453, %_p_scalar_449
  %167 = mul nuw nsw i64 %166, 8000
  %scevgep455 = getelementptr i8, i8* %scevgep450, i64 %167
  %scevgep455456 = bitcast i8* %scevgep455 to double*
  %_p_scalar_457 = load double, double* %scevgep455456, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_461, %_p_scalar_457
  %168 = shl i64 %166, 3
  %169 = add nuw nsw i64 %168, %152
  %scevgep462 = getelementptr i8, i8* %call, i64 %169
  %scevgep462463 = bitcast i8* %scevgep462 to double*
  %_p_scalar_464 = load double, double* %scevgep462463, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_464
  store double %p_add42.i79, double* %scevgep462463, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %exitcond899.not = icmp eq i64 %polly.indvar443, %smin898
  br i1 %exitcond899.not, label %polly.loop_exit442, label %polly.loop_header440

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit577
  tail call void @free(i8* nonnull %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %170 = add i64 %indvar, 1
  %171 = mul nuw nsw i64 %polly.indvar556, 9600
  %scevgep565 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1044 = icmp ult i64 %170, 4
  br i1 %min.iters.check1044, label %polly.loop_header559.preheader, label %vector.ph1045

vector.ph1045:                                    ; preds = %polly.loop_header553
  %n.vec1047 = and i64 %170, -4
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1045
  %index1048 = phi i64 [ 0, %vector.ph1045 ], [ %index.next1049, %vector.body1043 ]
  %172 = shl nuw nsw i64 %index1048, 3
  %173 = getelementptr i8, i8* %scevgep565, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1052 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !89, !noalias !91
  %175 = fmul fast <4 x double> %wide.load1052, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !89, !noalias !91
  %index.next1049 = add i64 %index1048, 4
  %177 = icmp eq i64 %index.next1049, %n.vec1047
  br i1 %177, label %middle.block1041, label %vector.body1043, !llvm.loop !95

middle.block1041:                                 ; preds = %vector.body1043
  %cmp.n1051 = icmp eq i64 %170, %n.vec1047
  br i1 %cmp.n1051, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1041
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1047, %middle.block1041 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1041
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next557, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond920.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %178
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond919.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !96

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit577
  %polly.indvar572 = phi i64 [ %polly.indvar_next573, %polly.loop_exit577 ], [ 0, %polly.loop_header569.preheader ]
  %179 = shl nuw nsw i64 %polly.indvar572, 5
  %180 = mul nsw i64 %polly.indvar572, -128
  %181 = shl nsw i64 %polly.indvar572, 7
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit616
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next573, 10
  br i1 %exitcond918.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit616, %polly.loop_header569
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit616 ], [ 0, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit616 ], [ %179, %polly.loop_header569 ]
  %182 = shl nsw i64 %polly.indvar578, 2
  %183 = add nsw i64 %182, %180
  %184 = add nsw i64 %183, -1
  %.inv858 = icmp ugt i64 %183, 127
  %185 = select i1 %.inv858, i64 127, i64 %184
  %polly.loop_guard591 = icmp sgt i64 %185, -1
  %186 = or i64 %183, 3
  %187 = add nuw nsw i64 %183, %181
  %polly.access.mul.call1608.us = mul nuw nsw i64 %187, 1000
  %polly.indvar_next605.us = or i64 %183, 1
  %polly.loop_cond606.not.not.us = icmp ult i64 %183, %186
  %188 = add nuw nsw i64 %polly.indvar_next605.us, %181
  %polly.access.mul.call1608.us.1 = mul nuw nsw i64 %188, 1000
  %polly.indvar_next605.us.1 = add nuw nsw i64 %polly.indvar_next605.us, 1
  %189 = add nuw nsw i64 %polly.indvar_next605.us.1, %181
  %polly.access.mul.call1608.us.2 = mul nuw nsw i64 %189, 1000
  %polly.indvar_next605.us.2 = or i64 %183, 3
  %190 = add nuw nsw i64 %polly.indvar_next605.us.2, %181
  %polly.access.mul.call1608.us.3 = mul nuw nsw i64 %190, 1000
  br i1 %polly.loop_guard591, label %polly.loop_header581.us, label %polly.loop_header581

polly.loop_header581.us:                          ; preds = %polly.loop_header575, %polly.loop_exit602.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit602.us ], [ 0, %polly.loop_header575 ]
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar584.us, 1200
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header581.us, %polly.loop_header588.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_header588.us ], [ 0, %polly.loop_header581.us ]
  %191 = add nuw nsw i64 %polly.indvar592.us, %181
  %polly.access.mul.call1596.us = mul nuw nsw i64 %191, 1000
  %polly.access.add.call1597.us = add nuw nsw i64 %polly.access.mul.call1596.us, %polly.indvar584.us
  %polly.access.call1598.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1597.us
  %polly.access.call1598.load.us = load double, double* %polly.access.call1598.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar592.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1598.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next593.us = add nuw i64 %polly.indvar592.us, 1
  %exitcond907.not = icmp eq i64 %polly.indvar592.us, %185
  br i1 %exitcond907.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit602.us:                            ; preds = %polly.loop_header600.us.1, %polly.loop_exit590.loopexit.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next585.us, 1000
  br i1 %exitcond908.not, label %polly.loop_header614.preheader, label %polly.loop_header581.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_header588.us
  %polly.access.add.call1609.us = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar584.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.us = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470613.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470613.us, align 8
  br i1 %polly.loop_cond606.not.not.us, label %polly.loop_header600.us.1, label %polly.loop_exit602.us

polly.loop_exit616:                               ; preds = %polly.loop_exit628.3
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 4
  %exitcond917.not = icmp eq i64 %polly.indvar_next579, 300
  br i1 %exitcond917.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_header575, %polly.loop_exit602
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit602 ], [ 0, %polly.loop_header575 ]
  %polly.access.mul.Packed_MemRef_call1470611 = mul nuw nsw i64 %polly.indvar584, 1200
  %polly.access.add.call1609 = add nuw nsw i64 %polly.access.mul.call1608.us, %polly.indvar584
  %polly.access.call1610 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609
  %polly.access.call1610.load = load double, double* %polly.access.call1610, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1470611
  %polly.access.Packed_MemRef_call1470613 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612
  store double %polly.access.call1610.load, double* %polly.access.Packed_MemRef_call1470613, align 8
  br i1 %polly.loop_cond606.not.not.us, label %polly.loop_header600.1, label %polly.loop_exit602

polly.loop_exit602:                               ; preds = %polly.loop_header600.1, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next585, 1000
  br i1 %exitcond906.not, label %polly.loop_header614.preheader, label %polly.loop_header581

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit602, %polly.loop_exit602.us
  %smin913 = call i64 @llvm.smin.i64(i64 %indvars.iv909, i64 127)
  %192 = mul nsw i64 %polly.indvar578, 32000
  %193 = mul nsw i64 %polly.indvar578, 38400
  %indvars.iv.next912 = or i64 %indvars.iv909, 1
  %smin913.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next912, i64 127)
  %194 = or i64 %183, 1
  %195 = or i64 %182, 1
  %196 = mul nuw nsw i64 %195, 8000
  %197 = mul nuw nsw i64 %195, 9600
  %indvars.iv.next912.1 = add nuw nsw i64 %indvars.iv.next912, 1
  %smin913.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next912.1, i64 127)
  %198 = or i64 %183, 2
  %199 = or i64 %182, 2
  %200 = mul nuw nsw i64 %199, 8000
  %201 = mul nuw nsw i64 %199, 9600
  %indvars.iv.next912.2 = or i64 %indvars.iv909, 3
  %smin913.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next912.2, i64 127)
  %202 = or i64 %183, 3
  %203 = or i64 %182, 3
  %204 = mul nuw nsw i64 %203, 8000
  %205 = mul nuw nsw i64 %203, 9600
  br label %polly.loop_header614

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit628.3
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit628.3 ], [ 0, %polly.loop_header614.preheader ]
  %206 = shl nuw nsw i64 %polly.indvar617, 3
  %scevgep636 = getelementptr i8, i8* %call2, i64 %206
  %polly.access.mul.Packed_MemRef_call1470632 = mul nuw nsw i64 %polly.indvar617, 1200
  %scevgep637 = getelementptr i8, i8* %scevgep636, i64 %192
  %scevgep637638 = bitcast i8* %scevgep637 to double*
  %_p_scalar_639 = load double, double* %scevgep637638, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1470645 = add nuw nsw i64 %183, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470646 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470645
  %_p_scalar_647 = load double, double* %polly.access.Packed_MemRef_call1470646, align 8
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %scevgep637.1 = getelementptr i8, i8* %scevgep636, i64 %196
  %scevgep637638.1 = bitcast i8* %scevgep637.1 to double*
  %_p_scalar_639.1 = load double, double* %scevgep637638.1, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1470645.1 = add nuw nsw i64 %194, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470646.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470645.1
  %_p_scalar_647.1 = load double, double* %polly.access.Packed_MemRef_call1470646.1, align 8
  br label %polly.loop_header626.1

polly.loop_header626:                             ; preds = %polly.loop_header626, %polly.loop_header614
  %polly.indvar629 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next630, %polly.loop_header626 ]
  %207 = add nuw nsw i64 %polly.indvar629, %181
  %polly.access.add.Packed_MemRef_call1470633 = add nuw nsw i64 %polly.indvar629, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470634 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470633
  %_p_scalar_635 = load double, double* %polly.access.Packed_MemRef_call1470634, align 8
  %p_mul27.i = fmul fast double %_p_scalar_639, %_p_scalar_635
  %208 = mul nuw nsw i64 %207, 8000
  %scevgep641 = getelementptr i8, i8* %scevgep636, i64 %208
  %scevgep641642 = bitcast i8* %scevgep641 to double*
  %_p_scalar_643 = load double, double* %scevgep641642, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_647, %_p_scalar_643
  %209 = shl i64 %207, 3
  %210 = add nuw nsw i64 %209, %193
  %scevgep648 = getelementptr i8, i8* %call, i64 %210
  %scevgep648649 = bitcast i8* %scevgep648 to double*
  %_p_scalar_650 = load double, double* %scevgep648649, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_650
  store double %p_add42.i, double* %scevgep648649, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %exitcond914.not = icmp eq i64 %polly.indvar629, %smin913
  br i1 %exitcond914.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header777:                             ; preds = %entry, %polly.loop_exit785
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %polly.loop_exit785 ], [ 0, %entry ]
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %entry ]
  %smin947 = call i64 @llvm.smin.i64(i64 %indvars.iv945, i64 -1168)
  %211 = shl nsw i64 %polly.indvar780, 5
  %212 = add nsw i64 %smin947, 1199
  br label %polly.loop_header783

polly.loop_exit785:                               ; preds = %polly.loop_exit791
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %indvars.iv.next946 = add nsw i64 %indvars.iv945, -32
  %exitcond950.not = icmp eq i64 %polly.indvar_next781, 38
  br i1 %exitcond950.not, label %polly.loop_header804, label %polly.loop_header777

polly.loop_header783:                             ; preds = %polly.loop_exit791, %polly.loop_header777
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %polly.loop_header777 ]
  %213 = mul nsw i64 %polly.indvar786, -32
  %smin982 = call i64 @llvm.smin.i64(i64 %213, i64 -1168)
  %214 = add nsw i64 %smin982, 1200
  %smin943 = call i64 @llvm.smin.i64(i64 %indvars.iv941, i64 -1168)
  %215 = shl nsw i64 %polly.indvar786, 5
  %216 = add nsw i64 %smin943, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -32
  %exitcond949.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond949.not, label %polly.loop_exit785, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %polly.indvar792 = phi i64 [ 0, %polly.loop_header783 ], [ %polly.indvar_next793, %polly.loop_exit797 ]
  %217 = add nuw nsw i64 %polly.indvar792, %211
  %218 = trunc i64 %217 to i32
  %219 = mul nuw nsw i64 %217, 9600
  %min.iters.check = icmp eq i64 %214, 0
  br i1 %min.iters.check, label %polly.loop_header795, label %vector.ph983

vector.ph983:                                     ; preds = %polly.loop_header789
  %broadcast.splatinsert990 = insertelement <4 x i64> poison, i64 %215, i32 0
  %broadcast.splat991 = shufflevector <4 x i64> %broadcast.splatinsert990, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert992 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat993 = shufflevector <4 x i32> %broadcast.splatinsert992, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph983
  %index984 = phi i64 [ 0, %vector.ph983 ], [ %index.next985, %vector.body981 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph983 ], [ %vec.ind.next989, %vector.body981 ]
  %220 = add nuw nsw <4 x i64> %vec.ind988, %broadcast.splat991
  %221 = trunc <4 x i64> %220 to <4 x i32>
  %222 = mul <4 x i32> %broadcast.splat993, %221
  %223 = add <4 x i32> %222, <i32 3, i32 3, i32 3, i32 3>
  %224 = urem <4 x i32> %223, <i32 1200, i32 1200, i32 1200, i32 1200>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %227 = extractelement <4 x i64> %220, i32 0
  %228 = shl i64 %227, 3
  %229 = add nuw nsw i64 %228, %219
  %230 = getelementptr i8, i8* %call, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %226, <4 x double>* %231, align 8, !alias.scope !99, !noalias !101
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %232 = icmp eq i64 %index.next985, %214
  br i1 %232, label %polly.loop_exit797, label %vector.body981, !llvm.loop !104

polly.loop_exit797:                               ; preds = %vector.body981, %polly.loop_header795
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond948.not = icmp eq i64 %polly.indvar792, %212
  br i1 %exitcond948.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_header789, %polly.loop_header795
  %polly.indvar798 = phi i64 [ %polly.indvar_next799, %polly.loop_header795 ], [ 0, %polly.loop_header789 ]
  %233 = add nuw nsw i64 %polly.indvar798, %215
  %234 = trunc i64 %233 to i32
  %235 = mul i32 %234, %218
  %236 = add i32 %235, 3
  %237 = urem i32 %236, 1200
  %p_conv31.i = sitofp i32 %237 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %238 = shl i64 %233, 3
  %239 = add nuw nsw i64 %238, %219
  %scevgep801 = getelementptr i8, i8* %call, i64 %239
  %scevgep801802 = bitcast i8* %scevgep801 to double*
  store double %p_div33.i, double* %scevgep801802, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond944.not = icmp eq i64 %polly.indvar798, %216
  br i1 %exitcond944.not, label %polly.loop_exit797, label %polly.loop_header795, !llvm.loop !105

polly.loop_header804:                             ; preds = %polly.loop_exit785, %polly.loop_exit812
  %indvars.iv935 = phi i64 [ %indvars.iv.next936, %polly.loop_exit812 ], [ 0, %polly.loop_exit785 ]
  %polly.indvar807 = phi i64 [ %polly.indvar_next808, %polly.loop_exit812 ], [ 0, %polly.loop_exit785 ]
  %smin937 = call i64 @llvm.smin.i64(i64 %indvars.iv935, i64 -1168)
  %240 = shl nsw i64 %polly.indvar807, 5
  %241 = add nsw i64 %smin937, 1199
  br label %polly.loop_header810

polly.loop_exit812:                               ; preds = %polly.loop_exit818
  %polly.indvar_next808 = add nuw nsw i64 %polly.indvar807, 1
  %indvars.iv.next936 = add nsw i64 %indvars.iv935, -32
  %exitcond940.not = icmp eq i64 %polly.indvar_next808, 38
  br i1 %exitcond940.not, label %polly.loop_header830, label %polly.loop_header804

polly.loop_header810:                             ; preds = %polly.loop_exit818, %polly.loop_header804
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %polly.loop_exit818 ], [ 0, %polly.loop_header804 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_header804 ]
  %242 = mul nsw i64 %polly.indvar813, -32
  %smin997 = call i64 @llvm.smin.i64(i64 %242, i64 -968)
  %243 = add nsw i64 %smin997, 1000
  %smin933 = call i64 @llvm.smin.i64(i64 %indvars.iv931, i64 -968)
  %244 = shl nsw i64 %polly.indvar813, 5
  %245 = add nsw i64 %smin933, 999
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next932 = add nsw i64 %indvars.iv931, -32
  %exitcond939.not = icmp eq i64 %polly.indvar_next814, 32
  br i1 %exitcond939.not, label %polly.loop_exit812, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %polly.indvar819 = phi i64 [ 0, %polly.loop_header810 ], [ %polly.indvar_next820, %polly.loop_exit824 ]
  %246 = add nuw nsw i64 %polly.indvar819, %240
  %247 = trunc i64 %246 to i32
  %248 = mul nuw nsw i64 %246, 8000
  %min.iters.check998 = icmp eq i64 %243, 0
  br i1 %min.iters.check998, label %polly.loop_header822, label %vector.ph999

vector.ph999:                                     ; preds = %polly.loop_header816
  %broadcast.splatinsert1008 = insertelement <4 x i64> poison, i64 %244, i32 0
  %broadcast.splat1009 = shufflevector <4 x i64> %broadcast.splatinsert1008, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1010 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1011 = shufflevector <4 x i32> %broadcast.splatinsert1010, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph999
  %index1002 = phi i64 [ 0, %vector.ph999 ], [ %index.next1003, %vector.body996 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph999 ], [ %vec.ind.next1007, %vector.body996 ]
  %249 = add nuw nsw <4 x i64> %vec.ind1006, %broadcast.splat1009
  %250 = trunc <4 x i64> %249 to <4 x i32>
  %251 = mul <4 x i32> %broadcast.splat1011, %250
  %252 = add <4 x i32> %251, <i32 2, i32 2, i32 2, i32 2>
  %253 = urem <4 x i32> %252, <i32 1000, i32 1000, i32 1000, i32 1000>
  %254 = sitofp <4 x i32> %253 to <4 x double>
  %255 = fmul fast <4 x double> %254, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %256 = extractelement <4 x i64> %249, i32 0
  %257 = shl i64 %256, 3
  %258 = add nuw nsw i64 %257, %248
  %259 = getelementptr i8, i8* %call2, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %255, <4 x double>* %260, align 8, !alias.scope !103, !noalias !106
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %261 = icmp eq i64 %index.next1003, %243
  br i1 %261, label %polly.loop_exit824, label %vector.body996, !llvm.loop !107

polly.loop_exit824:                               ; preds = %vector.body996, %polly.loop_header822
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %exitcond938.not = icmp eq i64 %polly.indvar819, %241
  br i1 %exitcond938.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_header816, %polly.loop_header822
  %polly.indvar825 = phi i64 [ %polly.indvar_next826, %polly.loop_header822 ], [ 0, %polly.loop_header816 ]
  %262 = add nuw nsw i64 %polly.indvar825, %244
  %263 = trunc i64 %262 to i32
  %264 = mul i32 %263, %247
  %265 = add i32 %264, 2
  %266 = urem i32 %265, 1000
  %p_conv10.i = sitofp i32 %266 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %267 = shl i64 %262, 3
  %268 = add nuw nsw i64 %267, %248
  %scevgep828 = getelementptr i8, i8* %call2, i64 %268
  %scevgep828829 = bitcast i8* %scevgep828 to double*
  store double %p_div12.i, double* %scevgep828829, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond934.not = icmp eq i64 %polly.indvar825, %245
  br i1 %exitcond934.not, label %polly.loop_exit824, label %polly.loop_header822, !llvm.loop !108

polly.loop_header830:                             ; preds = %polly.loop_exit812, %polly.loop_exit838
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %polly.loop_exit838 ], [ 0, %polly.loop_exit812 ]
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_exit838 ], [ 0, %polly.loop_exit812 ]
  %smin927 = call i64 @llvm.smin.i64(i64 %indvars.iv925, i64 -1168)
  %269 = shl nsw i64 %polly.indvar833, 5
  %270 = add nsw i64 %smin927, 1199
  br label %polly.loop_header836

polly.loop_exit838:                               ; preds = %polly.loop_exit844
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %indvars.iv.next926 = add nsw i64 %indvars.iv925, -32
  %exitcond930.not = icmp eq i64 %polly.indvar_next834, 38
  br i1 %exitcond930.not, label %init_array.exit, label %polly.loop_header830

polly.loop_header836:                             ; preds = %polly.loop_exit844, %polly.loop_header830
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_header830 ]
  %271 = mul nsw i64 %polly.indvar839, -32
  %smin1015 = call i64 @llvm.smin.i64(i64 %271, i64 -968)
  %272 = add nsw i64 %smin1015, 1000
  %smin923 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 -968)
  %273 = shl nsw i64 %polly.indvar839, 5
  %274 = add nsw i64 %smin923, 999
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next922 = add nsw i64 %indvars.iv921, -32
  %exitcond929.not = icmp eq i64 %polly.indvar_next840, 32
  br i1 %exitcond929.not, label %polly.loop_exit838, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %polly.indvar845 = phi i64 [ 0, %polly.loop_header836 ], [ %polly.indvar_next846, %polly.loop_exit850 ]
  %275 = add nuw nsw i64 %polly.indvar845, %269
  %276 = trunc i64 %275 to i32
  %277 = mul nuw nsw i64 %275, 8000
  %min.iters.check1016 = icmp eq i64 %272, 0
  br i1 %min.iters.check1016, label %polly.loop_header848, label %vector.ph1017

vector.ph1017:                                    ; preds = %polly.loop_header842
  %broadcast.splatinsert1026 = insertelement <4 x i64> poison, i64 %273, i32 0
  %broadcast.splat1027 = shufflevector <4 x i64> %broadcast.splatinsert1026, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1021, %vector.body1014 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1017 ], [ %vec.ind.next1025, %vector.body1014 ]
  %278 = add nuw nsw <4 x i64> %vec.ind1024, %broadcast.splat1027
  %279 = trunc <4 x i64> %278 to <4 x i32>
  %280 = mul <4 x i32> %broadcast.splat1029, %279
  %281 = add <4 x i32> %280, <i32 1, i32 1, i32 1, i32 1>
  %282 = urem <4 x i32> %281, <i32 1200, i32 1200, i32 1200, i32 1200>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %285 = extractelement <4 x i64> %278, i32 0
  %286 = shl i64 %285, 3
  %287 = add nuw nsw i64 %286, %277
  %288 = getelementptr i8, i8* %call1, i64 %287
  %289 = bitcast i8* %288 to <4 x double>*
  store <4 x double> %284, <4 x double>* %289, align 8, !alias.scope !102, !noalias !109
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %290 = icmp eq i64 %index.next1021, %272
  br i1 %290, label %polly.loop_exit850, label %vector.body1014, !llvm.loop !110

polly.loop_exit850:                               ; preds = %vector.body1014, %polly.loop_header848
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %exitcond928.not = icmp eq i64 %polly.indvar845, %270
  br i1 %exitcond928.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_header842, %polly.loop_header848
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_header848 ], [ 0, %polly.loop_header842 ]
  %291 = add nuw nsw i64 %polly.indvar851, %273
  %292 = trunc i64 %291 to i32
  %293 = mul i32 %292, %276
  %294 = add i32 %293, 1
  %295 = urem i32 %294, 1200
  %p_conv.i = sitofp i32 %295 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %296 = shl i64 %291, 3
  %297 = add nuw nsw i64 %296, %277
  %scevgep855 = getelementptr i8, i8* %call1, i64 %297
  %scevgep855856 = bitcast i8* %scevgep855 to double*
  store double %p_div.i, double* %scevgep855856, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond924.not = icmp eq i64 %polly.indvar851, %274
  br i1 %exitcond924.not, label %polly.loop_exit850, label %polly.loop_header848, !llvm.loop !111

polly.loop_header228.1:                           ; preds = %polly.loop_header211
  %polly.access.add.call1237.1 = add nuw nsw i64 %polly.access.mul.call1236.us.1, %polly.indvar214
  %polly.access.call1238.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.1
  %polly.access.call1238.load.1 = load double, double* %polly.access.call1238.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.indvar_next233.us, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  store double %polly.access.call1238.load.1, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %polly.access.add.call1237.2 = add nuw nsw i64 %polly.access.mul.call1236.us.2, %polly.indvar214
  %polly.access.call1238.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.2
  %polly.access.call1238.load.2 = load double, double* %polly.access.call1238.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.indvar_next233.us.1, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  store double %polly.access.call1238.load.2, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %polly.access.add.call1237.3 = add nuw nsw i64 %polly.access.mul.call1236.us.3, %polly.indvar214
  %polly.access.call1238.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.3
  %polly.access.call1238.load.3 = load double, double* %polly.access.call1238.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.3 = add nuw nsw i64 %polly.indvar_next233.us.2, %polly.access.mul.Packed_MemRef_call1239
  %polly.access.Packed_MemRef_call1241.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.3
  store double %polly.access.call1238.load.3, double* %polly.access.Packed_MemRef_call1241.3, align 8
  br label %polly.loop_exit230

polly.loop_header228.us.1:                        ; preds = %polly.loop_exit219.loopexit.us
  %polly.access.add.call1237.us.1 = add nuw nsw i64 %polly.access.mul.call1236.us.1, %polly.indvar214.us
  %polly.access.call1238.us.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.us.1
  %polly.access.call1238.load.us.1 = load double, double* %polly.access.call1238.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us.1 = add nuw nsw i64 %polly.indvar_next233.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us.1
  store double %polly.access.call1238.load.us.1, double* %polly.access.Packed_MemRef_call1241.us.1, align 8
  %polly.access.add.call1237.us.2 = add nuw nsw i64 %polly.access.mul.call1236.us.2, %polly.indvar214.us
  %polly.access.call1238.us.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.us.2
  %polly.access.call1238.load.us.2 = load double, double* %polly.access.call1238.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us.2 = add nuw nsw i64 %polly.indvar_next233.us.1, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us.2
  store double %polly.access.call1238.load.us.2, double* %polly.access.Packed_MemRef_call1241.us.2, align 8
  %polly.access.add.call1237.us.3 = add nuw nsw i64 %polly.access.mul.call1236.us.3, %polly.indvar214.us
  %polly.access.call1238.us.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1237.us.3
  %polly.access.call1238.load.us.3 = load double, double* %polly.access.call1238.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1240.us.3 = add nuw nsw i64 %polly.indvar_next233.us.2, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1241.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.us.3
  store double %polly.access.call1238.load.us.3, double* %polly.access.Packed_MemRef_call1241.us.3, align 8
  br label %polly.loop_exit230.us

polly.loop_header254.1:                           ; preds = %polly.loop_header254.1, %polly.loop_exit256
  %polly.indvar257.1 = phi i64 [ 0, %polly.loop_exit256 ], [ %polly.indvar_next258.1, %polly.loop_header254.1 ]
  %298 = add nuw nsw i64 %polly.indvar257.1, %99
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar257.1, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_267.1, %_p_scalar_263.1
  %299 = mul nuw nsw i64 %298, 8000
  %scevgep269.1 = getelementptr i8, i8* %scevgep264, i64 %299
  %scevgep269270.1 = bitcast i8* %scevgep269.1 to double*
  %_p_scalar_271.1 = load double, double* %scevgep269270.1, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.1 = fmul fast double %_p_scalar_275.1, %_p_scalar_271.1
  %300 = shl i64 %298, 3
  %301 = add nuw nsw i64 %300, %115
  %scevgep276.1 = getelementptr i8, i8* %call, i64 %301
  %scevgep276277.1 = bitcast i8* %scevgep276.1 to double*
  %_p_scalar_278.1 = load double, double* %scevgep276277.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_278.1
  store double %p_add42.i118.1, double* %scevgep276277.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258.1 = add nuw nsw i64 %polly.indvar257.1, 1
  %exitcond884.1.not = icmp eq i64 %polly.indvar257.1, %smin.1
  br i1 %exitcond884.1.not, label %polly.loop_exit256.1, label %polly.loop_header254.1

polly.loop_exit256.1:                             ; preds = %polly.loop_header254.1
  %scevgep265.2 = getelementptr i8, i8* %scevgep264, i64 %118
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273.2 = add nuw nsw i64 %116, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1274.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.2
  %_p_scalar_275.2 = load double, double* %polly.access.Packed_MemRef_call1274.2, align 8
  br label %polly.loop_header254.2

polly.loop_header254.2:                           ; preds = %polly.loop_header254.2, %polly.loop_exit256.1
  %polly.indvar257.2 = phi i64 [ 0, %polly.loop_exit256.1 ], [ %polly.indvar_next258.2, %polly.loop_header254.2 ]
  %302 = add nuw nsw i64 %polly.indvar257.2, %99
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar257.2, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  %_p_scalar_263.2 = load double, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_267.2, %_p_scalar_263.2
  %303 = mul nuw nsw i64 %302, 8000
  %scevgep269.2 = getelementptr i8, i8* %scevgep264, i64 %303
  %scevgep269270.2 = bitcast i8* %scevgep269.2 to double*
  %_p_scalar_271.2 = load double, double* %scevgep269270.2, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.2 = fmul fast double %_p_scalar_275.2, %_p_scalar_271.2
  %304 = shl i64 %302, 3
  %305 = add nuw nsw i64 %304, %119
  %scevgep276.2 = getelementptr i8, i8* %call, i64 %305
  %scevgep276277.2 = bitcast i8* %scevgep276.2 to double*
  %_p_scalar_278.2 = load double, double* %scevgep276277.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_278.2
  store double %p_add42.i118.2, double* %scevgep276277.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258.2 = add nuw nsw i64 %polly.indvar257.2, 1
  %exitcond884.2.not = icmp eq i64 %polly.indvar257.2, %smin.2
  br i1 %exitcond884.2.not, label %polly.loop_exit256.2, label %polly.loop_header254.2

polly.loop_exit256.2:                             ; preds = %polly.loop_header254.2
  %scevgep265.3 = getelementptr i8, i8* %scevgep264, i64 %122
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273.3 = add nuw nsw i64 %120, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1274.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.3
  %_p_scalar_275.3 = load double, double* %polly.access.Packed_MemRef_call1274.3, align 8
  br label %polly.loop_header254.3

polly.loop_header254.3:                           ; preds = %polly.loop_header254.3, %polly.loop_exit256.2
  %polly.indvar257.3 = phi i64 [ 0, %polly.loop_exit256.2 ], [ %polly.indvar_next258.3, %polly.loop_header254.3 ]
  %306 = add nuw nsw i64 %polly.indvar257.3, %99
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar257.3, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  %_p_scalar_263.3 = load double, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_267.3, %_p_scalar_263.3
  %307 = mul nuw nsw i64 %306, 8000
  %scevgep269.3 = getelementptr i8, i8* %scevgep264, i64 %307
  %scevgep269270.3 = bitcast i8* %scevgep269.3 to double*
  %_p_scalar_271.3 = load double, double* %scevgep269270.3, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.3 = fmul fast double %_p_scalar_275.3, %_p_scalar_271.3
  %308 = shl i64 %306, 3
  %309 = add nuw nsw i64 %308, %123
  %scevgep276.3 = getelementptr i8, i8* %call, i64 %309
  %scevgep276277.3 = bitcast i8* %scevgep276.3 to double*
  %_p_scalar_278.3 = load double, double* %scevgep276277.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_278.3
  store double %p_add42.i118.3, double* %scevgep276277.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258.3 = add nuw nsw i64 %polly.indvar257.3, 1
  %exitcond884.3.not = icmp eq i64 %polly.indvar257.3, %smin.3
  br i1 %exitcond884.3.not, label %polly.loop_exit256.3, label %polly.loop_header254.3

polly.loop_exit256.3:                             ; preds = %polly.loop_header254.3
  %polly.indvar_next246 = add nuw nsw i64 %polly.indvar245, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next246, 1000
  br i1 %exitcond886.not, label %polly.loop_exit244, label %polly.loop_header242

polly.loop_header414.1:                           ; preds = %polly.loop_header395
  %polly.access.add.call1423.1 = add nuw nsw i64 %polly.access.mul.call1422.us.1, %polly.indvar398
  %polly.access.call1424.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.1
  %polly.access.call1424.load.1 = load double, double* %polly.access.call1424.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.1 = add nuw nsw i64 %polly.indvar_next419.us, %polly.access.mul.Packed_MemRef_call1284425
  %polly.access.Packed_MemRef_call1284427.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.1
  store double %polly.access.call1424.load.1, double* %polly.access.Packed_MemRef_call1284427.1, align 8
  %polly.access.add.call1423.2 = add nuw nsw i64 %polly.access.mul.call1422.us.2, %polly.indvar398
  %polly.access.call1424.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.2
  %polly.access.call1424.load.2 = load double, double* %polly.access.call1424.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.2 = add nuw nsw i64 %polly.indvar_next419.us.1, %polly.access.mul.Packed_MemRef_call1284425
  %polly.access.Packed_MemRef_call1284427.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.2
  store double %polly.access.call1424.load.2, double* %polly.access.Packed_MemRef_call1284427.2, align 8
  %polly.access.add.call1423.3 = add nuw nsw i64 %polly.access.mul.call1422.us.3, %polly.indvar398
  %polly.access.call1424.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.3
  %polly.access.call1424.load.3 = load double, double* %polly.access.call1424.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.3 = add nuw nsw i64 %polly.indvar_next419.us.2, %polly.access.mul.Packed_MemRef_call1284425
  %polly.access.Packed_MemRef_call1284427.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.3
  store double %polly.access.call1424.load.3, double* %polly.access.Packed_MemRef_call1284427.3, align 8
  br label %polly.loop_exit416

polly.loop_header414.us.1:                        ; preds = %polly.loop_exit404.loopexit.us
  %polly.access.add.call1423.us.1 = add nuw nsw i64 %polly.access.mul.call1422.us.1, %polly.indvar398.us
  %polly.access.call1424.us.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.us.1
  %polly.access.call1424.load.us.1 = load double, double* %polly.access.call1424.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.us.1 = add nuw nsw i64 %polly.indvar_next419.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284427.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.us.1
  store double %polly.access.call1424.load.us.1, double* %polly.access.Packed_MemRef_call1284427.us.1, align 8
  %polly.access.add.call1423.us.2 = add nuw nsw i64 %polly.access.mul.call1422.us.2, %polly.indvar398.us
  %polly.access.call1424.us.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.us.2
  %polly.access.call1424.load.us.2 = load double, double* %polly.access.call1424.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.us.2 = add nuw nsw i64 %polly.indvar_next419.us.1, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284427.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.us.2
  store double %polly.access.call1424.load.us.2, double* %polly.access.Packed_MemRef_call1284427.us.2, align 8
  %polly.access.add.call1423.us.3 = add nuw nsw i64 %polly.access.mul.call1422.us.3, %polly.indvar398.us
  %polly.access.call1424.us.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1423.us.3
  %polly.access.call1424.load.us.3 = load double, double* %polly.access.call1424.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426.us.3 = add nuw nsw i64 %polly.indvar_next419.us.2, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284427.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426.us.3
  store double %polly.access.call1424.load.us.3, double* %polly.access.Packed_MemRef_call1284427.us.3, align 8
  br label %polly.loop_exit416.us

polly.loop_header440.1:                           ; preds = %polly.loop_header440.1, %polly.loop_exit442
  %polly.indvar443.1 = phi i64 [ 0, %polly.loop_exit442 ], [ %polly.indvar_next444.1, %polly.loop_header440.1 ]
  %310 = add nuw nsw i64 %polly.indvar443.1, %140
  %polly.access.add.Packed_MemRef_call1284447.1 = add nuw nsw i64 %polly.indvar443.1, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284448.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284447.1
  %_p_scalar_449.1 = load double, double* %polly.access.Packed_MemRef_call1284448.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_453.1, %_p_scalar_449.1
  %311 = mul nuw nsw i64 %310, 8000
  %scevgep455.1 = getelementptr i8, i8* %scevgep450, i64 %311
  %scevgep455456.1 = bitcast i8* %scevgep455.1 to double*
  %_p_scalar_457.1 = load double, double* %scevgep455456.1, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.1 = fmul fast double %_p_scalar_461.1, %_p_scalar_457.1
  %312 = shl i64 %310, 3
  %313 = add nuw nsw i64 %312, %156
  %scevgep462.1 = getelementptr i8, i8* %call, i64 %313
  %scevgep462463.1 = bitcast i8* %scevgep462.1 to double*
  %_p_scalar_464.1 = load double, double* %scevgep462463.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_464.1
  store double %p_add42.i79.1, double* %scevgep462463.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next444.1 = add nuw nsw i64 %polly.indvar443.1, 1
  %exitcond899.1.not = icmp eq i64 %polly.indvar443.1, %smin898.1
  br i1 %exitcond899.1.not, label %polly.loop_exit442.1, label %polly.loop_header440.1

polly.loop_exit442.1:                             ; preds = %polly.loop_header440.1
  %scevgep451.2 = getelementptr i8, i8* %scevgep450, i64 %159
  %scevgep451452.2 = bitcast i8* %scevgep451.2 to double*
  %_p_scalar_453.2 = load double, double* %scevgep451452.2, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284459.2 = add nuw nsw i64 %157, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284460.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284459.2
  %_p_scalar_461.2 = load double, double* %polly.access.Packed_MemRef_call1284460.2, align 8
  br label %polly.loop_header440.2

polly.loop_header440.2:                           ; preds = %polly.loop_header440.2, %polly.loop_exit442.1
  %polly.indvar443.2 = phi i64 [ 0, %polly.loop_exit442.1 ], [ %polly.indvar_next444.2, %polly.loop_header440.2 ]
  %314 = add nuw nsw i64 %polly.indvar443.2, %140
  %polly.access.add.Packed_MemRef_call1284447.2 = add nuw nsw i64 %polly.indvar443.2, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284448.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284447.2
  %_p_scalar_449.2 = load double, double* %polly.access.Packed_MemRef_call1284448.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_453.2, %_p_scalar_449.2
  %315 = mul nuw nsw i64 %314, 8000
  %scevgep455.2 = getelementptr i8, i8* %scevgep450, i64 %315
  %scevgep455456.2 = bitcast i8* %scevgep455.2 to double*
  %_p_scalar_457.2 = load double, double* %scevgep455456.2, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.2 = fmul fast double %_p_scalar_461.2, %_p_scalar_457.2
  %316 = shl i64 %314, 3
  %317 = add nuw nsw i64 %316, %160
  %scevgep462.2 = getelementptr i8, i8* %call, i64 %317
  %scevgep462463.2 = bitcast i8* %scevgep462.2 to double*
  %_p_scalar_464.2 = load double, double* %scevgep462463.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_464.2
  store double %p_add42.i79.2, double* %scevgep462463.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next444.2 = add nuw nsw i64 %polly.indvar443.2, 1
  %exitcond899.2.not = icmp eq i64 %polly.indvar443.2, %smin898.2
  br i1 %exitcond899.2.not, label %polly.loop_exit442.2, label %polly.loop_header440.2

polly.loop_exit442.2:                             ; preds = %polly.loop_header440.2
  %scevgep451.3 = getelementptr i8, i8* %scevgep450, i64 %163
  %scevgep451452.3 = bitcast i8* %scevgep451.3 to double*
  %_p_scalar_453.3 = load double, double* %scevgep451452.3, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284459.3 = add nuw nsw i64 %161, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284460.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284459.3
  %_p_scalar_461.3 = load double, double* %polly.access.Packed_MemRef_call1284460.3, align 8
  br label %polly.loop_header440.3

polly.loop_header440.3:                           ; preds = %polly.loop_header440.3, %polly.loop_exit442.2
  %polly.indvar443.3 = phi i64 [ 0, %polly.loop_exit442.2 ], [ %polly.indvar_next444.3, %polly.loop_header440.3 ]
  %318 = add nuw nsw i64 %polly.indvar443.3, %140
  %polly.access.add.Packed_MemRef_call1284447.3 = add nuw nsw i64 %polly.indvar443.3, %polly.access.mul.Packed_MemRef_call1284446
  %polly.access.Packed_MemRef_call1284448.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284447.3
  %_p_scalar_449.3 = load double, double* %polly.access.Packed_MemRef_call1284448.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_453.3, %_p_scalar_449.3
  %319 = mul nuw nsw i64 %318, 8000
  %scevgep455.3 = getelementptr i8, i8* %scevgep450, i64 %319
  %scevgep455456.3 = bitcast i8* %scevgep455.3 to double*
  %_p_scalar_457.3 = load double, double* %scevgep455456.3, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.3 = fmul fast double %_p_scalar_461.3, %_p_scalar_457.3
  %320 = shl i64 %318, 3
  %321 = add nuw nsw i64 %320, %164
  %scevgep462.3 = getelementptr i8, i8* %call, i64 %321
  %scevgep462463.3 = bitcast i8* %scevgep462.3 to double*
  %_p_scalar_464.3 = load double, double* %scevgep462463.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_464.3
  store double %p_add42.i79.3, double* %scevgep462463.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next444.3 = add nuw nsw i64 %polly.indvar443.3, 1
  %exitcond899.3.not = icmp eq i64 %polly.indvar443.3, %smin898.3
  br i1 %exitcond899.3.not, label %polly.loop_exit442.3, label %polly.loop_header440.3

polly.loop_exit442.3:                             ; preds = %polly.loop_header440.3
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next432, 1000
  br i1 %exitcond901.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header600.1:                           ; preds = %polly.loop_header581
  %polly.access.add.call1609.1 = add nuw nsw i64 %polly.access.mul.call1608.us.1, %polly.indvar584
  %polly.access.call1610.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.1
  %polly.access.call1610.load.1 = load double, double* %polly.access.call1610.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.1 = add nuw nsw i64 %polly.indvar_next605.us, %polly.access.mul.Packed_MemRef_call1470611
  %polly.access.Packed_MemRef_call1470613.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.1
  store double %polly.access.call1610.load.1, double* %polly.access.Packed_MemRef_call1470613.1, align 8
  %polly.access.add.call1609.2 = add nuw nsw i64 %polly.access.mul.call1608.us.2, %polly.indvar584
  %polly.access.call1610.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.2
  %polly.access.call1610.load.2 = load double, double* %polly.access.call1610.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.2 = add nuw nsw i64 %polly.indvar_next605.us.1, %polly.access.mul.Packed_MemRef_call1470611
  %polly.access.Packed_MemRef_call1470613.2 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.2
  store double %polly.access.call1610.load.2, double* %polly.access.Packed_MemRef_call1470613.2, align 8
  %polly.access.add.call1609.3 = add nuw nsw i64 %polly.access.mul.call1608.us.3, %polly.indvar584
  %polly.access.call1610.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.3
  %polly.access.call1610.load.3 = load double, double* %polly.access.call1610.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.3 = add nuw nsw i64 %polly.indvar_next605.us.2, %polly.access.mul.Packed_MemRef_call1470611
  %polly.access.Packed_MemRef_call1470613.3 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.3
  store double %polly.access.call1610.load.3, double* %polly.access.Packed_MemRef_call1470613.3, align 8
  br label %polly.loop_exit602

polly.loop_header600.us.1:                        ; preds = %polly.loop_exit590.loopexit.us
  %polly.access.add.call1609.us.1 = add nuw nsw i64 %polly.access.mul.call1608.us.1, %polly.indvar584.us
  %polly.access.call1610.us.1 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.us.1
  %polly.access.call1610.load.us.1 = load double, double* %polly.access.call1610.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.us.1 = add nuw nsw i64 %polly.indvar_next605.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470613.us.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.us.1
  store double %polly.access.call1610.load.us.1, double* %polly.access.Packed_MemRef_call1470613.us.1, align 8
  %polly.access.add.call1609.us.2 = add nuw nsw i64 %polly.access.mul.call1608.us.2, %polly.indvar584.us
  %polly.access.call1610.us.2 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.us.2
  %polly.access.call1610.load.us.2 = load double, double* %polly.access.call1610.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.us.2 = add nuw nsw i64 %polly.indvar_next605.us.1, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470613.us.2 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.us.2
  store double %polly.access.call1610.load.us.2, double* %polly.access.Packed_MemRef_call1470613.us.2, align 8
  %polly.access.add.call1609.us.3 = add nuw nsw i64 %polly.access.mul.call1608.us.3, %polly.indvar584.us
  %polly.access.call1610.us.3 = getelementptr double, double* %polly.access.cast.call1655, i64 %polly.access.add.call1609.us.3
  %polly.access.call1610.load.us.3 = load double, double* %polly.access.call1610.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1470612.us.3 = add nuw nsw i64 %polly.indvar_next605.us.2, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470613.us.3 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470612.us.3
  store double %polly.access.call1610.load.us.3, double* %polly.access.Packed_MemRef_call1470613.us.3, align 8
  br label %polly.loop_exit602.us

polly.loop_header626.1:                           ; preds = %polly.loop_header626.1, %polly.loop_exit628
  %polly.indvar629.1 = phi i64 [ 0, %polly.loop_exit628 ], [ %polly.indvar_next630.1, %polly.loop_header626.1 ]
  %322 = add nuw nsw i64 %polly.indvar629.1, %181
  %polly.access.add.Packed_MemRef_call1470633.1 = add nuw nsw i64 %polly.indvar629.1, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470634.1 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470633.1
  %_p_scalar_635.1 = load double, double* %polly.access.Packed_MemRef_call1470634.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_639.1, %_p_scalar_635.1
  %323 = mul nuw nsw i64 %322, 8000
  %scevgep641.1 = getelementptr i8, i8* %scevgep636, i64 %323
  %scevgep641642.1 = bitcast i8* %scevgep641.1 to double*
  %_p_scalar_643.1 = load double, double* %scevgep641642.1, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.1 = fmul fast double %_p_scalar_647.1, %_p_scalar_643.1
  %324 = shl i64 %322, 3
  %325 = add nuw nsw i64 %324, %197
  %scevgep648.1 = getelementptr i8, i8* %call, i64 %325
  %scevgep648649.1 = bitcast i8* %scevgep648.1 to double*
  %_p_scalar_650.1 = load double, double* %scevgep648649.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_650.1
  store double %p_add42.i.1, double* %scevgep648649.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next630.1 = add nuw nsw i64 %polly.indvar629.1, 1
  %exitcond914.1.not = icmp eq i64 %polly.indvar629.1, %smin913.1
  br i1 %exitcond914.1.not, label %polly.loop_exit628.1, label %polly.loop_header626.1

polly.loop_exit628.1:                             ; preds = %polly.loop_header626.1
  %scevgep637.2 = getelementptr i8, i8* %scevgep636, i64 %200
  %scevgep637638.2 = bitcast i8* %scevgep637.2 to double*
  %_p_scalar_639.2 = load double, double* %scevgep637638.2, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1470645.2 = add nuw nsw i64 %198, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470646.2 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470645.2
  %_p_scalar_647.2 = load double, double* %polly.access.Packed_MemRef_call1470646.2, align 8
  br label %polly.loop_header626.2

polly.loop_header626.2:                           ; preds = %polly.loop_header626.2, %polly.loop_exit628.1
  %polly.indvar629.2 = phi i64 [ 0, %polly.loop_exit628.1 ], [ %polly.indvar_next630.2, %polly.loop_header626.2 ]
  %326 = add nuw nsw i64 %polly.indvar629.2, %181
  %polly.access.add.Packed_MemRef_call1470633.2 = add nuw nsw i64 %polly.indvar629.2, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470634.2 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470633.2
  %_p_scalar_635.2 = load double, double* %polly.access.Packed_MemRef_call1470634.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_639.2, %_p_scalar_635.2
  %327 = mul nuw nsw i64 %326, 8000
  %scevgep641.2 = getelementptr i8, i8* %scevgep636, i64 %327
  %scevgep641642.2 = bitcast i8* %scevgep641.2 to double*
  %_p_scalar_643.2 = load double, double* %scevgep641642.2, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.2 = fmul fast double %_p_scalar_647.2, %_p_scalar_643.2
  %328 = shl i64 %326, 3
  %329 = add nuw nsw i64 %328, %201
  %scevgep648.2 = getelementptr i8, i8* %call, i64 %329
  %scevgep648649.2 = bitcast i8* %scevgep648.2 to double*
  %_p_scalar_650.2 = load double, double* %scevgep648649.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_650.2
  store double %p_add42.i.2, double* %scevgep648649.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next630.2 = add nuw nsw i64 %polly.indvar629.2, 1
  %exitcond914.2.not = icmp eq i64 %polly.indvar629.2, %smin913.2
  br i1 %exitcond914.2.not, label %polly.loop_exit628.2, label %polly.loop_header626.2

polly.loop_exit628.2:                             ; preds = %polly.loop_header626.2
  %scevgep637.3 = getelementptr i8, i8* %scevgep636, i64 %204
  %scevgep637638.3 = bitcast i8* %scevgep637.3 to double*
  %_p_scalar_639.3 = load double, double* %scevgep637638.3, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1470645.3 = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470646.3 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470645.3
  %_p_scalar_647.3 = load double, double* %polly.access.Packed_MemRef_call1470646.3, align 8
  br label %polly.loop_header626.3

polly.loop_header626.3:                           ; preds = %polly.loop_header626.3, %polly.loop_exit628.2
  %polly.indvar629.3 = phi i64 [ 0, %polly.loop_exit628.2 ], [ %polly.indvar_next630.3, %polly.loop_header626.3 ]
  %330 = add nuw nsw i64 %polly.indvar629.3, %181
  %polly.access.add.Packed_MemRef_call1470633.3 = add nuw nsw i64 %polly.indvar629.3, %polly.access.mul.Packed_MemRef_call1470632
  %polly.access.Packed_MemRef_call1470634.3 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470633.3
  %_p_scalar_635.3 = load double, double* %polly.access.Packed_MemRef_call1470634.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_639.3, %_p_scalar_635.3
  %331 = mul nuw nsw i64 %330, 8000
  %scevgep641.3 = getelementptr i8, i8* %scevgep636, i64 %331
  %scevgep641642.3 = bitcast i8* %scevgep641.3 to double*
  %_p_scalar_643.3 = load double, double* %scevgep641642.3, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.3 = fmul fast double %_p_scalar_647.3, %_p_scalar_643.3
  %332 = shl i64 %330, 3
  %333 = add nuw nsw i64 %332, %205
  %scevgep648.3 = getelementptr i8, i8* %call, i64 %333
  %scevgep648649.3 = bitcast i8* %scevgep648.3 to double*
  %_p_scalar_650.3 = load double, double* %scevgep648649.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_650.3
  store double %p_add42.i.3, double* %scevgep648649.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next630.3 = add nuw nsw i64 %polly.indvar629.3, 1
  %exitcond914.3.not = icmp eq i64 %polly.indvar629.3, %smin913.3
  br i1 %exitcond914.3.not, label %polly.loop_exit628.3, label %polly.loop_header626.3

polly.loop_exit628.3:                             ; preds = %polly.loop_header626.3
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next618, 1000
  br i1 %exitcond916.not, label %polly.loop_exit616, label %polly.loop_header614
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
!21 = distinct !{!"A"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 4}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
