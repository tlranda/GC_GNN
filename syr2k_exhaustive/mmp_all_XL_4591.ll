; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4591.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4591.c"
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
  %scevgep1076 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1075 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1074 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1073 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1073, %scevgep1076
  %bound1 = icmp ult i8* %scevgep1075, %scevgep1074
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
  br i1 %exitcond18.not.i, label %vector.ph1080, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1080:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1087 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1088 = shufflevector <4 x i64> %broadcast.splatinsert1087, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1080
  %index1081 = phi i64 [ 0, %vector.ph1080 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1085 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1080 ], [ %vec.ind.next1086, %vector.body1079 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1085, %broadcast.splat1088
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv7.i, i64 %index1081
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1086 = add <4 x i64> %vec.ind1085, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1082, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1079, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1079
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1080, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit828
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start459, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1142 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1142, label %for.body3.i46.preheader1219, label %vector.ph1143

vector.ph1143:                                    ; preds = %for.body3.i46.preheader
  %n.vec1145 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1143
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1147, %vector.body1141 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i, i64 %index1146
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1147 = add i64 %index1146, 4
  %46 = icmp eq i64 %index.next1147, %n.vec1145
  br i1 %46, label %middle.block1139, label %vector.body1141, !llvm.loop !18

middle.block1139:                                 ; preds = %vector.body1141
  %cmp.n1149 = icmp eq i64 %indvars.iv21.i, %n.vec1145
  br i1 %cmp.n1149, label %for.inc6.i, label %for.body3.i46.preheader1219

for.body3.i46.preheader1219:                      ; preds = %for.body3.i46.preheader, %middle.block1139
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1145, %middle.block1139 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1219, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1219 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1139, %for.cond1.preheader.i45
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
  %min.iters.check1165 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1165, label %for.body3.i60.preheader1217, label %vector.ph1166

vector.ph1166:                                    ; preds = %for.body3.i60.preheader
  %n.vec1168 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1166
  %index1169 = phi i64 [ 0, %vector.ph1166 ], [ %index.next1170, %vector.body1164 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i52, i64 %index1169
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1173 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1173, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1170 = add i64 %index1169, 4
  %57 = icmp eq i64 %index.next1170, %n.vec1168
  br i1 %57, label %middle.block1162, label %vector.body1164, !llvm.loop !54

middle.block1162:                                 ; preds = %vector.body1164
  %cmp.n1172 = icmp eq i64 %indvars.iv21.i52, %n.vec1168
  br i1 %cmp.n1172, label %for.inc6.i63, label %for.body3.i60.preheader1217

for.body3.i60.preheader1217:                      ; preds = %for.body3.i60.preheader, %middle.block1162
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1168, %middle.block1162 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1217, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1217 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1162, %for.cond1.preheader.i54
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
  %min.iters.check1191 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1191, label %for.body3.i99.preheader1215, label %vector.ph1192

vector.ph1192:                                    ; preds = %for.body3.i99.preheader
  %n.vec1194 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1192
  %index1195 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1196, %vector.body1190 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i91, i64 %index1195
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1199 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1199, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1196 = add i64 %index1195, 4
  %68 = icmp eq i64 %index.next1196, %n.vec1194
  br i1 %68, label %middle.block1188, label %vector.body1190, !llvm.loop !56

middle.block1188:                                 ; preds = %vector.body1190
  %cmp.n1198 = icmp eq i64 %indvars.iv21.i91, %n.vec1194
  br i1 %cmp.n1198, label %for.inc6.i102, label %for.body3.i99.preheader1215

for.body3.i99.preheader1215:                      ; preds = %for.body3.i99.preheader, %middle.block1188
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1194, %middle.block1188 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1215, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1215 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call793, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1188, %for.cond1.preheader.i93
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
  %indvar1203 = phi i64 [ %indvar.next1204, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1203, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1205 = icmp ult i64 %88, 4
  br i1 %min.iters.check1205, label %polly.loop_header191.preheader, label %vector.ph1206

vector.ph1206:                                    ; preds = %polly.loop_header
  %n.vec1208 = and i64 %88, -4
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1210, %vector.body1202 ]
  %90 = shl nuw nsw i64 %index1209, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1213 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1213, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1210 = add i64 %index1209, 4
  %95 = icmp eq i64 %index.next1210, %n.vec1208
  br i1 %95, label %middle.block1200, label %vector.body1202, !llvm.loop !68

middle.block1200:                                 ; preds = %vector.body1202
  %cmp.n1212 = icmp eq i64 %88, %n.vec1208
  br i1 %cmp.n1212, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1200
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1208, %middle.block1200 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1200
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1204 = add i64 %indvar1203, 1
  br i1 %exitcond981.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond980.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond980.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv976 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next977, %polly.loop_exit207 ]
  %indvars.iv972 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next973, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin974 = call i64 @llvm.smin.i64(i64 %indvars.iv972, i64 -1168)
  %97 = shl nsw i64 %polly.indvar202, 5
  %98 = add nsw i64 %smin974, 1199
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next973 = add nsw i64 %indvars.iv972, -32
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1
  %exitcond979.not = icmp eq i64 %polly.indvar_next203, 38
  br i1 %exitcond979.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %polly.loop_exit213 ], [ %indvars.iv, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = shl nsw i64 %polly.indvar208, 5
  %100 = sub nsw i64 %97, %99
  %101 = add nuw nsw i64 %99, 32
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next964 = add nsw i64 %indvars.iv963, -32
  %exitcond978.not = icmp eq i64 %polly.indvar_next209, %indvars.iv976
  br i1 %exitcond978.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit242, %polly.loop_header205
  %indvars.iv965 = phi i64 [ %indvars.iv.next966, %polly.loop_exit242 ], [ %indvars.iv963, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit242 ], [ 0, %polly.loop_header205 ]
  %smin969 = call i64 @llvm.smin.i64(i64 %indvars.iv965, i64 31)
  %102 = add nsw i64 %polly.indvar214, %100
  %polly.loop_guard1062 = icmp sgt i64 %102, -1
  %103 = add nuw nsw i64 %polly.indvar214, %97
  %.not = icmp ult i64 %103, %101
  %polly.access.mul.call1234 = mul nuw nsw i64 %103, 1000
  br i1 %polly.loop_guard1062, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %104 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.call1230.us = mul nuw nsw i64 %104, 1000
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
  %polly.access.add.Packed_MemRef_call1238.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %102
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
  %exitcond975.not = icmp eq i64 %polly.indvar214, %98
  br i1 %exitcond975.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_header217
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_header217 ], [ 0, %polly.loop_header211.split ]
  %polly.access.add.call1235 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.call1234
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.Packed_MemRef_call1238 = add nsw i64 %polly.access.mul.Packed_MemRef_call1237, %102
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, 1000
  br i1 %exitcond.not, label %polly.loop_header240.preheader, label %polly.loop_header217

