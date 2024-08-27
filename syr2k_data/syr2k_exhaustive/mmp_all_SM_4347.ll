; ModuleID = 'syr2k_exhaustive/mmp_all_SM_4347.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_4347.c"
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
  %call793 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1645 = bitcast i8* %call1 to double*
  %polly.access.call1654 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1654, %call2
  %polly.access.call2674 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2674, %call1
  %2 = or i1 %0, %1
  %polly.access.call694 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call694, %call2
  %4 = icmp ule i8* %polly.access.call2674, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call694, %call1
  %8 = icmp ule i8* %polly.access.call1654, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header767, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1067 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1066 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1065 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1064 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1064, %scevgep1067
  %bound1 = icmp ult i8* %scevgep1066, %scevgep1065
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
  br i1 %exitcond18.not.i, label %vector.ph1071, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1071:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1078 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1079 = shufflevector <4 x i64> %broadcast.splatinsert1078, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %vector.ph1071
  %index1072 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1076 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1071 ], [ %vec.ind.next1077, %vector.body1070 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1076, %broadcast.splat1079
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv7.i, i64 %index1072
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1077 = add <4 x i64> %vec.ind1076, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1073, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1070, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1070
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1071, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit828
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start459, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1133 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1133, label %for.body3.i46.preheader1210, label %vector.ph1134

vector.ph1134:                                    ; preds = %for.body3.i46.preheader
  %n.vec1136 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1138, %vector.body1132 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i, i64 %index1137
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1138 = add i64 %index1137, 4
  %46 = icmp eq i64 %index.next1138, %n.vec1136
  br i1 %46, label %middle.block1130, label %vector.body1132, !llvm.loop !18

middle.block1130:                                 ; preds = %vector.body1132
  %cmp.n1140 = icmp eq i64 %indvars.iv21.i, %n.vec1136
  br i1 %cmp.n1140, label %for.inc6.i, label %for.body3.i46.preheader1210

for.body3.i46.preheader1210:                      ; preds = %for.body3.i46.preheader, %middle.block1130
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1136, %middle.block1130 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1210, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1210 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1130, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting460
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start275, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1156 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1156, label %for.body3.i60.preheader1208, label %vector.ph1157

vector.ph1157:                                    ; preds = %for.body3.i60.preheader
  %n.vec1159 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %vector.ph1157
  %index1160 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1161, %vector.body1155 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i52, i64 %index1160
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1164 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1164, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1161 = add i64 %index1160, 4
  %57 = icmp eq i64 %index.next1161, %n.vec1159
  br i1 %57, label %middle.block1153, label %vector.body1155, !llvm.loop !54

middle.block1153:                                 ; preds = %vector.body1155
  %cmp.n1163 = icmp eq i64 %indvars.iv21.i52, %n.vec1159
  br i1 %cmp.n1163, label %for.inc6.i63, label %for.body3.i60.preheader1208

for.body3.i60.preheader1208:                      ; preds = %for.body3.i60.preheader, %middle.block1153
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1159, %middle.block1153 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1208, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1208 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1153, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting276
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1182 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1182, label %for.body3.i99.preheader1206, label %vector.ph1183

vector.ph1183:                                    ; preds = %for.body3.i99.preheader
  %n.vec1185 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1183
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1187, %vector.body1181 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i91, i64 %index1186
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1190 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1190, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1187 = add i64 %index1186, 4
  %68 = icmp eq i64 %index.next1187, %n.vec1185
  br i1 %68, label %middle.block1179, label %vector.body1181, !llvm.loop !56

middle.block1179:                                 ; preds = %vector.body1181
  %cmp.n1189 = icmp eq i64 %indvars.iv21.i91, %n.vec1185
  br i1 %cmp.n1189, label %for.inc6.i102, label %for.body3.i99.preheader1206

for.body3.i99.preheader1206:                      ; preds = %for.body3.i99.preheader, %middle.block1179
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1185, %middle.block1179 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1206, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1206 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1179, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1194 = phi i64 [ %indvar.next1195, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1194, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1196 = icmp ult i64 %88, 4
  br i1 %min.iters.check1196, label %polly.loop_header191.preheader, label %vector.ph1197

vector.ph1197:                                    ; preds = %polly.loop_header
  %n.vec1199 = and i64 %88, -4
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %vector.ph1197
  %index1200 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1201, %vector.body1193 ]
  %90 = shl nuw nsw i64 %index1200, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1204 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1204, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1201 = add i64 %index1200, 4
  %95 = icmp eq i64 %index.next1201, %n.vec1199
  br i1 %95, label %middle.block1191, label %vector.body1193, !llvm.loop !68

middle.block1191:                                 ; preds = %vector.body1193
  %cmp.n1203 = icmp eq i64 %88, %n.vec1199
  br i1 %cmp.n1203, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1191
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1199, %middle.block1191 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1191
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond978.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1195 = add i64 %indvar1194, 1
  br i1 %exitcond978.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond977.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond977.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv973 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next974, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nsw i64 %polly.indvar202, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1
  %exitcond976.not = icmp eq i64 %polly.indvar_next203, 75
  br i1 %exitcond976.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = shl nsw i64 %polly.indvar208, 4
  %99 = sub nsw i64 %97, %98
  %100 = add nuw nsw i64 %98, 16
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -16
  %exitcond975.not = icmp eq i64 %polly.indvar_next209, %indvars.iv973
  br i1 %exitcond975.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit242, %polly.loop_header205
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit242 ], [ %indvars.iv963, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit242 ], [ 0, %polly.loop_header205 ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv965, i64 15)
  %101 = add nsw i64 %polly.indvar214, %99
  %polly.loop_guard1053 = icmp sgt i64 %101, -1
  %102 = add nuw nsw i64 %polly.indvar214, %97
  %.not = icmp ult i64 %102, %100
  %polly.access.mul.call1234 = mul nuw nsw i64 %102, 1000
  br i1 %polly.loop_guard1053, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %103 = add nuw nsw i64 %polly.indvar226.us, %98
  %polly.access.mul.call1230.us = mul nuw nsw i64 %103, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %polly.indvar220.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond967.not = icmp eq i64 %polly.indvar226.us, %smin969
  br i1 %exitcond967.not, label %polly.cond.loopexit.us, label %polly.loop_header223.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1235.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.call1234
  %polly.access.call1236.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1235.us
  %polly.access.call1236.load.us = load double, double* %polly.access.call1236.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1238.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %101
  %polly.access.Packed_MemRef_call1239.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238.us
  store double %polly.access.call1236.load.us, double* %polly.access.Packed_MemRef_call1239.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next221.us, 1000
  br i1 %exitcond968.not, label %polly.loop_header240.preheader, label %polly.loop_header217.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header223.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %.not, label %polly.loop_exit242, label %polly.loop_header217

