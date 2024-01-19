; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6393.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6393.c"
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
  %scevgep965 = getelementptr i8, i8* %call2, i64 %12
  %scevgep964 = getelementptr i8, i8* %call2, i64 %11
  %scevgep963 = getelementptr i8, i8* %call1, i64 %12
  %scevgep962 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep962, %scevgep965
  %bound1 = icmp ult i8* %scevgep964, %scevgep963
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
  br i1 %exitcond18.not.i, label %vector.ph969, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph969:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert976 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat977 = shufflevector <4 x i64> %broadcast.splatinsert976, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph969
  %index970 = phi i64 [ 0, %vector.ph969 ], [ %index.next971, %vector.body968 ]
  %vec.ind974 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph969 ], [ %vec.ind.next975, %vector.body968 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind974, %broadcast.splat977
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv7.i, i64 %index970
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next971 = add i64 %index970, 4
  %vec.ind.next975 = add <4 x i64> %vec.ind974, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next971, 1200
  br i1 %40, label %for.inc41.i, label %vector.body968, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body968
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph969, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1031 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1031, label %for.body3.i46.preheader1105, label %vector.ph1032

vector.ph1032:                                    ; preds = %for.body3.i46.preheader
  %n.vec1034 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1032
  %index1035 = phi i64 [ 0, %vector.ph1032 ], [ %index.next1036, %vector.body1030 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %index1035
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1036 = add i64 %index1035, 4
  %46 = icmp eq i64 %index.next1036, %n.vec1034
  br i1 %46, label %middle.block1028, label %vector.body1030, !llvm.loop !18

middle.block1028:                                 ; preds = %vector.body1030
  %cmp.n1038 = icmp eq i64 %indvars.iv21.i, %n.vec1034
  br i1 %cmp.n1038, label %for.inc6.i, label %for.body3.i46.preheader1105

for.body3.i46.preheader1105:                      ; preds = %for.body3.i46.preheader, %middle.block1028
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1034, %middle.block1028 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1105, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1105 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1028, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

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
  %min.iters.check1054 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1054, label %for.body3.i60.preheader1104, label %vector.ph1055

vector.ph1055:                                    ; preds = %for.body3.i60.preheader
  %n.vec1057 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1053 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1058
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1062 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1062, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1059 = add i64 %index1058, 4
  %57 = icmp eq i64 %index.next1059, %n.vec1057
  br i1 %57, label %middle.block1051, label %vector.body1053, !llvm.loop !60

middle.block1051:                                 ; preds = %vector.body1053
  %cmp.n1061 = icmp eq i64 %indvars.iv21.i52, %n.vec1057
  br i1 %cmp.n1061, label %for.inc6.i63, label %for.body3.i60.preheader1104

for.body3.i60.preheader1104:                      ; preds = %for.body3.i60.preheader, %middle.block1051
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1057, %middle.block1051 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1104, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1104 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1051, %for.cond1.preheader.i54
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
  %min.iters.check1080 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1080, label %for.body3.i99.preheader1103, label %vector.ph1081

vector.ph1081:                                    ; preds = %for.body3.i99.preheader
  %n.vec1083 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1081
  %index1084 = phi i64 [ 0, %vector.ph1081 ], [ %index.next1085, %vector.body1079 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1084
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1088 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1088, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1085 = add i64 %index1084, 4
  %68 = icmp eq i64 %index.next1085, %n.vec1083
  br i1 %68, label %middle.block1077, label %vector.body1079, !llvm.loop !62

middle.block1077:                                 ; preds = %vector.body1079
  %cmp.n1087 = icmp eq i64 %indvars.iv21.i91, %n.vec1083
  br i1 %cmp.n1087, label %for.inc6.i102, label %for.body3.i99.preheader1103

for.body3.i99.preheader1103:                      ; preds = %for.body3.i99.preheader, %middle.block1077
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1083, %middle.block1077 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1103, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1103 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1077, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1092 = phi i64 [ %indvar.next1093, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1092, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1094 = icmp ult i64 %88, 4
  br i1 %min.iters.check1094, label %polly.loop_header191.preheader, label %vector.ph1095

vector.ph1095:                                    ; preds = %polly.loop_header
  %n.vec1097 = and i64 %88, -4
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1095
  %index1098 = phi i64 [ 0, %vector.ph1095 ], [ %index.next1099, %vector.body1091 ]
  %90 = shl nuw nsw i64 %index1098, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1102 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1102, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1099 = add i64 %index1098, 4
  %95 = icmp eq i64 %index.next1099, %n.vec1097
  br i1 %95, label %middle.block1089, label %vector.body1091, !llvm.loop !74

middle.block1089:                                 ; preds = %vector.body1091
  %cmp.n1101 = icmp eq i64 %88, %n.vec1097
  br i1 %cmp.n1101, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1089
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1097, %middle.block1089 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1089
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1093 = add i64 %indvar1092, 1
  br i1 %exitcond873.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond872.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond872.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv853 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next854, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin868 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 -872)
  %97 = add nsw i64 %smin868, 1000
  %98 = shl nsw i64 %polly.indvar202, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -128
  %exitcond871.not = icmp eq i64 %polly.indvar_next203, 8
  br i1 %exitcond871.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = udiv i64 %polly.indvar208, 6
  %100 = mul nuw nsw i64 %99, 96
  %101 = sub nsw i64 %indvars.iv856, %100
  %102 = add i64 %indvars.iv860, %100
  %103 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %104 = mul nsw i64 %polly.indvar208, -16
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 16
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -16
  %exitcond870.not = icmp eq i64 %polly.indvar_next209, 75
  br i1 %exitcond870.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %105 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond855.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %106 = add nuw nsw i64 %polly.indvar220, %103
  %polly.access.mul.call2224 = mul nuw nsw i64 %106, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %105, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit235 ], [ %102, %polly.loop_exit213 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %99, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv858, i64 0)
  %107 = add i64 %smax, %indvars.iv862
  %108 = mul nuw nsw i64 %polly.indvar230, 96
  %109 = sub nsw i64 %103, %108
  %110 = icmp sgt i64 %109, 0
  %111 = select i1 %110, i64 %109, i64 0
  %112 = mul nsw i64 %polly.indvar230, -96
  %113 = icmp slt i64 %112, -1104
  %114 = select i1 %113, i64 %112, i64 -1104
  %115 = add nsw i64 %114, 1199
  %polly.loop_guard.not = icmp sgt i64 %111, %115
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp ult i64 %polly.indvar230, 12
  %indvars.iv.next859 = add i64 %indvars.iv858, -96
  %indvars.iv.next863 = add i64 %indvars.iv862, 96
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header233:                             ; preds = %polly.loop_header227, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %116 = add nuw nsw i64 %polly.indvar236, %98
  %117 = shl i64 %116, 3
  %polly.access.mul.Packed_MemRef_call2256 = mul nuw nsw i64 %polly.indvar236, 1200
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit248
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond869.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header233, %polly.loop_exit248
  %indvars.iv864 = phi i64 [ %107, %polly.loop_header233 ], [ %indvars.iv.next865, %polly.loop_exit248 ]
  %polly.indvar242 = phi i64 [ %111, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_exit248 ]
  %smin866 = call i64 @llvm.smin.i64(i64 %indvars.iv864, i64 15)
  %118 = add nuw i64 %polly.indvar242, %108
  %119 = add i64 %118, %104
  %polly.loop_guard249957 = icmp sgt i64 %119, -1
  br i1 %polly.loop_guard249957, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2257 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256, %119
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %120 = mul i64 %118, 8000
  %121 = add i64 %120, %117
  %scevgep264 = getelementptr i8, i8* %call1, i64 %121
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %122 = mul i64 %118, 9600
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp slt i64 %polly.indvar242, %115
  %indvars.iv.next865 = add i64 %indvars.iv864, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %123 = add nuw nsw i64 %polly.indvar250, %103
  %124 = mul nuw nsw i64 %123, 8000
  %125 = add nuw nsw i64 %124, %117
  %scevgep253 = getelementptr i8, i8* %call1, i64 %125
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar250, %polly.access.mul.Packed_MemRef_call2256
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %126 = shl i64 %123, 3
  %127 = add i64 %126, %122
  %scevgep267 = getelementptr i8, i8* %call, i64 %127
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond867.not = icmp eq i64 %polly.indvar250, %smin866
  br i1 %exitcond867.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit382
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1066 = phi i64 [ %indvar.next1067, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %128 = add i64 %indvar1066, 1
  %129 = mul nuw nsw i64 %polly.indvar361, 9600
  %scevgep370 = getelementptr i8, i8* %call, i64 %129
  %min.iters.check1068 = icmp ult i64 %128, 4
  br i1 %min.iters.check1068, label %polly.loop_header364.preheader, label %vector.ph1069

vector.ph1069:                                    ; preds = %polly.loop_header358
  %n.vec1071 = and i64 %128, -4
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1073, %vector.body1065 ]
  %130 = shl nuw nsw i64 %index1072, 3
  %131 = getelementptr i8, i8* %scevgep370, i64 %130
  %132 = bitcast i8* %131 to <4 x double>*
  %wide.load1076 = load <4 x double>, <4 x double>* %132, align 8, !alias.scope !79, !noalias !81
  %133 = fmul fast <4 x double> %wide.load1076, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %134 = bitcast i8* %131 to <4 x double>*
  store <4 x double> %133, <4 x double>* %134, align 8, !alias.scope !79, !noalias !81
  %index.next1073 = add i64 %index1072, 4
  %135 = icmp eq i64 %index.next1073, %n.vec1071
  br i1 %135, label %middle.block1063, label %vector.body1065, !llvm.loop !85

middle.block1063:                                 ; preds = %vector.body1065
  %cmp.n1075 = icmp eq i64 %128, %n.vec1071
  br i1 %cmp.n1075, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1063
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1071, %middle.block1063 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1063
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next362, 1200
  %indvar.next1067 = add i64 %indvar1066, 1
  br i1 %exitcond899.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %136 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %136
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond898.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %indvars.iv877 = phi i64 [ 0, %polly.loop_header374.preheader ], [ %indvars.iv.next878, %polly.loop_exit382 ]
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header374.preheader ], [ %polly.indvar_next378, %polly.loop_exit382 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv877, i64 -872)
  %137 = add nsw i64 %smin894, 1000
  %138 = shl nsw i64 %polly.indvar377, 7
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_exit405
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %indvars.iv.next878 = add nsw i64 %indvars.iv877, -128
  %exitcond897.not = icmp eq i64 %polly.indvar_next378, 8
  br i1 %exitcond897.not, label %polly.exiting273, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit405 ], [ 1200, %polly.loop_header374 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %139 = udiv i64 %polly.indvar383, 6
  %140 = mul nuw nsw i64 %139, 96
  %141 = sub nsw i64 %indvars.iv881, %140
  %142 = add i64 %indvars.iv886, %140
  %143 = shl nsw i64 %polly.indvar383, 4
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit394
  %144 = mul nsw i64 %polly.indvar383, -16
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, -16
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 16
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -16
  %exitcond896.not = icmp eq i64 %polly.indvar_next384, 75
  br i1 %exitcond896.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %145 = add nuw nsw i64 %polly.indvar389, %138
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 1200
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next390, %137
  br i1 %exitcond880.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %146 = add nuw nsw i64 %polly.indvar395, %143
  %polly.access.mul.call2399 = mul nuw nsw i64 %146, 1000
  %polly.access.add.call2400 = add nuw nsw i64 %145, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next396, %indvars.iv874
  br i1 %exitcond876.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit388
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit411 ], [ %142, %polly.loop_exit388 ]
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %polly.loop_exit411 ], [ %141, %polly.loop_exit388 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ %139, %polly.loop_exit388 ]
  %smax885 = call i64 @llvm.smax.i64(i64 %indvars.iv883, i64 0)
  %147 = add i64 %smax885, %indvars.iv888
  %148 = mul nuw nsw i64 %polly.indvar406, 96
  %149 = sub nsw i64 %143, %148
  %150 = icmp sgt i64 %149, 0
  %151 = select i1 %150, i64 %149, i64 0
  %152 = mul nsw i64 %polly.indvar406, -96
  %153 = icmp slt i64 %152, -1104
  %154 = select i1 %153, i64 %152, i64 -1104
  %155 = add nsw i64 %154, 1199
  %polly.loop_guard419.not = icmp sgt i64 %151, %155
  br i1 %polly.loop_guard419.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408 = icmp ult i64 %polly.indvar406, 12
  %indvars.iv.next884 = add i64 %indvars.iv883, -96
  %indvars.iv.next889 = add i64 %indvars.iv888, 96
  br i1 %polly.loop_cond408, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header409:                             ; preds = %polly.loop_header403, %polly.loop_exit418
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit418 ], [ 0, %polly.loop_header403 ]
  %156 = add nuw nsw i64 %polly.indvar412, %138
  %157 = shl i64 %156, 3
  %polly.access.mul.Packed_MemRef_call2275434 = mul nuw nsw i64 %polly.indvar412, 1200
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit426
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next413, %137
  br i1 %exitcond895.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_header416:                             ; preds = %polly.loop_header409, %polly.loop_exit426
  %indvars.iv890 = phi i64 [ %147, %polly.loop_header409 ], [ %indvars.iv.next891, %polly.loop_exit426 ]
  %polly.indvar420 = phi i64 [ %151, %polly.loop_header409 ], [ %polly.indvar_next421, %polly.loop_exit426 ]
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv890, i64 15)
  %158 = add nuw i64 %polly.indvar420, %148
  %159 = add i64 %158, %144
  %polly.loop_guard427958 = icmp sgt i64 %159, -1
  br i1 %polly.loop_guard427958, label %polly.loop_header424.preheader, label %polly.loop_exit426

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %polly.access.add.Packed_MemRef_call2275435 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434, %159
  %polly.access.Packed_MemRef_call2275436 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435
  %_p_scalar_437 = load double, double* %polly.access.Packed_MemRef_call2275436, align 8
  %160 = mul i64 %158, 8000
  %161 = add i64 %160, %157
  %scevgep442 = getelementptr i8, i8* %call1, i64 %161
  %scevgep442443 = bitcast i8* %scevgep442 to double*
  %_p_scalar_444 = load double, double* %scevgep442443, align 8, !alias.scope !82, !noalias !88
  %162 = mul i64 %158, 9600
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424, %polly.loop_header416
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp slt i64 %polly.indvar420, %155
  %indvars.iv.next891 = add i64 %indvars.iv890, 1
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_exit418

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_header424
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_header424 ], [ 0, %polly.loop_header424.preheader ]
  %163 = add nuw nsw i64 %polly.indvar428, %143
  %164 = mul nuw nsw i64 %163, 8000
  %165 = add nuw nsw i64 %164, %157
  %scevgep431 = getelementptr i8, i8* %call1, i64 %165
  %scevgep431432 = bitcast i8* %scevgep431 to double*
  %_p_scalar_433 = load double, double* %scevgep431432, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_437, %_p_scalar_433
  %polly.access.add.Packed_MemRef_call2275439 = add nuw nsw i64 %polly.indvar428, %polly.access.mul.Packed_MemRef_call2275434
  %polly.access.Packed_MemRef_call2275440 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2275440, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_444, %_p_scalar_441
  %166 = shl i64 %163, 3
  %167 = add i64 %166, %162
  %scevgep445 = getelementptr i8, i8* %call, i64 %167
  %scevgep445446 = bitcast i8* %scevgep445 to double*
  %_p_scalar_447 = load double, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_447
  store double %p_add42.i79, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond893.not = icmp eq i64 %polly.indvar428, %smin892
  br i1 %exitcond893.not, label %polly.loop_exit426, label %polly.loop_header424

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit560
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %168 = add i64 %indvar, 1
  %169 = mul nuw nsw i64 %polly.indvar539, 9600
  %scevgep548 = getelementptr i8, i8* %call, i64 %169
  %min.iters.check1042 = icmp ult i64 %168, 4
  br i1 %min.iters.check1042, label %polly.loop_header542.preheader, label %vector.ph1043

