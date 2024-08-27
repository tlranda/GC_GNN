; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2673.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2673.c"
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
  %call809 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1661 = bitcast i8* %call1 to double*
  %polly.access.call1670 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1670, %call2
  %polly.access.call2690 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2690, %call1
  %2 = or i1 %0, %1
  %polly.access.call710 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call710, %call2
  %4 = icmp ule i8* %polly.access.call2690, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call710, %call1
  %8 = icmp ule i8* %polly.access.call1670, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header783, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1018 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1017 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1016 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1015 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1015, %scevgep1018
  %bound1 = icmp ult i8* %scevgep1017, %scevgep1016
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
  br i1 %exitcond18.not.i, label %vector.ph1022, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1022:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1029 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1030 = shufflevector <4 x i64> %broadcast.splatinsert1029, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1022
  %index1023 = phi i64 [ 0, %vector.ph1022 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1027 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1022 ], [ %vec.ind.next1028, %vector.body1021 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1027, %broadcast.splat1030
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv7.i, i64 %index1023
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1028 = add <4 x i64> %vec.ind1027, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1024, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1021, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1021
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1022, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit844
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1085 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1085, label %for.body3.i46.preheader1159, label %vector.ph1086

vector.ph1086:                                    ; preds = %for.body3.i46.preheader
  %n.vec1088 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %vector.ph1086
  %index1089 = phi i64 [ 0, %vector.ph1086 ], [ %index.next1090, %vector.body1084 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %index1089
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1090 = add i64 %index1089, 4
  %46 = icmp eq i64 %index.next1090, %n.vec1088
  br i1 %46, label %middle.block1082, label %vector.body1084, !llvm.loop !18

middle.block1082:                                 ; preds = %vector.body1084
  %cmp.n1092 = icmp eq i64 %indvars.iv21.i, %n.vec1088
  br i1 %cmp.n1092, label %for.inc6.i, label %for.body3.i46.preheader1159

for.body3.i46.preheader1159:                      ; preds = %for.body3.i46.preheader, %middle.block1082
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1088, %middle.block1082 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1159, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1159 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1082, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1108 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1108, label %for.body3.i60.preheader1158, label %vector.ph1109

vector.ph1109:                                    ; preds = %for.body3.i60.preheader
  %n.vec1111 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1109
  %index1112 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1113, %vector.body1107 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %index1112
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1116 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1116, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1113 = add i64 %index1112, 4
  %57 = icmp eq i64 %index.next1113, %n.vec1111
  br i1 %57, label %middle.block1105, label %vector.body1107, !llvm.loop !59

middle.block1105:                                 ; preds = %vector.body1107
  %cmp.n1115 = icmp eq i64 %indvars.iv21.i52, %n.vec1111
  br i1 %cmp.n1115, label %for.inc6.i63, label %for.body3.i60.preheader1158

for.body3.i60.preheader1158:                      ; preds = %for.body3.i60.preheader, %middle.block1105
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1111, %middle.block1105 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1158, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1158 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1105, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1134 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1134, label %for.body3.i99.preheader1157, label %vector.ph1135

vector.ph1135:                                    ; preds = %for.body3.i99.preheader
  %n.vec1137 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1135
  %index1138 = phi i64 [ 0, %vector.ph1135 ], [ %index.next1139, %vector.body1133 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %index1138
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1142 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1142, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1139 = add i64 %index1138, 4
  %68 = icmp eq i64 %index.next1139, %n.vec1137
  br i1 %68, label %middle.block1131, label %vector.body1133, !llvm.loop !61

middle.block1131:                                 ; preds = %vector.body1133
  %cmp.n1141 = icmp eq i64 %indvars.iv21.i91, %n.vec1137
  br i1 %cmp.n1141, label %for.inc6.i102, label %for.body3.i99.preheader1157

for.body3.i99.preheader1157:                      ; preds = %for.body3.i99.preheader, %middle.block1131
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1137, %middle.block1131 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1157, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1157 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1131, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call809, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1146 = phi i64 [ %indvar.next1147, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1146, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1148 = icmp ult i64 %88, 4
  br i1 %min.iters.check1148, label %polly.loop_header191.preheader, label %vector.ph1149

vector.ph1149:                                    ; preds = %polly.loop_header
  %n.vec1151 = and i64 %88, -4
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1149
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1153, %vector.body1145 ]
  %90 = shl nuw nsw i64 %index1152, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1156 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1156, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1153 = add i64 %index1152, 4
  %95 = icmp eq i64 %index.next1153, %n.vec1151
  br i1 %95, label %middle.block1143, label %vector.body1145, !llvm.loop !73

middle.block1143:                                 ; preds = %vector.body1145
  %cmp.n1155 = icmp eq i64 %88, %n.vec1151
  br i1 %cmp.n1155, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1143
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1151, %middle.block1143 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1143
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1147 = add i64 %indvar1146, 1
  br i1 %exitcond908.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr i8, i8* %malloccall, i64 8
  %96 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1 to double*
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr i8, i8* %malloccall, i64 16
  %97 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2 to double*
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr i8, i8* %malloccall, i64 24
  %98 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3 to double*
  %polly.access.Packed_MemRef_call1.us.1980 = getelementptr i8, i8* %malloccall, i64 9600
  %99 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1980 to double*
  %polly.access.Packed_MemRef_call1.us.1.1 = getelementptr i8, i8* %malloccall, i64 9608
  %100 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.1 to double*
  %polly.access.Packed_MemRef_call1.us.2.1 = getelementptr i8, i8* %malloccall, i64 9616
  %101 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.1 to double*
  %polly.access.Packed_MemRef_call1.us.3.1 = getelementptr i8, i8* %malloccall, i64 9624
  %102 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.1 to double*
  %polly.access.Packed_MemRef_call1.us.2984 = getelementptr i8, i8* %malloccall, i64 19200
  %103 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2984 to double*
  %polly.access.Packed_MemRef_call1.us.1.2 = getelementptr i8, i8* %malloccall, i64 19208
  %104 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.2 to double*
  %polly.access.Packed_MemRef_call1.us.2.2 = getelementptr i8, i8* %malloccall, i64 19216
  %105 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.2 to double*
  %polly.access.Packed_MemRef_call1.us.3.2 = getelementptr i8, i8* %malloccall, i64 19224
  %106 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.2 to double*
  %polly.access.Packed_MemRef_call1.us.3988 = getelementptr i8, i8* %malloccall, i64 28800
  %107 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3988 to double*
  %polly.access.Packed_MemRef_call1.us.1.3 = getelementptr i8, i8* %malloccall, i64 28808
  %108 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.3 to double*
  %polly.access.Packed_MemRef_call1.us.2.3 = getelementptr i8, i8* %malloccall, i64 28816
  %109 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.3 to double*
  %polly.access.Packed_MemRef_call1.us.3.3 = getelementptr i8, i8* %malloccall, i64 28824
  %110 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.3 to double*
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr i8, i8* %malloccall, i64 38400
  %111 = bitcast i8* %polly.access.Packed_MemRef_call1.us.4 to double*
  %polly.access.Packed_MemRef_call1.us.1.4 = getelementptr i8, i8* %malloccall, i64 38408
  %112 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.4 to double*
  %polly.access.Packed_MemRef_call1.us.2.4 = getelementptr i8, i8* %malloccall, i64 38416
  %113 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.4 to double*
  %polly.access.Packed_MemRef_call1.us.3.4 = getelementptr i8, i8* %malloccall, i64 38424
  %114 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.4 to double*
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr i8, i8* %malloccall, i64 48000
  %115 = bitcast i8* %polly.access.Packed_MemRef_call1.us.5 to double*
  %polly.access.Packed_MemRef_call1.us.1.5 = getelementptr i8, i8* %malloccall, i64 48008
  %116 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.5 to double*
  %polly.access.Packed_MemRef_call1.us.2.5 = getelementptr i8, i8* %malloccall, i64 48016
  %117 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.5 to double*
  %polly.access.Packed_MemRef_call1.us.3.5 = getelementptr i8, i8* %malloccall, i64 48024
  %118 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.5 to double*
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr i8, i8* %malloccall, i64 57600
  %119 = bitcast i8* %polly.access.Packed_MemRef_call1.us.6 to double*
  %polly.access.Packed_MemRef_call1.us.1.6 = getelementptr i8, i8* %malloccall, i64 57608
  %120 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.6 to double*
  %polly.access.Packed_MemRef_call1.us.2.6 = getelementptr i8, i8* %malloccall, i64 57616
  %121 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.6 to double*
  %polly.access.Packed_MemRef_call1.us.3.6 = getelementptr i8, i8* %malloccall, i64 57624
  %122 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.6 to double*
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr i8, i8* %malloccall, i64 67200
  %123 = bitcast i8* %polly.access.Packed_MemRef_call1.us.7 to double*
  %polly.access.Packed_MemRef_call1.us.1.7 = getelementptr i8, i8* %malloccall, i64 67208
  %124 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.7 to double*
  %polly.access.Packed_MemRef_call1.us.2.7 = getelementptr i8, i8* %malloccall, i64 67216
  %125 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.7 to double*
  %polly.access.Packed_MemRef_call1.us.3.7 = getelementptr i8, i8* %malloccall, i64 67224
  %126 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.7 to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %127
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond907.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %128 = shl nsw i64 %polly.indvar202, 3
  %129 = or i64 %128, 1
  %130 = or i64 %128, 2
  %131 = or i64 %128, 3
  %132 = or i64 %128, 4
  %133 = or i64 %128, 5
  %134 = or i64 %128, 6
  %135 = or i64 %128, 7
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next203, 125
  br i1 %exitcond906.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %136 = shl nsw i64 %polly.indvar208, 2
  %137 = mul nsw i64 %polly.indvar208, -4
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 4000
  %138 = or i64 %136, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %138, 1000
  %139 = or i64 %136, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %139, 1000
  %140 = or i64 %136, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %140, 1000
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 4000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %128
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us
  %141 = or i64 %136, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %141, 1000
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %128
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1
  %142 = or i64 %136, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %142, 1000
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %128
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2
  %143 = or i64 %136, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %143, 1000
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %128
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3
  %polly.access.add.call1231.us.1977 = add nuw nsw i64 %polly.access.mul.call1230.us, %129
  %polly.access.call1232.us.1978 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1977
  %polly.access.add.call1231.us.1.1 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %129
  %polly.access.call1232.us.1.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.1
  %polly.access.add.call1231.us.2.1 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %129
  %polly.access.call1232.us.2.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.1
  %polly.access.add.call1231.us.3.1 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %129
  %polly.access.call1232.us.3.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.1
  %polly.access.add.call1231.us.2981 = add nuw nsw i64 %polly.access.mul.call1230.us, %130
  %polly.access.call1232.us.2982 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2981
  %polly.access.add.call1231.us.1.2 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %130
  %polly.access.call1232.us.1.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.2
  %polly.access.add.call1231.us.2.2 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %130
  %polly.access.call1232.us.2.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.2
  %polly.access.add.call1231.us.3.2 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %130
  %polly.access.call1232.us.3.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.2
  %polly.access.add.call1231.us.3985 = add nuw nsw i64 %polly.access.mul.call1230.us, %131
  %polly.access.call1232.us.3986 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3985
  %polly.access.add.call1231.us.1.3 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %131
  %polly.access.call1232.us.1.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.3
  %polly.access.add.call1231.us.2.3 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %131
  %polly.access.call1232.us.2.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.3
  %polly.access.add.call1231.us.3.3 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %131
  %polly.access.call1232.us.3.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.3
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %polly.access.mul.call1230.us, %132
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.4
  %polly.access.add.call1231.us.1.4 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %132
  %polly.access.call1232.us.1.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.4
  %polly.access.add.call1231.us.2.4 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %132
  %polly.access.call1232.us.2.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.4
  %polly.access.add.call1231.us.3.4 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %132
  %polly.access.call1232.us.3.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.4
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %polly.access.mul.call1230.us, %133
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.5
  %polly.access.add.call1231.us.1.5 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %133
  %polly.access.call1232.us.1.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.5
  %polly.access.add.call1231.us.2.5 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %133
  %polly.access.call1232.us.2.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.5
  %polly.access.add.call1231.us.3.5 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %133
  %polly.access.call1232.us.3.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.5
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %polly.access.mul.call1230.us, %134
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.6
  %polly.access.add.call1231.us.1.6 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %134
  %polly.access.call1232.us.1.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.6
  %polly.access.add.call1231.us.2.6 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %134
  %polly.access.call1232.us.2.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.6
  %polly.access.add.call1231.us.3.6 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %134
  %polly.access.call1232.us.3.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.6
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %polly.access.mul.call1230.us, %135
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.7
  %polly.access.add.call1231.us.1.7 = add nuw nsw i64 %polly.access.mul.call1230.us.1, %135
  %polly.access.call1232.us.1.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.1.7
  %polly.access.add.call1231.us.2.7 = add nuw nsw i64 %polly.access.mul.call1230.us.2, %135
  %polly.access.call1232.us.2.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.2.7
  %polly.access.add.call1231.us.3.7 = add nuw nsw i64 %polly.access.mul.call1230.us.3, %135
  %polly.access.call1232.us.3.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.us.3.7
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond905.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit248 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %polly.indvar208, %polly.loop_header205 ]
  %144 = shl nsw i64 %polly.indvar214, 2
  %145 = add nsw i64 %144, %137
  %146 = icmp ugt i64 %145, 4
  %147 = select i1 %146, i64 %145, i64 4
  %148 = or i64 %145, 3
  %polly.loop_guard.not = icmp ugt i64 %147, %148
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us.preheader, label %polly.loop_header217

polly.loop_header217.us.preheader:                ; preds = %polly.loop_header211
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us, double* %Packed_MemRef_call1, align 8
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1, double* %96, align 8
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2, double* %97, align 8
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3, double* %98, align 8
  %polly.access.call1232.load.us.1979 = load double, double* %polly.access.call1232.us.1978, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1979, double* %99, align 8
  %polly.access.call1232.load.us.1.1 = load double, double* %polly.access.call1232.us.1.1, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.1, double* %100, align 8
  %polly.access.call1232.load.us.2.1 = load double, double* %polly.access.call1232.us.2.1, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.1, double* %101, align 8
  %polly.access.call1232.load.us.3.1 = load double, double* %polly.access.call1232.us.3.1, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.1, double* %102, align 8
  %polly.access.call1232.load.us.2983 = load double, double* %polly.access.call1232.us.2982, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2983, double* %103, align 8
  %polly.access.call1232.load.us.1.2 = load double, double* %polly.access.call1232.us.1.2, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.2, double* %104, align 8
  %polly.access.call1232.load.us.2.2 = load double, double* %polly.access.call1232.us.2.2, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.2, double* %105, align 8
  %polly.access.call1232.load.us.3.2 = load double, double* %polly.access.call1232.us.3.2, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.2, double* %106, align 8
  %polly.access.call1232.load.us.3987 = load double, double* %polly.access.call1232.us.3986, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3987, double* %107, align 8
  %polly.access.call1232.load.us.1.3 = load double, double* %polly.access.call1232.us.1.3, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.3, double* %108, align 8
  %polly.access.call1232.load.us.2.3 = load double, double* %polly.access.call1232.us.2.3, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.3, double* %109, align 8
  %polly.access.call1232.load.us.3.3 = load double, double* %polly.access.call1232.us.3.3, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.3, double* %110, align 8
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.4, double* %111, align 8
  %polly.access.call1232.load.us.1.4 = load double, double* %polly.access.call1232.us.1.4, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.4, double* %112, align 8
  %polly.access.call1232.load.us.2.4 = load double, double* %polly.access.call1232.us.2.4, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.4, double* %113, align 8
  %polly.access.call1232.load.us.3.4 = load double, double* %polly.access.call1232.us.3.4, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.4, double* %114, align 8
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.5, double* %115, align 8
  %polly.access.call1232.load.us.1.5 = load double, double* %polly.access.call1232.us.1.5, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.5, double* %116, align 8
  %polly.access.call1232.load.us.2.5 = load double, double* %polly.access.call1232.us.2.5, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.5, double* %117, align 8
  %polly.access.call1232.load.us.3.5 = load double, double* %polly.access.call1232.us.3.5, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.5, double* %118, align 8
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.6, double* %119, align 8
  %polly.access.call1232.load.us.1.6 = load double, double* %polly.access.call1232.us.1.6, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.6, double* %120, align 8
  %polly.access.call1232.load.us.2.6 = load double, double* %polly.access.call1232.us.2.6, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.6, double* %121, align 8
  %polly.access.call1232.load.us.3.6 = load double, double* %polly.access.call1232.us.3.6, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.6, double* %122, align 8
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.7, double* %123, align 8
  %polly.access.call1232.load.us.1.7 = load double, double* %polly.access.call1232.us.1.7, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.1.7, double* %124, align 8
  %polly.access.call1232.load.us.2.7 = load double, double* %polly.access.call1232.us.2.7, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.2.7, double* %125, align 8
  %polly.access.call1232.load.us.3.7 = load double, double* %polly.access.call1232.us.3.7, align 8, !alias.scope !70, !noalias !76
  store double %polly.access.call1232.load.us.3.7, double* %126, align 8
  br label %polly.loop_header246.preheader

polly.loop_exit248:                               ; preds = %polly.loop_exit260.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond904.not = icmp eq i64 %polly.indvar_next215, 300
  br i1 %exitcond904.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211 ]
  %149 = add nuw nsw i64 %polly.indvar220, %128
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %149
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !70, !noalias !76
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %149
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %149
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %149
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next221, 8
  br i1 %exitcond896.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_header217.us.preheader
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %150 = mul nsw i64 %polly.indvar214, 32000
  %151 = mul nsw i64 %polly.indvar214, 38400
  %indvars.iv.next900 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900, i64 3)
  %152 = or i64 %145, 1
  %153 = or i64 %144, 1
  %154 = mul nuw nsw i64 %153, 8000
  %155 = mul nuw nsw i64 %153, 9600
  %indvars.iv.next900.1 = add nuw nsw i64 %indvars.iv.next900, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next900.1, i64 3)
  %156 = or i64 %145, 2
  %157 = or i64 %144, 2
  %158 = mul nuw nsw i64 %157, 8000
  %159 = mul nuw nsw i64 %157, 9600
  %160 = or i64 %145, 3
  %161 = or i64 %144, 3
  %162 = mul nuw nsw i64 %161, 8000
  %163 = mul nuw nsw i64 %161, 9600
  br label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %147, %polly.loop_header217 ]
  %164 = add nuw nsw i64 %polly.indvar236, %136
  %polly.access.mul.call1240 = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %149
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %148
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit260.3
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit260.3 ], [ 0, %polly.loop_header246.preheader ]
  %165 = add nuw nsw i64 %polly.indvar249, %128
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar249, 1200
  %166 = shl i64 %165, 3
  %167 = add nuw nsw i64 %150, %166
  %scevgep268 = getelementptr i8, i8* %call2, i64 %167
  %scevgep268269 = bitcast i8* %scevgep268 to double*
  %_p_scalar_270 = load double, double* %scevgep268269, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275 = add nuw nsw i64 %145, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header258