polly.loop_header240.preheader:                   ; preds = %polly.loop_header217, %polly.merge.us
  %105 = mul nuw nsw i64 %103, 8000
  %106 = mul nuw nsw i64 %103, 9600
  br i1 %polly.loop_guard1062, label %polly.loop_header240.us, label %polly.loop_exit242

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader, %polly.loop_exit249.loopexit.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_exit249.loopexit.us ], [ 0, %polly.loop_header240.preheader ]
  %107 = shl nuw nsw i64 %polly.indvar243.us, 3
  %scevgep258.us = getelementptr i8, i8* %call2, i64 %107
  %polly.access.mul.Packed_MemRef_call1254.us = mul nuw nsw i64 %polly.indvar243.us, 1200
  %scevgep259.us = getelementptr i8, i8* %scevgep258.us, i64 %105
  %scevgep259260.us = bitcast i8* %scevgep259.us to double*
  %_p_scalar_261.us = load double, double* %scevgep259260.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1267.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1254.us, %102
  %polly.access.Packed_MemRef_call1268.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1267.us
  %_p_scalar_269.us = load double, double* %polly.access.Packed_MemRef_call1268.us, align 8
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.us, %polly.loop_header240.us
  %polly.indvar251.us = phi i64 [ 0, %polly.loop_header240.us ], [ %polly.indvar_next252.us, %polly.loop_header247.us ]
  %108 = add nuw nsw i64 %polly.indvar251.us, %99
  %polly.access.add.Packed_MemRef_call1255.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1254.us
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  %_p_scalar_257.us = load double, double* %polly.access.Packed_MemRef_call1256.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_261.us, %_p_scalar_257.us
  %109 = mul nuw nsw i64 %108, 8000
  %scevgep263.us = getelementptr i8, i8* %scevgep258.us, i64 %109
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_269.us, %_p_scalar_265.us
  %110 = shl i64 %108, 3
  %111 = add nuw nsw i64 %110, %106
  %scevgep270.us = getelementptr i8, i8* %call, i64 %111
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
  %indvar1177 = phi i64 [ %indvar.next1178, %polly.loop_exit369 ], [ 0, %polly.start275 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 1, %polly.start275 ]
  %112 = add i64 %indvar1177, 1
  %113 = mul nuw nsw i64 %polly.indvar364, 9600
  %scevgep373 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1179 = icmp ult i64 %112, 4
  br i1 %min.iters.check1179, label %polly.loop_header367.preheader, label %vector.ph1180

vector.ph1180:                                    ; preds = %polly.loop_header361
  %n.vec1182 = and i64 %112, -4
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1180
  %index1183 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1184, %vector.body1176 ]
  %114 = shl nuw nsw i64 %index1183, 3
  %115 = getelementptr i8, i8* %scevgep373, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1187 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !73, !noalias !75
  %117 = fmul fast <4 x double> %wide.load1187, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !73, !noalias !75
  %index.next1184 = add i64 %index1183, 4
  %119 = icmp eq i64 %index.next1184, %n.vec1182
  br i1 %119, label %middle.block1174, label %vector.body1176, !llvm.loop !79

middle.block1174:                                 ; preds = %vector.body1176
  %cmp.n1186 = icmp eq i64 %112, %n.vec1182
  br i1 %cmp.n1186, label %polly.loop_exit369, label %polly.loop_header367.preheader

polly.loop_header367.preheader:                   ; preds = %polly.loop_header361, %middle.block1174
  %polly.indvar370.ph = phi i64 [ 0, %polly.loop_header361 ], [ %n.vec1182, %middle.block1174 ]
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_header367, %middle.block1174
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next365, 1200
  %indvar.next1178 = add i64 %indvar1177, 1
  br i1 %exitcond1004.not, label %polly.loop_header377.preheader, label %polly.loop_header361

polly.loop_header377.preheader:                   ; preds = %polly.loop_exit369
  %Packed_MemRef_call1278 = bitcast i8* %malloccall277 to double*
  br label %polly.loop_header377