vector.ph1043:                                    ; preds = %polly.loop_header536
  %n.vec1045 = and i64 %168, -4
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %vector.ph1043
  %index1046 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1047, %vector.body1041 ]
  %170 = shl nuw nsw i64 %index1046, 3
  %171 = getelementptr i8, i8* %scevgep548, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1050 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !89, !noalias !91
  %173 = fmul fast <4 x double> %wide.load1050, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %174 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %173, <4 x double>* %174, align 8, !alias.scope !89, !noalias !91
  %index.next1047 = add i64 %index1046, 4
  %175 = icmp eq i64 %index.next1047, %n.vec1045
  br i1 %175, label %middle.block1039, label %vector.body1041, !llvm.loop !95

middle.block1039:                                 ; preds = %vector.body1041
  %cmp.n1049 = icmp eq i64 %168, %n.vec1045
  br i1 %cmp.n1049, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1039
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1045, %middle.block1039 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1039
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next540, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond925.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %176 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %176
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond924.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !96

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %indvars.iv903 = phi i64 [ 0, %polly.loop_header552.preheader ], [ %indvars.iv.next904, %polly.loop_exit560 ]
  %polly.indvar555 = phi i64 [ 0, %polly.loop_header552.preheader ], [ %polly.indvar_next556, %polly.loop_exit560 ]
  %smin920 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -872)
  %177 = add nsw i64 %smin920, 1000
  %178 = shl nsw i64 %polly.indvar555, 7
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_exit583
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -128
  %exitcond923.not = icmp eq i64 %polly.indvar_next556, 8
  br i1 %exitcond923.not, label %polly.exiting451, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552
  %indvars.iv912 = phi i64 [ %indvars.iv.next913, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit583 ], [ 1200, %polly.loop_header552 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %179 = udiv i64 %polly.indvar561, 6
  %180 = mul nuw nsw i64 %179, 96
  %181 = sub nsw i64 %indvars.iv907, %180
  %182 = add i64 %indvars.iv912, %180
  %183 = shl nsw i64 %polly.indvar561, 4
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_exit572
  %184 = mul nsw i64 %polly.indvar561, -16
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next901 = add nsw i64 %indvars.iv900, -16
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 16
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, -16
  %exitcond922.not = icmp eq i64 %polly.indvar_next562, 75
  br i1 %exitcond922.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header564:                             ; preds = %polly.loop_exit572, %polly.loop_header558
  %polly.indvar567 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next568, %polly.loop_exit572 ]
  %185 = add nuw nsw i64 %polly.indvar567, %178
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar567, 1200
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_header570
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next568, %177
  br i1 %exitcond906.not, label %polly.loop_exit566, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %186 = add nuw nsw i64 %polly.indvar573, %183
  %polly.access.mul.call2577 = mul nuw nsw i64 %186, 1000
  %polly.access.add.call2578 = add nuw nsw i64 %185, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar573, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next574, %indvars.iv900
  br i1 %exitcond902.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit566
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit589 ], [ %182, %polly.loop_exit566 ]
  %indvars.iv909 = phi i64 [ %indvars.iv.next910, %polly.loop_exit589 ], [ %181, %polly.loop_exit566 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ %179, %polly.loop_exit566 ]
  %smax911 = call i64 @llvm.smax.i64(i64 %indvars.iv909, i64 0)
  %187 = add i64 %smax911, %indvars.iv914
  %188 = mul nuw nsw i64 %polly.indvar584, 96
  %189 = sub nsw i64 %183, %188
  %190 = icmp sgt i64 %189, 0
  %191 = select i1 %190, i64 %189, i64 0
  %192 = mul nsw i64 %polly.indvar584, -96
  %193 = icmp slt i64 %192, -1104
  %194 = select i1 %193, i64 %192, i64 -1104
  %195 = add nsw i64 %194, 1199
  %polly.loop_guard597.not = icmp sgt i64 %191, %195
  br i1 %polly.loop_guard597.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586 = icmp ult i64 %polly.indvar584, 12
  %indvars.iv.next910 = add i64 %indvars.iv909, -96
  %indvars.iv.next915 = add i64 %indvars.iv914, 96
  br i1 %polly.loop_cond586, label %polly.loop_header581, label %polly.loop_exit583