polly.loop_exit260:                               ; preds = %polly.loop_header258
  %168 = add nuw nsw i64 %154, %166
  %scevgep268.1 = getelementptr i8, i8* %call2, i64 %168
  %scevgep268269.1 = bitcast i8* %scevgep268.1 to double*
  %_p_scalar_270.1 = load double, double* %scevgep268269.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.1 = add nuw nsw i64 %152, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header258.1

polly.loop_header258:                             ; preds = %polly.loop_header258, %polly.loop_header246
  %polly.indvar261 = phi i64 [ 0, %polly.loop_header246 ], [ %polly.indvar_next262, %polly.loop_header258 ]
  %169 = add nuw nsw i64 %polly.indvar261, %136
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar261, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call1266, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_270, %_p_scalar_267
  %170 = mul nuw nsw i64 %169, 8000
  %171 = add nuw nsw i64 %170, %166
  %scevgep271 = getelementptr i8, i8* %call2, i64 %171
  %scevgep271272 = bitcast i8* %scevgep271 to double*
  %_p_scalar_273 = load double, double* %scevgep271272, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %172 = shl i64 %169, 3
  %173 = add nuw nsw i64 %172, %151
  %scevgep278 = getelementptr i8, i8* %call, i64 %173
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262 = add nuw nsw i64 %polly.indvar261, 1
  %exitcond901.not = icmp eq i64 %polly.indvar261, %smin
  br i1 %exitcond901.not, label %polly.loop_exit260, label %polly.loop_header258

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header369

polly.exiting284:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* nonnull %malloccall285)
  br label %kernel_syr2k.exit90

polly.loop_header369:                             ; preds = %polly.loop_exit377, %polly.start283
  %indvar1120 = phi i64 [ %indvar.next1121, %polly.loop_exit377 ], [ 0, %polly.start283 ]
  %polly.indvar372 = phi i64 [ %polly.indvar_next373, %polly.loop_exit377 ], [ 1, %polly.start283 ]
  %174 = add i64 %indvar1120, 1
  %175 = mul nuw nsw i64 %polly.indvar372, 9600
  %scevgep381 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1122 = icmp ult i64 %174, 4
  br i1 %min.iters.check1122, label %polly.loop_header375.preheader, label %vector.ph1123

vector.ph1123:                                    ; preds = %polly.loop_header369
  %n.vec1125 = and i64 %174, -4
  br label %vector.body1119

vector.body1119:                                  ; preds = %vector.body1119, %vector.ph1123
  %index1126 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1127, %vector.body1119 ]
  %176 = shl nuw nsw i64 %index1126, 3
  %177 = getelementptr i8, i8* %scevgep381, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1130 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !78, !noalias !80
  %179 = fmul fast <4 x double> %wide.load1130, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !78, !noalias !80
  %index.next1127 = add i64 %index1126, 4
  %181 = icmp eq i64 %index.next1127, %n.vec1125
  br i1 %181, label %middle.block1117, label %vector.body1119, !llvm.loop !84

middle.block1117:                                 ; preds = %vector.body1119
  %cmp.n1129 = icmp eq i64 %174, %n.vec1125
  br i1 %cmp.n1129, label %polly.loop_exit377, label %polly.loop_header375.preheader

polly.loop_header375.preheader:                   ; preds = %polly.loop_header369, %middle.block1117
  %polly.indvar378.ph = phi i64 [ 0, %polly.loop_header369 ], [ %n.vec1125, %middle.block1117 ]
  br label %polly.loop_header375

polly.loop_exit377:                               ; preds = %polly.loop_header375, %middle.block1117
  %polly.indvar_next373 = add nuw nsw i64 %polly.indvar372, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next373, 1200
  %indvar.next1121 = add i64 %indvar1120, 1
  br i1 %exitcond925.not, label %polly.loop_header385.preheader, label %polly.loop_header369