polly.loop_header367:                             ; preds = %polly.loop_header367.preheader, %polly.loop_header367
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_header367 ], [ %polly.indvar370.ph, %polly.loop_header367.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar370, 3
  %scevgep374 = getelementptr i8, i8* %scevgep373, i64 %120
  %scevgep374375 = bitcast i8* %scevgep374 to double*
  %_p_scalar_376 = load double, double* %scevgep374375, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_376, 1.200000e+00
  store double %p_mul.i57, double* %scevgep374375, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next371, %polly.indvar364
  br i1 %exitcond1003.not, label %polly.loop_exit369, label %polly.loop_header367, !llvm.loop !80

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_exit385
  %indvars.iv999 = phi i64 [ 1, %polly.loop_header377.preheader ], [ %indvars.iv.next1000, %polly.loop_exit385 ]
  %indvars.iv995 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next996, %polly.loop_exit385 ]
  %indvars.iv983 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %indvars.iv.next984, %polly.loop_exit385 ]
  %polly.indvar380 = phi i64 [ 0, %polly.loop_header377.preheader ], [ %polly.indvar_next381, %polly.loop_exit385 ]
  %smin997 = call i64 @llvm.smin.i64(i64 %indvars.iv995, i64 -1168)
  %121 = shl nsw i64 %polly.indvar380, 5
  %122 = add nsw i64 %smin997, 1199
  br label %polly.loop_header383

polly.loop_exit385:                               ; preds = %polly.loop_exit391
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 32
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, -32
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar_next381, 38
  br i1 %exitcond1002.not, label %polly.exiting276, label %polly.loop_header377

polly.loop_header383:                             ; preds = %polly.loop_exit391, %polly.loop_header377
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit391 ], [ %indvars.iv983, %polly.loop_header377 ]
  %polly.indvar386 = phi i64 [ %polly.indvar_next387, %polly.loop_exit391 ], [ 0, %polly.loop_header377 ]
  %123 = shl nsw i64 %polly.indvar386, 5
  %124 = sub nsw i64 %121, %123
  %125 = add nuw nsw i64 %123, 32
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit426
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next986 = add nsw i64 %indvars.iv985, -32
  %exitcond1001.not = icmp eq i64 %polly.indvar_next387, %indvars.iv999
  br i1 %exitcond1001.not, label %polly.loop_exit385, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit426, %polly.loop_header383
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit426 ], [ %indvars.iv985, %polly.loop_header383 ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit426 ], [ 0, %polly.loop_header383 ]
  %smin992 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 31)
  %126 = add nsw i64 %polly.indvar392, %124
  %polly.loop_guard4051063 = icmp sgt i64 %126, -1
  %127 = add nuw nsw i64 %polly.indvar392, %121
  %.not847 = icmp ult i64 %127, %125
  %polly.access.mul.call1418 = mul nuw nsw i64 %127, 1000
  br i1 %polly.loop_guard4051063, label %polly.loop_header395.us, label %polly.loop_header389.split

polly.loop_header395.us:                          ; preds = %polly.loop_header389, %polly.merge414.us
  %polly.indvar398.us = phi i64 [ %polly.indvar_next399.us, %polly.merge414.us ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1278.us = mul nuw nsw i64 %polly.indvar398.us, 1200
  br label %polly.loop_header402.us

polly.loop_header402.us:                          ; preds = %polly.loop_header395.us, %polly.loop_header402.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_header402.us ], [ 0, %polly.loop_header395.us ]
  %128 = add nuw nsw i64 %polly.indvar406.us, %123
  %polly.access.mul.call1410.us = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1411.us = add nuw nsw i64 %polly.access.mul.call1410.us, %polly.indvar398.us
  %polly.access.call1412.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1411.us
  %polly.access.call1412.load.us = load double, double* %polly.access.call1412.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar406.us, %polly.access.mul.Packed_MemRef_call1278.us
  %polly.access.Packed_MemRef_call1278.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278.us
  store double %polly.access.call1412.load.us, double* %polly.access.Packed_MemRef_call1278.us, align 8
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond990.not = icmp eq i64 %polly.indvar406.us, %smin992
  br i1 %exitcond990.not, label %polly.cond413.loopexit.us, label %polly.loop_header402.us

polly.then415.us:                                 ; preds = %polly.cond413.loopexit.us
  %polly.access.add.call1419.us = add nuw nsw i64 %polly.indvar398.us, %polly.access.mul.call1418
  %polly.access.call1420.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1419.us
  %polly.access.call1420.load.us = load double, double* %polly.access.call1420.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1278422.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278.us, %126
  %polly.access.Packed_MemRef_call1278423.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278422.us
  store double %polly.access.call1420.load.us, double* %polly.access.Packed_MemRef_call1278423.us, align 8
  br label %polly.merge414.us

polly.merge414.us:                                ; preds = %polly.then415.us, %polly.cond413.loopexit.us
  %polly.indvar_next399.us = add nuw nsw i64 %polly.indvar398.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next399.us, 1000
  br i1 %exitcond991.not, label %polly.loop_header424.preheader, label %polly.loop_header395.us

polly.cond413.loopexit.us:                        ; preds = %polly.loop_header402.us
  br i1 %.not847, label %polly.merge414.us, label %polly.then415.us

polly.loop_header389.split:                       ; preds = %polly.loop_header389
  br i1 %.not847, label %polly.loop_exit426, label %polly.loop_header395

polly.loop_exit426:                               ; preds = %polly.loop_exit433.loopexit.us, %polly.loop_header389.split, %polly.loop_header424.preheader
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, 1
  %exitcond998.not = icmp eq i64 %polly.indvar392, %122
  br i1 %exitcond998.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_header389.split, %polly.loop_header395
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_header395 ], [ 0, %polly.loop_header389.split ]
  %polly.access.add.call1419 = add nuw nsw i64 %polly.indvar398, %polly.access.mul.call1418
  %polly.access.call1420 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1419
  %polly.access.call1420.load = load double, double* %polly.access.call1420, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1278421 = mul nuw nsw i64 %polly.indvar398, 1200
  %polly.access.add.Packed_MemRef_call1278422 = add nsw i64 %polly.access.mul.Packed_MemRef_call1278421, %126
  %polly.access.Packed_MemRef_call1278423 = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278422
  store double %polly.access.call1420.load, double* %polly.access.Packed_MemRef_call1278423, align 8
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next399, 1000
  br i1 %exitcond982.not, label %polly.loop_header424.preheader, label %polly.loop_header395

