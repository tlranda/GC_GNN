; ModuleID = 'syr2k_exhaustive/mmp_all_SM_6586.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_6586.c"
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
  %scevgep977 = getelementptr i8, i8* %call2, i64 %12
  %scevgep976 = getelementptr i8, i8* %call2, i64 %11
  %scevgep975 = getelementptr i8, i8* %call1, i64 %12
  %scevgep974 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep974, %scevgep977
  %bound1 = icmp ult i8* %scevgep976, %scevgep975
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
  br i1 %exitcond18.not.i, label %vector.ph981, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph981:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert988 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat989 = shufflevector <4 x i64> %broadcast.splatinsert988, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph981
  %index982 = phi i64 [ 0, %vector.ph981 ], [ %index.next983, %vector.body980 ]
  %vec.ind986 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph981 ], [ %vec.ind.next987, %vector.body980 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind986, %broadcast.splat989
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv7.i, i64 %index982
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next983 = add i64 %index982, 4
  %vec.ind.next987 = add <4 x i64> %vec.ind986, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next983, 1200
  br i1 %40, label %for.inc41.i, label %vector.body980, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body980
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph981, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit819
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start454, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1043 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1043, label %for.body3.i46.preheader1117, label %vector.ph1044

vector.ph1044:                                    ; preds = %for.body3.i46.preheader
  %n.vec1046 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1044
  %index1047 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1048, %vector.body1042 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %index1047
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1048 = add i64 %index1047, 4
  %46 = icmp eq i64 %index.next1048, %n.vec1046
  br i1 %46, label %middle.block1040, label %vector.body1042, !llvm.loop !18

middle.block1040:                                 ; preds = %vector.body1042
  %cmp.n1050 = icmp eq i64 %indvars.iv21.i, %n.vec1046
  br i1 %cmp.n1050, label %for.inc6.i, label %for.body3.i46.preheader1117

for.body3.i46.preheader1117:                      ; preds = %for.body3.i46.preheader, %middle.block1040
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1046, %middle.block1040 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1117, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1117 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1040, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

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
  %min.iters.check1066 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1066, label %for.body3.i60.preheader1116, label %vector.ph1067

vector.ph1067:                                    ; preds = %for.body3.i60.preheader
  %n.vec1069 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %vector.ph1067
  %index1070 = phi i64 [ 0, %vector.ph1067 ], [ %index.next1071, %vector.body1065 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %index1070
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1074 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1074, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1071 = add i64 %index1070, 4
  %57 = icmp eq i64 %index.next1071, %n.vec1069
  br i1 %57, label %middle.block1063, label %vector.body1065, !llvm.loop !60

middle.block1063:                                 ; preds = %vector.body1065
  %cmp.n1073 = icmp eq i64 %indvars.iv21.i52, %n.vec1069
  br i1 %cmp.n1073, label %for.inc6.i63, label %for.body3.i60.preheader1116

for.body3.i60.preheader1116:                      ; preds = %for.body3.i60.preheader, %middle.block1063
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1069, %middle.block1063 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1116, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1116 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1063, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

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
  %min.iters.check1092 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1092, label %for.body3.i99.preheader1115, label %vector.ph1093

vector.ph1093:                                    ; preds = %for.body3.i99.preheader
  %n.vec1095 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1093
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1097, %vector.body1091 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %index1096
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1100 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1100, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1097 = add i64 %index1096, 4
  %68 = icmp eq i64 %index.next1097, %n.vec1095
  br i1 %68, label %middle.block1089, label %vector.body1091, !llvm.loop !62

middle.block1089:                                 ; preds = %vector.body1091
  %cmp.n1099 = icmp eq i64 %indvars.iv21.i91, %n.vec1095
  br i1 %cmp.n1099, label %for.inc6.i102, label %for.body3.i99.preheader1115

for.body3.i99.preheader1115:                      ; preds = %for.body3.i99.preheader, %middle.block1089
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1095, %middle.block1089 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1115, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1115 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1089, %for.cond1.preheader.i93
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call784, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1104 = phi i64 [ %indvar.next1105, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1104, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1106 = icmp ult i64 %88, 4
  br i1 %min.iters.check1106, label %polly.loop_header191.preheader, label %vector.ph1107

vector.ph1107:                                    ; preds = %polly.loop_header
  %n.vec1109 = and i64 %88, -4
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1107
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1111, %vector.body1103 ]
  %90 = shl nuw nsw i64 %index1110, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1114 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1114, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1111 = add i64 %index1110, 4
  %95 = icmp eq i64 %index.next1111, %n.vec1109
  br i1 %95, label %middle.block1101, label %vector.body1103, !llvm.loop !74

middle.block1101:                                 ; preds = %vector.body1103
  %cmp.n1113 = icmp eq i64 %88, %n.vec1109
  br i1 %cmp.n1113, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1101
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1109, %middle.block1101 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1101
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1105 = add i64 %indvar1104, 1
  br i1 %exitcond881.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond880.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond880.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv859 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next860, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv859, i64 -968)
  %97 = add nsw i64 %smin876, 1000
  %98 = shl nsw i64 %polly.indvar202, 5
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, -32
  %exitcond879.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond879.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %polly.loop_exit229 ], [ 31, %polly.loop_header199 ]
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 1200, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %99 = shl nuw nsw i64 %indvars.iv864, 2
  %100 = and i64 %99, 9223372036854775680
  %101 = add i64 %indvars.iv862, %100
  %102 = sub nsw i64 %indvars.iv868, %100
  %103 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %104 = mul nsw i64 %polly.indvar208, -100
  %105 = mul nuw nsw i64 %polly.indvar208, 7
  %106 = add nuw nsw i64 %105, 31
  %pexp.p_div_q = lshr i64 %106, 5
  %107 = sub nsw i64 %polly.indvar208, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %107, 10
  br i1 %polly.loop_guard, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_exit213
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -28
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 7
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 28
  %exitcond878.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond878.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %108 = add nuw nsw i64 %polly.indvar214, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 1200
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next215, %97
  br i1 %exitcond861.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %109 = add nuw nsw i64 %polly.indvar220, %103
  %polly.access.mul.call2224 = mul nuw nsw i64 %109, 1000
  %polly.access.add.call2225 = add nuw nsw i64 %108, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit213, %polly.loop_exit235
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit235 ], [ %102, %polly.loop_exit213 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %107, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv866, i64 0)
  %110 = add i64 %smax, %indvars.iv870
  %111 = shl nsw i64 %polly.indvar230, 7
  %112 = sub nsw i64 %103, %111
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %115 = mul nsw i64 %polly.indvar230, -128
  %116 = icmp slt i64 %115, -1072
  %117 = select i1 %116, i64 %115, i64 -1072
  %118 = add nsw i64 %117, 1199
  %polly.loop_guard243.not = icmp sgt i64 %114, %118
  br i1 %polly.loop_guard243.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242, %polly.loop_header227
  %polly.indvar_next231 = add nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp slt i64 %polly.indvar230, 9
  %indvars.iv.next867 = add i64 %indvars.iv866, -128
  %indvars.iv.next871 = add i64 %indvars.iv870, 128
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header233:                             ; preds = %polly.loop_header227, %polly.loop_exit242
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ 0, %polly.loop_header227 ]
  %119 = add nuw nsw i64 %polly.indvar236, %98
  %120 = shl i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2258 = mul nuw nsw i64 %polly.indvar236, 1200
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_exit250
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next237, %97
  br i1 %exitcond877.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header240:                             ; preds = %polly.loop_header233, %polly.loop_exit250
  %indvars.iv872 = phi i64 [ %110, %polly.loop_header233 ], [ %indvars.iv.next873, %polly.loop_exit250 ]
  %polly.indvar244 = phi i64 [ %114, %polly.loop_header233 ], [ %polly.indvar_next245, %polly.loop_exit250 ]
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv872, i64 99)
  %121 = add i64 %polly.indvar244, %111
  %122 = add i64 %121, %104
  %polly.loop_guard251969 = icmp sgt i64 %122, -1
  br i1 %polly.loop_guard251969, label %polly.loop_header248.preheader, label %polly.loop_exit250