polly.loop_exit242:                               ; preds = %polly.loop_exit249.loopexit.us, %polly.loop_header211.split, %polly.loop_header240.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next215, 16
  br i1 %exitcond972.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1235 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1234
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1238 = add nsw i64 %polly.access.mul.Packed_MemRef_call1237, %101
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header240.preheader, label %polly.loop_header217

polly.loop_header240.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %104 = mul nuw nsw i64 %102, 8000
  %105 = mul nuw nsw i64 %102, 9600
  br i1 %polly.loop_guard1053, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %106 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep258.us = getelementptr i8, i8* %call2, i64 %106
  %polly.access.mul.Packed_MemRef_call1254.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  %scevgep259.us = getelementptr i8, i8* %scevgep258.us, i64 %104
  %scevgep259260.us = bitcast i8* %scevgep259.us to double*
  %_p_scalar_261.us = load double, double* %scevgep259260.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1267.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1254.us, %101
  %polly.access.Packed_MemRef_call1268.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267.us
  %_p_scalar_269.us = load double, double* %polly.access.Packed_MemRef_call1268.us, align 8
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.us, %polly.loop_header240.us
  %polly.indvar251.us = phi i64 [ 0, %polly.loop_header240.us ], [ %polly.indvar_next252.us, %polly.loop_header247.us ]
  %107 = add nuw nsw i64 %polly.indvar251.us, %98
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1254.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %108 = mul nuw nsw i64 %107, 8000
  %scevgep263.us = getelementptr i8, i8* %scevgep258.us, i64 %108
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %109 = shl i64 %107, 3
  %110 = add nuw nsw i64 %109, %105
  %scevgep270.us = getelementptr i8, i8* %call, i64 %110
  %scevgep270271.us = bitcast i8* %scevgep270.us to double*
  %_p_scalar_272.us = load double, double* %scevgep270271.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_272.us
  store double %p_add42.i118.us, double* %scevgep270271.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond970.not = icmp eq i64 %polly.indvar251.us, %smin969
  br i1 %exitcond970.not, label %polly.loop_exit249.loopexit.us, label %polly.loop_header247.us

polly.loop_exit249.loopexit.us:                   ; preds = %polly.loop_header247.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond971.not = icmp eq i64 %polly.indvar_next244.us, 1000
  br i1 %exitcond971.not, label %polly.loop_exit242, label %polly.loop_header240.us

polly.start275:                                   ; preds = %kernel_syr2k.exit
  %malloccall277 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header361

polly.exiting276:                                 ; preds = %polly.loop_exit385
  tail call void @free(i8* %malloccall277)
  br label %kernel_syr2k.exit90

polly.loop_header361:                             ; preds = %polly.loop_exit369, %polly.start275
  %indvar1168 = phi i64 [ %indvar.next1169, %polly.loop_exit369 ], [ 0, %polly.start275 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 1, %polly.start275 ]
  %111 = add i64 %indvar1168, 1
  %112 = mul nuw nsw i64 %polly.indvar364, 9600
  %scevgep373 = getelementptr i8, i8* %call, i64 %112
  %min.iters.check1170 = icmp ult i64 %111, 4
  br i1 %min.iters.check1170, label %polly.loop_header367.preheader, label %vector.ph1171

vector.ph1171:                                    ; preds = %polly.loop_header361
  %n.vec1173 = and i64 %111, -4
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1175, %vector.body1167 ]
  %113 = shl nuw nsw i64 %index1174, 3
  %114 = getelementptr i8, i8* %scevgep373, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.load1178 = load <4 x double>, <4 x double>* %115, align 8, !alias.scope !73, !noalias !75
  %116 = fmul fast <4 x double> %wide.load1178, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %117 = bitcast i8* %114 to <4 x double>*
  store <4 x double> %116, <4 x double>* %117, align 8, !alias.scope !73, !noalias !75
  %index.next1175 = add i64 %index1174, 4
  %118 = icmp eq i64 %index.next1175, %n.vec1173
  br i1 %118, label %middle.block1165, label %vector.body1167, !llvm.loop !79