polly.loop_header587:                             ; preds = %polly.loop_header581, %polly.loop_exit596
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header581 ]
  %196 = add nuw nsw i64 %polly.indvar590, %178
  %197 = shl i64 %196, 3
  %polly.access.mul.Packed_MemRef_call2453612 = mul nuw nsw i64 %polly.indvar590, 1200
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit604
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next591, %177
  br i1 %exitcond921.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header587, %polly.loop_exit604
  %indvars.iv916 = phi i64 [ %187, %polly.loop_header587 ], [ %indvars.iv.next917, %polly.loop_exit604 ]
  %polly.indvar598 = phi i64 [ %191, %polly.loop_header587 ], [ %polly.indvar_next599, %polly.loop_exit604 ]
  %smin918 = call i64 @llvm.smin.i64(i64 %indvars.iv916, i64 15)
  %198 = add nuw i64 %polly.indvar598, %188
  %199 = add i64 %198, %184
  %polly.loop_guard605959 = icmp sgt i64 %199, -1
  br i1 %polly.loop_guard605959, label %polly.loop_header602.preheader, label %polly.loop_exit604

polly.loop_header602.preheader:                   ; preds = %polly.loop_header594
  %polly.access.add.Packed_MemRef_call2453613 = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612, %199
  %polly.access.Packed_MemRef_call2453614 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613
  %_p_scalar_615 = load double, double* %polly.access.Packed_MemRef_call2453614, align 8
  %200 = mul i64 %198, 8000
  %201 = add i64 %200, %197
  %scevgep620 = getelementptr i8, i8* %call1, i64 %201
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !92, !noalias !98
  %202 = mul i64 %198, 9600
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp slt i64 %polly.indvar598, %195
  %indvars.iv.next917 = add i64 %indvars.iv916, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_header602 ], [ 0, %polly.loop_header602.preheader ]
  %203 = add nuw nsw i64 %polly.indvar606, %183
  %204 = mul nuw nsw i64 %203, 8000
  %205 = add nuw nsw i64 %204, %197
  %scevgep609 = getelementptr i8, i8* %call1, i64 %205
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_615, %_p_scalar_611
  %polly.access.add.Packed_MemRef_call2453617 = add nuw nsw i64 %polly.indvar606, %polly.access.mul.Packed_MemRef_call2453612
  %polly.access.Packed_MemRef_call2453618 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617
  %_p_scalar_619 = load double, double* %polly.access.Packed_MemRef_call2453618, align 8
  %p_mul37.i = fmul fast double %_p_scalar_622, %_p_scalar_619
  %206 = shl i64 %203, 3
  %207 = add i64 %206, %202
  %scevgep623 = getelementptr i8, i8* %call, i64 %207
  %scevgep623624 = bitcast i8* %scevgep623 to double*
  %_p_scalar_625 = load double, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_625
  store double %p_add42.i, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond919.not = icmp eq i64 %polly.indvar606, %smin918
  br i1 %exitcond919.not, label %polly.loop_exit604, label %polly.loop_header602

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %indvars.iv950 = phi i64 [ %indvars.iv.next951, %polly.loop_exit760 ], [ 0, %entry ]
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %smin952 = call i64 @llvm.smin.i64(i64 %indvars.iv950, i64 -1168)
  %208 = shl nsw i64 %polly.indvar755, 5
  %209 = add nsw i64 %smin952, 1199
  br label %polly.loop_header758