polly.loop_header385.preheader:                   ; preds = %polly.loop_exit377
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  %polly.access.Packed_MemRef_call1286.us.1 = getelementptr i8, i8* %malloccall285, i64 8
  %182 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1 to double*
  %polly.access.Packed_MemRef_call1286.us.2 = getelementptr i8, i8* %malloccall285, i64 16
  %183 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2 to double*
  %polly.access.Packed_MemRef_call1286.us.3 = getelementptr i8, i8* %malloccall285, i64 24
  %184 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3 to double*
  %polly.access.Packed_MemRef_call1286.us.1992 = getelementptr i8, i8* %malloccall285, i64 9600
  %185 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1992 to double*
  %polly.access.Packed_MemRef_call1286.us.1.1 = getelementptr i8, i8* %malloccall285, i64 9608
  %186 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.1 to double*
  %polly.access.Packed_MemRef_call1286.us.2.1 = getelementptr i8, i8* %malloccall285, i64 9616
  %187 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.1 to double*
  %polly.access.Packed_MemRef_call1286.us.3.1 = getelementptr i8, i8* %malloccall285, i64 9624
  %188 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.1 to double*
  %polly.access.Packed_MemRef_call1286.us.2996 = getelementptr i8, i8* %malloccall285, i64 19200
  %189 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2996 to double*
  %polly.access.Packed_MemRef_call1286.us.1.2 = getelementptr i8, i8* %malloccall285, i64 19208
  %190 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.2 to double*
  %polly.access.Packed_MemRef_call1286.us.2.2 = getelementptr i8, i8* %malloccall285, i64 19216
  %191 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.2 to double*
  %polly.access.Packed_MemRef_call1286.us.3.2 = getelementptr i8, i8* %malloccall285, i64 19224
  %192 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.2 to double*
  %polly.access.Packed_MemRef_call1286.us.31000 = getelementptr i8, i8* %malloccall285, i64 28800
  %193 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.31000 to double*
  %polly.access.Packed_MemRef_call1286.us.1.3 = getelementptr i8, i8* %malloccall285, i64 28808
  %194 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.3 to double*
  %polly.access.Packed_MemRef_call1286.us.2.3 = getelementptr i8, i8* %malloccall285, i64 28816
  %195 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.3 to double*
  %polly.access.Packed_MemRef_call1286.us.3.3 = getelementptr i8, i8* %malloccall285, i64 28824
  %196 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.3 to double*
  %polly.access.Packed_MemRef_call1286.us.4 = getelementptr i8, i8* %malloccall285, i64 38400
  %197 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.4 to double*
  %polly.access.Packed_MemRef_call1286.us.1.4 = getelementptr i8, i8* %malloccall285, i64 38408
  %198 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.4 to double*
  %polly.access.Packed_MemRef_call1286.us.2.4 = getelementptr i8, i8* %malloccall285, i64 38416
  %199 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.4 to double*
  %polly.access.Packed_MemRef_call1286.us.3.4 = getelementptr i8, i8* %malloccall285, i64 38424
  %200 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.4 to double*
  %polly.access.Packed_MemRef_call1286.us.5 = getelementptr i8, i8* %malloccall285, i64 48000
  %201 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.5 to double*
  %polly.access.Packed_MemRef_call1286.us.1.5 = getelementptr i8, i8* %malloccall285, i64 48008
  %202 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.5 to double*
  %polly.access.Packed_MemRef_call1286.us.2.5 = getelementptr i8, i8* %malloccall285, i64 48016
  %203 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.5 to double*
  %polly.access.Packed_MemRef_call1286.us.3.5 = getelementptr i8, i8* %malloccall285, i64 48024
  %204 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.5 to double*
  %polly.access.Packed_MemRef_call1286.us.6 = getelementptr i8, i8* %malloccall285, i64 57600
  %205 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.6 to double*
  %polly.access.Packed_MemRef_call1286.us.1.6 = getelementptr i8, i8* %malloccall285, i64 57608
  %206 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.6 to double*
  %polly.access.Packed_MemRef_call1286.us.2.6 = getelementptr i8, i8* %malloccall285, i64 57616
  %207 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.6 to double*
  %polly.access.Packed_MemRef_call1286.us.3.6 = getelementptr i8, i8* %malloccall285, i64 57624
  %208 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.6 to double*
  %polly.access.Packed_MemRef_call1286.us.7 = getelementptr i8, i8* %malloccall285, i64 67200
  %209 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.7 to double*
  %polly.access.Packed_MemRef_call1286.us.1.7 = getelementptr i8, i8* %malloccall285, i64 67208
  %210 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.1.7 to double*
  %polly.access.Packed_MemRef_call1286.us.2.7 = getelementptr i8, i8* %malloccall285, i64 67216
  %211 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.2.7 to double*
  %polly.access.Packed_MemRef_call1286.us.3.7 = getelementptr i8, i8* %malloccall285, i64 67224
  %212 = bitcast i8* %polly.access.Packed_MemRef_call1286.us.3.7 to double*
  br label %polly.loop_header385

polly.loop_header375:                             ; preds = %polly.loop_header375.preheader, %polly.loop_header375
  %polly.indvar378 = phi i64 [ %polly.indvar_next379, %polly.loop_header375 ], [ %polly.indvar378.ph, %polly.loop_header375.preheader ]
  %213 = shl nuw nsw i64 %polly.indvar378, 3
  %scevgep382 = getelementptr i8, i8* %scevgep381, i64 %213
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_384, 1.200000e+00
  store double %p_mul.i57, double* %scevgep382383, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next379 = add nuw nsw i64 %polly.indvar378, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next379, %polly.indvar372
  br i1 %exitcond924.not, label %polly.loop_exit377, label %polly.loop_header375, !llvm.loop !85

polly.loop_header385:                             ; preds = %polly.loop_header385.preheader, %polly.loop_exit393
  %polly.indvar388 = phi i64 [ %polly.indvar_next389, %polly.loop_exit393 ], [ 0, %polly.loop_header385.preheader ]
  %214 = shl nsw i64 %polly.indvar388, 3
  %215 = or i64 %214, 1
  %216 = or i64 %214, 2
  %217 = or i64 %214, 3
  %218 = or i64 %214, 4
  %219 = or i64 %214, 5
  %220 = or i64 %214, 6
  %221 = or i64 %214, 7
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit399
  %polly.indvar_next389 = add nuw nsw i64 %polly.indvar388, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next389, 125
  br i1 %exitcond923.not, label %polly.exiting284, label %polly.loop_header385

polly.loop_header391:                             ; preds = %polly.loop_exit399, %polly.loop_header385
  %polly.indvar394 = phi i64 [ 0, %polly.loop_header385 ], [ %polly.indvar_next395, %polly.loop_exit399 ]
  %222 = shl nsw i64 %polly.indvar394, 2
  %223 = mul nsw i64 %polly.indvar394, -4
  %polly.access.mul.call1416 = mul nsw i64 %polly.indvar394, 4000
  %224 = or i64 %222, 1
  %polly.access.mul.call1416.1 = mul nuw nsw i64 %224, 1000
  %225 = or i64 %222, 2
  %polly.access.mul.call1416.2 = mul nuw nsw i64 %225, 1000
  %226 = or i64 %222, 3
  %polly.access.mul.call1416.3 = mul nuw nsw i64 %226, 1000
  %polly.access.mul.call1416.us = mul nsw i64 %polly.indvar394, 4000
  %polly.access.add.call1417.us = add nuw nsw i64 %polly.access.mul.call1416.us, %214
  %polly.access.call1418.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us
  %227 = or i64 %222, 1
  %polly.access.mul.call1416.us.1 = mul nuw nsw i64 %227, 1000
  %polly.access.add.call1417.us.1 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %214
  %polly.access.call1418.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1
  %228 = or i64 %222, 2
  %polly.access.mul.call1416.us.2 = mul nuw nsw i64 %228, 1000
  %polly.access.add.call1417.us.2 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %214
  %polly.access.call1418.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2
  %229 = or i64 %222, 3
  %polly.access.mul.call1416.us.3 = mul nuw nsw i64 %229, 1000
  %polly.access.add.call1417.us.3 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %214
  %polly.access.call1418.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3
  %polly.access.add.call1417.us.1989 = add nuw nsw i64 %polly.access.mul.call1416.us, %215
  %polly.access.call1418.us.1990 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1989
  %polly.access.add.call1417.us.1.1 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %215
  %polly.access.call1418.us.1.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.1
  %polly.access.add.call1417.us.2.1 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %215
  %polly.access.call1418.us.2.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.1
  %polly.access.add.call1417.us.3.1 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %215
  %polly.access.call1418.us.3.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.1
  %polly.access.add.call1417.us.2993 = add nuw nsw i64 %polly.access.mul.call1416.us, %216
  %polly.access.call1418.us.2994 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2993
  %polly.access.add.call1417.us.1.2 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %216
  %polly.access.call1418.us.1.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.2
  %polly.access.add.call1417.us.2.2 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %216
  %polly.access.call1418.us.2.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.2
  %polly.access.add.call1417.us.3.2 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %216
  %polly.access.call1418.us.3.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.2
  %polly.access.add.call1417.us.3997 = add nuw nsw i64 %polly.access.mul.call1416.us, %217
  %polly.access.call1418.us.3998 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3997
  %polly.access.add.call1417.us.1.3 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %217
  %polly.access.call1418.us.1.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.3
  %polly.access.add.call1417.us.2.3 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %217
  %polly.access.call1418.us.2.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.3
  %polly.access.add.call1417.us.3.3 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %217
  %polly.access.call1418.us.3.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.3
  %polly.access.add.call1417.us.4 = add nuw nsw i64 %polly.access.mul.call1416.us, %218
  %polly.access.call1418.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.4
  %polly.access.add.call1417.us.1.4 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %218
  %polly.access.call1418.us.1.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.4
  %polly.access.add.call1417.us.2.4 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %218
  %polly.access.call1418.us.2.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.4
  %polly.access.add.call1417.us.3.4 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %218
  %polly.access.call1418.us.3.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.4
  %polly.access.add.call1417.us.5 = add nuw nsw i64 %polly.access.mul.call1416.us, %219
  %polly.access.call1418.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.5
  %polly.access.add.call1417.us.1.5 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %219
  %polly.access.call1418.us.1.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.5
  %polly.access.add.call1417.us.2.5 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %219
  %polly.access.call1418.us.2.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.5
  %polly.access.add.call1417.us.3.5 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %219
  %polly.access.call1418.us.3.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.5
  %polly.access.add.call1417.us.6 = add nuw nsw i64 %polly.access.mul.call1416.us, %220
  %polly.access.call1418.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.6
  %polly.access.add.call1417.us.1.6 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %220
  %polly.access.call1418.us.1.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.6
  %polly.access.add.call1417.us.2.6 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %220
  %polly.access.call1418.us.2.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.6
  %polly.access.add.call1417.us.3.6 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %220
  %polly.access.call1418.us.3.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.6
  %polly.access.add.call1417.us.7 = add nuw nsw i64 %polly.access.mul.call1416.us, %221
  %polly.access.call1418.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.7
  %polly.access.add.call1417.us.1.7 = add nuw nsw i64 %polly.access.mul.call1416.us.1, %221
  %polly.access.call1418.us.1.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.1.7
  %polly.access.add.call1417.us.2.7 = add nuw nsw i64 %polly.access.mul.call1416.us.2, %221
  %polly.access.call1418.us.2.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.2.7
  %polly.access.add.call1417.us.3.7 = add nuw nsw i64 %polly.access.mul.call1416.us.3, %221
  %polly.access.call1418.us.3.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.us.3.7
  br label %polly.loop_header397

polly.loop_exit399:                               ; preds = %polly.loop_exit436
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next395, 300
  br i1 %exitcond922.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header397:                             ; preds = %polly.loop_exit436, %polly.loop_header391
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %polly.loop_exit436 ], [ 0, %polly.loop_header391 ]
  %polly.indvar400 = phi i64 [ %polly.indvar_next401, %polly.loop_exit436 ], [ %polly.indvar394, %polly.loop_header391 ]
  %230 = shl nsw i64 %polly.indvar400, 2
  %231 = add nsw i64 %230, %223
  %232 = icmp ugt i64 %231, 4
  %233 = select i1 %232, i64 %231, i64 4
  %234 = or i64 %231, 3
  %polly.loop_guard423.not = icmp ugt i64 %233, %234
  br i1 %polly.loop_guard423.not, label %polly.loop_header403.us.preheader, label %polly.loop_header403

polly.loop_header403.us.preheader:                ; preds = %polly.loop_header397
  %polly.access.call1418.load.us = load double, double* %polly.access.call1418.us, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us, double* %Packed_MemRef_call1286, align 8
  %polly.access.call1418.load.us.1 = load double, double* %polly.access.call1418.us.1, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1, double* %182, align 8
  %polly.access.call1418.load.us.2 = load double, double* %polly.access.call1418.us.2, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2, double* %183, align 8
  %polly.access.call1418.load.us.3 = load double, double* %polly.access.call1418.us.3, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3, double* %184, align 8
  %polly.access.call1418.load.us.1991 = load double, double* %polly.access.call1418.us.1990, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1991, double* %185, align 8
  %polly.access.call1418.load.us.1.1 = load double, double* %polly.access.call1418.us.1.1, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.1, double* %186, align 8
  %polly.access.call1418.load.us.2.1 = load double, double* %polly.access.call1418.us.2.1, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.1, double* %187, align 8
  %polly.access.call1418.load.us.3.1 = load double, double* %polly.access.call1418.us.3.1, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.1, double* %188, align 8
  %polly.access.call1418.load.us.2995 = load double, double* %polly.access.call1418.us.2994, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2995, double* %189, align 8
  %polly.access.call1418.load.us.1.2 = load double, double* %polly.access.call1418.us.1.2, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.2, double* %190, align 8
  %polly.access.call1418.load.us.2.2 = load double, double* %polly.access.call1418.us.2.2, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.2, double* %191, align 8
  %polly.access.call1418.load.us.3.2 = load double, double* %polly.access.call1418.us.3.2, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.2, double* %192, align 8
  %polly.access.call1418.load.us.3999 = load double, double* %polly.access.call1418.us.3998, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3999, double* %193, align 8
  %polly.access.call1418.load.us.1.3 = load double, double* %polly.access.call1418.us.1.3, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.3, double* %194, align 8
  %polly.access.call1418.load.us.2.3 = load double, double* %polly.access.call1418.us.2.3, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.3, double* %195, align 8
  %polly.access.call1418.load.us.3.3 = load double, double* %polly.access.call1418.us.3.3, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.3, double* %196, align 8
  %polly.access.call1418.load.us.4 = load double, double* %polly.access.call1418.us.4, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.4, double* %197, align 8
  %polly.access.call1418.load.us.1.4 = load double, double* %polly.access.call1418.us.1.4, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.4, double* %198, align 8
  %polly.access.call1418.load.us.2.4 = load double, double* %polly.access.call1418.us.2.4, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.4, double* %199, align 8
  %polly.access.call1418.load.us.3.4 = load double, double* %polly.access.call1418.us.3.4, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.4, double* %200, align 8
  %polly.access.call1418.load.us.5 = load double, double* %polly.access.call1418.us.5, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.5, double* %201, align 8
  %polly.access.call1418.load.us.1.5 = load double, double* %polly.access.call1418.us.1.5, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.5, double* %202, align 8
  %polly.access.call1418.load.us.2.5 = load double, double* %polly.access.call1418.us.2.5, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.5, double* %203, align 8
  %polly.access.call1418.load.us.3.5 = load double, double* %polly.access.call1418.us.3.5, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.5, double* %204, align 8
  %polly.access.call1418.load.us.6 = load double, double* %polly.access.call1418.us.6, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.6, double* %205, align 8
  %polly.access.call1418.load.us.1.6 = load double, double* %polly.access.call1418.us.1.6, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.6, double* %206, align 8
  %polly.access.call1418.load.us.2.6 = load double, double* %polly.access.call1418.us.2.6, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.6, double* %207, align 8
  %polly.access.call1418.load.us.3.6 = load double, double* %polly.access.call1418.us.3.6, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.6, double* %208, align 8
  %polly.access.call1418.load.us.7 = load double, double* %polly.access.call1418.us.7, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.7, double* %209, align 8
  %polly.access.call1418.load.us.1.7 = load double, double* %polly.access.call1418.us.1.7, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.1.7, double* %210, align 8
  %polly.access.call1418.load.us.2.7 = load double, double* %polly.access.call1418.us.2.7, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.2.7, double* %211, align 8
  %polly.access.call1418.load.us.3.7 = load double, double* %polly.access.call1418.us.3.7, align 8, !alias.scope !81, !noalias !86
  store double %polly.access.call1418.load.us.3.7, double* %212, align 8
  br label %polly.loop_header434.preheader