middle.block1165:                                 ; preds = %vector.body1167
  %cmp.n1177 = icmp eq i64 %111, %n.vec1173
  br i1 %cmp.n1177, label %polly.loop_exit369, label %polly.loop_header367.preheader

polly.loop_header367.preheader:                   ; preds = %polly.loop_header361, %middle.block1165
  %polly.indvar370.ph = phi i64 [ 0, %polly.loop_header361 ], [ %n.vec1173, %middle.block1165 ]
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_header367, %middle.block1165
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next365, 1200
  %indvar.next1169 = add i64 %indvar1168, 1
  br i1 %exitcond998.not, label %polly.loop_header377.preheader, label %polly.loop_header361

polly.loop_header377.preheader:                   ; preds = %polly.loop_exit369
  %Packed_MemRef_call1278 = bitcast i8* %malloccall277 to double*
  br label %polly.loop_header377

polly.loop_header367:                             ; preds = %polly.loop_header367.preheader, %polly.loop_header367
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_header367 ], [ %polly.indvar370.ph, %polly.loop_header367.preheader ]
  %119 = shl nuw nsw i64 %polly.indvar370, 3
  %scevgep374 = getelementptr i8, i8* %scevgep373, i64 %119
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_376, 1.200000e+00
  store double %p_mul.i57, double* %scevgep374375, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next371, %polly.indvar364
  br i1 %exitcond997.not, label %polly.loop_exit369, label %polly.loop_header367, !llvm.loop !80

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_exit385
  %indvars.iv993 = phi i64 [ 1, %polly.loop_header377.preheader ], [ %indvars.iv.next994, %polly.loop_exit385 ]
  %indvars.iv980 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next981, %polly.loop_exit385 ]
  %polly.indvar380 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %polly.indvar_next381, %polly.loop_exit385 ]
  %120 = shl nsw i64 %polly.indvar380, 4
  br label %polly.loop_header383

polly.loop_exit385:                               ; preds = %polly.loop_exit391
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 16
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next381, 75
  br i1 %exitcond996.not, label %polly.exiting276, label %polly.loop_header377

polly.loop_header383:                             ; preds = %polly.loop_exit391, %polly.loop_header377
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %polly.loop_exit391 ], [ %indvars.iv980, %polly.loop_header377 ]
  %polly.indvar386 = phi i64 [ %polly.indvar_next387, %polly.loop_exit391 ], [ 0, %polly.loop_header377 ]
  %121 = shl nsw i64 %polly.indvar386, 4
  %122 = sub nsw i64 %120, %121
  %123 = add nuw nsw i64 %121, 16
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit426
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next983 = add nsw i64 %indvars.iv982, -16
  %exitcond995.not = icmp eq i64 %polly.indvar_next387, %indvars.iv993
  br i1 %exitcond995.not, label %polly.loop_exit385, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit426, %polly.loop_header383
  %indvars.iv984 = phi i64 [ %indvars.iv.next985, %polly.loop_exit426 ], [ %indvars.iv982, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit426 ], [ 0, %polly.loop_header383 ]
  %smin989 = call i64 @llvm.smin.i64(i64 %indvars.iv984, i64 15)
  %124 = add nsw i64 %polly.indvar392, %122
  %polly.loop_guard4051054 = icmp sgt i64 %124, -1
  %125 = add nuw nsw i64 %polly.indvar392, %120
  %.not847 = icmp ult i64 %125, %123
  %polly.access.mul.call1418 = mul nuw nsw i64 %125, 1000
  br i1 %polly.loop_guard4051054, label %polly.loop_header395.us, label %polly.loop_header389.split

polly.loop_header395.us:                          ; preds = %polly.loop_header389, %polly.merge414.us
  %polly.indvar398.us = phi i64 [ %polly.indvar_next399.us, %polly.merge414.us ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1278.us = mul nuw nsw i64 %polly.indvar398.us, 1200
  br label %polly.loop_header402.us

polly.loop_header402.us:                          ; preds = %polly.loop_header395.us, %polly.loop_header402.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header402.us ], [ 0, %polly.loop_header395.us ]
  %126 = add nuw nsw i64 %polly.indvar406.us, %121
  %polly.access.mul.call1410.us = mul nuw nsw i64 %126, 1000
  %polly.access.add.call1411.us = add nuw nsw i64 %polly.access.mul.call1410.us, %polly.indvar398.us
  %polly.access.call1412.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1411.us
  %polly.access.call1412.load.us = load double, double* %polly.access.call1412.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar406.us, %polly.access.mul.Packed_MemRef_call1278.us
  %polly.access.Packed_MemRef_call1278.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278.us
  store double %polly.access.call1412.load.us, double* %polly.access.Packed_MemRef_call1278.us, align 8
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond987.not = icmp eq i64 %polly.indvar406.us, %smin989
  br i1 %exitcond987.not, label %polly.cond413.loopexit.us, label %polly.loop_header402.us

polly.then415.us:                                 ; preds = %polly.cond413.loopexit.us
  %polly.access.add.call1419.us = add nuw nsw i64 %polly.indvar398.us, %polly.access.mul.call1418
  %polly.access.call1420.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1419.us
  %polly.access.call1420.load.us = load double, double* %polly.access.call1420.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1278422.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278.us, %124
  %polly.access.Packed_MemRef_call1278423.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278422.us
  store double %polly.access.call1420.load.us, double* %polly.access.Packed_MemRef_call1278423.us, align 8
  br label %polly.merge414.us