polly.loop_exit760:                               ; preds = %polly.loop_exit766
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %indvars.iv.next951 = add nsw i64 %indvars.iv950, -32
  %exitcond955.not = icmp eq i64 %polly.indvar_next756, 38
  br i1 %exitcond955.not, label %polly.loop_header779, label %polly.loop_header752

polly.loop_header758:                             ; preds = %polly.loop_exit766, %polly.loop_header752
  %indvars.iv946 = phi i64 [ %indvars.iv.next947, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %polly.loop_header752 ]
  %210 = mul nsw i64 %polly.indvar761, -32
  %smin = call i64 @llvm.smin.i64(i64 %210, i64 -1168)
  %211 = add nsw i64 %smin, 1200
  %smin948 = call i64 @llvm.smin.i64(i64 %indvars.iv946, i64 -1168)
  %212 = shl nsw i64 %polly.indvar761, 5
  %213 = add nsw i64 %smin948, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next947 = add nsw i64 %indvars.iv946, -32
  %exitcond954.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond954.not, label %polly.loop_exit760, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %polly.indvar767 = phi i64 [ 0, %polly.loop_header758 ], [ %polly.indvar_next768, %polly.loop_exit772 ]
  %214 = add nuw nsw i64 %polly.indvar767, %208
  %215 = trunc i64 %214 to i32
  %216 = mul nuw nsw i64 %214, 9600
  %min.iters.check = icmp eq i64 %211, 0
  br i1 %min.iters.check, label %polly.loop_header770, label %vector.ph981