polly.loop_exit436:                               ; preds = %polly.loop_exit448.3
  %polly.indvar_next401 = add nuw nsw i64 %polly.indvar400, 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 4
  %exitcond921.not = icmp eq i64 %polly.indvar_next401, 300
  br i1 %exitcond921.not, label %polly.loop_exit399, label %polly.loop_header397

polly.loop_header403:                             ; preds = %polly.loop_header397, %polly.loop_exit422
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit422 ], [ 0, %polly.loop_header397 ]
  %235 = add nuw nsw i64 %polly.indvar406, %214
  %polly.access.mul.Packed_MemRef_call1286 = mul nuw nsw i64 %polly.indvar406, 1200
  %polly.access.add.call1417 = add nuw nsw i64 %polly.access.mul.call1416, %235
  %polly.access.call1418 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417
  %polly.access.call1418.load = load double, double* %polly.access.call1418, align 8, !alias.scope !81, !noalias !86
  %polly.access.Packed_MemRef_call1286 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.mul.Packed_MemRef_call1286
  store double %polly.access.call1418.load, double* %polly.access.Packed_MemRef_call1286, align 8
  %polly.access.add.call1417.1 = add nuw nsw i64 %polly.access.mul.call1416.1, %235
  %polly.access.call1418.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.1
  %polly.access.call1418.load.1 = load double, double* %polly.access.call1418.1, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.1 = or i64 %polly.access.mul.Packed_MemRef_call1286, 1
  %polly.access.Packed_MemRef_call1286.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.1
  store double %polly.access.call1418.load.1, double* %polly.access.Packed_MemRef_call1286.1, align 8
  %polly.access.add.call1417.2 = add nuw nsw i64 %polly.access.mul.call1416.2, %235
  %polly.access.call1418.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.2
  %polly.access.call1418.load.2 = load double, double* %polly.access.call1418.2, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.2 = or i64 %polly.access.mul.Packed_MemRef_call1286, 2
  %polly.access.Packed_MemRef_call1286.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.2
  store double %polly.access.call1418.load.2, double* %polly.access.Packed_MemRef_call1286.2, align 8
  %polly.access.add.call1417.3 = add nuw nsw i64 %polly.access.mul.call1416.3, %235
  %polly.access.call1418.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1417.3
  %polly.access.call1418.load.3 = load double, double* %polly.access.call1418.3, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286.3 = or i64 %polly.access.mul.Packed_MemRef_call1286, 3
  %polly.access.Packed_MemRef_call1286.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286.3
  store double %polly.access.call1418.load.3, double* %polly.access.Packed_MemRef_call1286.3, align 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next407, 8
  br i1 %exitcond910.not, label %polly.loop_header434.preheader, label %polly.loop_header403

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit422, %polly.loop_header403.us.preheader
  %smin917 = call i64 @llvm.smin.i64(i64 %indvars.iv913, i64 3)
  %236 = mul nsw i64 %polly.indvar400, 32000
  %237 = mul nsw i64 %polly.indvar400, 38400
  %indvars.iv.next916 = or i64 %indvars.iv913, 1
  %smin917.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916, i64 3)
  %238 = or i64 %231, 1
  %239 = or i64 %230, 1
  %240 = mul nuw nsw i64 %239, 8000
  %241 = mul nuw nsw i64 %239, 9600
  %indvars.iv.next916.1 = add nuw nsw i64 %indvars.iv.next916, 1
  %smin917.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next916.1, i64 3)
  %242 = or i64 %231, 2
  %243 = or i64 %230, 2
  %244 = mul nuw nsw i64 %243, 8000
  %245 = mul nuw nsw i64 %243, 9600
  %246 = or i64 %231, 3
  %247 = or i64 %230, 3
  %248 = mul nuw nsw i64 %247, 8000
  %249 = mul nuw nsw i64 %247, 9600
  br label %polly.loop_header434

polly.loop_header420:                             ; preds = %polly.loop_header403, %polly.loop_header420
  %polly.indvar424 = phi i64 [ %polly.indvar_next425, %polly.loop_header420 ], [ %233, %polly.loop_header403 ]
  %250 = add nuw nsw i64 %polly.indvar424, %222
  %polly.access.mul.call1428 = mul nuw nsw i64 %250, 1000
  %polly.access.add.call1429 = add nuw nsw i64 %polly.access.mul.call1428, %235
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1286432 = add nuw nsw i64 %polly.indvar424, %polly.access.mul.Packed_MemRef_call1286
  %polly.access.Packed_MemRef_call1286433 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1286433, align 8
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %polly.loop_cond426.not.not = icmp ult i64 %polly.indvar424, %234
  br i1 %polly.loop_cond426.not.not, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit448.3
  %polly.indvar437 = phi i64 [ %polly.indvar_next438, %polly.loop_exit448.3 ], [ 0, %polly.loop_header434.preheader ]
  %251 = add nuw nsw i64 %polly.indvar437, %214
  %polly.access.mul.Packed_MemRef_call1286452 = mul nuw nsw i64 %polly.indvar437, 1200
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %236, %252
  %scevgep456 = getelementptr i8, i8* %call2, i64 %253
  %scevgep456457 = bitcast i8* %scevgep456 to double*
  %_p_scalar_458 = load double, double* %scevgep456457, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463 = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1286464, align 8
  br label %polly.loop_header446

polly.loop_exit448:                               ; preds = %polly.loop_header446
  %254 = add nuw nsw i64 %240, %252
  %scevgep456.1 = getelementptr i8, i8* %call2, i64 %254
  %scevgep456457.1 = bitcast i8* %scevgep456.1 to double*
  %_p_scalar_458.1 = load double, double* %scevgep456457.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.1 = add nuw nsw i64 %238, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1286464.1, align 8
  br label %polly.loop_header446.1

polly.loop_header446:                             ; preds = %polly.loop_header446, %polly.loop_header434
  %polly.indvar449 = phi i64 [ 0, %polly.loop_header434 ], [ %polly.indvar_next450, %polly.loop_header446 ]
  %255 = add nuw nsw i64 %polly.indvar449, %222
  %polly.access.add.Packed_MemRef_call1286453 = add nuw nsw i64 %polly.indvar449, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453
  %_p_scalar_455 = load double, double* %polly.access.Packed_MemRef_call1286454, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_458, %_p_scalar_455
  %256 = mul nuw nsw i64 %255, 8000
  %257 = add nuw nsw i64 %256, %252
  %scevgep459 = getelementptr i8, i8* %call2, i64 %257
  %scevgep459460 = bitcast i8* %scevgep459 to double*
  %_p_scalar_461 = load double, double* %scevgep459460, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %258 = shl i64 %255, 3
  %259 = add nuw nsw i64 %258, %237
  %scevgep466 = getelementptr i8, i8* %call, i64 %259
  %scevgep466467 = bitcast i8* %scevgep466 to double*
  %_p_scalar_468 = load double, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_468
  store double %p_add42.i79, double* %scevgep466467, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond918.not = icmp eq i64 %polly.indvar449, %smin917
  br i1 %exitcond918.not, label %polly.loop_exit448, label %polly.loop_header446

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(76800) i8* @malloc(i64 76800) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* nonnull %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %260 = add i64 %indvar, 1
  %261 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %261
  %min.iters.check1096 = icmp ult i64 %260, 4
  br i1 %min.iters.check1096, label %polly.loop_header563.preheader, label %vector.ph1097

vector.ph1097:                                    ; preds = %polly.loop_header557
  %n.vec1099 = and i64 %260, -4
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1097
  %index1100 = phi i64 [ 0, %vector.ph1097 ], [ %index.next1101, %vector.body1095 ]
  %262 = shl nuw nsw i64 %index1100, 3
  %263 = getelementptr i8, i8* %scevgep569, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  %wide.load1104 = load <4 x double>, <4 x double>* %264, align 8, !alias.scope !88, !noalias !90
  %265 = fmul fast <4 x double> %wide.load1104, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %266 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %265, <4 x double>* %266, align 8, !alias.scope !88, !noalias !90
  %index.next1101 = add i64 %index1100, 4
  %267 = icmp eq i64 %index.next1101, %n.vec1099
  br i1 %267, label %middle.block1093, label %vector.body1095, !llvm.loop !94