polly.loop_header248.preheader:                   ; preds = %polly.loop_header240
  %polly.access.add.Packed_MemRef_call2259 = add nsw i64 %polly.access.mul.Packed_MemRef_call2258, %122
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %123 = mul i64 %121, 8000
  %124 = add i64 %123, %120
  %scevgep266 = getelementptr i8, i8* %call1, i64 %124
  %scevgep266267 = bitcast i8* %scevgep266 to double*
  %_p_scalar_268 = load double, double* %scevgep266267, align 8, !alias.scope !71, !noalias !78
  %125 = mul i64 %121, 9600
  br label %polly.loop_header248

polly.loop_exit250:                               ; preds = %polly.loop_header248, %polly.loop_header240
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %polly.loop_cond246.not.not = icmp slt i64 %polly.indvar244, %118
  %indvars.iv.next873 = add i64 %indvars.iv872, 1
  br i1 %polly.loop_cond246.not.not, label %polly.loop_header240, label %polly.loop_exit242

polly.loop_header248:                             ; preds = %polly.loop_header248.preheader, %polly.loop_header248
  %polly.indvar252 = phi i64 [ %polly.indvar_next253, %polly.loop_header248 ], [ 0, %polly.loop_header248.preheader ]
  %126 = add nuw nsw i64 %polly.indvar252, %103
  %127 = mul nuw nsw i64 %126, 8000
  %128 = add nuw nsw i64 %127, %120
  %scevgep255 = getelementptr i8, i8* %call1, i64 %128
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_261, %_p_scalar_257
  %polly.access.add.Packed_MemRef_call2263 = add nuw nsw i64 %polly.indvar252, %polly.access.mul.Packed_MemRef_call2258
  %polly.access.Packed_MemRef_call2264 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call2264, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_268, %_p_scalar_265
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %125
  %scevgep269 = getelementptr i8, i8* %call, i64 %130
  %scevgep269270 = bitcast i8* %scevgep269 to double*
  %_p_scalar_271 = load double, double* %scevgep269270, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_271
  store double %p_add42.i118, double* %scevgep269270, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next253 = add nuw nsw i64 %polly.indvar252, 1
  %exitcond875.not = icmp eq i64 %polly.indvar252, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit250, label %polly.loop_header248

polly.start274:                                   ; preds = %kernel_syr2k.exit
  %malloccall276 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header360