polly.merge414.us:                                ; preds = %polly.then415.us, %polly.cond413.loopexit.us
  %polly.indvar_next399.us = add nuw nsw i64 %polly.indvar398.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next399.us, 1000
  br i1 %exitcond988.not, label %polly.loop_header424.preheader, label %polly.loop_header395.us

polly.cond413.loopexit.us:                        ; preds = %polly.loop_header402.us
  br i1 %.not847, label %polly.merge414.us, label %polly.then415.us

polly.loop_header389.split:                       ; preds = %polly.loop_header389
  br i1 %.not847, label %polly.loop_exit426, label %polly.loop_header395

polly.loop_exit426:                               ; preds = %polly.loop_exit433.loopexit.us, %polly.loop_header389.split, %polly.loop_header424.preheader
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next985 = add nsw i64 %indvars.iv984, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next393, 16
  br i1 %exitcond992.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_header389.split, %polly.loop_header395
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_header395 ], [ 0, %polly.loop_header389.split ]
  %polly.access.add.call1419 = add nuw nsw i64 %polly.indvar398, %polly.access.mul.call1418
  %polly.access.call1420 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1419
  %polly.access.call1420.load = load double, double* %polly.access.call1420, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1278421 = mul nuw nsw i64 %polly.indvar398, 1200
  %polly.access.add.Packed_MemRef_call1278422 = add nsw i64 %polly.access.mul.Packed_MemRef_call1278421, %124
  %polly.access.Packed_MemRef_call1278423 = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278422
  store double %polly.access.call1420.load, double* %polly.access.Packed_MemRef_call1278423, align 8
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next399, 1000
  br i1 %exitcond979.not, label %polly.loop_header424.preheader, label %polly.loop_header395

polly.loop_header424.preheader:                   ; preds = %polly.loop_header395, %polly.merge414.us
  %127 = mul nuw nsw i64 %125, 8000
  %128 = mul nuw nsw i64 %125, 9600
  br i1 %polly.loop_guard4051054, label %polly.loop_header424.us, label %polly.loop_exit426

polly.loop_header424.us:                          ; preds = %polly.loop_header424.preheader, %polly.loop_exit433.loopexit.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_exit433.loopexit.us ], [ 0, %polly.loop_header424.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar427.us, 3
  %scevgep442.us = getelementptr i8, i8* %call2, i64 %129
  %polly.access.mul.Packed_MemRef_call1278438.us = mul nuw nsw i64 %polly.indvar427.us, 1200
  %scevgep443.us = getelementptr i8, i8* %scevgep442.us, i64 %127
  %scevgep443444.us = bitcast i8* %scevgep443.us to double*
  %_p_scalar_445.us = load double, double* %scevgep443444.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278451.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278438.us, %124
  %polly.access.Packed_MemRef_call1278452.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278451.us
  %_p_scalar_453.us = load double, double* %polly.access.Packed_MemRef_call1278452.us, align 8
  br label %polly.loop_header431.us

polly.loop_header431.us:                          ; preds = %polly.loop_header431.us, %polly.loop_header424.us
  %polly.indvar435.us = phi i64 [ 0, %polly.loop_header424.us ], [ %polly.indvar_next436.us, %polly.loop_header431.us ]
  %130 = add nuw nsw i64 %polly.indvar435.us, %121
  %polly.access.add.Packed_MemRef_call1278439.us = add nuw nsw i64 %polly.indvar435.us, %polly.access.mul.Packed_MemRef_call1278438.us
  %polly.access.Packed_MemRef_call1278440.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call1278440.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_445.us, %_p_scalar_441.us
  %131 = mul nuw nsw i64 %130, 8000
  %scevgep447.us = getelementptr i8, i8* %scevgep442.us, i64 %131
  %scevgep447448.us = bitcast i8* %scevgep447.us to double*
  %_p_scalar_449.us = load double, double* %scevgep447448.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_453.us, %_p_scalar_449.us
  %132 = shl i64 %130, 3
  %133 = add nuw nsw i64 %132, %128
  %scevgep454.us = getelementptr i8, i8* %call, i64 %133
  %scevgep454455.us = bitcast i8* %scevgep454.us to double*
  %_p_scalar_456.us = load double, double* %scevgep454455.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_456.us
  store double %p_add42.i79.us, double* %scevgep454455.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next436.us = add nuw nsw i64 %polly.indvar435.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar435.us, %smin989
  br i1 %exitcond990.not, label %polly.loop_exit433.loopexit.us, label %polly.loop_header431.us

polly.loop_exit433.loopexit.us:                   ; preds = %polly.loop_header431.us
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next428.us, 1000
  br i1 %exitcond991.not, label %polly.loop_exit426, label %polly.loop_header424.us

polly.start459:                                   ; preds = %init_array.exit
  %malloccall461 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header545

polly.exiting460:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall461)
  br label %kernel_syr2k.exit

polly.loop_header545:                             ; preds = %polly.loop_exit553, %polly.start459
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit553 ], [ 0, %polly.start459 ]
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_exit553 ], [ 1, %polly.start459 ]
  %134 = add i64 %indvar, 1
  %135 = mul nuw nsw i64 %polly.indvar548, 9600
  %scevgep557 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1144 = icmp ult i64 %134, 4
  br i1 %min.iters.check1144, label %polly.loop_header551.preheader, label %vector.ph1145