middle.block1093:                                 ; preds = %vector.body1095
  %cmp.n1103 = icmp eq i64 %260, %n.vec1099
  br i1 %cmp.n1103, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1093
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1099, %middle.block1093 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1093
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond942.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr i8, i8* %malloccall473, i64 8
  %268 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1 to double*
  %polly.access.Packed_MemRef_call1474.us.2 = getelementptr i8, i8* %malloccall473, i64 16
  %269 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2 to double*
  %polly.access.Packed_MemRef_call1474.us.3 = getelementptr i8, i8* %malloccall473, i64 24
  %270 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3 to double*
  %polly.access.Packed_MemRef_call1474.us.11004 = getelementptr i8, i8* %malloccall473, i64 9600
  %271 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.11004 to double*
  %polly.access.Packed_MemRef_call1474.us.1.1 = getelementptr i8, i8* %malloccall473, i64 9608
  %272 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.1 to double*
  %polly.access.Packed_MemRef_call1474.us.2.1 = getelementptr i8, i8* %malloccall473, i64 9616
  %273 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.1 to double*
  %polly.access.Packed_MemRef_call1474.us.3.1 = getelementptr i8, i8* %malloccall473, i64 9624
  %274 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.1 to double*
  %polly.access.Packed_MemRef_call1474.us.21008 = getelementptr i8, i8* %malloccall473, i64 19200
  %275 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.21008 to double*
  %polly.access.Packed_MemRef_call1474.us.1.2 = getelementptr i8, i8* %malloccall473, i64 19208
  %276 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.2 to double*
  %polly.access.Packed_MemRef_call1474.us.2.2 = getelementptr i8, i8* %malloccall473, i64 19216
  %277 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.2 to double*
  %polly.access.Packed_MemRef_call1474.us.3.2 = getelementptr i8, i8* %malloccall473, i64 19224
  %278 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.2 to double*
  %polly.access.Packed_MemRef_call1474.us.31012 = getelementptr i8, i8* %malloccall473, i64 28800
  %279 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.31012 to double*
  %polly.access.Packed_MemRef_call1474.us.1.3 = getelementptr i8, i8* %malloccall473, i64 28808
  %280 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.3 to double*
  %polly.access.Packed_MemRef_call1474.us.2.3 = getelementptr i8, i8* %malloccall473, i64 28816
  %281 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.3 to double*
  %polly.access.Packed_MemRef_call1474.us.3.3 = getelementptr i8, i8* %malloccall473, i64 28824
  %282 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.3 to double*
  %polly.access.Packed_MemRef_call1474.us.4 = getelementptr i8, i8* %malloccall473, i64 38400
  %283 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.4 to double*
  %polly.access.Packed_MemRef_call1474.us.1.4 = getelementptr i8, i8* %malloccall473, i64 38408
  %284 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.4 to double*
  %polly.access.Packed_MemRef_call1474.us.2.4 = getelementptr i8, i8* %malloccall473, i64 38416
  %285 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.4 to double*
  %polly.access.Packed_MemRef_call1474.us.3.4 = getelementptr i8, i8* %malloccall473, i64 38424
  %286 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.4 to double*
  %polly.access.Packed_MemRef_call1474.us.5 = getelementptr i8, i8* %malloccall473, i64 48000
  %287 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.5 to double*
  %polly.access.Packed_MemRef_call1474.us.1.5 = getelementptr i8, i8* %malloccall473, i64 48008
  %288 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.5 to double*
  %polly.access.Packed_MemRef_call1474.us.2.5 = getelementptr i8, i8* %malloccall473, i64 48016
  %289 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.5 to double*
  %polly.access.Packed_MemRef_call1474.us.3.5 = getelementptr i8, i8* %malloccall473, i64 48024
  %290 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.5 to double*
  %polly.access.Packed_MemRef_call1474.us.6 = getelementptr i8, i8* %malloccall473, i64 57600
  %291 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.6 to double*
  %polly.access.Packed_MemRef_call1474.us.1.6 = getelementptr i8, i8* %malloccall473, i64 57608
  %292 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.6 to double*
  %polly.access.Packed_MemRef_call1474.us.2.6 = getelementptr i8, i8* %malloccall473, i64 57616
  %293 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.6 to double*
  %polly.access.Packed_MemRef_call1474.us.3.6 = getelementptr i8, i8* %malloccall473, i64 57624
  %294 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.6 to double*
  %polly.access.Packed_MemRef_call1474.us.7 = getelementptr i8, i8* %malloccall473, i64 67200
  %295 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.7 to double*
  %polly.access.Packed_MemRef_call1474.us.1.7 = getelementptr i8, i8* %malloccall473, i64 67208
  %296 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.1.7 to double*
  %polly.access.Packed_MemRef_call1474.us.2.7 = getelementptr i8, i8* %malloccall473, i64 67216
  %297 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.2.7 to double*
  %polly.access.Packed_MemRef_call1474.us.3.7 = getelementptr i8, i8* %malloccall473, i64 67224
  %298 = bitcast i8* %polly.access.Packed_MemRef_call1474.us.3.7 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %299 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %299
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond941.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !95

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ 0, %polly.loop_header573.preheader ]
  %300 = shl nsw i64 %polly.indvar576, 3
  %301 = or i64 %300, 1
  %302 = or i64 %300, 2
  %303 = or i64 %300, 3
  %304 = or i64 %300, 4
  %305 = or i64 %300, 5
  %306 = or i64 %300, 6
  %307 = or i64 %300, 7
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond940.not = icmp eq i64 %polly.indvar_next577, 125
  br i1 %exitcond940.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %308 = shl nsw i64 %polly.indvar582, 2
  %309 = mul nsw i64 %polly.indvar582, -4
  %polly.access.mul.call1604 = mul nsw i64 %polly.indvar582, 4000
  %310 = or i64 %308, 1
  %polly.access.mul.call1604.1 = mul nuw nsw i64 %310, 1000
  %311 = or i64 %308, 2
  %polly.access.mul.call1604.2 = mul nuw nsw i64 %311, 1000
  %312 = or i64 %308, 3
  %polly.access.mul.call1604.3 = mul nuw nsw i64 %312, 1000
  %polly.access.mul.call1604.us = mul nsw i64 %polly.indvar582, 4000
  %polly.access.add.call1605.us = add nuw nsw i64 %polly.access.mul.call1604.us, %300
  %polly.access.call1606.us = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us
  %313 = or i64 %308, 1
  %polly.access.mul.call1604.us.1 = mul nuw nsw i64 %313, 1000
  %polly.access.add.call1605.us.1 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %300
  %polly.access.call1606.us.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1
  %314 = or i64 %308, 2
  %polly.access.mul.call1604.us.2 = mul nuw nsw i64 %314, 1000
  %polly.access.add.call1605.us.2 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %300
  %polly.access.call1606.us.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2
  %315 = or i64 %308, 3
  %polly.access.mul.call1604.us.3 = mul nuw nsw i64 %315, 1000
  %polly.access.add.call1605.us.3 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %300
  %polly.access.call1606.us.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3
  %polly.access.add.call1605.us.11001 = add nuw nsw i64 %polly.access.mul.call1604.us, %301
  %polly.access.call1606.us.11002 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.11001
  %polly.access.add.call1605.us.1.1 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %301
  %polly.access.call1606.us.1.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.1
  %polly.access.add.call1605.us.2.1 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %301
  %polly.access.call1606.us.2.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.1
  %polly.access.add.call1605.us.3.1 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %301
  %polly.access.call1606.us.3.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.1
  %polly.access.add.call1605.us.21005 = add nuw nsw i64 %polly.access.mul.call1604.us, %302
  %polly.access.call1606.us.21006 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.21005
  %polly.access.add.call1605.us.1.2 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %302
  %polly.access.call1606.us.1.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.2
  %polly.access.add.call1605.us.2.2 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %302
  %polly.access.call1606.us.2.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.2
  %polly.access.add.call1605.us.3.2 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %302
  %polly.access.call1606.us.3.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.2
  %polly.access.add.call1605.us.31009 = add nuw nsw i64 %polly.access.mul.call1604.us, %303
  %polly.access.call1606.us.31010 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.31009
  %polly.access.add.call1605.us.1.3 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %303
  %polly.access.call1606.us.1.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.3
  %polly.access.add.call1605.us.2.3 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %303
  %polly.access.call1606.us.2.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.3
  %polly.access.add.call1605.us.3.3 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %303
  %polly.access.call1606.us.3.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.3
  %polly.access.add.call1605.us.4 = add nuw nsw i64 %polly.access.mul.call1604.us, %304
  %polly.access.call1606.us.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.4
  %polly.access.add.call1605.us.1.4 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %304
  %polly.access.call1606.us.1.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.4
  %polly.access.add.call1605.us.2.4 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %304
  %polly.access.call1606.us.2.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.4
  %polly.access.add.call1605.us.3.4 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %304
  %polly.access.call1606.us.3.4 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.4
  %polly.access.add.call1605.us.5 = add nuw nsw i64 %polly.access.mul.call1604.us, %305
  %polly.access.call1606.us.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.5
  %polly.access.add.call1605.us.1.5 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %305
  %polly.access.call1606.us.1.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.5
  %polly.access.add.call1605.us.2.5 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %305
  %polly.access.call1606.us.2.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.5
  %polly.access.add.call1605.us.3.5 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %305
  %polly.access.call1606.us.3.5 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.5
  %polly.access.add.call1605.us.6 = add nuw nsw i64 %polly.access.mul.call1604.us, %306
  %polly.access.call1606.us.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.6
  %polly.access.add.call1605.us.1.6 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %306
  %polly.access.call1606.us.1.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.6
  %polly.access.add.call1605.us.2.6 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %306
  %polly.access.call1606.us.2.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.6
  %polly.access.add.call1605.us.3.6 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %306
  %polly.access.call1606.us.3.6 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.6
  %polly.access.add.call1605.us.7 = add nuw nsw i64 %polly.access.mul.call1604.us, %307
  %polly.access.call1606.us.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.7
  %polly.access.add.call1605.us.1.7 = add nuw nsw i64 %polly.access.mul.call1604.us.1, %307
  %polly.access.call1606.us.1.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.1.7
  %polly.access.add.call1605.us.2.7 = add nuw nsw i64 %polly.access.mul.call1604.us.2, %307
  %polly.access.call1606.us.2.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.2.7
  %polly.access.add.call1605.us.3.7 = add nuw nsw i64 %polly.access.mul.call1604.us.3, %307
  %polly.access.call1606.us.3.7 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.us.3.7
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit624
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next583, 300
  br i1 %exitcond939.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit624, %polly.loop_header579
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %polly.loop_exit624 ], [ 0, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit624 ], [ %polly.indvar582, %polly.loop_header579 ]
  %316 = shl nsw i64 %polly.indvar588, 2
  %317 = add nsw i64 %316, %309
  %318 = icmp ugt i64 %317, 4
  %319 = select i1 %318, i64 %317, i64 4
  %320 = or i64 %317, 3
  %polly.loop_guard611.not = icmp ugt i64 %319, %320
  br i1 %polly.loop_guard611.not, label %polly.loop_header591.us.preheader, label %polly.loop_header591

polly.loop_header591.us.preheader:                ; preds = %polly.loop_header585
  %polly.access.call1606.load.us = load double, double* %polly.access.call1606.us, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us, double* %Packed_MemRef_call1474, align 8
  %polly.access.call1606.load.us.1 = load double, double* %polly.access.call1606.us.1, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1, double* %268, align 8
  %polly.access.call1606.load.us.2 = load double, double* %polly.access.call1606.us.2, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2, double* %269, align 8
  %polly.access.call1606.load.us.3 = load double, double* %polly.access.call1606.us.3, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3, double* %270, align 8
  %polly.access.call1606.load.us.11003 = load double, double* %polly.access.call1606.us.11002, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.11003, double* %271, align 8
  %polly.access.call1606.load.us.1.1 = load double, double* %polly.access.call1606.us.1.1, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.1, double* %272, align 8
  %polly.access.call1606.load.us.2.1 = load double, double* %polly.access.call1606.us.2.1, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.1, double* %273, align 8
  %polly.access.call1606.load.us.3.1 = load double, double* %polly.access.call1606.us.3.1, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.1, double* %274, align 8
  %polly.access.call1606.load.us.21007 = load double, double* %polly.access.call1606.us.21006, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.21007, double* %275, align 8
  %polly.access.call1606.load.us.1.2 = load double, double* %polly.access.call1606.us.1.2, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.2, double* %276, align 8
  %polly.access.call1606.load.us.2.2 = load double, double* %polly.access.call1606.us.2.2, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.2, double* %277, align 8
  %polly.access.call1606.load.us.3.2 = load double, double* %polly.access.call1606.us.3.2, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.2, double* %278, align 8
  %polly.access.call1606.load.us.31011 = load double, double* %polly.access.call1606.us.31010, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.31011, double* %279, align 8
  %polly.access.call1606.load.us.1.3 = load double, double* %polly.access.call1606.us.1.3, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.3, double* %280, align 8
  %polly.access.call1606.load.us.2.3 = load double, double* %polly.access.call1606.us.2.3, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.3, double* %281, align 8
  %polly.access.call1606.load.us.3.3 = load double, double* %polly.access.call1606.us.3.3, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.3, double* %282, align 8
  %polly.access.call1606.load.us.4 = load double, double* %polly.access.call1606.us.4, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.4, double* %283, align 8
  %polly.access.call1606.load.us.1.4 = load double, double* %polly.access.call1606.us.1.4, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.4, double* %284, align 8
  %polly.access.call1606.load.us.2.4 = load double, double* %polly.access.call1606.us.2.4, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.4, double* %285, align 8
  %polly.access.call1606.load.us.3.4 = load double, double* %polly.access.call1606.us.3.4, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.4, double* %286, align 8
  %polly.access.call1606.load.us.5 = load double, double* %polly.access.call1606.us.5, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.5, double* %287, align 8
  %polly.access.call1606.load.us.1.5 = load double, double* %polly.access.call1606.us.1.5, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.5, double* %288, align 8
  %polly.access.call1606.load.us.2.5 = load double, double* %polly.access.call1606.us.2.5, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.5, double* %289, align 8
  %polly.access.call1606.load.us.3.5 = load double, double* %polly.access.call1606.us.3.5, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.5, double* %290, align 8
  %polly.access.call1606.load.us.6 = load double, double* %polly.access.call1606.us.6, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.6, double* %291, align 8
  %polly.access.call1606.load.us.1.6 = load double, double* %polly.access.call1606.us.1.6, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.6, double* %292, align 8
  %polly.access.call1606.load.us.2.6 = load double, double* %polly.access.call1606.us.2.6, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.6, double* %293, align 8
  %polly.access.call1606.load.us.3.6 = load double, double* %polly.access.call1606.us.3.6, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.6, double* %294, align 8
  %polly.access.call1606.load.us.7 = load double, double* %polly.access.call1606.us.7, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.7, double* %295, align 8
  %polly.access.call1606.load.us.1.7 = load double, double* %polly.access.call1606.us.1.7, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.1.7, double* %296, align 8
  %polly.access.call1606.load.us.2.7 = load double, double* %polly.access.call1606.us.2.7, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.2.7, double* %297, align 8
  %polly.access.call1606.load.us.3.7 = load double, double* %polly.access.call1606.us.3.7, align 8, !alias.scope !91, !noalias !96
  store double %polly.access.call1606.load.us.3.7, double* %298, align 8
  br label %polly.loop_header622.preheader