polly.exiting275:                                 ; preds = %polly.loop_exit384
  tail call void @free(i8* %malloccall276)
  br label %kernel_syr2k.exit90

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.start274
  %indvar1078 = phi i64 [ %indvar.next1079, %polly.loop_exit368 ], [ 0, %polly.start274 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 1, %polly.start274 ]
  %131 = add i64 %indvar1078, 1
  %132 = mul nuw nsw i64 %polly.indvar363, 9600
  %scevgep372 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1080 = icmp ult i64 %131, 4
  br i1 %min.iters.check1080, label %polly.loop_header366.preheader, label %vector.ph1081

vector.ph1081:                                    ; preds = %polly.loop_header360
  %n.vec1083 = and i64 %131, -4
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1081
  %index1084 = phi i64 [ 0, %vector.ph1081 ], [ %index.next1085, %vector.body1077 ]
  %133 = shl nuw nsw i64 %index1084, 3
  %134 = getelementptr i8, i8* %scevgep372, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1088 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !79, !noalias !81
  %136 = fmul fast <4 x double> %wide.load1088, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !79, !noalias !81
  %index.next1085 = add i64 %index1084, 4
  %138 = icmp eq i64 %index.next1085, %n.vec1083
  br i1 %138, label %middle.block1075, label %vector.body1077, !llvm.loop !85

middle.block1075:                                 ; preds = %vector.body1077
  %cmp.n1087 = icmp eq i64 %131, %n.vec1083
  br i1 %cmp.n1087, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header360, %middle.block1075
  %polly.indvar369.ph = phi i64 [ 0, %polly.loop_header360 ], [ %n.vec1083, %middle.block1075 ]
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_header366, %middle.block1075
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next364, 1200
  %indvar.next1079 = add i64 %indvar1078, 1
  br i1 %exitcond909.not, label %polly.loop_header376.preheader, label %polly.loop_header360

polly.loop_header376.preheader:                   ; preds = %polly.loop_exit368
  %Packed_MemRef_call2277 = bitcast i8* %malloccall276 to double*
  br label %polly.loop_header376

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_header366
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_header366 ], [ %polly.indvar369.ph, %polly.loop_header366.preheader ]
  %139 = shl nuw nsw i64 %polly.indvar369, 3
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %139
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_375, 1.200000e+00
  store double %p_mul.i57, double* %scevgep373374, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next370, %polly.indvar363
  br i1 %exitcond908.not, label %polly.loop_exit368, label %polly.loop_header366, !llvm.loop !86

polly.loop_header376:                             ; preds = %polly.loop_header376.preheader, %polly.loop_exit384
  %indvars.iv885 = phi i64 [ 0, %polly.loop_header376.preheader ], [ %indvars.iv.next886, %polly.loop_exit384 ]
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header376.preheader ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %smin904 = call i64 @llvm.smin.i64(i64 %indvars.iv885, i64 -968)
  %140 = add nsw i64 %smin904, 1000
  %141 = shl nsw i64 %polly.indvar379, 5
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_exit408
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %indvars.iv.next886 = add nsw i64 %indvars.iv885, -32
  %exitcond907.not = icmp eq i64 %polly.indvar_next380, 32
  br i1 %exitcond907.not, label %polly.exiting275, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_exit408, %polly.loop_header376
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit408 ], [ 31, %polly.loop_header376 ]
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit408 ], [ 1200, %polly.loop_header376 ]
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit408 ], [ 0, %polly.loop_header376 ]
  %142 = shl nuw nsw i64 %indvars.iv891, 2
  %143 = and i64 %142, 9223372036854775680
  %144 = add i64 %indvars.iv889, %143
  %145 = sub nsw i64 %indvars.iv896, %143
  %146 = mul nuw nsw i64 %polly.indvar385, 100
  br label %polly.loop_header388

polly.loop_exit390:                               ; preds = %polly.loop_exit396
  %147 = mul nsw i64 %polly.indvar385, -100
  %148 = mul nuw nsw i64 %polly.indvar385, 7
  %149 = add nuw nsw i64 %148, 31
  %pexp.p_div_q404 = lshr i64 %149, 5
  %150 = sub nsw i64 %polly.indvar385, %pexp.p_div_q404
  %polly.loop_guard409 = icmp slt i64 %150, 10
  br i1 %polly.loop_guard409, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_exit408:                               ; preds = %polly.loop_exit415, %polly.loop_exit390
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -100
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, -28
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 7
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 28
  %exitcond906.not = icmp eq i64 %polly.indvar_next386, 12
  br i1 %exitcond906.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_exit396 ]
  %151 = add nuw nsw i64 %polly.indvar391, %141
  %polly.access.mul.Packed_MemRef_call2277 = mul nuw nsw i64 %polly.indvar391, 1200
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next392, %140
  br i1 %exitcond888.not, label %polly.loop_exit390, label %polly.loop_header388