vector.ph1145:                                    ; preds = %polly.loop_header545
  %n.vec1147 = and i64 %134, -4
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %vector.ph1145
  %index1148 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1149, %vector.body1143 ]
  %136 = shl nuw nsw i64 %index1148, 3
  %137 = getelementptr i8, i8* %scevgep557, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1152 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !83, !noalias !85
  %139 = fmul fast <4 x double> %wide.load1152, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !83, !noalias !85
  %index.next1149 = add i64 %index1148, 4
  %141 = icmp eq i64 %index.next1149, %n.vec1147
  br i1 %141, label %middle.block1141, label %vector.body1143, !llvm.loop !89

middle.block1141:                                 ; preds = %vector.body1143
  %cmp.n1151 = icmp eq i64 %134, %n.vec1147
  br i1 %cmp.n1151, label %polly.loop_exit553, label %polly.loop_header551.preheader

polly.loop_header551.preheader:                   ; preds = %polly.loop_header545, %middle.block1141
  %polly.indvar554.ph = phi i64 [ 0, %polly.loop_header545 ], [ %n.vec1147, %middle.block1141 ]
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_header551, %middle.block1141
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next549, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1018.not, label %polly.loop_header561.preheader, label %polly.loop_header545

polly.loop_header561.preheader:                   ; preds = %polly.loop_exit553
  %Packed_MemRef_call1462 = bitcast i8* %malloccall461 to double*
  br label %polly.loop_header561

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_header551
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_header551 ], [ %polly.indvar554.ph, %polly.loop_header551.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar554, 3
  %scevgep558 = getelementptr i8, i8* %scevgep557, i64 %142
  %scevgep558559 = bitcast i8* %scevgep558 to double*
  %_p_scalar_560 = load double, double* %scevgep558559, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_560, 1.200000e+00
  store double %p_mul.i, double* %scevgep558559, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next555, %polly.indvar548
  br i1 %exitcond1017.not, label %polly.loop_exit553, label %polly.loop_header551, !llvm.loop !90

polly.loop_header561:                             ; preds = %polly.loop_header561.preheader, %polly.loop_exit569
  %indvars.iv1013 = phi i64 [ 1, %polly.loop_header561.preheader ], [ %indvars.iv.next1014, %polly.loop_exit569 ]
  %indvars.iv1000 = phi i64 [ 0, %polly.loop_header561.preheader ], [ %indvars.iv.next1001, %polly.loop_exit569 ]
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header561.preheader ], [ %polly.indvar_next565, %polly.loop_exit569 ]
  %143 = shl nsw i64 %polly.indvar564, 4
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 16
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar_next565, 75
  br i1 %exitcond1016.not, label %polly.exiting460, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %polly.loop_exit575 ], [ %indvars.iv1000, %polly.loop_header561 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header561 ]
  %144 = shl nsw i64 %polly.indvar570, 4
  %145 = sub nsw i64 %143, %144
  %146 = add nuw nsw i64 %144, 16
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit610
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, -16
  %exitcond1015.not = icmp eq i64 %polly.indvar_next571, %indvars.iv1013
  br i1 %exitcond1015.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_exit610, %polly.loop_header567
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %polly.loop_exit610 ], [ %indvars.iv1002, %polly.loop_header567 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit610 ], [ 0, %polly.loop_header567 ]
  %smin1009 = call i64 @llvm.smin.i64(i64 %indvars.iv1004, i64 15)
  %147 = add nsw i64 %polly.indvar576, %145
  %polly.loop_guard5891055 = icmp sgt i64 %147, -1
  %148 = add nuw nsw i64 %polly.indvar576, %143
  %.not848 = icmp ult i64 %148, %146
  %polly.access.mul.call1602 = mul nuw nsw i64 %148, 1000
  br i1 %polly.loop_guard5891055, label %polly.loop_header579.us, label %polly.loop_header573.split

polly.loop_header579.us:                          ; preds = %polly.loop_header573, %polly.merge598.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.merge598.us ], [ 0, %polly.loop_header573 ]
  %polly.access.mul.Packed_MemRef_call1462.us = mul nuw nsw i64 %polly.indvar582.us, 1200
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_header579.us, %polly.loop_header586.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_header586.us ], [ 0, %polly.loop_header579.us ]
  %149 = add nuw nsw i64 %polly.indvar590.us, %144
  %polly.access.mul.call1594.us = mul nuw nsw i64 %149, 1000
  %polly.access.add.call1595.us = add nuw nsw i64 %polly.access.mul.call1594.us, %polly.indvar582.us
  %polly.access.call1596.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1595.us
  %polly.access.call1596.load.us = load double, double* %polly.access.call1596.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1462.us = add nuw nsw i64 %polly.indvar590.us, %polly.access.mul.Packed_MemRef_call1462.us
  %polly.access.Packed_MemRef_call1462.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462.us
  store double %polly.access.call1596.load.us, double* %polly.access.Packed_MemRef_call1462.us, align 8
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar590.us, %smin1009
  br i1 %exitcond1007.not, label %polly.cond597.loopexit.us, label %polly.loop_header586.us

polly.then599.us:                                 ; preds = %polly.cond597.loopexit.us
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.indvar582.us, %polly.access.mul.call1602
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1462606.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1462.us, %147
  %polly.access.Packed_MemRef_call1462607.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462606.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1462607.us, align 8
  br label %polly.merge598.us