polly.loop_exit624:                               ; preds = %polly.loop_exit636.3
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 4
  %exitcond938.not = icmp eq i64 %polly.indvar_next589, 300
  br i1 %exitcond938.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header591:                             ; preds = %polly.loop_header585, %polly.loop_exit610
  %polly.indvar594 = phi i64 [ %polly.indvar_next595, %polly.loop_exit610 ], [ 0, %polly.loop_header585 ]
  %321 = add nuw nsw i64 %polly.indvar594, %300
  %polly.access.mul.Packed_MemRef_call1474 = mul nuw nsw i64 %polly.indvar594, 1200
  %polly.access.add.call1605 = add nuw nsw i64 %polly.access.mul.call1604, %321
  %polly.access.call1606 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605
  %polly.access.call1606.load = load double, double* %polly.access.call1606, align 8, !alias.scope !91, !noalias !96
  %polly.access.Packed_MemRef_call1474 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.mul.Packed_MemRef_call1474
  store double %polly.access.call1606.load, double* %polly.access.Packed_MemRef_call1474, align 8
  %polly.access.add.call1605.1 = add nuw nsw i64 %polly.access.mul.call1604.1, %321
  %polly.access.call1606.1 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.1
  %polly.access.call1606.load.1 = load double, double* %polly.access.call1606.1, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.1 = or i64 %polly.access.mul.Packed_MemRef_call1474, 1
  %polly.access.Packed_MemRef_call1474.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.1
  store double %polly.access.call1606.load.1, double* %polly.access.Packed_MemRef_call1474.1, align 8
  %polly.access.add.call1605.2 = add nuw nsw i64 %polly.access.mul.call1604.2, %321
  %polly.access.call1606.2 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.2
  %polly.access.call1606.load.2 = load double, double* %polly.access.call1606.2, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.2 = or i64 %polly.access.mul.Packed_MemRef_call1474, 2
  %polly.access.Packed_MemRef_call1474.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.2
  store double %polly.access.call1606.load.2, double* %polly.access.Packed_MemRef_call1474.2, align 8
  %polly.access.add.call1605.3 = add nuw nsw i64 %polly.access.mul.call1604.3, %321
  %polly.access.call1606.3 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1605.3
  %polly.access.call1606.load.3 = load double, double* %polly.access.call1606.3, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474.3 = or i64 %polly.access.mul.Packed_MemRef_call1474, 3
  %polly.access.Packed_MemRef_call1474.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.3
  store double %polly.access.call1606.load.3, double* %polly.access.Packed_MemRef_call1474.3, align 8
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_header608
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next595, 8
  br i1 %exitcond927.not, label %polly.loop_header622.preheader, label %polly.loop_header591

polly.loop_header622.preheader:                   ; preds = %polly.loop_exit610, %polly.loop_header591.us.preheader
  %smin934 = call i64 @llvm.smin.i64(i64 %indvars.iv930, i64 3)
  %322 = mul nsw i64 %polly.indvar588, 32000
  %323 = mul nsw i64 %polly.indvar588, 38400
  %indvars.iv.next933 = or i64 %indvars.iv930, 1
  %smin934.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933, i64 3)
  %324 = or i64 %317, 1
  %325 = or i64 %316, 1
  %326 = mul nuw nsw i64 %325, 8000
  %327 = mul nuw nsw i64 %325, 9600
  %indvars.iv.next933.1 = add nuw nsw i64 %indvars.iv.next933, 1
  %smin934.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next933.1, i64 3)
  %328 = or i64 %317, 2
  %329 = or i64 %316, 2
  %330 = mul nuw nsw i64 %329, 8000
  %331 = mul nuw nsw i64 %329, 9600
  %332 = or i64 %317, 3
  %333 = or i64 %316, 3
  %334 = mul nuw nsw i64 %333, 8000
  %335 = mul nuw nsw i64 %333, 9600
  br label %polly.loop_header622

polly.loop_header608:                             ; preds = %polly.loop_header591, %polly.loop_header608
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header608 ], [ %319, %polly.loop_header591 ]
  %336 = add nuw nsw i64 %polly.indvar612, %308
  %polly.access.mul.call1616 = mul nuw nsw i64 %336, 1000
  %polly.access.add.call1617 = add nuw nsw i64 %polly.access.mul.call1616, %321
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1661, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1474620 = add nuw nsw i64 %polly.indvar612, %polly.access.mul.Packed_MemRef_call1474
  %polly.access.Packed_MemRef_call1474621 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1474621, align 8
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %polly.loop_cond614.not.not = icmp ult i64 %polly.indvar612, %320
  br i1 %polly.loop_cond614.not.not, label %polly.loop_header608, label %polly.loop_exit610

polly.loop_header622:                             ; preds = %polly.loop_header622.preheader, %polly.loop_exit636.3
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit636.3 ], [ 0, %polly.loop_header622.preheader ]
  %337 = add nuw nsw i64 %polly.indvar625, %300
  %polly.access.mul.Packed_MemRef_call1474640 = mul nuw nsw i64 %polly.indvar625, 1200
  %338 = shl i64 %337, 3
  %339 = add nuw nsw i64 %322, %338
  %scevgep644 = getelementptr i8, i8* %call2, i64 %339
  %scevgep644645 = bitcast i8* %scevgep644 to double*
  %_p_scalar_646 = load double, double* %scevgep644645, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651 = add nuw nsw i64 %317, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1474652, align 8
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_header634
  %340 = add nuw nsw i64 %326, %338
  %scevgep644.1 = getelementptr i8, i8* %call2, i64 %340
  %scevgep644645.1 = bitcast i8* %scevgep644.1 to double*
  %_p_scalar_646.1 = load double, double* %scevgep644645.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.1 = add nuw nsw i64 %324, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1474652.1, align 8
  br label %polly.loop_header634.1

polly.loop_header634:                             ; preds = %polly.loop_header634, %polly.loop_header622
  %polly.indvar637 = phi i64 [ 0, %polly.loop_header622 ], [ %polly.indvar_next638, %polly.loop_header634 ]
  %341 = add nuw nsw i64 %polly.indvar637, %308
  %polly.access.add.Packed_MemRef_call1474641 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call1474642, align 8
  %p_mul27.i = fmul fast double %_p_scalar_646, %_p_scalar_643
  %342 = mul nuw nsw i64 %341, 8000
  %343 = add nuw nsw i64 %342, %338
  %scevgep647 = getelementptr i8, i8* %call2, i64 %343
  %scevgep647648 = bitcast i8* %scevgep647 to double*
  %_p_scalar_649 = load double, double* %scevgep647648, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %344 = shl i64 %341, 3
  %345 = add nuw nsw i64 %344, %323
  %scevgep654 = getelementptr i8, i8* %call, i64 %345
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_656
  store double %p_add42.i, double* %scevgep654655, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond935.not = icmp eq i64 %polly.indvar637, %smin934
  br i1 %exitcond935.not, label %polly.loop_exit636, label %polly.loop_header634

polly.loop_header783:                             ; preds = %entry, %polly.loop_exit791
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %polly.loop_exit791 ], [ 0, %entry ]
  %polly.indvar786 = phi i64 [ %polly.indvar_next787, %polly.loop_exit791 ], [ 0, %entry ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv967, i64 -1168)
  %346 = shl nsw i64 %polly.indvar786, 5
  %347 = add nsw i64 %smin969, 1199
  br label %polly.loop_header789

polly.loop_exit791:                               ; preds = %polly.loop_exit797
  %polly.indvar_next787 = add nuw nsw i64 %polly.indvar786, 1
  %indvars.iv.next968 = add nsw i64 %indvars.iv967, -32
  %exitcond972.not = icmp eq i64 %polly.indvar_next787, 38
  br i1 %exitcond972.not, label %polly.loop_header810, label %polly.loop_header783

polly.loop_header789:                             ; preds = %polly.loop_exit797, %polly.loop_header783
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_header783 ]
  %348 = mul nsw i64 %polly.indvar792, -32
  %smin1034 = call i64 @llvm.smin.i64(i64 %348, i64 -1168)
  %349 = add nsw i64 %smin1034, 1200
  %smin965 = call i64 @llvm.smin.i64(i64 %indvars.iv963, i64 -1168)
  %350 = shl nsw i64 %polly.indvar792, 5
  %351 = add nsw i64 %smin965, 1199
  br label %polly.loop_header795

polly.loop_exit797:                               ; preds = %polly.loop_exit803
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond971.not = icmp eq i64 %polly.indvar_next793, 38
  br i1 %exitcond971.not, label %polly.loop_exit791, label %polly.loop_header789

polly.loop_header795:                             ; preds = %polly.loop_exit803, %polly.loop_header789
  %polly.indvar798 = phi i64 [ 0, %polly.loop_header789 ], [ %polly.indvar_next799, %polly.loop_exit803 ]
  %352 = add nuw nsw i64 %polly.indvar798, %346
  %353 = trunc i64 %352 to i32
  %354 = mul nuw nsw i64 %352, 9600
  %min.iters.check = icmp eq i64 %349, 0
  br i1 %min.iters.check, label %polly.loop_header801, label %vector.ph1035