polly.loop_header424.preheader:                   ; preds = %polly.loop_header395, %polly.merge414.us
  %129 = mul nuw nsw i64 %127, 8000
  %130 = mul nuw nsw i64 %127, 9600
  br i1 %polly.loop_guard4051063, label %polly.loop_header424.us, label %polly.loop_exit426

polly.loop_header424.us:                          ; preds = %polly.loop_header424.preheader, %polly.loop_exit433.loopexit.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_exit433.loopexit.us ], [ 0, %polly.loop_header424.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar427.us, 3
  %scevgep442.us = getelementptr i8, i8* %call2, i64 %131
  %polly.access.mul.Packed_MemRef_call1278438.us = mul nuw nsw i64 %polly.indvar427.us, 1200
  %scevgep443.us = getelementptr i8, i8* %scevgep442.us, i64 %129
  %scevgep443444.us = bitcast i8* %scevgep443.us to double*
  %_p_scalar_445.us = load double, double* %scevgep443444.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1278451.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1278438.us, %126
  %polly.access.Packed_MemRef_call1278452.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278451.us
  %_p_scalar_453.us = load double, double* %polly.access.Packed_MemRef_call1278452.us, align 8
  br label %polly.loop_header431.us

polly.loop_header431.us:                          ; preds = %polly.loop_header431.us, %polly.loop_header424.us
  %polly.indvar435.us = phi i64 [ 0, %polly.loop_header424.us ], [ %polly.indvar_next436.us, %polly.loop_header431.us ]
  %132 = add nuw nsw i64 %polly.indvar435.us, %123
  %polly.access.add.Packed_MemRef_call1278439.us = add nuw nsw i64 %polly.indvar435.us, %polly.access.mul.Packed_MemRef_call1278438.us
  %polly.access.Packed_MemRef_call1278440.us = getelementptr double, double* %Packed_MemRef_call1278, i64 %polly.access.add.Packed_MemRef_call1278439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call1278440.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_445.us, %_p_scalar_441.us
  %133 = mul nuw nsw i64 %132, 8000
  %scevgep447.us = getelementptr i8, i8* %scevgep442.us, i64 %133
  %scevgep447448.us = bitcast i8* %scevgep447.us to double*
  %_p_scalar_449.us = load double, double* %scevgep447448.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_453.us, %_p_scalar_449.us
  %134 = shl i64 %132, 3
  %135 = add nuw nsw i64 %134, %130
  %scevgep454.us = getelementptr i8, i8* %call, i64 %135
  %scevgep454455.us = bitcast i8* %scevgep454.us to double*
  %_p_scalar_456.us = load double, double* %scevgep454455.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_456.us
  store double %p_add42.i79.us, double* %scevgep454455.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next436.us = add nuw nsw i64 %polly.indvar435.us, 1
  %exitcond993.not = icmp eq i64 %polly.indvar435.us, %smin992
  br i1 %exitcond993.not, label %polly.loop_exit433.loopexit.us, label %polly.loop_header431.us

polly.loop_exit433.loopexit.us:                   ; preds = %polly.loop_header431.us
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next428.us, 1000
  br i1 %exitcond994.not, label %polly.loop_exit426, label %polly.loop_header424.us

polly.start459:                                   ; preds = %init_array.exit
  %malloccall461 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header545

polly.exiting460:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall461)
  br label %kernel_syr2k.exit

polly.loop_header545:                             ; preds = %polly.loop_exit553, %polly.start459
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit553 ], [ 0, %polly.start459 ]
  %polly.indvar548 = phi i64 [ %polly.indvar_next549, %polly.loop_exit553 ], [ 1, %polly.start459 ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar548, 9600
  %scevgep557 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1153 = icmp ult i64 %136, 4
  br i1 %min.iters.check1153, label %polly.loop_header551.preheader, label %vector.ph1154

vector.ph1154:                                    ; preds = %polly.loop_header545
  %n.vec1156 = and i64 %136, -4
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %vector.ph1154
  %index1157 = phi i64 [ 0, %vector.ph1154 ], [ %index.next1158, %vector.body1152 ]
  %138 = shl nuw nsw i64 %index1157, 3
  %139 = getelementptr i8, i8* %scevgep557, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1161 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !83, !noalias !85
  %141 = fmul fast <4 x double> %wide.load1161, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !83, !noalias !85
  %index.next1158 = add i64 %index1157, 4
  %143 = icmp eq i64 %index.next1158, %n.vec1156
  br i1 %143, label %middle.block1150, label %vector.body1152, !llvm.loop !89

middle.block1150:                                 ; preds = %vector.body1152
  %cmp.n1160 = icmp eq i64 %136, %n.vec1156
  br i1 %cmp.n1160, label %polly.loop_exit553, label %polly.loop_header551.preheader

polly.loop_header551.preheader:                   ; preds = %polly.loop_header545, %middle.block1150
  %polly.indvar554.ph = phi i64 [ 0, %polly.loop_header545 ], [ %n.vec1156, %middle.block1150 ]
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_header551, %middle.block1150
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next549, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1027.not, label %polly.loop_header561.preheader, label %polly.loop_header545

polly.loop_header561.preheader:                   ; preds = %polly.loop_exit553
  %Packed_MemRef_call1462 = bitcast i8* %malloccall461 to double*
  br label %polly.loop_header561

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_header551
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_header551 ], [ %polly.indvar554.ph, %polly.loop_header551.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar554, 3
  %scevgep558 = getelementptr i8, i8* %scevgep557, i64 %144
  %scevgep558559 = bitcast i8* %scevgep558 to double*
  %_p_scalar_560 = load double, double* %scevgep558559, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_560, 1.200000e+00
  store double %p_mul.i, double* %scevgep558559, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next555, %polly.indvar548
  br i1 %exitcond1026.not, label %polly.loop_exit553, label %polly.loop_header551, !llvm.loop !90

polly.loop_header561:                             ; preds = %polly.loop_header561.preheader, %polly.loop_exit569
  %indvars.iv1022 = phi i64 [ 1, %polly.loop_header561.preheader ], [ %indvars.iv.next1023, %polly.loop_exit569 ]
  %indvars.iv1018 = phi i64 [ 0, %polly.loop_header561.preheader ], [ %indvars.iv.next1019, %polly.loop_exit569 ]
  %indvars.iv1006 = phi i64 [ 0, %polly.loop_header561.preheader ], [ %indvars.iv.next1007, %polly.loop_exit569 ]
  %polly.indvar564 = phi i64 [ 0, %polly.loop_header561.preheader ], [ %polly.indvar_next565, %polly.loop_exit569 ]
  %smin1020 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 -1168)
  %145 = shl nsw i64 %polly.indvar564, 5
  %146 = add nsw i64 %smin1020, 1199
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next565 = add nuw nsw i64 %polly.indvar564, 1
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 32
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, -32
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1
  %exitcond1025.not = icmp eq i64 %polly.indvar_next565, 38
  br i1 %exitcond1025.not, label %polly.exiting460, label %polly.loop_header561

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_header561
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit575 ], [ %indvars.iv1006, %polly.loop_header561 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ 0, %polly.loop_header561 ]
  %147 = shl nsw i64 %polly.indvar570, 5
  %148 = sub nsw i64 %145, %147
  %149 = add nuw nsw i64 %147, 32
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit610
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -32
  %exitcond1024.not = icmp eq i64 %polly.indvar_next571, %indvars.iv1022
  br i1 %exitcond1024.not, label %polly.loop_exit569, label %polly.loop_header567