polly.merge598.us:                                ; preds = %polly.then599.us, %polly.cond597.loopexit.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar_next583.us, 1000
  br i1 %exitcond1008.not, label %polly.loop_header608.preheader, label %polly.loop_header579.us

polly.cond597.loopexit.us:                        ; preds = %polly.loop_header586.us
  br i1 %.not848, label %polly.merge598.us, label %polly.then599.us

polly.loop_header573.split:                       ; preds = %polly.loop_header573
  br i1 %.not848, label %polly.loop_exit610, label %polly.loop_header579

polly.loop_exit610:                               ; preds = %polly.loop_exit617.loopexit.us, %polly.loop_header573.split, %polly.loop_header608.preheader
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar_next577, 16
  br i1 %exitcond1012.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_header573.split, %polly.loop_header579
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_header579 ], [ 0, %polly.loop_header573.split ]
  %polly.access.add.call1603 = add nuw nsw i64 %polly.indvar582, %polly.access.mul.call1602
  %polly.access.call1604 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1603
  %polly.access.call1604.load = load double, double* %polly.access.call1604, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1462605 = mul nuw nsw i64 %polly.indvar582, 1200
  %polly.access.add.Packed_MemRef_call1462606 = add nsw i64 %polly.access.mul.Packed_MemRef_call1462605, %147
  %polly.access.Packed_MemRef_call1462607 = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462606
  store double %polly.access.call1604.load, double* %polly.access.Packed_MemRef_call1462607, align 8
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next583, 1000
  br i1 %exitcond999.not, label %polly.loop_header608.preheader, label %polly.loop_header579

polly.loop_header608.preheader:                   ; preds = %polly.loop_header579, %polly.merge598.us
  %150 = mul nuw nsw i64 %148, 8000
  %151 = mul nuw nsw i64 %148, 9600
  br i1 %polly.loop_guard5891055, label %polly.loop_header608.us, label %polly.loop_exit610

polly.loop_header608.us:                          ; preds = %polly.loop_header608.preheader, %polly.loop_exit617.loopexit.us
  %polly.indvar611.us = phi i64 [ %polly.indvar_next612.us, %polly.loop_exit617.loopexit.us ], [ 0, %polly.loop_header608.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar611.us, 3
  %scevgep626.us = getelementptr i8, i8* %call2, i64 %152
  %polly.access.mul.Packed_MemRef_call1462622.us = mul nuw nsw i64 %polly.indvar611.us, 1200
  %scevgep627.us = getelementptr i8, i8* %scevgep626.us, i64 %150
  %scevgep627628.us = bitcast i8* %scevgep627.us to double*
  %_p_scalar_629.us = load double, double* %scevgep627628.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1462635.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1462622.us, %147
  %polly.access.Packed_MemRef_call1462636.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462635.us
  %_p_scalar_637.us = load double, double* %polly.access.Packed_MemRef_call1462636.us, align 8
  br label %polly.loop_header615.us

polly.loop_header615.us:                          ; preds = %polly.loop_header615.us, %polly.loop_header608.us
  %polly.indvar619.us = phi i64 [ 0, %polly.loop_header608.us ], [ %polly.indvar_next620.us, %polly.loop_header615.us ]
  %153 = add nuw nsw i64 %polly.indvar619.us, %144
  %polly.access.add.Packed_MemRef_call1462623.us = add nuw nsw i64 %polly.indvar619.us, %polly.access.mul.Packed_MemRef_call1462622.us
  %polly.access.Packed_MemRef_call1462624.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462623.us
  %_p_scalar_625.us = load double, double* %polly.access.Packed_MemRef_call1462624.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_629.us, %_p_scalar_625.us
  %154 = mul nuw nsw i64 %153, 8000
  %scevgep631.us = getelementptr i8, i8* %scevgep626.us, i64 %154
  %scevgep631632.us = bitcast i8* %scevgep631.us to double*
  %_p_scalar_633.us = load double, double* %scevgep631632.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_637.us, %_p_scalar_633.us
  %155 = shl i64 %153, 3
  %156 = add nuw nsw i64 %155, %151
  %scevgep638.us = getelementptr i8, i8* %call, i64 %156
  %scevgep638639.us = bitcast i8* %scevgep638.us to double*
  %_p_scalar_640.us = load double, double* %scevgep638639.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_640.us
  store double %p_add42.i.us, double* %scevgep638639.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar619.us, %smin1009
  br i1 %exitcond1010.not, label %polly.loop_exit617.loopexit.us, label %polly.loop_header615.us

polly.loop_exit617.loopexit.us:                   ; preds = %polly.loop_header615.us
  %polly.indvar_next612.us = add nuw nsw i64 %polly.indvar611.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next612.us, 1000
  br i1 %exitcond1011.not, label %polly.loop_exit610, label %polly.loop_header608.us

polly.loop_header767:                             ; preds = %entry, %polly.loop_exit775
  %indvars.iv1043 = phi i64 [ %indvars.iv.next1044, %polly.loop_exit775 ], [ 0, %entry ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %entry ]
  %smin1045 = call i64 @llvm.smin.i64(i64 %indvars.iv1043, i64 -1168)
  %157 = shl nsw i64 %polly.indvar770, 5
  %158 = add nsw i64 %smin1045, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond1048.not, label %polly.loop_header794, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %159 = mul nsw i64 %polly.indvar776, -32
  %smin = call i64 @llvm.smin.i64(i64 %159, i64 -1168)
  %160 = add nsw i64 %smin, 1200
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 -1168)
  %161 = shl nsw i64 %polly.indvar776, 5
  %162 = add nsw i64 %smin1041, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond1047.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %163 = add nuw nsw i64 %polly.indvar782, %157
  %164 = trunc i64 %163 to i32
  %165 = mul nuw nsw i64 %163, 9600
  %min.iters.check = icmp eq i64 %160, 0
  br i1 %min.iters.check, label %polly.loop_header785, label %vector.ph1083