polly.loop_header394:                             ; preds = %polly.loop_header394, %polly.loop_header388
  %polly.indvar397 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next398, %polly.loop_header394 ]
  %152 = add nuw nsw i64 %polly.indvar397, %146
  %polly.access.mul.call2401 = mul nuw nsw i64 %152, 1000
  %polly.access.add.call2402 = add nuw nsw i64 %151, %polly.access.mul.call2401
  %polly.access.call2403 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2402
  %polly.access.call2403.load = load double, double* %polly.access.call2403, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2277 = add nuw nsw i64 %polly.indvar397, %polly.access.mul.Packed_MemRef_call2277
  %polly.access.Packed_MemRef_call2277 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277
  store double %polly.access.call2403.load, double* %polly.access.Packed_MemRef_call2277, align 8
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next398, %indvars.iv882
  br i1 %exitcond884.not, label %polly.loop_exit396, label %polly.loop_header394

polly.loop_header406:                             ; preds = %polly.loop_exit390, %polly.loop_exit415
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit415 ], [ %145, %polly.loop_exit390 ]
  %indvars.iv893 = phi i64 [ %indvars.iv.next894, %polly.loop_exit415 ], [ %144, %polly.loop_exit390 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ %150, %polly.loop_exit390 ]
  %smax895 = call i64 @llvm.smax.i64(i64 %indvars.iv893, i64 0)
  %153 = add i64 %smax895, %indvars.iv898
  %154 = shl nsw i64 %polly.indvar410, 7
  %155 = sub nsw i64 %146, %154
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %158 = mul nsw i64 %polly.indvar410, -128
  %159 = icmp slt i64 %158, -1072
  %160 = select i1 %159, i64 %158, i64 -1072
  %161 = add nsw i64 %160, 1199
  %polly.loop_guard423.not = icmp sgt i64 %157, %161
  br i1 %polly.loop_guard423.not, label %polly.loop_exit415, label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_exit422, %polly.loop_header406
  %polly.indvar_next411 = add nsw i64 %polly.indvar410, 1
  %polly.loop_cond412 = icmp slt i64 %polly.indvar410, 9
  %indvars.iv.next894 = add i64 %indvars.iv893, -128
  %indvars.iv.next899 = add i64 %indvars.iv898, 128
  br i1 %polly.loop_cond412, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_header413:                             ; preds = %polly.loop_header406, %polly.loop_exit422
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %162 = add nuw nsw i64 %polly.indvar416, %141
  %163 = shl i64 %162, 3
  %polly.access.mul.Packed_MemRef_call2277438 = mul nuw nsw i64 %polly.indvar416, 1200
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit430
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next417, %140
  br i1 %exitcond905.not, label %polly.loop_exit415, label %polly.loop_header413

polly.loop_header420:                             ; preds = %polly.loop_header413, %polly.loop_exit430
  %indvars.iv900 = phi i64 [ %153, %polly.loop_header413 ], [ %indvars.iv.next901, %polly.loop_exit430 ]
  %polly.indvar424 = phi i64 [ %157, %polly.loop_header413 ], [ %polly.indvar_next425, %polly.loop_exit430 ]
  %smin902 = call i64 @llvm.smin.i64(i64 %indvars.iv900, i64 99)
  %164 = add i64 %polly.indvar424, %154
  %165 = add i64 %164, %147
  %polly.loop_guard431970 = icmp sgt i64 %165, -1
  br i1 %polly.loop_guard431970, label %polly.loop_header428.preheader, label %polly.loop_exit430

polly.loop_header428.preheader:                   ; preds = %polly.loop_header420
  %polly.access.add.Packed_MemRef_call2277439 = add nsw i64 %polly.access.mul.Packed_MemRef_call2277438, %165
  %polly.access.Packed_MemRef_call2277440 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2277440, align 8
  %166 = mul i64 %164, 8000
  %167 = add i64 %166, %163
  %scevgep446 = getelementptr i8, i8* %call1, i64 %167
  %scevgep446447 = bitcast i8* %scevgep446 to double*
  %_p_scalar_448 = load double, double* %scevgep446447, align 8, !alias.scope !82, !noalias !88
  %168 = mul i64 %164, 9600
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428, %polly.loop_header420
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp slt i64 %polly.indvar424, %161
  %indvars.iv.next901 = add i64 %indvars.iv900, 1
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader, %polly.loop_header428
  %polly.indvar432 = phi i64 [ %polly.indvar_next433, %polly.loop_header428 ], [ 0, %polly.loop_header428.preheader ]
  %169 = add nuw nsw i64 %polly.indvar432, %146
  %170 = mul nuw nsw i64 %169, 8000
  %171 = add nuw nsw i64 %170, %163
  %scevgep435 = getelementptr i8, i8* %call1, i64 %171
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_441, %_p_scalar_437
  %polly.access.add.Packed_MemRef_call2277443 = add nuw nsw i64 %polly.indvar432, %polly.access.mul.Packed_MemRef_call2277438
  %polly.access.Packed_MemRef_call2277444 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277443
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call2277444, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_448, %_p_scalar_445
  %172 = shl i64 %169, 3
  %173 = add i64 %172, %168
  %scevgep449 = getelementptr i8, i8* %call, i64 %173
  %scevgep449450 = bitcast i8* %scevgep449 to double*
  %_p_scalar_451 = load double, double* %scevgep449450, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_451
  store double %p_add42.i79, double* %scevgep449450, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond903.not = icmp eq i64 %polly.indvar432, %smin902
  br i1 %exitcond903.not, label %polly.loop_exit430, label %polly.loop_header428

polly.start454:                                   ; preds = %init_array.exit
  %malloccall456 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header540