vector.ph1035:                                    ; preds = %polly.loop_header795
  %broadcast.splatinsert1042 = insertelement <4 x i64> poison, i64 %350, i32 0
  %broadcast.splat1043 = shufflevector <4 x i64> %broadcast.splatinsert1042, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1035
  %index1036 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1037, %vector.body1033 ]
  %vec.ind1040 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1035 ], [ %vec.ind.next1041, %vector.body1033 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1040, %broadcast.splat1043
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1045, %356
  %358 = add <4 x i32> %357, <i32 3, i32 3, i32 3, i32 3>
  %359 = urem <4 x i32> %358, <i32 1200, i32 1200, i32 1200, i32 1200>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add nuw nsw i64 %363, %354
  %365 = getelementptr i8, i8* %call, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !98, !noalias !100
  %index.next1037 = add i64 %index1036, 4
  %vec.ind.next1041 = add <4 x i64> %vec.ind1040, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1037, %349
  br i1 %367, label %polly.loop_exit803, label %vector.body1033, !llvm.loop !103

polly.loop_exit803:                               ; preds = %vector.body1033, %polly.loop_header801
  %polly.indvar_next799 = add nuw nsw i64 %polly.indvar798, 1
  %exitcond970.not = icmp eq i64 %polly.indvar798, %347
  br i1 %exitcond970.not, label %polly.loop_exit797, label %polly.loop_header795

polly.loop_header801:                             ; preds = %polly.loop_header795, %polly.loop_header801
  %polly.indvar804 = phi i64 [ %polly.indvar_next805, %polly.loop_header801 ], [ 0, %polly.loop_header795 ]
  %368 = add nuw nsw i64 %polly.indvar804, %350
  %369 = trunc i64 %368 to i32
  %370 = mul i32 %369, %353
  %371 = add i32 %370, 3
  %372 = urem i32 %371, 1200
  %p_conv31.i = sitofp i32 %372 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %373 = shl i64 %368, 3
  %374 = add nuw nsw i64 %373, %354
  %scevgep807 = getelementptr i8, i8* %call, i64 %374
  %scevgep807808 = bitcast i8* %scevgep807 to double*
  store double %p_div33.i, double* %scevgep807808, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next805 = add nuw nsw i64 %polly.indvar804, 1
  %exitcond966.not = icmp eq i64 %polly.indvar804, %351
  br i1 %exitcond966.not, label %polly.loop_exit803, label %polly.loop_header801, !llvm.loop !104

polly.loop_header810:                             ; preds = %polly.loop_exit791, %polly.loop_exit818
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %polly.indvar813 = phi i64 [ %polly.indvar_next814, %polly.loop_exit818 ], [ 0, %polly.loop_exit791 ]
  %smin959 = call i64 @llvm.smin.i64(i64 %indvars.iv957, i64 -1168)
  %375 = shl nsw i64 %polly.indvar813, 5
  %376 = add nsw i64 %smin959, 1199
  br label %polly.loop_header816

polly.loop_exit818:                               ; preds = %polly.loop_exit824
  %polly.indvar_next814 = add nuw nsw i64 %polly.indvar813, 1
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -32
  %exitcond962.not = icmp eq i64 %polly.indvar_next814, 38
  br i1 %exitcond962.not, label %polly.loop_header836, label %polly.loop_header810

polly.loop_header816:                             ; preds = %polly.loop_exit824, %polly.loop_header810
  %indvars.iv953 = phi i64 [ %indvars.iv.next954, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %polly.indvar819 = phi i64 [ %polly.indvar_next820, %polly.loop_exit824 ], [ 0, %polly.loop_header810 ]
  %377 = mul nsw i64 %polly.indvar819, -32
  %smin1049 = call i64 @llvm.smin.i64(i64 %377, i64 -968)
  %378 = add nsw i64 %smin1049, 1000
  %smin955 = call i64 @llvm.smin.i64(i64 %indvars.iv953, i64 -968)
  %379 = shl nsw i64 %polly.indvar819, 5
  %380 = add nsw i64 %smin955, 999
  br label %polly.loop_header822

polly.loop_exit824:                               ; preds = %polly.loop_exit830
  %polly.indvar_next820 = add nuw nsw i64 %polly.indvar819, 1
  %indvars.iv.next954 = add nsw i64 %indvars.iv953, -32
  %exitcond961.not = icmp eq i64 %polly.indvar_next820, 32
  br i1 %exitcond961.not, label %polly.loop_exit818, label %polly.loop_header816

polly.loop_header822:                             ; preds = %polly.loop_exit830, %polly.loop_header816
  %polly.indvar825 = phi i64 [ 0, %polly.loop_header816 ], [ %polly.indvar_next826, %polly.loop_exit830 ]
  %381 = add nuw nsw i64 %polly.indvar825, %375
  %382 = trunc i64 %381 to i32
  %383 = mul nuw nsw i64 %381, 8000
  %min.iters.check1050 = icmp eq i64 %378, 0
  br i1 %min.iters.check1050, label %polly.loop_header828, label %vector.ph1051

vector.ph1051:                                    ; preds = %polly.loop_header822
  %broadcast.splatinsert1060 = insertelement <4 x i64> poison, i64 %379, i32 0
  %broadcast.splat1061 = shufflevector <4 x i64> %broadcast.splatinsert1060, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %vector.ph1051
  %index1054 = phi i64 [ 0, %vector.ph1051 ], [ %index.next1055, %vector.body1048 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1051 ], [ %vec.ind.next1059, %vector.body1048 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1058, %broadcast.splat1061
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1063, %385
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 1000, i32 1000, i32 1000, i32 1000>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add nuw nsw i64 %392, %383
  %394 = getelementptr i8, i8* %call2, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !102, !noalias !105
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1055, %378
  br i1 %396, label %polly.loop_exit830, label %vector.body1048, !llvm.loop !106

polly.loop_exit830:                               ; preds = %vector.body1048, %polly.loop_header828
  %polly.indvar_next826 = add nuw nsw i64 %polly.indvar825, 1
  %exitcond960.not = icmp eq i64 %polly.indvar825, %376
  br i1 %exitcond960.not, label %polly.loop_exit824, label %polly.loop_header822

polly.loop_header828:                             ; preds = %polly.loop_header822, %polly.loop_header828
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_header828 ], [ 0, %polly.loop_header822 ]
  %397 = add nuw nsw i64 %polly.indvar831, %379
  %398 = trunc i64 %397 to i32
  %399 = mul i32 %398, %382
  %400 = add i32 %399, 2
  %401 = urem i32 %400, 1000
  %p_conv10.i = sitofp i32 %401 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %402 = shl i64 %397, 3
  %403 = add nuw nsw i64 %402, %383
  %scevgep834 = getelementptr i8, i8* %call2, i64 %403
  %scevgep834835 = bitcast i8* %scevgep834 to double*
  store double %p_div12.i, double* %scevgep834835, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond956.not = icmp eq i64 %polly.indvar831, %380
  br i1 %exitcond956.not, label %polly.loop_exit830, label %polly.loop_header828, !llvm.loop !107

polly.loop_header836:                             ; preds = %polly.loop_exit818, %polly.loop_exit844
  %indvars.iv947 = phi i64 [ %indvars.iv.next948, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %polly.indvar839 = phi i64 [ %polly.indvar_next840, %polly.loop_exit844 ], [ 0, %polly.loop_exit818 ]
  %smin949 = call i64 @llvm.smin.i64(i64 %indvars.iv947, i64 -1168)
  %404 = shl nsw i64 %polly.indvar839, 5
  %405 = add nsw i64 %smin949, 1199
  br label %polly.loop_header842

polly.loop_exit844:                               ; preds = %polly.loop_exit850
  %polly.indvar_next840 = add nuw nsw i64 %polly.indvar839, 1
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, -32
  %exitcond952.not = icmp eq i64 %polly.indvar_next840, 38
  br i1 %exitcond952.not, label %init_array.exit, label %polly.loop_header836

polly.loop_header842:                             ; preds = %polly.loop_exit850, %polly.loop_header836
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %polly.loop_header836 ]
  %406 = mul nsw i64 %polly.indvar845, -32
  %smin1067 = call i64 @llvm.smin.i64(i64 %406, i64 -968)
  %407 = add nsw i64 %smin1067, 1000
  %smin945 = call i64 @llvm.smin.i64(i64 %indvars.iv943, i64 -968)
  %408 = shl nsw i64 %polly.indvar845, 5
  %409 = add nsw i64 %smin945, 999
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, -32
  %exitcond951.not = icmp eq i64 %polly.indvar_next846, 32
  br i1 %exitcond951.not, label %polly.loop_exit844, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %polly.indvar851 = phi i64 [ 0, %polly.loop_header842 ], [ %polly.indvar_next852, %polly.loop_exit856 ]
  %410 = add nuw nsw i64 %polly.indvar851, %404
  %411 = trunc i64 %410 to i32
  %412 = mul nuw nsw i64 %410, 8000
  %min.iters.check1068 = icmp eq i64 %407, 0
  br i1 %min.iters.check1068, label %polly.loop_header854, label %vector.ph1069

vector.ph1069:                                    ; preds = %polly.loop_header848
  %broadcast.splatinsert1078 = insertelement <4 x i64> poison, i64 %408, i32 0
  %broadcast.splat1079 = shufflevector <4 x i64> %broadcast.splatinsert1078, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1073, %vector.body1066 ]
  %vec.ind1076 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1069 ], [ %vec.ind.next1077, %vector.body1066 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1076, %broadcast.splat1079
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1081, %414
  %416 = add <4 x i32> %415, <i32 1, i32 1, i32 1, i32 1>
  %417 = urem <4 x i32> %416, <i32 1200, i32 1200, i32 1200, i32 1200>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %412
  %423 = getelementptr i8, i8* %call1, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !101, !noalias !108
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1077 = add <4 x i64> %vec.ind1076, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1073, %407
  br i1 %425, label %polly.loop_exit856, label %vector.body1066, !llvm.loop !109

polly.loop_exit856:                               ; preds = %vector.body1066, %polly.loop_header854
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %exitcond950.not = icmp eq i64 %polly.indvar851, %405
  br i1 %exitcond950.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_header848, %polly.loop_header854
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_header854 ], [ 0, %polly.loop_header848 ]
  %426 = add nuw nsw i64 %polly.indvar857, %408
  %427 = trunc i64 %426 to i32
  %428 = mul i32 %427, %411
  %429 = add i32 %428, 1
  %430 = urem i32 %429, 1200
  %p_conv.i = sitofp i32 %430 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %431 = shl i64 %426, 3
  %432 = add nuw nsw i64 %431, %412
  %scevgep861 = getelementptr i8, i8* %call1, i64 %432
  %scevgep861862 = bitcast i8* %scevgep861 to double*
  store double %p_div.i, double* %scevgep861862, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond946.not = icmp eq i64 %polly.indvar857, %409
  br i1 %exitcond946.not, label %polly.loop_exit856, label %polly.loop_header854, !llvm.loop !110

polly.loop_header258.1:                           ; preds = %polly.loop_header258.1, %polly.loop_exit260
  %polly.indvar261.1 = phi i64 [ 0, %polly.loop_exit260 ], [ %polly.indvar_next262.1, %polly.loop_header258.1 ]
  %433 = add nuw nsw i64 %polly.indvar261.1, %136
  %polly.access.add.Packed_MemRef_call1265.1 = add nuw nsw i64 %polly.indvar261.1, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_270.1, %_p_scalar_267.1
  %434 = mul nuw nsw i64 %433, 8000
  %435 = add nuw nsw i64 %434, %166
  %scevgep271.1 = getelementptr i8, i8* %call2, i64 %435
  %scevgep271272.1 = bitcast i8* %scevgep271.1 to double*
  %_p_scalar_273.1 = load double, double* %scevgep271272.1, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %436 = shl i64 %433, 3
  %437 = add nuw nsw i64 %436, %155
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %437
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.1 = add nuw nsw i64 %polly.indvar261.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar261.1, %smin.1
  br i1 %exitcond901.1.not, label %polly.loop_exit260.1, label %polly.loop_header258.1

polly.loop_exit260.1:                             ; preds = %polly.loop_header258.1
  %438 = add nuw nsw i64 %158, %166
  %scevgep268.2 = getelementptr i8, i8* %call2, i64 %438
  %scevgep268269.2 = bitcast i8* %scevgep268.2 to double*
  %_p_scalar_270.2 = load double, double* %scevgep268269.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.2 = add nuw nsw i64 %156, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header258.2

polly.loop_header258.2:                           ; preds = %polly.loop_header258.2, %polly.loop_exit260.1
  %polly.indvar261.2 = phi i64 [ 0, %polly.loop_exit260.1 ], [ %polly.indvar_next262.2, %polly.loop_header258.2 ]
  %439 = add nuw nsw i64 %polly.indvar261.2, %136
  %polly.access.add.Packed_MemRef_call1265.2 = add nuw nsw i64 %polly.indvar261.2, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  %_p_scalar_267.2 = load double, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_270.2, %_p_scalar_267.2
  %440 = mul nuw nsw i64 %439, 8000
  %441 = add nuw nsw i64 %440, %166
  %scevgep271.2 = getelementptr i8, i8* %call2, i64 %441
  %scevgep271272.2 = bitcast i8* %scevgep271.2 to double*
  %_p_scalar_273.2 = load double, double* %scevgep271272.2, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %442 = shl i64 %439, 3
  %443 = add nuw nsw i64 %442, %159
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %443
  %scevgep278279.2 = bitcast i8* %scevgep278.2 to double*
  %_p_scalar_280.2 = load double, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_280.2
  store double %p_add42.i118.2, double* %scevgep278279.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.2 = add nuw nsw i64 %polly.indvar261.2, 1
  %exitcond901.2.not = icmp eq i64 %polly.indvar261.2, %smin.2
  br i1 %exitcond901.2.not, label %polly.loop_exit260.2, label %polly.loop_header258.2

polly.loop_exit260.2:                             ; preds = %polly.loop_header258.2
  %444 = add nuw nsw i64 %162, %166
  %scevgep268.3 = getelementptr i8, i8* %call2, i64 %444
  %scevgep268269.3 = bitcast i8* %scevgep268.3 to double*
  %_p_scalar_270.3 = load double, double* %scevgep268269.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1275.3 = add nuw nsw i64 %160, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1276.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.3
  %_p_scalar_277.3 = load double, double* %polly.access.Packed_MemRef_call1276.3, align 8
  br label %polly.loop_header258.3

polly.loop_header258.3:                           ; preds = %polly.loop_header258.3, %polly.loop_exit260.2
  %polly.indvar261.3 = phi i64 [ 0, %polly.loop_exit260.2 ], [ %polly.indvar_next262.3, %polly.loop_header258.3 ]
  %445 = add nuw nsw i64 %polly.indvar261.3, %136
  %polly.access.add.Packed_MemRef_call1265.3 = add nuw nsw i64 %polly.indvar261.3, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  %_p_scalar_267.3 = load double, double* %polly.access.Packed_MemRef_call1266.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_270.3, %_p_scalar_267.3
  %446 = mul nuw nsw i64 %445, 8000
  %447 = add nuw nsw i64 %446, %166
  %scevgep271.3 = getelementptr i8, i8* %call2, i64 %447
  %scevgep271272.3 = bitcast i8* %scevgep271.3 to double*
  %_p_scalar_273.3 = load double, double* %scevgep271272.3, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.3 = fmul fast double %_p_scalar_277.3, %_p_scalar_273.3
  %448 = shl i64 %445, 3
  %449 = add nuw nsw i64 %448, %163
  %scevgep278.3 = getelementptr i8, i8* %call, i64 %449
  %scevgep278279.3 = bitcast i8* %scevgep278.3 to double*
  %_p_scalar_280.3 = load double, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_280.3
  store double %p_add42.i118.3, double* %scevgep278279.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next262.3 = add nuw nsw i64 %polly.indvar261.3, 1
  %exitcond901.3.not = icmp eq i64 %polly.indvar_next262.3, 4
  br i1 %exitcond901.3.not, label %polly.loop_exit260.3, label %polly.loop_header258.3