vector.ph1083:                                    ; preds = %polly.loop_header779
  %broadcast.splatinsert1090 = insertelement <4 x i64> poison, i64 %161, i32 0
  %broadcast.splat1091 = shufflevector <4 x i64> %broadcast.splatinsert1090, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %vector.ph1083
  %index1084 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1085, %vector.body1082 ]
  %vec.ind1088 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1083 ], [ %vec.ind.next1089, %vector.body1082 ]
  %166 = add nuw nsw <4 x i64> %vec.ind1088, %broadcast.splat1091
  %167 = trunc <4 x i64> %166 to <4 x i32>
  %168 = mul <4 x i32> %broadcast.splat1093, %167
  %169 = add <4 x i32> %168, <i32 3, i32 3, i32 3, i32 3>
  %170 = urem <4 x i32> %169, <i32 1200, i32 1200, i32 1200, i32 1200>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %173 = extractelement <4 x i64> %166, i32 0
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %165
  %176 = getelementptr i8, i8* %call, i64 %175
  %177 = bitcast i8* %176 to <4 x double>*
  store <4 x double> %172, <4 x double>* %177, align 8, !alias.scope !93, !noalias !95
  %index.next1085 = add i64 %index1084, 4
  %vec.ind.next1089 = add <4 x i64> %vec.ind1088, <i64 4, i64 4, i64 4, i64 4>
  %178 = icmp eq i64 %index.next1085, %160
  br i1 %178, label %polly.loop_exit787, label %vector.body1082, !llvm.loop !98

polly.loop_exit787:                               ; preds = %vector.body1082, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar782, %158
  br i1 %exitcond1046.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %179 = add nuw nsw i64 %polly.indvar788, %161
  %180 = trunc i64 %179 to i32
  %181 = mul i32 %180, %164
  %182 = add i32 %181, 3
  %183 = urem i32 %182, 1200
  %p_conv31.i = sitofp i32 %183 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %184 = shl i64 %179, 3
  %185 = add nuw nsw i64 %184, %165
  %scevgep791 = getelementptr i8, i8* %call, i64 %185
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div33.i, double* %scevgep791792, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar788, %162
  br i1 %exitcond1042.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !99

polly.loop_header794:                             ; preds = %polly.loop_exit775, %polly.loop_exit802
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %polly.loop_exit802 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar797 = phi i64 [ %polly.indvar_next798, %polly.loop_exit802 ], [ 0, %polly.loop_exit775 ]
  %smin1035 = call i64 @llvm.smin.i64(i64 %indvars.iv1033, i64 -1168)
  %186 = shl nsw i64 %polly.indvar797, 5
  %187 = add nsw i64 %smin1035, 1199
  br label %polly.loop_header800

polly.loop_exit802:                               ; preds = %polly.loop_exit808
  %polly.indvar_next798 = add nuw nsw i64 %polly.indvar797, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next798, 38
  br i1 %exitcond1038.not, label %polly.loop_header820, label %polly.loop_header794

polly.loop_header800:                             ; preds = %polly.loop_exit808, %polly.loop_header794
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit808 ], [ 0, %polly.loop_header794 ]
  %polly.indvar803 = phi i64 [ %polly.indvar_next804, %polly.loop_exit808 ], [ 0, %polly.loop_header794 ]
  %188 = mul nsw i64 %polly.indvar803, -32
  %smin1097 = call i64 @llvm.smin.i64(i64 %188, i64 -968)
  %189 = add nsw i64 %smin1097, 1000
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1029, i64 -968)
  %190 = shl nsw i64 %polly.indvar803, 5
  %191 = add nsw i64 %smin1031, 999
  br label %polly.loop_header806

polly.loop_exit808:                               ; preds = %polly.loop_exit814
  %polly.indvar_next804 = add nuw nsw i64 %polly.indvar803, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -32
  %exitcond1037.not = icmp eq i64 %polly.indvar_next804, 32
  br i1 %exitcond1037.not, label %polly.loop_exit802, label %polly.loop_header800

polly.loop_header806:                             ; preds = %polly.loop_exit814, %polly.loop_header800
  %polly.indvar809 = phi i64 [ 0, %polly.loop_header800 ], [ %polly.indvar_next810, %polly.loop_exit814 ]
  %192 = add nuw nsw i64 %polly.indvar809, %186
  %193 = trunc i64 %192 to i32
  %194 = mul nuw nsw i64 %192, 8000
  %min.iters.check1098 = icmp eq i64 %189, 0
  br i1 %min.iters.check1098, label %polly.loop_header812, label %vector.ph1099