polly.exiting455:                                 ; preds = %polly.loop_exit564
  tail call void @free(i8* %malloccall456)
  br label %kernel_syr2k.exit

polly.loop_header540:                             ; preds = %polly.loop_exit548, %polly.start454
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit548 ], [ 0, %polly.start454 ]
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 1, %polly.start454 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar543, 9600
  %scevgep552 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1054 = icmp ult i64 %174, 4
  br i1 %min.iters.check1054, label %polly.loop_header546.preheader, label %vector.ph1055

vector.ph1055:                                    ; preds = %polly.loop_header540
  %n.vec1057 = and i64 %174, -4
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1055
  %index1058 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1059, %vector.body1053 ]
  %176 = shl nuw nsw i64 %index1058, 3
  %177 = getelementptr i8, i8* %scevgep552, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1062 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !89, !noalias !91
  %179 = fmul fast <4 x double> %wide.load1062, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !89, !noalias !91
  %index.next1059 = add i64 %index1058, 4
  %181 = icmp eq i64 %index.next1059, %n.vec1057
  br i1 %181, label %middle.block1051, label %vector.body1053, !llvm.loop !95

middle.block1051:                                 ; preds = %vector.body1053
  %cmp.n1061 = icmp eq i64 %174, %n.vec1057
  br i1 %cmp.n1061, label %polly.loop_exit548, label %polly.loop_header546.preheader

polly.loop_header546.preheader:                   ; preds = %polly.loop_header540, %middle.block1051
  %polly.indvar549.ph = phi i64 [ 0, %polly.loop_header540 ], [ %n.vec1057, %middle.block1051 ]
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546, %middle.block1051
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next544, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond937.not, label %polly.loop_header556.preheader, label %polly.loop_header540

polly.loop_header556.preheader:                   ; preds = %polly.loop_exit548
  %Packed_MemRef_call2457 = bitcast i8* %malloccall456 to double*
  br label %polly.loop_header556

polly.loop_header546:                             ; preds = %polly.loop_header546.preheader, %polly.loop_header546
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_header546 ], [ %polly.indvar549.ph, %polly.loop_header546.preheader ]
  %182 = shl nuw nsw i64 %polly.indvar549, 3
  %scevgep553 = getelementptr i8, i8* %scevgep552, i64 %182
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_555, 1.200000e+00
  store double %p_mul.i, double* %scevgep553554, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next550, %polly.indvar543
  br i1 %exitcond936.not, label %polly.loop_exit548, label %polly.loop_header546, !llvm.loop !96

polly.loop_header556:                             ; preds = %polly.loop_header556.preheader, %polly.loop_exit564
  %indvars.iv913 = phi i64 [ 0, %polly.loop_header556.preheader ], [ %indvars.iv.next914, %polly.loop_exit564 ]
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header556.preheader ], [ %polly.indvar_next560, %polly.loop_exit564 ]
  %smin932 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 -968)
  %183 = add nsw i64 %smin932, 1000
  %184 = shl nsw i64 %polly.indvar559, 5
  br label %polly.loop_header562

polly.loop_exit564:                               ; preds = %polly.loop_exit588
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %indvars.iv.next914 = add nsw i64 %indvars.iv913, -32
  %exitcond935.not = icmp eq i64 %polly.indvar_next560, 32
  br i1 %exitcond935.not, label %polly.exiting455, label %polly.loop_header556

polly.loop_header562:                             ; preds = %polly.loop_exit588, %polly.loop_header556
  %indvars.iv924 = phi i64 [ %indvars.iv.next925, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %polly.loop_exit588 ], [ 31, %polly.loop_header556 ]
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit588 ], [ 1200, %polly.loop_header556 ]
  %polly.indvar565 = phi i64 [ %polly.indvar_next566, %polly.loop_exit588 ], [ 0, %polly.loop_header556 ]
  %185 = shl nuw nsw i64 %indvars.iv919, 2
  %186 = and i64 %185, 9223372036854775680
  %187 = add i64 %indvars.iv917, %186
  %188 = sub nsw i64 %indvars.iv924, %186
  %189 = mul nuw nsw i64 %polly.indvar565, 100
  br label %polly.loop_header568

polly.loop_exit570:                               ; preds = %polly.loop_exit576
  %190 = mul nsw i64 %polly.indvar565, -100
  %191 = mul nuw nsw i64 %polly.indvar565, 7
  %192 = add nuw nsw i64 %191, 31
  %pexp.p_div_q584 = lshr i64 %192, 5
  %193 = sub nsw i64 %polly.indvar565, %pexp.p_div_q584
  %polly.loop_guard589 = icmp slt i64 %193, 10
  br i1 %polly.loop_guard589, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_exit570
  %polly.indvar_next566 = add nuw nsw i64 %polly.indvar565, 1
  %indvars.iv.next911 = add nsw i64 %indvars.iv910, -100
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, -28
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 7
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 28
  %exitcond934.not = icmp eq i64 %polly.indvar_next566, 12
  br i1 %exitcond934.not, label %polly.loop_exit564, label %polly.loop_header562