polly.loop_exit260.3:                             ; preds = %polly.loop_header258.3
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next250, 8
  br i1 %exitcond903.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header446.1:                           ; preds = %polly.loop_header446.1, %polly.loop_exit448
  %polly.indvar449.1 = phi i64 [ 0, %polly.loop_exit448 ], [ %polly.indvar_next450.1, %polly.loop_header446.1 ]
  %450 = add nuw nsw i64 %polly.indvar449.1, %222
  %polly.access.add.Packed_MemRef_call1286453.1 = add nuw nsw i64 %polly.indvar449.1, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.1
  %_p_scalar_455.1 = load double, double* %polly.access.Packed_MemRef_call1286454.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_458.1, %_p_scalar_455.1
  %451 = mul nuw nsw i64 %450, 8000
  %452 = add nuw nsw i64 %451, %252
  %scevgep459.1 = getelementptr i8, i8* %call2, i64 %452
  %scevgep459460.1 = bitcast i8* %scevgep459.1 to double*
  %_p_scalar_461.1 = load double, double* %scevgep459460.1, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %453 = shl i64 %450, 3
  %454 = add nuw nsw i64 %453, %241
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %454
  %scevgep466467.1 = bitcast i8* %scevgep466.1 to double*
  %_p_scalar_468.1 = load double, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_468.1
  store double %p_add42.i79.1, double* %scevgep466467.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.1 = add nuw nsw i64 %polly.indvar449.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar449.1, %smin917.1
  br i1 %exitcond918.1.not, label %polly.loop_exit448.1, label %polly.loop_header446.1

polly.loop_exit448.1:                             ; preds = %polly.loop_header446.1
  %455 = add nuw nsw i64 %244, %252
  %scevgep456.2 = getelementptr i8, i8* %call2, i64 %455
  %scevgep456457.2 = bitcast i8* %scevgep456.2 to double*
  %_p_scalar_458.2 = load double, double* %scevgep456457.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.2 = add nuw nsw i64 %242, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.2
  %_p_scalar_465.2 = load double, double* %polly.access.Packed_MemRef_call1286464.2, align 8
  br label %polly.loop_header446.2

polly.loop_header446.2:                           ; preds = %polly.loop_header446.2, %polly.loop_exit448.1
  %polly.indvar449.2 = phi i64 [ 0, %polly.loop_exit448.1 ], [ %polly.indvar_next450.2, %polly.loop_header446.2 ]
  %456 = add nuw nsw i64 %polly.indvar449.2, %222
  %polly.access.add.Packed_MemRef_call1286453.2 = add nuw nsw i64 %polly.indvar449.2, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.2
  %_p_scalar_455.2 = load double, double* %polly.access.Packed_MemRef_call1286454.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_458.2, %_p_scalar_455.2
  %457 = mul nuw nsw i64 %456, 8000
  %458 = add nuw nsw i64 %457, %252
  %scevgep459.2 = getelementptr i8, i8* %call2, i64 %458
  %scevgep459460.2 = bitcast i8* %scevgep459.2 to double*
  %_p_scalar_461.2 = load double, double* %scevgep459460.2, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.2 = fmul fast double %_p_scalar_465.2, %_p_scalar_461.2
  %459 = shl i64 %456, 3
  %460 = add nuw nsw i64 %459, %245
  %scevgep466.2 = getelementptr i8, i8* %call, i64 %460
  %scevgep466467.2 = bitcast i8* %scevgep466.2 to double*
  %_p_scalar_468.2 = load double, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_468.2
  store double %p_add42.i79.2, double* %scevgep466467.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.2 = add nuw nsw i64 %polly.indvar449.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar449.2, %smin917.2
  br i1 %exitcond918.2.not, label %polly.loop_exit448.2, label %polly.loop_header446.2

polly.loop_exit448.2:                             ; preds = %polly.loop_header446.2
  %461 = add nuw nsw i64 %248, %252
  %scevgep456.3 = getelementptr i8, i8* %call2, i64 %461
  %scevgep456457.3 = bitcast i8* %scevgep456.3 to double*
  %_p_scalar_458.3 = load double, double* %scevgep456457.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1286463.3 = add nuw nsw i64 %246, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286464.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286463.3
  %_p_scalar_465.3 = load double, double* %polly.access.Packed_MemRef_call1286464.3, align 8
  br label %polly.loop_header446.3

polly.loop_header446.3:                           ; preds = %polly.loop_header446.3, %polly.loop_exit448.2
  %polly.indvar449.3 = phi i64 [ 0, %polly.loop_exit448.2 ], [ %polly.indvar_next450.3, %polly.loop_header446.3 ]
  %462 = add nuw nsw i64 %polly.indvar449.3, %222
  %polly.access.add.Packed_MemRef_call1286453.3 = add nuw nsw i64 %polly.indvar449.3, %polly.access.mul.Packed_MemRef_call1286452
  %polly.access.Packed_MemRef_call1286454.3 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286453.3
  %_p_scalar_455.3 = load double, double* %polly.access.Packed_MemRef_call1286454.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_458.3, %_p_scalar_455.3
  %463 = mul nuw nsw i64 %462, 8000
  %464 = add nuw nsw i64 %463, %252
  %scevgep459.3 = getelementptr i8, i8* %call2, i64 %464
  %scevgep459460.3 = bitcast i8* %scevgep459.3 to double*
  %_p_scalar_461.3 = load double, double* %scevgep459460.3, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.3 = fmul fast double %_p_scalar_465.3, %_p_scalar_461.3
  %465 = shl i64 %462, 3
  %466 = add nuw nsw i64 %465, %249
  %scevgep466.3 = getelementptr i8, i8* %call, i64 %466
  %scevgep466467.3 = bitcast i8* %scevgep466.3 to double*
  %_p_scalar_468.3 = load double, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_468.3
  store double %p_add42.i79.3, double* %scevgep466467.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next450.3 = add nuw nsw i64 %polly.indvar449.3, 1
  %exitcond918.3.not = icmp eq i64 %polly.indvar_next450.3, 4
  br i1 %exitcond918.3.not, label %polly.loop_exit448.3, label %polly.loop_header446.3

polly.loop_exit448.3:                             ; preds = %polly.loop_header446.3
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next438, 8
  br i1 %exitcond920.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header634.1:                           ; preds = %polly.loop_header634.1, %polly.loop_exit636
  %polly.indvar637.1 = phi i64 [ 0, %polly.loop_exit636 ], [ %polly.indvar_next638.1, %polly.loop_header634.1 ]
  %467 = add nuw nsw i64 %polly.indvar637.1, %308
  %polly.access.add.Packed_MemRef_call1474641.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call1474642.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_646.1, %_p_scalar_643.1
  %468 = mul nuw nsw i64 %467, 8000
  %469 = add nuw nsw i64 %468, %338
  %scevgep647.1 = getelementptr i8, i8* %call2, i64 %469
  %scevgep647648.1 = bitcast i8* %scevgep647.1 to double*
  %_p_scalar_649.1 = load double, double* %scevgep647648.1, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %470 = shl i64 %467, 3
  %471 = add nuw nsw i64 %470, %327
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %471
  %scevgep654655.1 = bitcast i8* %scevgep654.1 to double*
  %_p_scalar_656.1 = load double, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_656.1
  store double %p_add42.i.1, double* %scevgep654655.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond935.1.not = icmp eq i64 %polly.indvar637.1, %smin934.1
  br i1 %exitcond935.1.not, label %polly.loop_exit636.1, label %polly.loop_header634.1

polly.loop_exit636.1:                             ; preds = %polly.loop_header634.1
  %472 = add nuw nsw i64 %330, %338
  %scevgep644.2 = getelementptr i8, i8* %call2, i64 %472
  %scevgep644645.2 = bitcast i8* %scevgep644.2 to double*
  %_p_scalar_646.2 = load double, double* %scevgep644645.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.2 = add nuw nsw i64 %328, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.2
  %_p_scalar_653.2 = load double, double* %polly.access.Packed_MemRef_call1474652.2, align 8
  br label %polly.loop_header634.2

polly.loop_header634.2:                           ; preds = %polly.loop_header634.2, %polly.loop_exit636.1
  %polly.indvar637.2 = phi i64 [ 0, %polly.loop_exit636.1 ], [ %polly.indvar_next638.2, %polly.loop_header634.2 ]
  %473 = add nuw nsw i64 %polly.indvar637.2, %308
  %polly.access.add.Packed_MemRef_call1474641.2 = add nuw nsw i64 %polly.indvar637.2, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call1474642.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_646.2, %_p_scalar_643.2
  %474 = mul nuw nsw i64 %473, 8000
  %475 = add nuw nsw i64 %474, %338
  %scevgep647.2 = getelementptr i8, i8* %call2, i64 %475
  %scevgep647648.2 = bitcast i8* %scevgep647.2 to double*
  %_p_scalar_649.2 = load double, double* %scevgep647648.2, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.2 = fmul fast double %_p_scalar_653.2, %_p_scalar_649.2
  %476 = shl i64 %473, 3
  %477 = add nuw nsw i64 %476, %331
  %scevgep654.2 = getelementptr i8, i8* %call, i64 %477
  %scevgep654655.2 = bitcast i8* %scevgep654.2 to double*
  %_p_scalar_656.2 = load double, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_656.2
  store double %p_add42.i.2, double* %scevgep654655.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.2 = add nuw nsw i64 %polly.indvar637.2, 1
  %exitcond935.2.not = icmp eq i64 %polly.indvar637.2, %smin934.2
  br i1 %exitcond935.2.not, label %polly.loop_exit636.2, label %polly.loop_header634.2

polly.loop_exit636.2:                             ; preds = %polly.loop_header634.2
  %478 = add nuw nsw i64 %334, %338
  %scevgep644.3 = getelementptr i8, i8* %call2, i64 %478
  %scevgep644645.3 = bitcast i8* %scevgep644.3 to double*
  %_p_scalar_646.3 = load double, double* %scevgep644645.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474651.3 = add nuw nsw i64 %332, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474652.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474651.3
  %_p_scalar_653.3 = load double, double* %polly.access.Packed_MemRef_call1474652.3, align 8
  br label %polly.loop_header634.3

polly.loop_header634.3:                           ; preds = %polly.loop_header634.3, %polly.loop_exit636.2
  %polly.indvar637.3 = phi i64 [ 0, %polly.loop_exit636.2 ], [ %polly.indvar_next638.3, %polly.loop_header634.3 ]
  %479 = add nuw nsw i64 %polly.indvar637.3, %308
  %polly.access.add.Packed_MemRef_call1474641.3 = add nuw nsw i64 %polly.indvar637.3, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.3
  %_p_scalar_643.3 = load double, double* %polly.access.Packed_MemRef_call1474642.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_646.3, %_p_scalar_643.3
  %480 = mul nuw nsw i64 %479, 8000
  %481 = add nuw nsw i64 %480, %338
  %scevgep647.3 = getelementptr i8, i8* %call2, i64 %481
  %scevgep647648.3 = bitcast i8* %scevgep647.3 to double*
  %_p_scalar_649.3 = load double, double* %scevgep647648.3, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.3 = fmul fast double %_p_scalar_653.3, %_p_scalar_649.3
  %482 = shl i64 %479, 3
  %483 = add nuw nsw i64 %482, %335
  %scevgep654.3 = getelementptr i8, i8* %call, i64 %483
  %scevgep654655.3 = bitcast i8* %scevgep654.3 to double*
  %_p_scalar_656.3 = load double, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_656.3
  store double %p_add42.i.3, double* %scevgep654655.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next638.3 = add nuw nsw i64 %polly.indvar637.3, 1
  %exitcond935.3.not = icmp eq i64 %polly.indvar_next638.3, 4
  br i1 %exitcond935.3.not, label %polly.loop_exit636.3, label %polly.loop_header634.3

polly.loop_exit636.3:                             ; preds = %polly.loop_header634.3
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next626, 8
  br i1 %exitcond937.not, label %polly.loop_exit624, label %polly.loop_header622
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
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 8}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !25, !50, !56}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