polly.loop_header573:                             ; preds = %polly.loop_exit610, %polly.loop_header567
  %indvars.iv1010 = phi i64 [ %indvars.iv.next1011, %polly.loop_exit610 ], [ %indvars.iv1008, %polly.loop_header567 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit610 ], [ 0, %polly.loop_header567 ]
  %smin1015 = call i64 @llvm.smin.i64(i64 %indvars.iv1010, i64 31)
  %150 = add nsw i64 %polly.indvar576, %148
  %polly.loop_guard5891064 = icmp sgt i64 %150, -1
  %151 = add nuw nsw i64 %polly.indvar576, %145
  %.not848 = icmp ult i64 %151, %149
  %polly.access.mul.call1602 = mul nuw nsw i64 %151, 1000
  br i1 %polly.loop_guard5891064, label %polly.loop_header579.us, label %polly.loop_header573.split

polly.loop_header579.us:                          ; preds = %polly.loop_header573, %polly.merge598.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.merge598.us ], [ 0, %polly.loop_header573 ]
  %polly.access.mul.Packed_MemRef_call1462.us = mul nuw nsw i64 %polly.indvar582.us, 1200
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_header579.us, %polly.loop_header586.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_header586.us ], [ 0, %polly.loop_header579.us ]
  %152 = add nuw nsw i64 %polly.indvar590.us, %147
  %polly.access.mul.call1594.us = mul nuw nsw i64 %152, 1000
  %polly.access.add.call1595.us = add nuw nsw i64 %polly.access.mul.call1594.us, %polly.indvar582.us
  %polly.access.call1596.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1595.us
  %polly.access.call1596.load.us = load double, double* %polly.access.call1596.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1462.us = add nuw nsw i64 %polly.indvar590.us, %polly.access.mul.Packed_MemRef_call1462.us
  %polly.access.Packed_MemRef_call1462.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462.us
  store double %polly.access.call1596.load.us, double* %polly.access.Packed_MemRef_call1462.us, align 8
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar590.us, %smin1015
  br i1 %exitcond1013.not, label %polly.cond597.loopexit.us, label %polly.loop_header586.us

polly.then599.us:                                 ; preds = %polly.cond597.loopexit.us
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.indvar582.us, %polly.access.mul.call1602
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1462606.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1462.us, %150
  %polly.access.Packed_MemRef_call1462607.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462606.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1462607.us, align 8
  br label %polly.merge598.us

polly.merge598.us:                                ; preds = %polly.then599.us, %polly.cond597.loopexit.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next583.us, 1000
  br i1 %exitcond1014.not, label %polly.loop_header608.preheader, label %polly.loop_header579.us

polly.cond597.loopexit.us:                        ; preds = %polly.loop_header586.us
  br i1 %.not848, label %polly.merge598.us, label %polly.then599.us

polly.loop_header573.split:                       ; preds = %polly.loop_header573
  br i1 %.not848, label %polly.loop_exit610, label %polly.loop_header579

polly.loop_exit610:                               ; preds = %polly.loop_exit617.loopexit.us, %polly.loop_header573.split, %polly.loop_header608.preheader
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1011 = add nsw i64 %indvars.iv1010, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar576, %146
  br i1 %exitcond1021.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_header573.split, %polly.loop_header579
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_header579 ], [ 0, %polly.loop_header573.split ]
  %polly.access.add.call1603 = add nuw nsw i64 %polly.indvar582, %polly.access.mul.call1602
  %polly.access.call1604 = getelementptr double, double* %polly.access.cast.call1645, i64 %polly.access.add.call1603
  %polly.access.call1604.load = load double, double* %polly.access.call1604, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1462605 = mul nuw nsw i64 %polly.indvar582, 1200
  %polly.access.add.Packed_MemRef_call1462606 = add nsw i64 %polly.access.mul.Packed_MemRef_call1462605, %150
  %polly.access.Packed_MemRef_call1462607 = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462606
  store double %polly.access.call1604.load, double* %polly.access.Packed_MemRef_call1462607, align 8
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next583, 1000
  br i1 %exitcond1005.not, label %polly.loop_header608.preheader, label %polly.loop_header579