polly.loop_header568:                             ; preds = %polly.loop_exit576, %polly.loop_header562
  %polly.indvar571 = phi i64 [ 0, %polly.loop_header562 ], [ %polly.indvar_next572, %polly.loop_exit576 ]
  %194 = add nuw nsw i64 %polly.indvar571, %184
  %polly.access.mul.Packed_MemRef_call2457 = mul nuw nsw i64 %polly.indvar571, 1200
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_header574
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next572, %183
  br i1 %exitcond916.not, label %polly.loop_exit570, label %polly.loop_header568

polly.loop_header574:                             ; preds = %polly.loop_header574, %polly.loop_header568
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header568 ], [ %polly.indvar_next578, %polly.loop_header574 ]
  %195 = add nuw nsw i64 %polly.indvar577, %189
  %polly.access.mul.call2581 = mul nuw nsw i64 %195, 1000
  %polly.access.add.call2582 = add nuw nsw i64 %194, %polly.access.mul.call2581
  %polly.access.call2583 = getelementptr double, double* %polly.access.cast.call2646, i64 %polly.access.add.call2582
  %polly.access.call2583.load = load double, double* %polly.access.call2583, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2457 = add nuw nsw i64 %polly.indvar577, %polly.access.mul.Packed_MemRef_call2457
  %polly.access.Packed_MemRef_call2457 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457
  store double %polly.access.call2583.load, double* %polly.access.Packed_MemRef_call2457, align 8
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next578, %indvars.iv910
  br i1 %exitcond912.not, label %polly.loop_exit576, label %polly.loop_header574

polly.loop_header586:                             ; preds = %polly.loop_exit570, %polly.loop_exit595
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit595 ], [ %188, %polly.loop_exit570 ]
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %polly.loop_exit595 ], [ %187, %polly.loop_exit570 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit595 ], [ %193, %polly.loop_exit570 ]
  %smax923 = call i64 @llvm.smax.i64(i64 %indvars.iv921, i64 0)
  %196 = add i64 %smax923, %indvars.iv926
  %197 = shl nsw i64 %polly.indvar590, 7
  %198 = sub nsw i64 %189, %197
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %201 = mul nsw i64 %polly.indvar590, -128
  %202 = icmp slt i64 %201, -1072
  %203 = select i1 %202, i64 %201, i64 -1072
  %204 = add nsw i64 %203, 1199
  %polly.loop_guard603.not = icmp sgt i64 %200, %204
  br i1 %polly.loop_guard603.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_exit595:                               ; preds = %polly.loop_exit602, %polly.loop_header586
  %polly.indvar_next591 = add nsw i64 %polly.indvar590, 1
  %polly.loop_cond592 = icmp slt i64 %polly.indvar590, 9
  %indvars.iv.next922 = add i64 %indvars.iv921, -128
  %indvars.iv.next927 = add i64 %indvars.iv926, 128
  br i1 %polly.loop_cond592, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header593:                             ; preds = %polly.loop_header586, %polly.loop_exit602
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_exit602 ], [ 0, %polly.loop_header586 ]
  %205 = add nuw nsw i64 %polly.indvar596, %184
  %206 = shl i64 %205, 3
  %polly.access.mul.Packed_MemRef_call2457618 = mul nuw nsw i64 %polly.indvar596, 1200
  br label %polly.loop_header600

polly.loop_exit602:                               ; preds = %polly.loop_exit610
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next597, %183
  br i1 %exitcond933.not, label %polly.loop_exit595, label %polly.loop_header593

polly.loop_header600:                             ; preds = %polly.loop_header593, %polly.loop_exit610
  %indvars.iv928 = phi i64 [ %196, %polly.loop_header593 ], [ %indvars.iv.next929, %polly.loop_exit610 ]
  %polly.indvar604 = phi i64 [ %200, %polly.loop_header593 ], [ %polly.indvar_next605, %polly.loop_exit610 ]
  %smin930 = call i64 @llvm.smin.i64(i64 %indvars.iv928, i64 99)
  %207 = add i64 %polly.indvar604, %197
  %208 = add i64 %207, %190
  %polly.loop_guard611971 = icmp sgt i64 %208, -1
  br i1 %polly.loop_guard611971, label %polly.loop_header608.preheader, label %polly.loop_exit610