vector.ph981:                                     ; preds = %polly.loop_header764
  %broadcast.splatinsert988 = insertelement <4 x i64> poison, i64 %212, i32 0
  %broadcast.splat989 = shufflevector <4 x i64> %broadcast.splatinsert988, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph981
  %index982 = phi i64 [ 0, %vector.ph981 ], [ %index.next983, %vector.body980 ]
  %vec.ind986 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph981 ], [ %vec.ind.next987, %vector.body980 ]
  %217 = add nuw nsw <4 x i64> %vec.ind986, %broadcast.splat989
  %218 = trunc <4 x i64> %217 to <4 x i32>
  %219 = mul <4 x i32> %broadcast.splat991, %218
  %220 = add <4 x i32> %219, <i32 3, i32 3, i32 3, i32 3>
  %221 = urem <4 x i32> %220, <i32 1200, i32 1200, i32 1200, i32 1200>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %224 = extractelement <4 x i64> %217, i32 0
  %225 = shl i64 %224, 3
  %226 = add nuw nsw i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %223, <4 x double>* %228, align 8, !alias.scope !99, !noalias !101
  %index.next983 = add i64 %index982, 4
  %vec.ind.next987 = add <4 x i64> %vec.ind986, <i64 4, i64 4, i64 4, i64 4>
  %229 = icmp eq i64 %index.next983, %211
  br i1 %229, label %polly.loop_exit772, label %vector.body980, !llvm.loop !104