vector.ph1099:                                    ; preds = %polly.loop_header806
  %broadcast.splatinsert1108 = insertelement <4 x i64> poison, i64 %190, i32 0
  %broadcast.splat1109 = shufflevector <4 x i64> %broadcast.splatinsert1108, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %193, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1099
  %index1102 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1103, %vector.body1096 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1099 ], [ %vec.ind.next1107, %vector.body1096 ]
  %195 = add nuw nsw <4 x i64> %vec.ind1106, %broadcast.splat1109
  %196 = trunc <4 x i64> %195 to <4 x i32>
  %197 = mul <4 x i32> %broadcast.splat1111, %196
  %198 = add <4 x i32> %197, <i32 2, i32 2, i32 2, i32 2>
  %199 = urem <4 x i32> %198, <i32 1000, i32 1000, i32 1000, i32 1000>
  %200 = sitofp <4 x i32> %199 to <4 x double>
  %201 = fmul fast <4 x double> %200, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %202 = extractelement <4 x i64> %195, i32 0
  %203 = shl i64 %202, 3
  %204 = add nuw nsw i64 %203, %194
  %205 = getelementptr i8, i8* %call2, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %201, <4 x double>* %206, align 8, !alias.scope !97, !noalias !100
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %207 = icmp eq i64 %index.next1103, %189
  br i1 %207, label %polly.loop_exit814, label %vector.body1096, !llvm.loop !101

polly.loop_exit814:                               ; preds = %vector.body1096, %polly.loop_header812
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar809, %187
  br i1 %exitcond1036.not, label %polly.loop_exit808, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_header806, %polly.loop_header812
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_header812 ], [ 0, %polly.loop_header806 ]
  %208 = add nuw nsw i64 %polly.indvar815, %190
  %209 = trunc i64 %208 to i32
  %210 = mul i32 %209, %193
  %211 = add i32 %210, 2
  %212 = urem i32 %211, 1000
  %p_conv10.i = sitofp i32 %212 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %213 = shl i64 %208, 3
  %214 = add nuw nsw i64 %213, %194
  %scevgep818 = getelementptr i8, i8* %call2, i64 %214
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div12.i, double* %scevgep818819, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar815, %191
  br i1 %exitcond1032.not, label %polly.loop_exit814, label %polly.loop_header812, !llvm.loop !102

polly.loop_header820:                             ; preds = %polly.loop_exit802, %polly.loop_exit828
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit828 ], [ 0, %polly.loop_exit802 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit802 ]
  %smin1025 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 -1168)
  %215 = shl nsw i64 %polly.indvar823, 5
  %216 = add nsw i64 %smin1025, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1028.not, label %init_array.exit, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %217 = mul nsw i64 %polly.indvar829, -32
  %smin1115 = call i64 @llvm.smin.i64(i64 %217, i64 -968)
  %218 = add nsw i64 %smin1115, 1000
  %smin1021 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 -968)
  %219 = shl nsw i64 %polly.indvar829, 5
  %220 = add nsw i64 %smin1021, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -32
  %exitcond1027.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1027.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %221 = add nuw nsw i64 %polly.indvar835, %215
  %222 = trunc i64 %221 to i32
  %223 = mul nuw nsw i64 %221, 8000
  %min.iters.check1116 = icmp eq i64 %218, 0
  br i1 %min.iters.check1116, label %polly.loop_header838, label %vector.ph1117

vector.ph1117:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1126 = insertelement <4 x i64> poison, i64 %219, i32 0
  %broadcast.splat1127 = shufflevector <4 x i64> %broadcast.splatinsert1126, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %222, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1117
  %index1120 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1121, %vector.body1114 ]
  %vec.ind1124 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1117 ], [ %vec.ind.next1125, %vector.body1114 ]
  %224 = add nuw nsw <4 x i64> %vec.ind1124, %broadcast.splat1127
  %225 = trunc <4 x i64> %224 to <4 x i32>
  %226 = mul <4 x i32> %broadcast.splat1129, %225
  %227 = add <4 x i32> %226, <i32 1, i32 1, i32 1, i32 1>
  %228 = urem <4 x i32> %227, <i32 1200, i32 1200, i32 1200, i32 1200>
  %229 = sitofp <4 x i32> %228 to <4 x double>
  %230 = fmul fast <4 x double> %229, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %231 = extractelement <4 x i64> %224, i32 0
  %232 = shl i64 %231, 3
  %233 = add nuw nsw i64 %232, %223
  %234 = getelementptr i8, i8* %call1, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %230, <4 x double>* %235, align 8, !alias.scope !96, !noalias !103
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1125 = add <4 x i64> %vec.ind1124, <i64 4, i64 4, i64 4, i64 4>
  %236 = icmp eq i64 %index.next1121, %218
  br i1 %236, label %polly.loop_exit840, label %vector.body1114, !llvm.loop !104

polly.loop_exit840:                               ; preds = %vector.body1114, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar835, %216
  br i1 %exitcond1026.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %237 = add nuw nsw i64 %polly.indvar841, %219
  %238 = trunc i64 %237 to i32
  %239 = mul i32 %238, %222
  %240 = add i32 %239, 1
  %241 = urem i32 %240, 1200
  %p_conv.i = sitofp i32 %241 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %242 = shl i64 %237, 3
  %243 = add nuw nsw i64 %242, %223
  %scevgep845 = getelementptr i8, i8* %call1, i64 %243
  %scevgep845846 = bitcast i8* %scevgep845 to double*
  store double %p_div.i, double* %scevgep845846, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar841, %220
  br i1 %exitcond1022.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 2048}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !25, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
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
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
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