polly.loop_header608.preheader:                   ; preds = %polly.loop_header579, %polly.merge598.us
  %153 = mul nuw nsw i64 %151, 8000
  %154 = mul nuw nsw i64 %151, 9600
  br i1 %polly.loop_guard5891064, label %polly.loop_header608.us, label %polly.loop_exit610

polly.loop_header608.us:                          ; preds = %polly.loop_header608.preheader, %polly.loop_exit617.loopexit.us
  %polly.indvar611.us = phi i64 [ %polly.indvar_next612.us, %polly.loop_exit617.loopexit.us ], [ 0, %polly.loop_header608.preheader ]
  %155 = shl nuw nsw i64 %polly.indvar611.us, 3
  %scevgep626.us = getelementptr i8, i8* %call2, i64 %155
  %polly.access.mul.Packed_MemRef_call1462622.us = mul nuw nsw i64 %polly.indvar611.us, 1200
  %scevgep627.us = getelementptr i8, i8* %scevgep626.us, i64 %153
  %scevgep627628.us = bitcast i8* %scevgep627.us to double*
  %_p_scalar_629.us = load double, double* %scevgep627628.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1462635.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1462622.us, %150
  %polly.access.Packed_MemRef_call1462636.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462635.us
  %_p_scalar_637.us = load double, double* %polly.access.Packed_MemRef_call1462636.us, align 8
  br label %polly.loop_header615.us

polly.loop_header615.us:                          ; preds = %polly.loop_header615.us, %polly.loop_header608.us
  %polly.indvar619.us = phi i64 [ 0, %polly.loop_header608.us ], [ %polly.indvar_next620.us, %polly.loop_header615.us ]
  %156 = add nuw nsw i64 %polly.indvar619.us, %147
  %polly.access.add.Packed_MemRef_call1462623.us = add nuw nsw i64 %polly.indvar619.us, %polly.access.mul.Packed_MemRef_call1462622.us
  %polly.access.Packed_MemRef_call1462624.us = getelementptr double, double* %Packed_MemRef_call1462, i64 %polly.access.add.Packed_MemRef_call1462623.us
  %_p_scalar_625.us = load double, double* %polly.access.Packed_MemRef_call1462624.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_629.us, %_p_scalar_625.us
  %157 = mul nuw nsw i64 %156, 8000
  %scevgep631.us = getelementptr i8, i8* %scevgep626.us, i64 %157
  %scevgep631632.us = bitcast i8* %scevgep631.us to double*
  %_p_scalar_633.us = load double, double* %scevgep631632.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_637.us, %_p_scalar_633.us
  %158 = shl i64 %156, 3
  %159 = add nuw nsw i64 %158, %154
  %scevgep638.us = getelementptr i8, i8* %call, i64 %159
  %scevgep638639.us = bitcast i8* %scevgep638.us to double*
  %_p_scalar_640.us = load double, double* %scevgep638639.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_640.us
  store double %p_add42.i.us, double* %scevgep638639.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond1016.not = icmp eq i64 %polly.indvar619.us, %smin1015
  br i1 %exitcond1016.not, label %polly.loop_exit617.loopexit.us, label %polly.loop_header615.us

polly.loop_exit617.loopexit.us:                   ; preds = %polly.loop_header615.us
  %polly.indvar_next612.us = add nuw nsw i64 %polly.indvar611.us, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next612.us, 1000
  br i1 %exitcond1017.not, label %polly.loop_exit610, label %polly.loop_header608.us

polly.loop_header767:                             ; preds = %entry, %polly.loop_exit775
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit775 ], [ 0, %entry ]
  %polly.indvar770 = phi i64 [ %polly.indvar_next771, %polly.loop_exit775 ], [ 0, %entry ]
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 -1168)
  %160 = shl nsw i64 %polly.indvar770, 5
  %161 = add nsw i64 %smin1054, 1199
  br label %polly.loop_header773

polly.loop_exit775:                               ; preds = %polly.loop_exit781
  %polly.indvar_next771 = add nuw nsw i64 %polly.indvar770, 1
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next771, 38
  br i1 %exitcond1057.not, label %polly.loop_header794, label %polly.loop_header767

polly.loop_header773:                             ; preds = %polly.loop_exit781, %polly.loop_header767
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_header767 ]
  %162 = mul nsw i64 %polly.indvar776, -32
  %smin = call i64 @llvm.smin.i64(i64 %162, i64 -1168)
  %163 = add nsw i64 %smin, 1200
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -1168)
  %164 = shl nsw i64 %polly.indvar776, 5
  %165 = add nsw i64 %smin1050, 1199
  br label %polly.loop_header779

polly.loop_exit781:                               ; preds = %polly.loop_exit787
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next777, 38
  br i1 %exitcond1056.not, label %polly.loop_exit775, label %polly.loop_header773

polly.loop_header779:                             ; preds = %polly.loop_exit787, %polly.loop_header773
  %polly.indvar782 = phi i64 [ 0, %polly.loop_header773 ], [ %polly.indvar_next783, %polly.loop_exit787 ]
  %166 = add nuw nsw i64 %polly.indvar782, %160
  %167 = trunc i64 %166 to i32
  %168 = mul nuw nsw i64 %166, 9600
  %min.iters.check = icmp eq i64 %163, 0
  br i1 %min.iters.check, label %polly.loop_header785, label %vector.ph1092