polly.loop_exit772:                               ; preds = %vector.body980, %polly.loop_header770
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond953.not = icmp eq i64 %polly.indvar767, %209
  br i1 %exitcond953.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_header764, %polly.loop_header770
  %polly.indvar773 = phi i64 [ %polly.indvar_next774, %polly.loop_header770 ], [ 0, %polly.loop_header764 ]
  %230 = add nuw nsw i64 %polly.indvar773, %212
  %231 = trunc i64 %230 to i32
  %232 = mul i32 %231, %215
  %233 = add i32 %232, 3
  %234 = urem i32 %233, 1200
  %p_conv31.i = sitofp i32 %234 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %235 = shl i64 %230, 3
  %236 = add nuw nsw i64 %235, %216
  %scevgep776 = getelementptr i8, i8* %call, i64 %236
  %scevgep776777 = bitcast i8* %scevgep776 to double*
  store double %p_div33.i, double* %scevgep776777, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond949.not = icmp eq i64 %polly.indvar773, %213
  br i1 %exitcond949.not, label %polly.loop_exit772, label %polly.loop_header770, !llvm.loop !105

polly.loop_header779:                             ; preds = %polly.loop_exit760, %polly.loop_exit787
  %indvars.iv940 = phi i64 [ %indvars.iv.next941, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760 ]
  %smin942 = call i64 @llvm.smin.i64(i64 %indvars.iv940, i64 -1168)
  %237 = shl nsw i64 %polly.indvar782, 5
  %238 = add nsw i64 %smin942, 1199
  br label %polly.loop_header785