polly.loop_header608.preheader:                   ; preds = %polly.loop_header600
  %polly.access.add.Packed_MemRef_call2457619 = add nsw i64 %polly.access.mul.Packed_MemRef_call2457618, %208
  %polly.access.Packed_MemRef_call2457620 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457619
  %_p_scalar_621 = load double, double* %polly.access.Packed_MemRef_call2457620, align 8
  %209 = mul i64 %207, 8000
  %210 = add i64 %209, %206
  %scevgep626 = getelementptr i8, i8* %call1, i64 %210
  %scevgep626627 = bitcast i8* %scevgep626 to double*
  %_p_scalar_628 = load double, double* %scevgep626627, align 8, !alias.scope !92, !noalias !98
  %211 = mul i64 %207, 9600
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608, %polly.loop_header600
  %polly.indvar_next605 = add nuw nsw i64 %polly.indvar604, 1
  %polly.loop_cond606.not.not = icmp slt i64 %polly.indvar604, %204
  %indvars.iv.next929 = add i64 %indvars.iv928, 1
  br i1 %polly.loop_cond606.not.not, label %polly.loop_header600, label %polly.loop_exit602

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ 0, %polly.loop_header608.preheader ]
  %212 = add nuw nsw i64 %polly.indvar612, %189
  %213 = mul nuw nsw i64 %212, 8000
  %214 = add nuw nsw i64 %213, %206
  %scevgep615 = getelementptr i8, i8* %call1, i64 %214
  %scevgep615616 = bitcast i8* %scevgep615 to double*
  %_p_scalar_617 = load double, double* %scevgep615616, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_621, %_p_scalar_617
  %polly.access.add.Packed_MemRef_call2457623 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call2457618
  %polly.access.Packed_MemRef_call2457624 = getelementptr double, double* %Packed_MemRef_call2457, i64 %polly.access.add.Packed_MemRef_call2457623
  %_p_scalar_625 = load double, double* %polly.access.Packed_MemRef_call2457624, align 8
  %p_mul37.i = fmul fast double %_p_scalar_628, %_p_scalar_625
  %215 = shl i64 %212, 3
  %216 = add i64 %215, %211
  %scevgep629 = getelementptr i8, i8* %call, i64 %216
  %scevgep629630 = bitcast i8* %scevgep629 to double*
  %_p_scalar_631 = load double, double* %scevgep629630, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_631
  store double %p_add42.i, double* %scevgep629630, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond931.not = icmp eq i64 %polly.indvar612, %smin930
  br i1 %exitcond931.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header758:                             ; preds = %entry, %polly.loop_exit766
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %polly.loop_exit766 ], [ 0, %entry ]
  %polly.indvar761 = phi i64 [ %polly.indvar_next762, %polly.loop_exit766 ], [ 0, %entry ]
  %smin964 = call i64 @llvm.smin.i64(i64 %indvars.iv962, i64 -1168)
  %217 = shl nsw i64 %polly.indvar761, 5
  %218 = add nsw i64 %smin964, 1199
  br label %polly.loop_header764

polly.loop_exit766:                               ; preds = %polly.loop_exit772
  %polly.indvar_next762 = add nuw nsw i64 %polly.indvar761, 1
  %indvars.iv.next963 = add nsw i64 %indvars.iv962, -32
  %exitcond967.not = icmp eq i64 %polly.indvar_next762, 38
  br i1 %exitcond967.not, label %polly.loop_header785, label %polly.loop_header758

polly.loop_header764:                             ; preds = %polly.loop_exit772, %polly.loop_header758
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %polly.loop_header758 ]
  %219 = mul nsw i64 %polly.indvar767, -32
  %smin = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin, 1200
  %smin960 = call i64 @llvm.smin.i64(i64 %indvars.iv958, i64 -1168)
  %221 = shl nsw i64 %polly.indvar767, 5
  %222 = add nsw i64 %smin960, 1199
  br label %polly.loop_header770

polly.loop_exit772:                               ; preds = %polly.loop_exit778
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, -32
  %exitcond966.not = icmp eq i64 %polly.indvar_next768, 38
  br i1 %exitcond966.not, label %polly.loop_exit766, label %polly.loop_header764

polly.loop_header770:                             ; preds = %polly.loop_exit778, %polly.loop_header764
  %polly.indvar773 = phi i64 [ 0, %polly.loop_header764 ], [ %polly.indvar_next774, %polly.loop_exit778 ]
  %223 = add nuw nsw i64 %polly.indvar773, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header776, label %vector.ph993

vector.ph993:                                     ; preds = %polly.loop_header770
  %broadcast.splatinsert1000 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1001 = shufflevector <4 x i64> %broadcast.splatinsert1000, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph993
  %index994 = phi i64 [ 0, %vector.ph993 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph993 ], [ %vec.ind.next999, %vector.body992 ]
  %226 = add nuw nsw <4 x i64> %vec.ind998, %broadcast.splat1001
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1003, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !99, !noalias !101
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next995, %220
  br i1 %238, label %polly.loop_exit778, label %vector.body992, !llvm.loop !104

polly.loop_exit778:                               ; preds = %vector.body992, %polly.loop_header776
  %polly.indvar_next774 = add nuw nsw i64 %polly.indvar773, 1
  %exitcond965.not = icmp eq i64 %polly.indvar773, %218
  br i1 %exitcond965.not, label %polly.loop_exit772, label %polly.loop_header770

polly.loop_header776:                             ; preds = %polly.loop_header770, %polly.loop_header776
  %polly.indvar779 = phi i64 [ %polly.indvar_next780, %polly.loop_header776 ], [ 0, %polly.loop_header770 ]
  %239 = add nuw nsw i64 %polly.indvar779, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep782 = getelementptr i8, i8* %call, i64 %245
  %scevgep782783 = bitcast i8* %scevgep782 to double*
  store double %p_div33.i, double* %scevgep782783, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next780 = add nuw nsw i64 %polly.indvar779, 1
  %exitcond961.not = icmp eq i64 %polly.indvar779, %222
  br i1 %exitcond961.not, label %polly.loop_exit778, label %polly.loop_header776, !llvm.loop !105