vector.ph1092:                                    ; preds = %polly.loop_header779
  %broadcast.splatinsert1099 = insertelement <4 x i64> poison, i64 %164, i32 0
  %broadcast.splat1100 = shufflevector <4 x i64> %broadcast.splatinsert1099, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1092
  %index1093 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1097 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1092 ], [ %vec.ind.next1098, %vector.body1091 ]
  %169 = add nuw nsw <4 x i64> %vec.ind1097, %broadcast.splat1100
  %170 = trunc <4 x i64> %169 to <4 x i32>
  %171 = mul <4 x i32> %broadcast.splat1102, %170
  %172 = add <4 x i32> %171, <i32 3, i32 3, i32 3, i32 3>
  %173 = urem <4 x i32> %172, <i32 1200, i32 1200, i32 1200, i32 1200>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %176 = extractelement <4 x i64> %169, i32 0
  %177 = shl i64 %176, 3
  %178 = add nuw nsw i64 %177, %168
  %179 = getelementptr i8, i8* %call, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %175, <4 x double>* %180, align 8, !alias.scope !93, !noalias !95
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1098 = add <4 x i64> %vec.ind1097, <i64 4, i64 4, i64 4, i64 4>
  %181 = icmp eq i64 %index.next1094, %163
  br i1 %181, label %polly.loop_exit787, label %vector.body1091, !llvm.loop !98

polly.loop_exit787:                               ; preds = %vector.body1091, %polly.loop_header785
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar782, %161
  br i1 %exitcond1055.not, label %polly.loop_exit781, label %polly.loop_header779

polly.loop_header785:                             ; preds = %polly.loop_header779, %polly.loop_header785
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_header785 ], [ 0, %polly.loop_header779 ]
  %182 = add nuw nsw i64 %polly.indvar788, %164
  %183 = trunc i64 %182 to i32
  %184 = mul i32 %183, %167
  %185 = add i32 %184, 3
  %186 = urem i32 %185, 1200
  %p_conv31.i = sitofp i32 %186 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %187 = shl i64 %182, 3
  %188 = add nuw nsw i64 %187, %168
  %scevgep791 = getelementptr i8, i8* %call, i64 %188
  %scevgep791792 = bitcast i8* %scevgep791 to double*
  store double %p_div33.i, double* %scevgep791792, align 8, !alias.scope !93, !noalias !95
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar788, %165
  br i1 %exitcond1051.not, label %polly.loop_exit787, label %polly.loop_header785, !llvm.loop !99

polly.loop_header794:                             ; preds = %polly.loop_exit775, %polly.loop_exit802
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit802 ], [ 0, %polly.loop_exit775 ]
  %polly.indvar797 = phi i64 [ %polly.indvar_next798, %polly.loop_exit802 ], [ 0, %polly.loop_exit775 ]
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 -1168)
  %189 = shl nsw i64 %polly.indvar797, 5
  %190 = add nsw i64 %smin1044, 1199
  br label %polly.loop_header800

polly.loop_exit802:                               ; preds = %polly.loop_exit808
  %polly.indvar_next798 = add nuw nsw i64 %polly.indvar797, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next798, 38
  br i1 %exitcond1047.not, label %polly.loop_header820, label %polly.loop_header794

polly.loop_header800:                             ; preds = %polly.loop_exit808, %polly.loop_header794
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit808 ], [ 0, %polly.loop_header794 ]
  %polly.indvar803 = phi i64 [ %polly.indvar_next804, %polly.loop_exit808 ], [ 0, %polly.loop_header794 ]
  %191 = mul nsw i64 %polly.indvar803, -32
  %smin1106 = call i64 @llvm.smin.i64(i64 %191, i64 -968)
  %192 = add nsw i64 %smin1106, 1000
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 -968)
  %193 = shl nsw i64 %polly.indvar803, 5
  %194 = add nsw i64 %smin1040, 999
  br label %polly.loop_header806

polly.loop_exit808:                               ; preds = %polly.loop_exit814
  %polly.indvar_next804 = add nuw nsw i64 %polly.indvar803, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next804, 32
  br i1 %exitcond1046.not, label %polly.loop_exit802, label %polly.loop_header800

polly.loop_header806:                             ; preds = %polly.loop_exit814, %polly.loop_header800
  %polly.indvar809 = phi i64 [ 0, %polly.loop_header800 ], [ %polly.indvar_next810, %polly.loop_exit814 ]
  %195 = add nuw nsw i64 %polly.indvar809, %189
  %196 = trunc i64 %195 to i32
  %197 = mul nuw nsw i64 %195, 8000
  %min.iters.check1107 = icmp eq i64 %192, 0
  br i1 %min.iters.check1107, label %polly.loop_header812, label %vector.ph1108

vector.ph1108:                                    ; preds = %polly.loop_header806
  %broadcast.splatinsert1117 = insertelement <4 x i64> poison, i64 %193, i32 0
  %broadcast.splat1118 = shufflevector <4 x i64> %broadcast.splatinsert1117, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %196, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %vector.ph1108
  %index1111 = phi i64 [ 0, %vector.ph1108 ], [ %index.next1112, %vector.body1105 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1108 ], [ %vec.ind.next1116, %vector.body1105 ]
  %198 = add nuw nsw <4 x i64> %vec.ind1115, %broadcast.splat1118
  %199 = trunc <4 x i64> %198 to <4 x i32>
  %200 = mul <4 x i32> %broadcast.splat1120, %199
  %201 = add <4 x i32> %200, <i32 2, i32 2, i32 2, i32 2>
  %202 = urem <4 x i32> %201, <i32 1000, i32 1000, i32 1000, i32 1000>
  %203 = sitofp <4 x i32> %202 to <4 x double>
  %204 = fmul fast <4 x double> %203, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %205 = extractelement <4 x i64> %198, i32 0
  %206 = shl i64 %205, 3
  %207 = add nuw nsw i64 %206, %197
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %204, <4 x double>* %209, align 8, !alias.scope !97, !noalias !100
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %210 = icmp eq i64 %index.next1112, %192
  br i1 %210, label %polly.loop_exit814, label %vector.body1105, !llvm.loop !101