polly.loop_exit787:                               ; preds = %polly.loop_exit793
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %indvars.iv.next941 = add nsw i64 %indvars.iv940, -32
  %exitcond945.not = icmp eq i64 %polly.indvar_next783, 38
  br i1 %exitcond945.not, label %polly.loop_header805, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_exit793, %polly.loop_header779
  %indvars.iv936 = phi i64 [ %indvars.iv.next937, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_header779 ]
  %239 = mul nsw i64 %polly.indvar788, -32
  %smin995 = call i64 @llvm.smin.i64(i64 %239, i64 -968)
  %240 = add nsw i64 %smin995, 1000
  %smin938 = call i64 @llvm.smin.i64(i64 %indvars.iv936, i64 -968)
  %241 = shl nsw i64 %polly.indvar788, 5
  %242 = add nsw i64 %smin938, 999
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next937 = add nsw i64 %indvars.iv936, -32
  %exitcond944.not = icmp eq i64 %polly.indvar_next789, 32
  br i1 %exitcond944.not, label %polly.loop_exit787, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %polly.indvar794 = phi i64 [ 0, %polly.loop_header785 ], [ %polly.indvar_next795, %polly.loop_exit799 ]
  %243 = add nuw nsw i64 %polly.indvar794, %237
  %244 = trunc i64 %243 to i32
  %245 = mul nuw nsw i64 %243, 8000
  %min.iters.check996 = icmp eq i64 %240, 0
  br i1 %min.iters.check996, label %polly.loop_header797, label %vector.ph997

vector.ph997:                                     ; preds = %polly.loop_header791
  %broadcast.splatinsert1006 = insertelement <4 x i64> poison, i64 %241, i32 0
  %broadcast.splat1007 = shufflevector <4 x i64> %broadcast.splatinsert1006, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1001, %vector.body994 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph997 ], [ %vec.ind.next1005, %vector.body994 ]
  %246 = add nuw nsw <4 x i64> %vec.ind1004, %broadcast.splat1007
  %247 = trunc <4 x i64> %246 to <4 x i32>
  %248 = mul <4 x i32> %broadcast.splat1009, %247
  %249 = add <4 x i32> %248, <i32 2, i32 2, i32 2, i32 2>
  %250 = urem <4 x i32> %249, <i32 1000, i32 1000, i32 1000, i32 1000>
  %251 = sitofp <4 x i32> %250 to <4 x double>
  %252 = fmul fast <4 x double> %251, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %253 = extractelement <4 x i64> %246, i32 0
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %245
  %256 = getelementptr i8, i8* %call2, i64 %255
  %257 = bitcast i8* %256 to <4 x double>*
  store <4 x double> %252, <4 x double>* %257, align 8, !alias.scope !103, !noalias !106
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %258 = icmp eq i64 %index.next1001, %240
  br i1 %258, label %polly.loop_exit799, label %vector.body994, !llvm.loop !107

polly.loop_exit799:                               ; preds = %vector.body994, %polly.loop_header797
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond943.not = icmp eq i64 %polly.indvar794, %238
  br i1 %exitcond943.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_header791, %polly.loop_header797
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_header797 ], [ 0, %polly.loop_header791 ]
  %259 = add nuw nsw i64 %polly.indvar800, %241
  %260 = trunc i64 %259 to i32
  %261 = mul i32 %260, %244
  %262 = add i32 %261, 2
  %263 = urem i32 %262, 1000
  %p_conv10.i = sitofp i32 %263 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %264 = shl i64 %259, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep803 = getelementptr i8, i8* %call2, i64 %265
  %scevgep803804 = bitcast i8* %scevgep803 to double*
  store double %p_div12.i, double* %scevgep803804, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond939.not = icmp eq i64 %polly.indvar800, %242
  br i1 %exitcond939.not, label %polly.loop_exit799, label %polly.loop_header797, !llvm.loop !108