polly.loop_header785:                             ; preds = %polly.loop_exit766, %polly.loop_exit793
  %indvars.iv952 = phi i64 [ %indvars.iv.next953, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %polly.loop_exit766 ]
  %smin954 = call i64 @llvm.smin.i64(i64 %indvars.iv952, i64 -1168)
  %246 = shl nsw i64 %polly.indvar788, 5
  %247 = add nsw i64 %smin954, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next953 = add nsw i64 %indvars.iv952, -32
  %exitcond957.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond957.not, label %polly.loop_header811, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv948 = phi i64 [ %indvars.iv.next949, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %248 = mul nsw i64 %polly.indvar794, -32
  %smin1007 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1007, 1000
  %smin950 = call i64 @llvm.smin.i64(i64 %indvars.iv948, i64 -968)
  %250 = shl nsw i64 %polly.indvar794, 5
  %251 = add nsw i64 %smin950, 999
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next949 = add nsw i64 %indvars.iv948, -32
  %exitcond956.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond956.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %252 = add nuw nsw i64 %polly.indvar800, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1008 = icmp eq i64 %249, 0
  br i1 %min.iters.check1008, label %polly.loop_header803, label %vector.ph1009

vector.ph1009:                                    ; preds = %polly.loop_header797
  %broadcast.splatinsert1018 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1019 = shufflevector <4 x i64> %broadcast.splatinsert1018, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1009
  %index1012 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1013, %vector.body1006 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1009 ], [ %vec.ind.next1017, %vector.body1006 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1016, %broadcast.splat1019
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1021, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !103, !noalias !106
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1013, %249
  br i1 %267, label %polly.loop_exit805, label %vector.body1006, !llvm.loop !107

polly.loop_exit805:                               ; preds = %vector.body1006, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond955.not = icmp eq i64 %polly.indvar800, %247
  br i1 %exitcond955.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %268 = add nuw nsw i64 %polly.indvar806, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep809 = getelementptr i8, i8* %call2, i64 %274
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div12.i, double* %scevgep809810, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond951.not = icmp eq i64 %polly.indvar806, %251
  br i1 %exitcond951.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !108

polly.loop_header811:                             ; preds = %polly.loop_exit793, %polly.loop_exit819
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar814 = phi i64 [ %polly.indvar_next815, %polly.loop_exit819 ], [ 0, %polly.loop_exit793 ]
  %smin944 = call i64 @llvm.smin.i64(i64 %indvars.iv942, i64 -1168)
  %275 = shl nsw i64 %polly.indvar814, 5
  %276 = add nsw i64 %smin944, 1199
  br label %polly.loop_header817

polly.loop_exit819:                               ; preds = %polly.loop_exit825
  %polly.indvar_next815 = add nuw nsw i64 %polly.indvar814, 1
  %indvars.iv.next943 = add nsw i64 %indvars.iv942, -32
  %exitcond947.not = icmp eq i64 %polly.indvar_next815, 38
  br i1 %exitcond947.not, label %init_array.exit, label %polly.loop_header811

polly.loop_header817:                             ; preds = %polly.loop_exit825, %polly.loop_header811
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_header811 ]
  %277 = mul nsw i64 %polly.indvar820, -32
  %smin1025 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1025, 1000
  %smin940 = call i64 @llvm.smin.i64(i64 %indvars.iv938, i64 -968)
  %279 = shl nsw i64 %polly.indvar820, 5
  %280 = add nsw i64 %smin940, 999
  br label %polly.loop_header823

polly.loop_exit825:                               ; preds = %polly.loop_exit831
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %indvars.iv.next939 = add nsw i64 %indvars.iv938, -32
  %exitcond946.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond946.not, label %polly.loop_exit819, label %polly.loop_header817

polly.loop_header823:                             ; preds = %polly.loop_exit831, %polly.loop_header817
  %polly.indvar826 = phi i64 [ 0, %polly.loop_header817 ], [ %polly.indvar_next827, %polly.loop_exit831 ]
  %281 = add nuw nsw i64 %polly.indvar826, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1026 = icmp eq i64 %278, 0
  br i1 %min.iters.check1026, label %polly.loop_header829, label %vector.ph1027

vector.ph1027:                                    ; preds = %polly.loop_header823
  %broadcast.splatinsert1036 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1037 = shufflevector <4 x i64> %broadcast.splatinsert1036, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1031, %vector.body1024 ]
  %vec.ind1034 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1027 ], [ %vec.ind.next1035, %vector.body1024 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1034, %broadcast.splat1037
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1039, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !102, !noalias !109
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1035 = add <4 x i64> %vec.ind1034, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1031, %278
  br i1 %296, label %polly.loop_exit831, label %vector.body1024, !llvm.loop !110

polly.loop_exit831:                               ; preds = %vector.body1024, %polly.loop_header829
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond945.not = icmp eq i64 %polly.indvar826, %276
  br i1 %exitcond945.not, label %polly.loop_exit825, label %polly.loop_header823

polly.loop_header829:                             ; preds = %polly.loop_header823, %polly.loop_header829
  %polly.indvar832 = phi i64 [ %polly.indvar_next833, %polly.loop_header829 ], [ 0, %polly.loop_header823 ]
  %297 = add nuw nsw i64 %polly.indvar832, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep836 = getelementptr i8, i8* %call1, i64 %303
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div.i, double* %scevgep836837, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next833 = add nuw nsw i64 %polly.indvar832, 1
  %exitcond941.not = icmp eq i64 %polly.indvar832, %280
  br i1 %exitcond941.not, label %polly.loop_exit831, label %polly.loop_header829, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
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
!45 = !{!"llvm.loop.tile.size", i32 128}
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