polly.loop_exit814:                               ; preds = %vector.body1105, %polly.loop_header812
  %polly.indvar_next810 = add nuw nsw i64 %polly.indvar809, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar809, %190
  br i1 %exitcond1045.not, label %polly.loop_exit808, label %polly.loop_header806

polly.loop_header812:                             ; preds = %polly.loop_header806, %polly.loop_header812
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_header812 ], [ 0, %polly.loop_header806 ]
  %211 = add nuw nsw i64 %polly.indvar815, %193
  %212 = trunc i64 %211 to i32
  %213 = mul i32 %212, %196
  %214 = add i32 %213, 2
  %215 = urem i32 %214, 1000
  %p_conv10.i = sitofp i32 %215 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %216 = shl i64 %211, 3
  %217 = add nuw nsw i64 %216, %197
  %scevgep818 = getelementptr i8, i8* %call2, i64 %217
  %scevgep818819 = bitcast i8* %scevgep818 to double*
  store double %p_div12.i, double* %scevgep818819, align 8, !alias.scope !97, !noalias !100
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar815, %194
  br i1 %exitcond1041.not, label %polly.loop_exit814, label %polly.loop_header812, !llvm.loop !102

polly.loop_header820:                             ; preds = %polly.loop_exit802, %polly.loop_exit828
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit828 ], [ 0, %polly.loop_exit802 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit802 ]
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 -1168)
  %218 = shl nsw i64 %polly.indvar823, 5
  %219 = add nsw i64 %smin1034, 1199
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -32
  %exitcond1037.not = icmp eq i64 %polly.indvar_next824, 38
  br i1 %exitcond1037.not, label %init_array.exit, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %polly.indvar829 = phi i64 [ %polly.indvar_next830, %polly.loop_exit834 ], [ 0, %polly.loop_header820 ]
  %220 = mul nsw i64 %polly.indvar829, -32
  %smin1124 = call i64 @llvm.smin.i64(i64 %220, i64 -968)
  %221 = add nsw i64 %smin1124, 1000
  %smin1030 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 -968)
  %222 = shl nsw i64 %polly.indvar829, 5
  %223 = add nsw i64 %smin1030, 999
  br label %polly.loop_header832

polly.loop_exit834:                               ; preds = %polly.loop_exit840
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -32
  %exitcond1036.not = icmp eq i64 %polly.indvar_next830, 32
  br i1 %exitcond1036.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_exit840, %polly.loop_header826
  %polly.indvar835 = phi i64 [ 0, %polly.loop_header826 ], [ %polly.indvar_next836, %polly.loop_exit840 ]
  %224 = add nuw nsw i64 %polly.indvar835, %218
  %225 = trunc i64 %224 to i32
  %226 = mul nuw nsw i64 %224, 8000
  %min.iters.check1125 = icmp eq i64 %221, 0
  br i1 %min.iters.check1125, label %polly.loop_header838, label %vector.ph1126

vector.ph1126:                                    ; preds = %polly.loop_header832
  %broadcast.splatinsert1135 = insertelement <4 x i64> poison, i64 %222, i32 0
  %broadcast.splat1136 = shufflevector <4 x i64> %broadcast.splatinsert1135, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %225, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %vector.ph1126
  %index1129 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1130, %vector.body1123 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1126 ], [ %vec.ind.next1134, %vector.body1123 ]
  %227 = add nuw nsw <4 x i64> %vec.ind1133, %broadcast.splat1136
  %228 = trunc <4 x i64> %227 to <4 x i32>
  %229 = mul <4 x i32> %broadcast.splat1138, %228
  %230 = add <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %231 = urem <4 x i32> %230, <i32 1200, i32 1200, i32 1200, i32 1200>
  %232 = sitofp <4 x i32> %231 to <4 x double>
  %233 = fmul fast <4 x double> %232, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %234 = extractelement <4 x i64> %227, i32 0
  %235 = shl i64 %234, 3
  %236 = add nuw nsw i64 %235, %226
  %237 = getelementptr i8, i8* %call1, i64 %236
  %238 = bitcast i8* %237 to <4 x double>*
  store <4 x double> %233, <4 x double>* %238, align 8, !alias.scope !96, !noalias !103
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %239 = icmp eq i64 %index.next1130, %221
  br i1 %239, label %polly.loop_exit840, label %vector.body1123, !llvm.loop !104

polly.loop_exit840:                               ; preds = %vector.body1123, %polly.loop_header838
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar835, %219
  br i1 %exitcond1035.not, label %polly.loop_exit834, label %polly.loop_header832

polly.loop_header838:                             ; preds = %polly.loop_header832, %polly.loop_header838
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_header838 ], [ 0, %polly.loop_header832 ]
  %240 = add nuw nsw i64 %polly.indvar841, %222
  %241 = trunc i64 %240 to i32
  %242 = mul i32 %241, %225
  %243 = add i32 %242, 1
  %244 = urem i32 %243, 1200
  %p_conv.i = sitofp i32 %244 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %245 = shl i64 %240, 3
  %246 = add nuw nsw i64 %245, %226
  %scevgep845 = getelementptr i8, i8* %call1, i64 %246
  %scevgep845846 = bitcast i8* %scevgep845 to double*
  store double %p_div.i, double* %scevgep845846, align 8, !alias.scope !96, !noalias !103
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar841, %223
  br i1 %exitcond1031.not, label %polly.loop_exit840, label %polly.loop_header838, !llvm.loop !105
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
!25 = !{!"llvm.loop.tile.size", i32 32}
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