polly.loop_header805:                             ; preds = %polly.loop_exit787, %polly.loop_exit813
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787 ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 -1168)
  %266 = shl nsw i64 %polly.indvar808, 5
  %267 = add nsw i64 %smin932, 1199
  br label %polly.loop_header811

polly.loop_exit813:                               ; preds = %polly.loop_exit819
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %indvars.iv.next931 = add nsw i64 %indvars.iv930, -32
  %exitcond935.not = icmp eq i64 %polly.indvar_next809, 38
  br i1 %exitcond935.not, label %init_array.exit, label %polly.loop_header805

polly.loop_header811:                             ; preds = %polly.loop_exit819, %polly.loop_header805
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_header805 ]
  %268 = mul nsw i64 %polly.indvar814, -32
  %smin1013 = call i64 @llvm.smin.i64(i64 %268, i64 -968)
  %269 = add nsw i64 %smin1013, 1000
  %smin928 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 -968)
  %270 = shl nsw i64 %polly.indvar814, 5
  %271 = add nsw i64 %smin928, 999
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -32
  %exitcond934.not = icmp eq i64 %polly.indvar_next815, 32
  br i1 %exitcond934.not, label %polly.loop_exit813, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %polly.indvar820 = phi i64 [ 0, %polly.loop_header811 ], [ %polly.indvar_next821, %polly.loop_exit825 ]
  %272 = add nuw nsw i64 %polly.indvar820, %266
  %273 = trunc i64 %272 to i32
  %274 = mul nuw nsw i64 %272, 8000
  %min.iters.check1014 = icmp eq i64 %269, 0
  br i1 %min.iters.check1014, label %polly.loop_header823, label %vector.ph1015

vector.ph1015:                                    ; preds = %polly.loop_header817
  %broadcast.splatinsert1024 = insertelement <4 x i64> poison, i64 %270, i32 0
  %broadcast.splat1025 = shufflevector <4 x i64> %broadcast.splatinsert1024, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1019, %vector.body1012 ]
  %vec.ind1022 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1015 ], [ %vec.ind.next1023, %vector.body1012 ]
  %275 = add nuw nsw <4 x i64> %vec.ind1022, %broadcast.splat1025
  %276 = trunc <4 x i64> %275 to <4 x i32>
  %277 = mul <4 x i32> %broadcast.splat1027, %276
  %278 = add <4 x i32> %277, <i32 1, i32 1, i32 1, i32 1>
  %279 = urem <4 x i32> %278, <i32 1200, i32 1200, i32 1200, i32 1200>
  %280 = sitofp <4 x i32> %279 to <4 x double>
  %281 = fmul fast <4 x double> %280, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %282 = extractelement <4 x i64> %275, i32 0
  %283 = shl i64 %282, 3
  %284 = add nuw nsw i64 %283, %274
  %285 = getelementptr i8, i8* %call1, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %281, <4 x double>* %286, align 8, !alias.scope !102, !noalias !109
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1023 = add <4 x i64> %vec.ind1022, <i64 4, i64 4, i64 4, i64 4>
  %287 = icmp eq i64 %index.next1019, %269
  br i1 %287, label %polly.loop_exit825, label %vector.body1012, !llvm.loop !110

polly.loop_exit825:                               ; preds = %vector.body1012, %polly.loop_header823
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond933.not = icmp eq i64 %polly.indvar820, %267
  br i1 %exitcond933.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_header817, %polly.loop_header823
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_header823 ], [ 0, %polly.loop_header817 ]
  %288 = add nuw nsw i64 %polly.indvar826, %270
  %289 = trunc i64 %288 to i32
  %290 = mul i32 %289, %273
  %291 = add i32 %290, 1
  %292 = urem i32 %291, 1200
  %p_conv.i = sitofp i32 %292 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %293 = shl i64 %288, 3
  %294 = add nuw nsw i64 %293, %274
  %scevgep830 = getelementptr i8, i8* %call1, i64 %294
  %scevgep830831 = bitcast i8* %scevgep830 to double*
  store double %p_div.i, double* %scevgep830831, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond929.not = icmp eq i64 %polly.indvar826, %271
  br i1 %exitcond929.not, label %polly.loop_exit825, label %polly.loop_header823, !llvm.loop !111
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 96}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
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
