; ModuleID = 'syr2k_exhaustive/mmp_all_SM_188.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_188.c"
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
  %call868 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1720 = bitcast i8* %call1 to double*
  %polly.access.call1729 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2730 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1729, %call2
  %polly.access.call2749 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2749, %call1
  %2 = or i1 %0, %1
  %polly.access.call769 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call769, %call2
  %4 = icmp ule i8* %polly.access.call2749, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call769, %call1
  %8 = icmp ule i8* %polly.access.call1729, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header842, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1083 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1082 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1081 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1080 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1080, %scevgep1083
  %bound1 = icmp ult i8* %scevgep1082, %scevgep1081
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
  br i1 %exitcond18.not.i, label %vector.ph1087, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1087:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1094 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1095 = shufflevector <4 x i64> %broadcast.splatinsert1094, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %vector.ph1087
  %index1088 = phi i64 [ 0, %vector.ph1087 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1087 ], [ %vec.ind.next1093, %vector.body1086 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1092, %broadcast.splat1095
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv7.i, i64 %index1088
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1089, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1086, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1086
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1087, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit903
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1149 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1149, label %for.body3.i46.preheader1226, label %vector.ph1150

vector.ph1150:                                    ; preds = %for.body3.i46.preheader
  %n.vec1152 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1150
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1154, %vector.body1148 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %index1153
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1154 = add i64 %index1153, 4
  %46 = icmp eq i64 %index.next1154, %n.vec1152
  br i1 %46, label %middle.block1146, label %vector.body1148, !llvm.loop !18

middle.block1146:                                 ; preds = %vector.body1148
  %cmp.n1156 = icmp eq i64 %indvars.iv21.i, %n.vec1152
  br i1 %cmp.n1156, label %for.inc6.i, label %for.body3.i46.preheader1226

for.body3.i46.preheader1226:                      ; preds = %for.body3.i46.preheader, %middle.block1146
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1152, %middle.block1146 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1226, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1226 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1146, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1172 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1172, label %for.body3.i60.preheader1224, label %vector.ph1173

vector.ph1173:                                    ; preds = %for.body3.i60.preheader
  %n.vec1175 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1177, %vector.body1171 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %index1176
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1180 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1180, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1177 = add i64 %index1176, 4
  %57 = icmp eq i64 %index.next1177, %n.vec1175
  br i1 %57, label %middle.block1169, label %vector.body1171, !llvm.loop !63

middle.block1169:                                 ; preds = %vector.body1171
  %cmp.n1179 = icmp eq i64 %indvars.iv21.i52, %n.vec1175
  br i1 %cmp.n1179, label %for.inc6.i63, label %for.body3.i60.preheader1224

for.body3.i60.preheader1224:                      ; preds = %for.body3.i60.preheader, %middle.block1169
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1175, %middle.block1169 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1224, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1224 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1169, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1198 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1198, label %for.body3.i99.preheader1222, label %vector.ph1199

vector.ph1199:                                    ; preds = %for.body3.i99.preheader
  %n.vec1201 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1199
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1203, %vector.body1197 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %index1202
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1206 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1206, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1203 = add i64 %index1202, 4
  %68 = icmp eq i64 %index.next1203, %n.vec1201
  br i1 %68, label %middle.block1195, label %vector.body1197, !llvm.loop !65

middle.block1195:                                 ; preds = %vector.body1197
  %cmp.n1205 = icmp eq i64 %indvars.iv21.i91, %n.vec1201
  br i1 %cmp.n1205, label %for.inc6.i102, label %for.body3.i99.preheader1222

for.body3.i99.preheader1222:                      ; preds = %for.body3.i99.preheader, %middle.block1195
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1201, %middle.block1195 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1222, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1222 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1195, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call868, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall136 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1210 = phi i64 [ %indvar.next1211, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1210, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1212 = icmp ult i64 %88, 4
  br i1 %min.iters.check1212, label %polly.loop_header192.preheader, label %vector.ph1213

vector.ph1213:                                    ; preds = %polly.loop_header
  %n.vec1215 = and i64 %88, -4
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1213
  %index1216 = phi i64 [ 0, %vector.ph1213 ], [ %index.next1217, %vector.body1209 ]
  %90 = shl nuw nsw i64 %index1216, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1220 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1220, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1217 = add i64 %index1216, 4
  %95 = icmp eq i64 %index.next1217, %n.vec1215
  br i1 %95, label %middle.block1207, label %vector.body1209, !llvm.loop !78

middle.block1207:                                 ; preds = %vector.body1209
  %cmp.n1219 = icmp eq i64 %88, %n.vec1215
  br i1 %cmp.n1219, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1207
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1215, %middle.block1207 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1207
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond983.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1211 = add i64 %indvar1210, 1
  br i1 %exitcond983.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond982.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond982.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv961 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next962, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin977 = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 -936)
  %97 = add nsw i64 %smin977, 1000
  %98 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next962 = add nsw i64 %indvars.iv961, -64
  %exitcond981.not = icmp eq i64 %polly.indvar_next204, 16
  br i1 %exitcond981.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond980.not = icmp eq i64 %polly.indvar_next210, 150
  br i1 %exitcond980.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %100 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond963.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond963.not, label %polly.loop_header228.preheader, label %polly.loop_header212

polly.loop_header228.preheader:                   ; preds = %polly.loop_exit220
  %101 = mul nsw i64 %polly.indvar209, -8
  %polly.access.mul.call1247 = mul nsw i64 %polly.indvar209, 8000
  %102 = or i64 %99, 1
  %polly.access.mul.call1247.1 = mul nuw nsw i64 %102, 1000
  %103 = or i64 %99, 2
  %polly.access.mul.call1247.2 = mul nuw nsw i64 %103, 1000
  %104 = or i64 %99, 3
  %polly.access.mul.call1247.3 = mul nuw nsw i64 %104, 1000
  %105 = or i64 %99, 4
  %polly.access.mul.call1247.4 = mul nuw nsw i64 %105, 1000
  %106 = or i64 %99, 5
  %polly.access.mul.call1247.5 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %99, 6
  %polly.access.mul.call1247.6 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %99, 7
  %polly.access.mul.call1247.7 = mul nuw nsw i64 %108, 1000
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %109 = or i64 %99, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %99, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %99, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %99, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %99, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %99, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %99, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %115, 1000
  br label %polly.loop_header228

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %99
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %100, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit265
  %indvars.iv970 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %indvars.iv.next971, %polly.loop_exit265 ]
  %polly.indvar231 = phi i64 [ %polly.indvar209, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit265 ]
  %117 = shl nsw i64 %polly.indvar231, 3
  %118 = add nsw i64 %117, %101
  %119 = icmp ugt i64 %118, 8
  %120 = select i1 %119, i64 %118, i64 8
  %121 = or i64 %118, 7
  %polly.loop_guard.not = icmp ugt i64 %120, %121
  br i1 %polly.loop_guard.not, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228 ]
  %122 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %122
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %polly.access.mul.call1247.us.1, %122
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %polly.access.mul.call1247.us.2, %122
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %polly.access.mul.call1247.us.3, %122
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %polly.access.mul.call1247.us.4, %122
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %polly.access.mul.call1247.us.5, %122
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %polly.access.mul.call1247.us.6, %122
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %polly.access.mul.call1247.us.7, %122
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond969.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_exit265:                               ; preds = %polly.loop_exit277.7
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv970, 8
  %exitcond979.not = icmp eq i64 %polly.indvar_next232, 150
  br i1 %exitcond979.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228 ]
  %123 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar237, 1200
  %polly.access.add.call1248 = add nuw nsw i64 %polly.access.mul.call1247, %123
  %polly.access.call1249 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248
  %polly.access.call1249.load = load double, double* %polly.access.call1249, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1249.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1248.1 = add nuw nsw i64 %polly.access.mul.call1247.1, %123
  %polly.access.call1249.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.1
  %polly.access.call1249.load.1 = load double, double* %polly.access.call1249.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1249.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1248.2 = add nuw nsw i64 %polly.access.mul.call1247.2, %123
  %polly.access.call1249.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.2
  %polly.access.call1249.load.2 = load double, double* %polly.access.call1249.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1249.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1248.3 = add nuw nsw i64 %polly.access.mul.call1247.3, %123
  %polly.access.call1249.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.3
  %polly.access.call1249.load.3 = load double, double* %polly.access.call1249.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1249.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1248.4 = add nuw nsw i64 %polly.access.mul.call1247.4, %123
  %polly.access.call1249.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.4
  %polly.access.call1249.load.4 = load double, double* %polly.access.call1249.4, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1249.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1248.5 = add nuw nsw i64 %polly.access.mul.call1247.5, %123
  %polly.access.call1249.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.5
  %polly.access.call1249.load.5 = load double, double* %polly.access.call1249.5, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1249.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1248.6 = add nuw nsw i64 %polly.access.mul.call1247.6, %123
  %polly.access.call1249.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.6
  %polly.access.call1249.load.6 = load double, double* %polly.access.call1249.6, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1249.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1248.7 = add nuw nsw i64 %polly.access.mul.call1247.7, %123
  %polly.access.call1249.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1248.7
  %polly.access.call1249.load.7 = load double, double* %polly.access.call1249.7, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1249.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond966.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond966.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_header234.us
  %smin974 = call i64 @llvm.smin.i64(i64 %indvars.iv970, i64 7)
  %124 = mul nsw i64 %polly.indvar231, 76800
  %indvars.iv.next973 = or i64 %indvars.iv970, 1
  %smin974.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973, i64 7)
  %125 = or i64 %118, 1
  %126 = or i64 %117, 1
  %127 = mul nuw nsw i64 %126, 9600
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv.next973, 1
  %smin974.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973.1, i64 7)
  %128 = or i64 %118, 2
  %129 = or i64 %117, 2
  %130 = mul nuw nsw i64 %129, 9600
  %indvars.iv.next973.2 = or i64 %indvars.iv970, 3
  %smin974.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973.2, i64 7)
  %131 = or i64 %118, 3
  %132 = or i64 %117, 3
  %133 = mul nuw nsw i64 %132, 9600
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv.next973.2, 1
  %smin974.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973.3, i64 7)
  %134 = or i64 %118, 4
  %135 = or i64 %117, 4
  %136 = mul nuw nsw i64 %135, 9600
  %indvars.iv.next973.4 = add nuw nsw i64 %indvars.iv.next973.2, 2
  %smin974.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973.4, i64 7)
  %137 = or i64 %118, 5
  %138 = or i64 %117, 5
  %139 = mul nuw nsw i64 %138, 9600
  %indvars.iv.next973.5 = add nuw nsw i64 %indvars.iv.next973.2, 3
  %smin974.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next973.5, i64 7)
  %140 = or i64 %118, 6
  %141 = or i64 %117, 6
  %142 = mul nuw nsw i64 %141, 9600
  %143 = or i64 %118, 7
  %144 = or i64 %117, 7
  %145 = mul nuw nsw i64 %144, 9600
  br label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %120, %polly.loop_header234 ]
  %146 = add nuw nsw i64 %polly.indvar253, %99
  %polly.access.mul.call1257 = mul nuw nsw i64 %146, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %123
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp ult i64 %polly.indvar253, %121
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit277.7
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit277.7 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar266, 1200
  %polly.access.add.Packed_MemRef_call2286 = add nuw nsw i64 %118, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call2287, align 8
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  br label %polly.loop_header275

polly.loop_exit277:                               ; preds = %polly.loop_header275
  %polly.access.add.Packed_MemRef_call2286.1 = add nuw nsw i64 %125, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call2287.1, align 8
  %polly.access.Packed_MemRef_call1295.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call1295.1, align 8
  br label %polly.loop_header275.1

polly.loop_header275:                             ; preds = %polly.loop_header275, %polly.loop_header263
  %polly.indvar278 = phi i64 [ 0, %polly.loop_header263 ], [ %polly.indvar_next279, %polly.loop_header275 ]
  %147 = add nuw nsw i64 %polly.indvar278, %99
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar278, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_284 = load double, double* %polly.access.Packed_MemRef_call1283, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_288, %_p_scalar_284
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %148 = shl i64 %147, 3
  %149 = add nuw nsw i64 %148, %124
  %scevgep297 = getelementptr i8, i8* %call, i64 %149
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond975.not = icmp eq i64 %polly.indvar278, %smin974
  br i1 %exitcond975.not, label %polly.loop_exit277, label %polly.loop_header275

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall306 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* nonnull %malloccall304)
  tail call void @free(i8* nonnull %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1184 = phi i64 [ %indvar.next1185, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %150 = add i64 %indvar1184, 1
  %151 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1186 = icmp ult i64 %150, 4
  br i1 %min.iters.check1186, label %polly.loop_header396.preheader, label %vector.ph1187

vector.ph1187:                                    ; preds = %polly.loop_header390
  %n.vec1189 = and i64 %150, -4
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1191, %vector.body1183 ]
  %152 = shl nuw nsw i64 %index1190, 3
  %153 = getelementptr i8, i8* %scevgep402, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1194 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !83, !noalias !85
  %155 = fmul fast <4 x double> %wide.load1194, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !83, !noalias !85
  %index.next1191 = add i64 %index1190, 4
  %157 = icmp eq i64 %index.next1191, %n.vec1189
  br i1 %157, label %middle.block1181, label %vector.body1183, !llvm.loop !90

middle.block1181:                                 ; preds = %vector.body1183
  %cmp.n1193 = icmp eq i64 %150, %n.vec1189
  br i1 %cmp.n1193, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1181
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1189, %middle.block1181 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1181
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1185 = add i64 %indvar1184, 1
  br i1 %exitcond1010.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %158
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !83, !noalias !85
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1009.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1009.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !91

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %indvars.iv987 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next988, %polly.loop_exit414 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit414 ]
  %smin1004 = call i64 @llvm.smin.i64(i64 %indvars.iv987, i64 -936)
  %159 = add nsw i64 %smin1004, 1000
  %160 = shl nsw i64 %polly.indvar409, 6
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit436
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -64
  %exitcond1008.not = icmp eq i64 %polly.indvar_next410, 16
  br i1 %exitcond1008.not, label %polly.exiting303, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit436, %polly.loop_header406
  %indvars.iv984 = phi i64 [ %indvars.iv.next985, %polly.loop_exit436 ], [ 1200, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit436 ], [ 0, %polly.loop_header406 ]
  %161 = shl nsw i64 %polly.indvar415, 3
  br label %polly.loop_header418

polly.loop_exit436:                               ; preds = %polly.loop_exit473
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next985 = add nsw i64 %indvars.iv984, -8
  %exitcond1007.not = icmp eq i64 %polly.indvar_next416, 150
  br i1 %exitcond1007.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header412
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header412 ], [ %polly.indvar_next422, %polly.loop_exit426 ]
  %162 = add nuw nsw i64 %polly.indvar421, %160
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar421, 1200
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond990.not = icmp eq i64 %polly.indvar_next422, %159
  br i1 %exitcond990.not, label %polly.loop_header434.preheader, label %polly.loop_header418

polly.loop_header434.preheader:                   ; preds = %polly.loop_exit426
  %163 = mul nsw i64 %polly.indvar415, -8
  %polly.access.mul.call1453 = mul nsw i64 %polly.indvar415, 8000
  %164 = or i64 %161, 1
  %polly.access.mul.call1453.1 = mul nuw nsw i64 %164, 1000
  %165 = or i64 %161, 2
  %polly.access.mul.call1453.2 = mul nuw nsw i64 %165, 1000
  %166 = or i64 %161, 3
  %polly.access.mul.call1453.3 = mul nuw nsw i64 %166, 1000
  %167 = or i64 %161, 4
  %polly.access.mul.call1453.4 = mul nuw nsw i64 %167, 1000
  %168 = or i64 %161, 5
  %polly.access.mul.call1453.5 = mul nuw nsw i64 %168, 1000
  %169 = or i64 %161, 6
  %polly.access.mul.call1453.6 = mul nuw nsw i64 %169, 1000
  %170 = or i64 %161, 7
  %polly.access.mul.call1453.7 = mul nuw nsw i64 %170, 1000
  %polly.access.mul.call1453.us = mul nsw i64 %polly.indvar415, 8000
  %171 = or i64 %161, 1
  %polly.access.mul.call1453.us.1 = mul nuw nsw i64 %171, 1000
  %172 = or i64 %161, 2
  %polly.access.mul.call1453.us.2 = mul nuw nsw i64 %172, 1000
  %173 = or i64 %161, 3
  %polly.access.mul.call1453.us.3 = mul nuw nsw i64 %173, 1000
  %174 = or i64 %161, 4
  %polly.access.mul.call1453.us.4 = mul nuw nsw i64 %174, 1000
  %175 = or i64 %161, 5
  %polly.access.mul.call1453.us.5 = mul nuw nsw i64 %175, 1000
  %176 = or i64 %161, 6
  %polly.access.mul.call1453.us.6 = mul nuw nsw i64 %176, 1000
  %177 = or i64 %161, 7
  %polly.access.mul.call1453.us.7 = mul nuw nsw i64 %177, 1000
  br label %polly.loop_header434

polly.loop_header424:                             ; preds = %polly.loop_header424, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_header424 ]
  %178 = add nuw nsw i64 %polly.indvar427, %161
  %polly.access.mul.call2431 = mul nuw nsw i64 %178, 1000
  %polly.access.add.call2432 = add nuw nsw i64 %162, %polly.access.mul.call2431
  %polly.access.call2433 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2432
  %polly.access.call2433.load = load double, double* %polly.access.call2433, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar427, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2433.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next428, %indvars.iv984
  br i1 %exitcond986.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header434:                             ; preds = %polly.loop_header434.preheader, %polly.loop_exit473
  %indvars.iv997 = phi i64 [ 0, %polly.loop_header434.preheader ], [ %indvars.iv.next998, %polly.loop_exit473 ]
  %polly.indvar437 = phi i64 [ %polly.indvar415, %polly.loop_header434.preheader ], [ %polly.indvar_next438, %polly.loop_exit473 ]
  %179 = shl nsw i64 %polly.indvar437, 3
  %180 = add nsw i64 %179, %163
  %181 = icmp ugt i64 %180, 8
  %182 = select i1 %181, i64 %180, i64 8
  %183 = or i64 %180, 7
  %polly.loop_guard460.not = icmp ugt i64 %182, %183
  br i1 %polly.loop_guard460.not, label %polly.loop_header440.us, label %polly.loop_header440

polly.loop_header440.us:                          ; preds = %polly.loop_header434, %polly.loop_header440.us
  %polly.indvar443.us = phi i64 [ %polly.indvar_next444.us, %polly.loop_header440.us ], [ 0, %polly.loop_header434 ]
  %184 = add nuw nsw i64 %polly.indvar443.us, %160
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar443.us, 1200
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.access.mul.call1453.us, %184
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.access.add.call1454.us.1 = add nuw nsw i64 %polly.access.mul.call1453.us.1, %184
  %polly.access.call1455.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.1
  %polly.access.call1455.load.us.1 = load double, double* %polly.access.call1455.us.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 1
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1455.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.access.add.call1454.us.2 = add nuw nsw i64 %polly.access.mul.call1453.us.2, %184
  %polly.access.call1455.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.2
  %polly.access.call1455.load.us.2 = load double, double* %polly.access.call1455.us.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 2
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1455.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.access.add.call1454.us.3 = add nuw nsw i64 %polly.access.mul.call1453.us.3, %184
  %polly.access.call1455.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.3
  %polly.access.call1455.load.us.3 = load double, double* %polly.access.call1455.us.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 3
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1455.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.access.add.call1454.us.4 = add nuw nsw i64 %polly.access.mul.call1453.us.4, %184
  %polly.access.call1455.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.4
  %polly.access.call1455.load.us.4 = load double, double* %polly.access.call1455.us.4, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 4
  %polly.access.Packed_MemRef_call1305.us.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.4
  store double %polly.access.call1455.load.us.4, double* %polly.access.Packed_MemRef_call1305.us.4, align 8
  %polly.access.add.call1454.us.5 = add nuw nsw i64 %polly.access.mul.call1453.us.5, %184
  %polly.access.call1455.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.5
  %polly.access.call1455.load.us.5 = load double, double* %polly.access.call1455.us.5, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 5
  %polly.access.Packed_MemRef_call1305.us.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.5
  store double %polly.access.call1455.load.us.5, double* %polly.access.Packed_MemRef_call1305.us.5, align 8
  %polly.access.add.call1454.us.6 = add nuw nsw i64 %polly.access.mul.call1453.us.6, %184
  %polly.access.call1455.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.6
  %polly.access.call1455.load.us.6 = load double, double* %polly.access.call1455.us.6, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 6
  %polly.access.Packed_MemRef_call1305.us.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.6
  store double %polly.access.call1455.load.us.6, double* %polly.access.Packed_MemRef_call1305.us.6, align 8
  %polly.access.add.call1454.us.7 = add nuw nsw i64 %polly.access.mul.call1453.us.7, %184
  %polly.access.call1455.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.us.7
  %polly.access.call1455.load.us.7 = load double, double* %polly.access.call1455.us.7, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1305.us, 7
  %polly.access.Packed_MemRef_call1305.us.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.7
  store double %polly.access.call1455.load.us.7, double* %polly.access.Packed_MemRef_call1305.us.7, align 8
  %polly.indvar_next444.us = add nuw nsw i64 %polly.indvar443.us, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next444.us, %159
  br i1 %exitcond996.not, label %polly.loop_header471.preheader, label %polly.loop_header440.us

polly.loop_exit473:                               ; preds = %polly.loop_exit485.7
  %polly.indvar_next438 = add nuw nsw i64 %polly.indvar437, 1
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 8
  %exitcond1006.not = icmp eq i64 %polly.indvar_next438, 150
  br i1 %exitcond1006.not, label %polly.loop_exit436, label %polly.loop_header434

polly.loop_header440:                             ; preds = %polly.loop_header434, %polly.loop_exit459
  %polly.indvar443 = phi i64 [ %polly.indvar_next444, %polly.loop_exit459 ], [ 0, %polly.loop_header434 ]
  %185 = add nuw nsw i64 %polly.indvar443, %160
  %polly.access.mul.Packed_MemRef_call1305 = mul nuw nsw i64 %polly.indvar443, 1200
  %polly.access.add.call1454 = add nuw nsw i64 %polly.access.mul.call1453, %185
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !86, !noalias !93
  %polly.access.Packed_MemRef_call1305 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1305, align 8
  %polly.access.add.call1454.1 = add nuw nsw i64 %polly.access.mul.call1453.1, %185
  %polly.access.call1455.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.1
  %polly.access.call1455.load.1 = load double, double* %polly.access.call1455.1, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.1 = or i64 %polly.access.mul.Packed_MemRef_call1305, 1
  %polly.access.Packed_MemRef_call1305.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.1
  store double %polly.access.call1455.load.1, double* %polly.access.Packed_MemRef_call1305.1, align 8
  %polly.access.add.call1454.2 = add nuw nsw i64 %polly.access.mul.call1453.2, %185
  %polly.access.call1455.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.2
  %polly.access.call1455.load.2 = load double, double* %polly.access.call1455.2, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.2 = or i64 %polly.access.mul.Packed_MemRef_call1305, 2
  %polly.access.Packed_MemRef_call1305.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.2
  store double %polly.access.call1455.load.2, double* %polly.access.Packed_MemRef_call1305.2, align 8
  %polly.access.add.call1454.3 = add nuw nsw i64 %polly.access.mul.call1453.3, %185
  %polly.access.call1455.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.3
  %polly.access.call1455.load.3 = load double, double* %polly.access.call1455.3, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.3 = or i64 %polly.access.mul.Packed_MemRef_call1305, 3
  %polly.access.Packed_MemRef_call1305.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.3
  store double %polly.access.call1455.load.3, double* %polly.access.Packed_MemRef_call1305.3, align 8
  %polly.access.add.call1454.4 = add nuw nsw i64 %polly.access.mul.call1453.4, %185
  %polly.access.call1455.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.4
  %polly.access.call1455.load.4 = load double, double* %polly.access.call1455.4, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.4 = or i64 %polly.access.mul.Packed_MemRef_call1305, 4
  %polly.access.Packed_MemRef_call1305.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.4
  store double %polly.access.call1455.load.4, double* %polly.access.Packed_MemRef_call1305.4, align 8
  %polly.access.add.call1454.5 = add nuw nsw i64 %polly.access.mul.call1453.5, %185
  %polly.access.call1455.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.5
  %polly.access.call1455.load.5 = load double, double* %polly.access.call1455.5, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.5 = or i64 %polly.access.mul.Packed_MemRef_call1305, 5
  %polly.access.Packed_MemRef_call1305.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.5
  store double %polly.access.call1455.load.5, double* %polly.access.Packed_MemRef_call1305.5, align 8
  %polly.access.add.call1454.6 = add nuw nsw i64 %polly.access.mul.call1453.6, %185
  %polly.access.call1455.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.6
  %polly.access.call1455.load.6 = load double, double* %polly.access.call1455.6, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.6 = or i64 %polly.access.mul.Packed_MemRef_call1305, 6
  %polly.access.Packed_MemRef_call1305.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.6
  store double %polly.access.call1455.load.6, double* %polly.access.Packed_MemRef_call1305.6, align 8
  %polly.access.add.call1454.7 = add nuw nsw i64 %polly.access.mul.call1453.7, %185
  %polly.access.call1455.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1454.7
  %polly.access.call1455.load.7 = load double, double* %polly.access.call1455.7, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305.7 = or i64 %polly.access.mul.Packed_MemRef_call1305, 7
  %polly.access.Packed_MemRef_call1305.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.7
  store double %polly.access.call1455.load.7, double* %polly.access.Packed_MemRef_call1305.7, align 8
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_header457
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next444, %159
  br i1 %exitcond993.not, label %polly.loop_header471.preheader, label %polly.loop_header440

polly.loop_header471.preheader:                   ; preds = %polly.loop_exit459, %polly.loop_header440.us
  %smin1001 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 7)
  %186 = mul nsw i64 %polly.indvar437, 76800
  %indvars.iv.next1000 = or i64 %indvars.iv997, 1
  %smin1001.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000, i64 7)
  %187 = or i64 %180, 1
  %188 = or i64 %179, 1
  %189 = mul nuw nsw i64 %188, 9600
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv.next1000, 1
  %smin1001.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.1, i64 7)
  %190 = or i64 %180, 2
  %191 = or i64 %179, 2
  %192 = mul nuw nsw i64 %191, 9600
  %indvars.iv.next1000.2 = or i64 %indvars.iv997, 3
  %smin1001.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.2, i64 7)
  %193 = or i64 %180, 3
  %194 = or i64 %179, 3
  %195 = mul nuw nsw i64 %194, 9600
  %indvars.iv.next1000.3 = add nuw nsw i64 %indvars.iv.next1000.2, 1
  %smin1001.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.3, i64 7)
  %196 = or i64 %180, 4
  %197 = or i64 %179, 4
  %198 = mul nuw nsw i64 %197, 9600
  %indvars.iv.next1000.4 = add nuw nsw i64 %indvars.iv.next1000.2, 2
  %smin1001.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.4, i64 7)
  %199 = or i64 %180, 5
  %200 = or i64 %179, 5
  %201 = mul nuw nsw i64 %200, 9600
  %indvars.iv.next1000.5 = add nuw nsw i64 %indvars.iv.next1000.2, 3
  %smin1001.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1000.5, i64 7)
  %202 = or i64 %180, 6
  %203 = or i64 %179, 6
  %204 = mul nuw nsw i64 %203, 9600
  %205 = or i64 %180, 7
  %206 = or i64 %179, 7
  %207 = mul nuw nsw i64 %206, 9600
  br label %polly.loop_header471

polly.loop_header457:                             ; preds = %polly.loop_header440, %polly.loop_header457
  %polly.indvar461 = phi i64 [ %polly.indvar_next462, %polly.loop_header457 ], [ %182, %polly.loop_header440 ]
  %208 = add nuw nsw i64 %polly.indvar461, %161
  %polly.access.mul.call1465 = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1466 = add nuw nsw i64 %polly.access.mul.call1465, %185
  %polly.access.call1467 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1466
  %polly.access.call1467.load = load double, double* %polly.access.call1467, align 8, !alias.scope !86, !noalias !93
  %polly.access.add.Packed_MemRef_call1305469 = add nuw nsw i64 %polly.indvar461, %polly.access.mul.Packed_MemRef_call1305
  %polly.access.Packed_MemRef_call1305470 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305469
  store double %polly.access.call1467.load, double* %polly.access.Packed_MemRef_call1305470, align 8
  %polly.indvar_next462 = add nuw nsw i64 %polly.indvar461, 1
  %polly.loop_cond463.not.not = icmp ult i64 %polly.indvar461, %183
  br i1 %polly.loop_cond463.not.not, label %polly.loop_header457, label %polly.loop_exit459

polly.loop_header471:                             ; preds = %polly.loop_header471.preheader, %polly.loop_exit485.7
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_exit485.7 ], [ 0, %polly.loop_header471.preheader ]
  %polly.access.mul.Packed_MemRef_call1305489 = mul nuw nsw i64 %polly.indvar474, 1200
  %polly.access.add.Packed_MemRef_call2307494 = add nuw nsw i64 %180, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_496 = load double, double* %polly.access.Packed_MemRef_call2307495, align 8
  %polly.access.Packed_MemRef_call1305503 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494
  %_p_scalar_504 = load double, double* %polly.access.Packed_MemRef_call1305503, align 8
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483
  %polly.access.add.Packed_MemRef_call2307494.1 = add nuw nsw i64 %187, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_496.1 = load double, double* %polly.access.Packed_MemRef_call2307495.1, align 8
  %polly.access.Packed_MemRef_call1305503.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.1
  %_p_scalar_504.1 = load double, double* %polly.access.Packed_MemRef_call1305503.1, align 8
  br label %polly.loop_header483.1

polly.loop_header483:                             ; preds = %polly.loop_header483, %polly.loop_header471
  %polly.indvar486 = phi i64 [ 0, %polly.loop_header471 ], [ %polly.indvar_next487, %polly.loop_header483 ]
  %209 = add nuw nsw i64 %polly.indvar486, %161
  %polly.access.add.Packed_MemRef_call1305490 = add nuw nsw i64 %polly.indvar486, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_492 = load double, double* %polly.access.Packed_MemRef_call1305491, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_496, %_p_scalar_492
  %polly.access.Packed_MemRef_call2307499 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490
  %_p_scalar_500 = load double, double* %polly.access.Packed_MemRef_call2307499, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_504, %_p_scalar_500
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %210, %186
  %scevgep505 = getelementptr i8, i8* %call, i64 %211
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_507
  store double %p_add42.i79, double* %scevgep505506, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond1002.not = icmp eq i64 %polly.indvar486, %smin1001
  br i1 %exitcond1002.not, label %polly.loop_exit485, label %polly.loop_header483

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall514 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* nonnull %malloccall512)
  tail call void @free(i8* nonnull %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %212 = add i64 %indvar, 1
  %213 = mul nuw nsw i64 %polly.indvar601, 9600
  %scevgep610 = getelementptr i8, i8* %call, i64 %213
  %min.iters.check1160 = icmp ult i64 %212, 4
  br i1 %min.iters.check1160, label %polly.loop_header604.preheader, label %vector.ph1161

vector.ph1161:                                    ; preds = %polly.loop_header598
  %n.vec1163 = and i64 %212, -4
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %vector.ph1161
  %index1164 = phi i64 [ 0, %vector.ph1161 ], [ %index.next1165, %vector.body1159 ]
  %214 = shl nuw nsw i64 %index1164, 3
  %215 = getelementptr i8, i8* %scevgep610, i64 %214
  %216 = bitcast i8* %215 to <4 x double>*
  %wide.load1168 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !94, !noalias !96
  %217 = fmul fast <4 x double> %wide.load1168, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %218 = bitcast i8* %215 to <4 x double>*
  store <4 x double> %217, <4 x double>* %218, align 8, !alias.scope !94, !noalias !96
  %index.next1165 = add i64 %index1164, 4
  %219 = icmp eq i64 %index.next1165, %n.vec1163
  br i1 %219, label %middle.block1157, label %vector.body1159, !llvm.loop !101

middle.block1157:                                 ; preds = %vector.body1159
  %cmp.n1167 = icmp eq i64 %212, %n.vec1163
  br i1 %cmp.n1167, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1157
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1163, %middle.block1157 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1157
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next602, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1037.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %220 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %220
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !94, !noalias !96
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1036.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !102

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %indvars.iv1014 = phi i64 [ 0, %polly.loop_header614.preheader ], [ %indvars.iv.next1015, %polly.loop_exit622 ]
  %polly.indvar617 = phi i64 [ 0, %polly.loop_header614.preheader ], [ %polly.indvar_next618, %polly.loop_exit622 ]
  %smin1031 = call i64 @llvm.smin.i64(i64 %indvars.iv1014, i64 -936)
  %221 = add nsw i64 %smin1031, 1000
  %222 = shl nsw i64 %polly.indvar617, 6
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit644
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -64
  %exitcond1035.not = icmp eq i64 %polly.indvar_next618, 16
  br i1 %exitcond1035.not, label %polly.exiting511, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_exit644, %polly.loop_header614
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %polly.loop_exit644 ], [ 1200, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit644 ], [ 0, %polly.loop_header614 ]
  %223 = shl nsw i64 %polly.indvar623, 3
  br label %polly.loop_header626

polly.loop_exit644:                               ; preds = %polly.loop_exit681
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, -8
  %exitcond1034.not = icmp eq i64 %polly.indvar_next624, 150
  br i1 %exitcond1034.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %polly.indvar629 = phi i64 [ 0, %polly.loop_header620 ], [ %polly.indvar_next630, %polly.loop_exit634 ]
  %224 = add nuw nsw i64 %polly.indvar629, %222
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar629, 1200
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_header632
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next630, %221
  br i1 %exitcond1017.not, label %polly.loop_header642.preheader, label %polly.loop_header626

polly.loop_header642.preheader:                   ; preds = %polly.loop_exit634
  %225 = mul nsw i64 %polly.indvar623, -8
  %polly.access.mul.call1661 = mul nsw i64 %polly.indvar623, 8000
  %226 = or i64 %223, 1
  %polly.access.mul.call1661.1 = mul nuw nsw i64 %226, 1000
  %227 = or i64 %223, 2
  %polly.access.mul.call1661.2 = mul nuw nsw i64 %227, 1000
  %228 = or i64 %223, 3
  %polly.access.mul.call1661.3 = mul nuw nsw i64 %228, 1000
  %229 = or i64 %223, 4
  %polly.access.mul.call1661.4 = mul nuw nsw i64 %229, 1000
  %230 = or i64 %223, 5
  %polly.access.mul.call1661.5 = mul nuw nsw i64 %230, 1000
  %231 = or i64 %223, 6
  %polly.access.mul.call1661.6 = mul nuw nsw i64 %231, 1000
  %232 = or i64 %223, 7
  %polly.access.mul.call1661.7 = mul nuw nsw i64 %232, 1000
  %polly.access.mul.call1661.us = mul nsw i64 %polly.indvar623, 8000
  %233 = or i64 %223, 1
  %polly.access.mul.call1661.us.1 = mul nuw nsw i64 %233, 1000
  %234 = or i64 %223, 2
  %polly.access.mul.call1661.us.2 = mul nuw nsw i64 %234, 1000
  %235 = or i64 %223, 3
  %polly.access.mul.call1661.us.3 = mul nuw nsw i64 %235, 1000
  %236 = or i64 %223, 4
  %polly.access.mul.call1661.us.4 = mul nuw nsw i64 %236, 1000
  %237 = or i64 %223, 5
  %polly.access.mul.call1661.us.5 = mul nuw nsw i64 %237, 1000
  %238 = or i64 %223, 6
  %polly.access.mul.call1661.us.6 = mul nuw nsw i64 %238, 1000
  %239 = or i64 %223, 7
  %polly.access.mul.call1661.us.7 = mul nuw nsw i64 %239, 1000
  br label %polly.loop_header642

polly.loop_header632:                             ; preds = %polly.loop_header632, %polly.loop_header626
  %polly.indvar635 = phi i64 [ 0, %polly.loop_header626 ], [ %polly.indvar_next636, %polly.loop_header632 ]
  %240 = add nuw nsw i64 %polly.indvar635, %223
  %polly.access.mul.call2639 = mul nuw nsw i64 %240, 1000
  %polly.access.add.call2640 = add nuw nsw i64 %224, %polly.access.mul.call2639
  %polly.access.call2641 = getelementptr double, double* %polly.access.cast.call2730, i64 %polly.access.add.call2640
  %polly.access.call2641.load = load double, double* %polly.access.call2641, align 8, !alias.scope !98, !noalias !103
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2641.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar_next636, %indvars.iv1011
  br i1 %exitcond1013.not, label %polly.loop_exit634, label %polly.loop_header632

polly.loop_header642:                             ; preds = %polly.loop_header642.preheader, %polly.loop_exit681
  %indvars.iv1024 = phi i64 [ 0, %polly.loop_header642.preheader ], [ %indvars.iv.next1025, %polly.loop_exit681 ]
  %polly.indvar645 = phi i64 [ %polly.indvar623, %polly.loop_header642.preheader ], [ %polly.indvar_next646, %polly.loop_exit681 ]
  %241 = shl nsw i64 %polly.indvar645, 3
  %242 = add nsw i64 %241, %225
  %243 = icmp ugt i64 %242, 8
  %244 = select i1 %243, i64 %242, i64 8
  %245 = or i64 %242, 7
  %polly.loop_guard668.not = icmp ugt i64 %244, %245
  br i1 %polly.loop_guard668.not, label %polly.loop_header648.us, label %polly.loop_header648

polly.loop_header648.us:                          ; preds = %polly.loop_header642, %polly.loop_header648.us
  %polly.indvar651.us = phi i64 [ %polly.indvar_next652.us, %polly.loop_header648.us ], [ 0, %polly.loop_header642 ]
  %246 = add nuw nsw i64 %polly.indvar651.us, %222
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar651.us, 1200
  %polly.access.add.call1662.us = add nuw nsw i64 %polly.access.mul.call1661.us, %246
  %polly.access.call1663.us = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us
  %polly.access.call1663.load.us = load double, double* %polly.access.call1663.us, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513.us
  store double %polly.access.call1663.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.access.add.call1662.us.1 = add nuw nsw i64 %polly.access.mul.call1661.us.1, %246
  %polly.access.call1663.us.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.1
  %polly.access.call1663.load.us.1 = load double, double* %polly.access.call1663.us.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 1
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1663.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.access.add.call1662.us.2 = add nuw nsw i64 %polly.access.mul.call1661.us.2, %246
  %polly.access.call1663.us.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.2
  %polly.access.call1663.load.us.2 = load double, double* %polly.access.call1663.us.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 2
  %polly.access.Packed_MemRef_call1513.us.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.2
  store double %polly.access.call1663.load.us.2, double* %polly.access.Packed_MemRef_call1513.us.2, align 8
  %polly.access.add.call1662.us.3 = add nuw nsw i64 %polly.access.mul.call1661.us.3, %246
  %polly.access.call1663.us.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.3
  %polly.access.call1663.load.us.3 = load double, double* %polly.access.call1663.us.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 3
  %polly.access.Packed_MemRef_call1513.us.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.3
  store double %polly.access.call1663.load.us.3, double* %polly.access.Packed_MemRef_call1513.us.3, align 8
  %polly.access.add.call1662.us.4 = add nuw nsw i64 %polly.access.mul.call1661.us.4, %246
  %polly.access.call1663.us.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.4
  %polly.access.call1663.load.us.4 = load double, double* %polly.access.call1663.us.4, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 4
  %polly.access.Packed_MemRef_call1513.us.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.4
  store double %polly.access.call1663.load.us.4, double* %polly.access.Packed_MemRef_call1513.us.4, align 8
  %polly.access.add.call1662.us.5 = add nuw nsw i64 %polly.access.mul.call1661.us.5, %246
  %polly.access.call1663.us.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.5
  %polly.access.call1663.load.us.5 = load double, double* %polly.access.call1663.us.5, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 5
  %polly.access.Packed_MemRef_call1513.us.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.5
  store double %polly.access.call1663.load.us.5, double* %polly.access.Packed_MemRef_call1513.us.5, align 8
  %polly.access.add.call1662.us.6 = add nuw nsw i64 %polly.access.mul.call1661.us.6, %246
  %polly.access.call1663.us.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.6
  %polly.access.call1663.load.us.6 = load double, double* %polly.access.call1663.us.6, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 6
  %polly.access.Packed_MemRef_call1513.us.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.6
  store double %polly.access.call1663.load.us.6, double* %polly.access.Packed_MemRef_call1513.us.6, align 8
  %polly.access.add.call1662.us.7 = add nuw nsw i64 %polly.access.mul.call1661.us.7, %246
  %polly.access.call1663.us.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.us.7
  %polly.access.call1663.load.us.7 = load double, double* %polly.access.call1663.us.7, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1513.us, 7
  %polly.access.Packed_MemRef_call1513.us.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.7
  store double %polly.access.call1663.load.us.7, double* %polly.access.Packed_MemRef_call1513.us.7, align 8
  %polly.indvar_next652.us = add nuw nsw i64 %polly.indvar651.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar_next652.us, %221
  br i1 %exitcond1023.not, label %polly.loop_header679.preheader, label %polly.loop_header648.us

polly.loop_exit681:                               ; preds = %polly.loop_exit693.7
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 8
  %exitcond1033.not = icmp eq i64 %polly.indvar_next646, 150
  br i1 %exitcond1033.not, label %polly.loop_exit644, label %polly.loop_header642

polly.loop_header648:                             ; preds = %polly.loop_header642, %polly.loop_exit667
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit667 ], [ 0, %polly.loop_header642 ]
  %247 = add nuw nsw i64 %polly.indvar651, %222
  %polly.access.mul.Packed_MemRef_call1513 = mul nuw nsw i64 %polly.indvar651, 1200
  %polly.access.add.call1662 = add nuw nsw i64 %polly.access.mul.call1661, %247
  %polly.access.call1663 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662
  %polly.access.call1663.load = load double, double* %polly.access.call1663, align 8, !alias.scope !97, !noalias !104
  %polly.access.Packed_MemRef_call1513 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.mul.Packed_MemRef_call1513
  store double %polly.access.call1663.load, double* %polly.access.Packed_MemRef_call1513, align 8
  %polly.access.add.call1662.1 = add nuw nsw i64 %polly.access.mul.call1661.1, %247
  %polly.access.call1663.1 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.1
  %polly.access.call1663.load.1 = load double, double* %polly.access.call1663.1, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.1 = or i64 %polly.access.mul.Packed_MemRef_call1513, 1
  %polly.access.Packed_MemRef_call1513.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.1
  store double %polly.access.call1663.load.1, double* %polly.access.Packed_MemRef_call1513.1, align 8
  %polly.access.add.call1662.2 = add nuw nsw i64 %polly.access.mul.call1661.2, %247
  %polly.access.call1663.2 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.2
  %polly.access.call1663.load.2 = load double, double* %polly.access.call1663.2, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.2 = or i64 %polly.access.mul.Packed_MemRef_call1513, 2
  %polly.access.Packed_MemRef_call1513.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.2
  store double %polly.access.call1663.load.2, double* %polly.access.Packed_MemRef_call1513.2, align 8
  %polly.access.add.call1662.3 = add nuw nsw i64 %polly.access.mul.call1661.3, %247
  %polly.access.call1663.3 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.3
  %polly.access.call1663.load.3 = load double, double* %polly.access.call1663.3, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.3 = or i64 %polly.access.mul.Packed_MemRef_call1513, 3
  %polly.access.Packed_MemRef_call1513.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.3
  store double %polly.access.call1663.load.3, double* %polly.access.Packed_MemRef_call1513.3, align 8
  %polly.access.add.call1662.4 = add nuw nsw i64 %polly.access.mul.call1661.4, %247
  %polly.access.call1663.4 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.4
  %polly.access.call1663.load.4 = load double, double* %polly.access.call1663.4, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.4 = or i64 %polly.access.mul.Packed_MemRef_call1513, 4
  %polly.access.Packed_MemRef_call1513.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.4
  store double %polly.access.call1663.load.4, double* %polly.access.Packed_MemRef_call1513.4, align 8
  %polly.access.add.call1662.5 = add nuw nsw i64 %polly.access.mul.call1661.5, %247
  %polly.access.call1663.5 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.5
  %polly.access.call1663.load.5 = load double, double* %polly.access.call1663.5, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.5 = or i64 %polly.access.mul.Packed_MemRef_call1513, 5
  %polly.access.Packed_MemRef_call1513.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.5
  store double %polly.access.call1663.load.5, double* %polly.access.Packed_MemRef_call1513.5, align 8
  %polly.access.add.call1662.6 = add nuw nsw i64 %polly.access.mul.call1661.6, %247
  %polly.access.call1663.6 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.6
  %polly.access.call1663.load.6 = load double, double* %polly.access.call1663.6, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.6 = or i64 %polly.access.mul.Packed_MemRef_call1513, 6
  %polly.access.Packed_MemRef_call1513.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.6
  store double %polly.access.call1663.load.6, double* %polly.access.Packed_MemRef_call1513.6, align 8
  %polly.access.add.call1662.7 = add nuw nsw i64 %polly.access.mul.call1661.7, %247
  %polly.access.call1663.7 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1662.7
  %polly.access.call1663.load.7 = load double, double* %polly.access.call1663.7, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513.7 = or i64 %polly.access.mul.Packed_MemRef_call1513, 7
  %polly.access.Packed_MemRef_call1513.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.7
  store double %polly.access.call1663.load.7, double* %polly.access.Packed_MemRef_call1513.7, align 8
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next652, %221
  br i1 %exitcond1020.not, label %polly.loop_header679.preheader, label %polly.loop_header648

polly.loop_header679.preheader:                   ; preds = %polly.loop_exit667, %polly.loop_header648.us
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 7)
  %248 = mul nsw i64 %polly.indvar645, 76800
  %indvars.iv.next1027 = or i64 %indvars.iv1024, 1
  %smin1028.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027, i64 7)
  %249 = or i64 %242, 1
  %250 = or i64 %241, 1
  %251 = mul nuw nsw i64 %250, 9600
  %indvars.iv.next1027.1 = add nuw nsw i64 %indvars.iv.next1027, 1
  %smin1028.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027.1, i64 7)
  %252 = or i64 %242, 2
  %253 = or i64 %241, 2
  %254 = mul nuw nsw i64 %253, 9600
  %indvars.iv.next1027.2 = or i64 %indvars.iv1024, 3
  %smin1028.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027.2, i64 7)
  %255 = or i64 %242, 3
  %256 = or i64 %241, 3
  %257 = mul nuw nsw i64 %256, 9600
  %indvars.iv.next1027.3 = add nuw nsw i64 %indvars.iv.next1027.2, 1
  %smin1028.4 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027.3, i64 7)
  %258 = or i64 %242, 4
  %259 = or i64 %241, 4
  %260 = mul nuw nsw i64 %259, 9600
  %indvars.iv.next1027.4 = add nuw nsw i64 %indvars.iv.next1027.2, 2
  %smin1028.5 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027.4, i64 7)
  %261 = or i64 %242, 5
  %262 = or i64 %241, 5
  %263 = mul nuw nsw i64 %262, 9600
  %indvars.iv.next1027.5 = add nuw nsw i64 %indvars.iv.next1027.2, 3
  %smin1028.6 = call i64 @llvm.smin.i64(i64 %indvars.iv.next1027.5, i64 7)
  %264 = or i64 %242, 6
  %265 = or i64 %241, 6
  %266 = mul nuw nsw i64 %265, 9600
  %267 = or i64 %242, 7
  %268 = or i64 %241, 7
  %269 = mul nuw nsw i64 %268, 9600
  br label %polly.loop_header679

polly.loop_header665:                             ; preds = %polly.loop_header648, %polly.loop_header665
  %polly.indvar669 = phi i64 [ %polly.indvar_next670, %polly.loop_header665 ], [ %244, %polly.loop_header648 ]
  %270 = add nuw nsw i64 %polly.indvar669, %223
  %polly.access.mul.call1673 = mul nuw nsw i64 %270, 1000
  %polly.access.add.call1674 = add nuw nsw i64 %polly.access.mul.call1673, %247
  %polly.access.call1675 = getelementptr double, double* %polly.access.cast.call1720, i64 %polly.access.add.call1674
  %polly.access.call1675.load = load double, double* %polly.access.call1675, align 8, !alias.scope !97, !noalias !104
  %polly.access.add.Packed_MemRef_call1513677 = add nuw nsw i64 %polly.indvar669, %polly.access.mul.Packed_MemRef_call1513
  %polly.access.Packed_MemRef_call1513678 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513677
  store double %polly.access.call1675.load, double* %polly.access.Packed_MemRef_call1513678, align 8
  %polly.indvar_next670 = add nuw nsw i64 %polly.indvar669, 1
  %polly.loop_cond671.not.not = icmp ult i64 %polly.indvar669, %245
  br i1 %polly.loop_cond671.not.not, label %polly.loop_header665, label %polly.loop_exit667

polly.loop_header679:                             ; preds = %polly.loop_header679.preheader, %polly.loop_exit693.7
  %polly.indvar682 = phi i64 [ %polly.indvar_next683, %polly.loop_exit693.7 ], [ 0, %polly.loop_header679.preheader ]
  %polly.access.mul.Packed_MemRef_call1513697 = mul nuw nsw i64 %polly.indvar682, 1200
  %polly.access.add.Packed_MemRef_call2515702 = add nuw nsw i64 %242, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_704 = load double, double* %polly.access.Packed_MemRef_call2515703, align 8
  %polly.access.Packed_MemRef_call1513711 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702
  %_p_scalar_712 = load double, double* %polly.access.Packed_MemRef_call1513711, align 8
  br label %polly.loop_header691

polly.loop_exit693:                               ; preds = %polly.loop_header691
  %polly.access.add.Packed_MemRef_call2515702.1 = add nuw nsw i64 %249, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_704.1 = load double, double* %polly.access.Packed_MemRef_call2515703.1, align 8
  %polly.access.Packed_MemRef_call1513711.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.1
  %_p_scalar_712.1 = load double, double* %polly.access.Packed_MemRef_call1513711.1, align 8
  br label %polly.loop_header691.1

polly.loop_header691:                             ; preds = %polly.loop_header691, %polly.loop_header679
  %polly.indvar694 = phi i64 [ 0, %polly.loop_header679 ], [ %polly.indvar_next695, %polly.loop_header691 ]
  %271 = add nuw nsw i64 %polly.indvar694, %223
  %polly.access.add.Packed_MemRef_call1513698 = add nuw nsw i64 %polly.indvar694, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_700 = load double, double* %polly.access.Packed_MemRef_call1513699, align 8
  %p_mul27.i = fmul fast double %_p_scalar_704, %_p_scalar_700
  %polly.access.Packed_MemRef_call2515707 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call2515707, align 8
  %p_mul37.i = fmul fast double %_p_scalar_712, %_p_scalar_708
  %272 = shl i64 %271, 3
  %273 = add nuw nsw i64 %272, %248
  %scevgep713 = getelementptr i8, i8* %call, i64 %273
  %scevgep713714 = bitcast i8* %scevgep713 to double*
  %_p_scalar_715 = load double, double* %scevgep713714, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_715
  store double %p_add42.i, double* %scevgep713714, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar694, %smin1028
  br i1 %exitcond1029.not, label %polly.loop_exit693, label %polly.loop_header691

polly.loop_header842:                             ; preds = %entry, %polly.loop_exit850
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %polly.loop_exit850 ], [ 0, %entry ]
  %polly.indvar845 = phi i64 [ %polly.indvar_next846, %polly.loop_exit850 ], [ 0, %entry ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 -1168)
  %274 = shl nsw i64 %polly.indvar845, 5
  %275 = add nsw i64 %smin1064, 1199
  br label %polly.loop_header848

polly.loop_exit850:                               ; preds = %polly.loop_exit856
  %polly.indvar_next846 = add nuw nsw i64 %polly.indvar845, 1
  %indvars.iv.next1063 = add nsw i64 %indvars.iv1062, -32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next846, 38
  br i1 %exitcond1067.not, label %polly.loop_header869, label %polly.loop_header842

polly.loop_header848:                             ; preds = %polly.loop_exit856, %polly.loop_header842
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %polly.loop_header842 ]
  %276 = mul nsw i64 %polly.indvar851, -32
  %smin = call i64 @llvm.smin.i64(i64 %276, i64 -1168)
  %277 = add nsw i64 %smin, 1200
  %smin1060 = call i64 @llvm.smin.i64(i64 %indvars.iv1058, i64 -1168)
  %278 = shl nsw i64 %polly.indvar851, 5
  %279 = add nsw i64 %smin1060, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1066.not, label %polly.loop_exit850, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %polly.indvar857 = phi i64 [ 0, %polly.loop_header848 ], [ %polly.indvar_next858, %polly.loop_exit862 ]
  %280 = add nuw nsw i64 %polly.indvar857, %274
  %281 = trunc i64 %280 to i32
  %282 = mul nuw nsw i64 %280, 9600
  %min.iters.check = icmp eq i64 %277, 0
  br i1 %min.iters.check, label %polly.loop_header860, label %vector.ph1099

vector.ph1099:                                    ; preds = %polly.loop_header854
  %broadcast.splatinsert1106 = insertelement <4 x i64> poison, i64 %278, i32 0
  %broadcast.splat1107 = shufflevector <4 x i64> %broadcast.splatinsert1106, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1099
  %index1100 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1099 ], [ %vec.ind.next1105, %vector.body1098 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1104, %broadcast.splat1107
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1109, %284
  %286 = add <4 x i32> %285, <i32 3, i32 3, i32 3, i32 3>
  %287 = urem <4 x i32> %286, <i32 1200, i32 1200, i32 1200, i32 1200>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add nuw nsw i64 %291, %282
  %293 = getelementptr i8, i8* %call, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !105, !noalias !107
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1105 = add <4 x i64> %vec.ind1104, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1101, %277
  br i1 %295, label %polly.loop_exit862, label %vector.body1098, !llvm.loop !110

polly.loop_exit862:                               ; preds = %vector.body1098, %polly.loop_header860
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar857, %275
  br i1 %exitcond1065.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_header854, %polly.loop_header860
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_header860 ], [ 0, %polly.loop_header854 ]
  %296 = add nuw nsw i64 %polly.indvar863, %278
  %297 = trunc i64 %296 to i32
  %298 = mul i32 %297, %281
  %299 = add i32 %298, 3
  %300 = urem i32 %299, 1200
  %p_conv31.i = sitofp i32 %300 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %301 = shl i64 %296, 3
  %302 = add nuw nsw i64 %301, %282
  %scevgep866 = getelementptr i8, i8* %call, i64 %302
  %scevgep866867 = bitcast i8* %scevgep866 to double*
  store double %p_div33.i, double* %scevgep866867, align 8, !alias.scope !105, !noalias !107
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar863, %279
  br i1 %exitcond1061.not, label %polly.loop_exit862, label %polly.loop_header860, !llvm.loop !111

polly.loop_header869:                             ; preds = %polly.loop_exit850, %polly.loop_exit877
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %polly.indvar872 = phi i64 [ %polly.indvar_next873, %polly.loop_exit877 ], [ 0, %polly.loop_exit850 ]
  %smin1054 = call i64 @llvm.smin.i64(i64 %indvars.iv1052, i64 -1168)
  %303 = shl nsw i64 %polly.indvar872, 5
  %304 = add nsw i64 %smin1054, 1199
  br label %polly.loop_header875

polly.loop_exit877:                               ; preds = %polly.loop_exit883
  %polly.indvar_next873 = add nuw nsw i64 %polly.indvar872, 1
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1057.not = icmp eq i64 %polly.indvar_next873, 38
  br i1 %exitcond1057.not, label %polly.loop_header895, label %polly.loop_header869

polly.loop_header875:                             ; preds = %polly.loop_exit883, %polly.loop_header869
  %indvars.iv1048 = phi i64 [ %indvars.iv.next1049, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_header869 ]
  %305 = mul nsw i64 %polly.indvar878, -32
  %smin1113 = call i64 @llvm.smin.i64(i64 %305, i64 -968)
  %306 = add nsw i64 %smin1113, 1000
  %smin1050 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 -968)
  %307 = shl nsw i64 %polly.indvar878, 5
  %308 = add nsw i64 %smin1050, 999
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next879, 32
  br i1 %exitcond1056.not, label %polly.loop_exit877, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %polly.indvar884 = phi i64 [ 0, %polly.loop_header875 ], [ %polly.indvar_next885, %polly.loop_exit889 ]
  %309 = add nuw nsw i64 %polly.indvar884, %303
  %310 = trunc i64 %309 to i32
  %311 = mul nuw nsw i64 %309, 8000
  %min.iters.check1114 = icmp eq i64 %306, 0
  br i1 %min.iters.check1114, label %polly.loop_header887, label %vector.ph1115

vector.ph1115:                                    ; preds = %polly.loop_header881
  %broadcast.splatinsert1124 = insertelement <4 x i64> poison, i64 %307, i32 0
  %broadcast.splat1125 = shufflevector <4 x i64> %broadcast.splatinsert1124, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1115
  %index1118 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1119, %vector.body1112 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1115 ], [ %vec.ind.next1123, %vector.body1112 ]
  %312 = add nuw nsw <4 x i64> %vec.ind1122, %broadcast.splat1125
  %313 = trunc <4 x i64> %312 to <4 x i32>
  %314 = mul <4 x i32> %broadcast.splat1127, %313
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 1000, i32 1000, i32 1000, i32 1000>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %319 = extractelement <4 x i64> %312, i32 0
  %320 = shl i64 %319, 3
  %321 = add nuw nsw i64 %320, %311
  %322 = getelementptr i8, i8* %call2, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %318, <4 x double>* %323, align 8, !alias.scope !109, !noalias !112
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %324 = icmp eq i64 %index.next1119, %306
  br i1 %324, label %polly.loop_exit889, label %vector.body1112, !llvm.loop !113

polly.loop_exit889:                               ; preds = %vector.body1112, %polly.loop_header887
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %exitcond1055.not = icmp eq i64 %polly.indvar884, %304
  br i1 %exitcond1055.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_header881, %polly.loop_header887
  %polly.indvar890 = phi i64 [ %polly.indvar_next891, %polly.loop_header887 ], [ 0, %polly.loop_header881 ]
  %325 = add nuw nsw i64 %polly.indvar890, %307
  %326 = trunc i64 %325 to i32
  %327 = mul i32 %326, %310
  %328 = add i32 %327, 2
  %329 = urem i32 %328, 1000
  %p_conv10.i = sitofp i32 %329 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %330 = shl i64 %325, 3
  %331 = add nuw nsw i64 %330, %311
  %scevgep893 = getelementptr i8, i8* %call2, i64 %331
  %scevgep893894 = bitcast i8* %scevgep893 to double*
  store double %p_div12.i, double* %scevgep893894, align 8, !alias.scope !109, !noalias !112
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1051.not = icmp eq i64 %polly.indvar890, %308
  br i1 %exitcond1051.not, label %polly.loop_exit889, label %polly.loop_header887, !llvm.loop !114

polly.loop_header895:                             ; preds = %polly.loop_exit877, %polly.loop_exit903
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit877 ]
  %smin1044 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 -1168)
  %332 = shl nsw i64 %polly.indvar898, 5
  %333 = add nsw i64 %smin1044, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, -32
  %exitcond1047.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1047.not, label %init_array.exit, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %334 = mul nsw i64 %polly.indvar904, -32
  %smin1131 = call i64 @llvm.smin.i64(i64 %334, i64 -968)
  %335 = add nsw i64 %smin1131, 1000
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1038, i64 -968)
  %336 = shl nsw i64 %polly.indvar904, 5
  %337 = add nsw i64 %smin1040, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1039 = add nsw i64 %indvars.iv1038, -32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1046.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %338 = add nuw nsw i64 %polly.indvar910, %332
  %339 = trunc i64 %338 to i32
  %340 = mul nuw nsw i64 %338, 8000
  %min.iters.check1132 = icmp eq i64 %335, 0
  br i1 %min.iters.check1132, label %polly.loop_header913, label %vector.ph1133

vector.ph1133:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1142 = insertelement <4 x i64> poison, i64 %336, i32 0
  %broadcast.splat1143 = shufflevector <4 x i64> %broadcast.splatinsert1142, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1137, %vector.body1130 ]
  %vec.ind1140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1133 ], [ %vec.ind.next1141, %vector.body1130 ]
  %341 = add nuw nsw <4 x i64> %vec.ind1140, %broadcast.splat1143
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat1145, %342
  %344 = add <4 x i32> %343, <i32 1, i32 1, i32 1, i32 1>
  %345 = urem <4 x i32> %344, <i32 1200, i32 1200, i32 1200, i32 1200>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add nuw nsw i64 %349, %340
  %351 = getelementptr i8, i8* %call1, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !108, !noalias !115
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1141 = add <4 x i64> %vec.ind1140, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1137, %335
  br i1 %353, label %polly.loop_exit915, label %vector.body1130, !llvm.loop !116

polly.loop_exit915:                               ; preds = %vector.body1130, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar910, %333
  br i1 %exitcond1045.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %354 = add nuw nsw i64 %polly.indvar916, %336
  %355 = trunc i64 %354 to i32
  %356 = mul i32 %355, %339
  %357 = add i32 %356, 1
  %358 = urem i32 %357, 1200
  %p_conv.i = sitofp i32 %358 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %359 = shl i64 %354, 3
  %360 = add nuw nsw i64 %359, %340
  %scevgep920 = getelementptr i8, i8* %call1, i64 %360
  %scevgep920921 = bitcast i8* %scevgep920 to double*
  store double %p_div.i, double* %scevgep920921, align 8, !alias.scope !108, !noalias !115
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar916, %337
  br i1 %exitcond1041.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !117

polly.loop_header275.1:                           ; preds = %polly.loop_header275.1, %polly.loop_exit277
  %polly.indvar278.1 = phi i64 [ 0, %polly.loop_exit277 ], [ %polly.indvar_next279.1, %polly.loop_header275.1 ]
  %361 = add nuw nsw i64 %polly.indvar278.1, %99
  %polly.access.add.Packed_MemRef_call1282.1 = add nuw nsw i64 %polly.indvar278.1, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_284.1 = load double, double* %polly.access.Packed_MemRef_call1283.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_288.1, %_p_scalar_284.1
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_296.1, %_p_scalar_292.1
  %362 = shl i64 %361, 3
  %363 = add nuw nsw i64 %362, %127
  %scevgep297.1 = getelementptr i8, i8* %call, i64 %363
  %scevgep297298.1 = bitcast i8* %scevgep297.1 to double*
  %_p_scalar_299.1 = load double, double* %scevgep297298.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_299.1
  store double %p_add42.i118.1, double* %scevgep297298.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.1 = add nuw nsw i64 %polly.indvar278.1, 1
  %exitcond975.1.not = icmp eq i64 %polly.indvar278.1, %smin974.1
  br i1 %exitcond975.1.not, label %polly.loop_exit277.1, label %polly.loop_header275.1

polly.loop_exit277.1:                             ; preds = %polly.loop_header275.1
  %polly.access.add.Packed_MemRef_call2286.2 = add nuw nsw i64 %128, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call2287.2, align 8
  %polly.access.Packed_MemRef_call1295.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.2
  %_p_scalar_296.2 = load double, double* %polly.access.Packed_MemRef_call1295.2, align 8
  br label %polly.loop_header275.2

polly.loop_header275.2:                           ; preds = %polly.loop_header275.2, %polly.loop_exit277.1
  %polly.indvar278.2 = phi i64 [ 0, %polly.loop_exit277.1 ], [ %polly.indvar_next279.2, %polly.loop_header275.2 ]
  %364 = add nuw nsw i64 %polly.indvar278.2, %99
  %polly.access.add.Packed_MemRef_call1282.2 = add nuw nsw i64 %polly.indvar278.2, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.2
  %_p_scalar_284.2 = load double, double* %polly.access.Packed_MemRef_call1283.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_288.2, %_p_scalar_284.2
  %polly.access.Packed_MemRef_call2291.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.2
  %_p_scalar_292.2 = load double, double* %polly.access.Packed_MemRef_call2291.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_296.2, %_p_scalar_292.2
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %130
  %scevgep297.2 = getelementptr i8, i8* %call, i64 %366
  %scevgep297298.2 = bitcast i8* %scevgep297.2 to double*
  %_p_scalar_299.2 = load double, double* %scevgep297298.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_299.2
  store double %p_add42.i118.2, double* %scevgep297298.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.2 = add nuw nsw i64 %polly.indvar278.2, 1
  %exitcond975.2.not = icmp eq i64 %polly.indvar278.2, %smin974.2
  br i1 %exitcond975.2.not, label %polly.loop_exit277.2, label %polly.loop_header275.2

polly.loop_exit277.2:                             ; preds = %polly.loop_header275.2
  %polly.access.add.Packed_MemRef_call2286.3 = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_288.3 = load double, double* %polly.access.Packed_MemRef_call2287.3, align 8
  %polly.access.Packed_MemRef_call1295.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.3
  %_p_scalar_296.3 = load double, double* %polly.access.Packed_MemRef_call1295.3, align 8
  br label %polly.loop_header275.3

polly.loop_header275.3:                           ; preds = %polly.loop_header275.3, %polly.loop_exit277.2
  %polly.indvar278.3 = phi i64 [ 0, %polly.loop_exit277.2 ], [ %polly.indvar_next279.3, %polly.loop_header275.3 ]
  %367 = add nuw nsw i64 %polly.indvar278.3, %99
  %polly.access.add.Packed_MemRef_call1282.3 = add nuw nsw i64 %polly.indvar278.3, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.3
  %_p_scalar_284.3 = load double, double* %polly.access.Packed_MemRef_call1283.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_288.3, %_p_scalar_284.3
  %polly.access.Packed_MemRef_call2291.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.3
  %_p_scalar_292.3 = load double, double* %polly.access.Packed_MemRef_call2291.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_296.3, %_p_scalar_292.3
  %368 = shl i64 %367, 3
  %369 = add nuw nsw i64 %368, %133
  %scevgep297.3 = getelementptr i8, i8* %call, i64 %369
  %scevgep297298.3 = bitcast i8* %scevgep297.3 to double*
  %_p_scalar_299.3 = load double, double* %scevgep297298.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_299.3
  store double %p_add42.i118.3, double* %scevgep297298.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.3 = add nuw nsw i64 %polly.indvar278.3, 1
  %exitcond975.3.not = icmp eq i64 %polly.indvar278.3, %smin974.3
  br i1 %exitcond975.3.not, label %polly.loop_exit277.3, label %polly.loop_header275.3

polly.loop_exit277.3:                             ; preds = %polly.loop_header275.3
  %polly.access.add.Packed_MemRef_call2286.4 = add nuw nsw i64 %134, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.4
  %_p_scalar_288.4 = load double, double* %polly.access.Packed_MemRef_call2287.4, align 8
  %polly.access.Packed_MemRef_call1295.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.4
  %_p_scalar_296.4 = load double, double* %polly.access.Packed_MemRef_call1295.4, align 8
  br label %polly.loop_header275.4

polly.loop_header275.4:                           ; preds = %polly.loop_header275.4, %polly.loop_exit277.3
  %polly.indvar278.4 = phi i64 [ 0, %polly.loop_exit277.3 ], [ %polly.indvar_next279.4, %polly.loop_header275.4 ]
  %370 = add nuw nsw i64 %polly.indvar278.4, %99
  %polly.access.add.Packed_MemRef_call1282.4 = add nuw nsw i64 %polly.indvar278.4, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.4
  %_p_scalar_284.4 = load double, double* %polly.access.Packed_MemRef_call1283.4, align 8
  %p_mul27.i112.4 = fmul fast double %_p_scalar_288.4, %_p_scalar_284.4
  %polly.access.Packed_MemRef_call2291.4 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.4
  %_p_scalar_292.4 = load double, double* %polly.access.Packed_MemRef_call2291.4, align 8
  %p_mul37.i114.4 = fmul fast double %_p_scalar_296.4, %_p_scalar_292.4
  %371 = shl i64 %370, 3
  %372 = add nuw nsw i64 %371, %136
  %scevgep297.4 = getelementptr i8, i8* %call, i64 %372
  %scevgep297298.4 = bitcast i8* %scevgep297.4 to double*
  %_p_scalar_299.4 = load double, double* %scevgep297298.4, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.4 = fadd fast double %p_mul37.i114.4, %p_mul27.i112.4
  %p_reass.mul.i117.4 = fmul fast double %p_reass.add.i116.4, 1.500000e+00
  %p_add42.i118.4 = fadd fast double %p_reass.mul.i117.4, %_p_scalar_299.4
  store double %p_add42.i118.4, double* %scevgep297298.4, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.4 = add nuw nsw i64 %polly.indvar278.4, 1
  %exitcond975.4.not = icmp eq i64 %polly.indvar278.4, %smin974.4
  br i1 %exitcond975.4.not, label %polly.loop_exit277.4, label %polly.loop_header275.4

polly.loop_exit277.4:                             ; preds = %polly.loop_header275.4
  %polly.access.add.Packed_MemRef_call2286.5 = add nuw nsw i64 %137, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.5
  %_p_scalar_288.5 = load double, double* %polly.access.Packed_MemRef_call2287.5, align 8
  %polly.access.Packed_MemRef_call1295.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.5
  %_p_scalar_296.5 = load double, double* %polly.access.Packed_MemRef_call1295.5, align 8
  br label %polly.loop_header275.5

polly.loop_header275.5:                           ; preds = %polly.loop_header275.5, %polly.loop_exit277.4
  %polly.indvar278.5 = phi i64 [ 0, %polly.loop_exit277.4 ], [ %polly.indvar_next279.5, %polly.loop_header275.5 ]
  %373 = add nuw nsw i64 %polly.indvar278.5, %99
  %polly.access.add.Packed_MemRef_call1282.5 = add nuw nsw i64 %polly.indvar278.5, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.5
  %_p_scalar_284.5 = load double, double* %polly.access.Packed_MemRef_call1283.5, align 8
  %p_mul27.i112.5 = fmul fast double %_p_scalar_288.5, %_p_scalar_284.5
  %polly.access.Packed_MemRef_call2291.5 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.5
  %_p_scalar_292.5 = load double, double* %polly.access.Packed_MemRef_call2291.5, align 8
  %p_mul37.i114.5 = fmul fast double %_p_scalar_296.5, %_p_scalar_292.5
  %374 = shl i64 %373, 3
  %375 = add nuw nsw i64 %374, %139
  %scevgep297.5 = getelementptr i8, i8* %call, i64 %375
  %scevgep297298.5 = bitcast i8* %scevgep297.5 to double*
  %_p_scalar_299.5 = load double, double* %scevgep297298.5, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.5 = fadd fast double %p_mul37.i114.5, %p_mul27.i112.5
  %p_reass.mul.i117.5 = fmul fast double %p_reass.add.i116.5, 1.500000e+00
  %p_add42.i118.5 = fadd fast double %p_reass.mul.i117.5, %_p_scalar_299.5
  store double %p_add42.i118.5, double* %scevgep297298.5, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.5 = add nuw nsw i64 %polly.indvar278.5, 1
  %exitcond975.5.not = icmp eq i64 %polly.indvar278.5, %smin974.5
  br i1 %exitcond975.5.not, label %polly.loop_exit277.5, label %polly.loop_header275.5

polly.loop_exit277.5:                             ; preds = %polly.loop_header275.5
  %polly.access.add.Packed_MemRef_call2286.6 = add nuw nsw i64 %140, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.6
  %_p_scalar_288.6 = load double, double* %polly.access.Packed_MemRef_call2287.6, align 8
  %polly.access.Packed_MemRef_call1295.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.6
  %_p_scalar_296.6 = load double, double* %polly.access.Packed_MemRef_call1295.6, align 8
  br label %polly.loop_header275.6

polly.loop_header275.6:                           ; preds = %polly.loop_header275.6, %polly.loop_exit277.5
  %polly.indvar278.6 = phi i64 [ 0, %polly.loop_exit277.5 ], [ %polly.indvar_next279.6, %polly.loop_header275.6 ]
  %376 = add nuw nsw i64 %polly.indvar278.6, %99
  %polly.access.add.Packed_MemRef_call1282.6 = add nuw nsw i64 %polly.indvar278.6, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.6
  %_p_scalar_284.6 = load double, double* %polly.access.Packed_MemRef_call1283.6, align 8
  %p_mul27.i112.6 = fmul fast double %_p_scalar_288.6, %_p_scalar_284.6
  %polly.access.Packed_MemRef_call2291.6 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.6
  %_p_scalar_292.6 = load double, double* %polly.access.Packed_MemRef_call2291.6, align 8
  %p_mul37.i114.6 = fmul fast double %_p_scalar_296.6, %_p_scalar_292.6
  %377 = shl i64 %376, 3
  %378 = add nuw nsw i64 %377, %142
  %scevgep297.6 = getelementptr i8, i8* %call, i64 %378
  %scevgep297298.6 = bitcast i8* %scevgep297.6 to double*
  %_p_scalar_299.6 = load double, double* %scevgep297298.6, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.6 = fadd fast double %p_mul37.i114.6, %p_mul27.i112.6
  %p_reass.mul.i117.6 = fmul fast double %p_reass.add.i116.6, 1.500000e+00
  %p_add42.i118.6 = fadd fast double %p_reass.mul.i117.6, %_p_scalar_299.6
  store double %p_add42.i118.6, double* %scevgep297298.6, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.6 = add nuw nsw i64 %polly.indvar278.6, 1
  %exitcond975.6.not = icmp eq i64 %polly.indvar278.6, %smin974.6
  br i1 %exitcond975.6.not, label %polly.loop_exit277.6, label %polly.loop_header275.6

polly.loop_exit277.6:                             ; preds = %polly.loop_header275.6
  %polly.access.add.Packed_MemRef_call2286.7 = add nuw nsw i64 %143, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call2287.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.7
  %_p_scalar_288.7 = load double, double* %polly.access.Packed_MemRef_call2287.7, align 8
  %polly.access.Packed_MemRef_call1295.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2286.7
  %_p_scalar_296.7 = load double, double* %polly.access.Packed_MemRef_call1295.7, align 8
  br label %polly.loop_header275.7

polly.loop_header275.7:                           ; preds = %polly.loop_header275.7, %polly.loop_exit277.6
  %polly.indvar278.7 = phi i64 [ 0, %polly.loop_exit277.6 ], [ %polly.indvar_next279.7, %polly.loop_header275.7 ]
  %379 = add nuw nsw i64 %polly.indvar278.7, %99
  %polly.access.add.Packed_MemRef_call1282.7 = add nuw nsw i64 %polly.indvar278.7, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.7
  %_p_scalar_284.7 = load double, double* %polly.access.Packed_MemRef_call1283.7, align 8
  %p_mul27.i112.7 = fmul fast double %_p_scalar_288.7, %_p_scalar_284.7
  %polly.access.Packed_MemRef_call2291.7 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1282.7
  %_p_scalar_292.7 = load double, double* %polly.access.Packed_MemRef_call2291.7, align 8
  %p_mul37.i114.7 = fmul fast double %_p_scalar_296.7, %_p_scalar_292.7
  %380 = shl i64 %379, 3
  %381 = add nuw nsw i64 %380, %145
  %scevgep297.7 = getelementptr i8, i8* %call, i64 %381
  %scevgep297298.7 = bitcast i8* %scevgep297.7 to double*
  %_p_scalar_299.7 = load double, double* %scevgep297298.7, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.7 = fadd fast double %p_mul37.i114.7, %p_mul27.i112.7
  %p_reass.mul.i117.7 = fmul fast double %p_reass.add.i116.7, 1.500000e+00
  %p_add42.i118.7 = fadd fast double %p_reass.mul.i117.7, %_p_scalar_299.7
  store double %p_add42.i118.7, double* %scevgep297298.7, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next279.7 = add nuw nsw i64 %polly.indvar278.7, 1
  %exitcond975.7.not = icmp eq i64 %polly.indvar_next279.7, 8
  br i1 %exitcond975.7.not, label %polly.loop_exit277.7, label %polly.loop_header275.7

polly.loop_exit277.7:                             ; preds = %polly.loop_header275.7
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond978.not = icmp eq i64 %polly.indvar_next267, %97
  br i1 %exitcond978.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header483.1:                           ; preds = %polly.loop_header483.1, %polly.loop_exit485
  %polly.indvar486.1 = phi i64 [ 0, %polly.loop_exit485 ], [ %polly.indvar_next487.1, %polly.loop_header483.1 ]
  %382 = add nuw nsw i64 %polly.indvar486.1, %161
  %polly.access.add.Packed_MemRef_call1305490.1 = add nuw nsw i64 %polly.indvar486.1, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_492.1 = load double, double* %polly.access.Packed_MemRef_call1305491.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_496.1, %_p_scalar_492.1
  %polly.access.Packed_MemRef_call2307499.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.1
  %_p_scalar_500.1 = load double, double* %polly.access.Packed_MemRef_call2307499.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_504.1, %_p_scalar_500.1
  %383 = shl i64 %382, 3
  %384 = add nuw nsw i64 %383, %189
  %scevgep505.1 = getelementptr i8, i8* %call, i64 %384
  %scevgep505506.1 = bitcast i8* %scevgep505.1 to double*
  %_p_scalar_507.1 = load double, double* %scevgep505506.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_507.1
  store double %p_add42.i79.1, double* %scevgep505506.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.1 = add nuw nsw i64 %polly.indvar486.1, 1
  %exitcond1002.1.not = icmp eq i64 %polly.indvar486.1, %smin1001.1
  br i1 %exitcond1002.1.not, label %polly.loop_exit485.1, label %polly.loop_header483.1

polly.loop_exit485.1:                             ; preds = %polly.loop_header483.1
  %polly.access.add.Packed_MemRef_call2307494.2 = add nuw nsw i64 %190, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_496.2 = load double, double* %polly.access.Packed_MemRef_call2307495.2, align 8
  %polly.access.Packed_MemRef_call1305503.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.2
  %_p_scalar_504.2 = load double, double* %polly.access.Packed_MemRef_call1305503.2, align 8
  br label %polly.loop_header483.2

polly.loop_header483.2:                           ; preds = %polly.loop_header483.2, %polly.loop_exit485.1
  %polly.indvar486.2 = phi i64 [ 0, %polly.loop_exit485.1 ], [ %polly.indvar_next487.2, %polly.loop_header483.2 ]
  %385 = add nuw nsw i64 %polly.indvar486.2, %161
  %polly.access.add.Packed_MemRef_call1305490.2 = add nuw nsw i64 %polly.indvar486.2, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.2
  %_p_scalar_492.2 = load double, double* %polly.access.Packed_MemRef_call1305491.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_496.2, %_p_scalar_492.2
  %polly.access.Packed_MemRef_call2307499.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.2
  %_p_scalar_500.2 = load double, double* %polly.access.Packed_MemRef_call2307499.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_504.2, %_p_scalar_500.2
  %386 = shl i64 %385, 3
  %387 = add nuw nsw i64 %386, %192
  %scevgep505.2 = getelementptr i8, i8* %call, i64 %387
  %scevgep505506.2 = bitcast i8* %scevgep505.2 to double*
  %_p_scalar_507.2 = load double, double* %scevgep505506.2, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_507.2
  store double %p_add42.i79.2, double* %scevgep505506.2, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.2 = add nuw nsw i64 %polly.indvar486.2, 1
  %exitcond1002.2.not = icmp eq i64 %polly.indvar486.2, %smin1001.2
  br i1 %exitcond1002.2.not, label %polly.loop_exit485.2, label %polly.loop_header483.2

polly.loop_exit485.2:                             ; preds = %polly.loop_header483.2
  %polly.access.add.Packed_MemRef_call2307494.3 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_496.3 = load double, double* %polly.access.Packed_MemRef_call2307495.3, align 8
  %polly.access.Packed_MemRef_call1305503.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.3
  %_p_scalar_504.3 = load double, double* %polly.access.Packed_MemRef_call1305503.3, align 8
  br label %polly.loop_header483.3

polly.loop_header483.3:                           ; preds = %polly.loop_header483.3, %polly.loop_exit485.2
  %polly.indvar486.3 = phi i64 [ 0, %polly.loop_exit485.2 ], [ %polly.indvar_next487.3, %polly.loop_header483.3 ]
  %388 = add nuw nsw i64 %polly.indvar486.3, %161
  %polly.access.add.Packed_MemRef_call1305490.3 = add nuw nsw i64 %polly.indvar486.3, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.3
  %_p_scalar_492.3 = load double, double* %polly.access.Packed_MemRef_call1305491.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_496.3, %_p_scalar_492.3
  %polly.access.Packed_MemRef_call2307499.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.3
  %_p_scalar_500.3 = load double, double* %polly.access.Packed_MemRef_call2307499.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_504.3, %_p_scalar_500.3
  %389 = shl i64 %388, 3
  %390 = add nuw nsw i64 %389, %195
  %scevgep505.3 = getelementptr i8, i8* %call, i64 %390
  %scevgep505506.3 = bitcast i8* %scevgep505.3 to double*
  %_p_scalar_507.3 = load double, double* %scevgep505506.3, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_507.3
  store double %p_add42.i79.3, double* %scevgep505506.3, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.3 = add nuw nsw i64 %polly.indvar486.3, 1
  %exitcond1002.3.not = icmp eq i64 %polly.indvar486.3, %smin1001.3
  br i1 %exitcond1002.3.not, label %polly.loop_exit485.3, label %polly.loop_header483.3

polly.loop_exit485.3:                             ; preds = %polly.loop_header483.3
  %polly.access.add.Packed_MemRef_call2307494.4 = add nuw nsw i64 %196, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.4 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.4
  %_p_scalar_496.4 = load double, double* %polly.access.Packed_MemRef_call2307495.4, align 8
  %polly.access.Packed_MemRef_call1305503.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.4
  %_p_scalar_504.4 = load double, double* %polly.access.Packed_MemRef_call1305503.4, align 8
  br label %polly.loop_header483.4

polly.loop_header483.4:                           ; preds = %polly.loop_header483.4, %polly.loop_exit485.3
  %polly.indvar486.4 = phi i64 [ 0, %polly.loop_exit485.3 ], [ %polly.indvar_next487.4, %polly.loop_header483.4 ]
  %391 = add nuw nsw i64 %polly.indvar486.4, %161
  %polly.access.add.Packed_MemRef_call1305490.4 = add nuw nsw i64 %polly.indvar486.4, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.4
  %_p_scalar_492.4 = load double, double* %polly.access.Packed_MemRef_call1305491.4, align 8
  %p_mul27.i73.4 = fmul fast double %_p_scalar_496.4, %_p_scalar_492.4
  %polly.access.Packed_MemRef_call2307499.4 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.4
  %_p_scalar_500.4 = load double, double* %polly.access.Packed_MemRef_call2307499.4, align 8
  %p_mul37.i75.4 = fmul fast double %_p_scalar_504.4, %_p_scalar_500.4
  %392 = shl i64 %391, 3
  %393 = add nuw nsw i64 %392, %198
  %scevgep505.4 = getelementptr i8, i8* %call, i64 %393
  %scevgep505506.4 = bitcast i8* %scevgep505.4 to double*
  %_p_scalar_507.4 = load double, double* %scevgep505506.4, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.4 = fadd fast double %p_mul37.i75.4, %p_mul27.i73.4
  %p_reass.mul.i78.4 = fmul fast double %p_reass.add.i77.4, 1.500000e+00
  %p_add42.i79.4 = fadd fast double %p_reass.mul.i78.4, %_p_scalar_507.4
  store double %p_add42.i79.4, double* %scevgep505506.4, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.4 = add nuw nsw i64 %polly.indvar486.4, 1
  %exitcond1002.4.not = icmp eq i64 %polly.indvar486.4, %smin1001.4
  br i1 %exitcond1002.4.not, label %polly.loop_exit485.4, label %polly.loop_header483.4

polly.loop_exit485.4:                             ; preds = %polly.loop_header483.4
  %polly.access.add.Packed_MemRef_call2307494.5 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.5 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.5
  %_p_scalar_496.5 = load double, double* %polly.access.Packed_MemRef_call2307495.5, align 8
  %polly.access.Packed_MemRef_call1305503.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.5
  %_p_scalar_504.5 = load double, double* %polly.access.Packed_MemRef_call1305503.5, align 8
  br label %polly.loop_header483.5

polly.loop_header483.5:                           ; preds = %polly.loop_header483.5, %polly.loop_exit485.4
  %polly.indvar486.5 = phi i64 [ 0, %polly.loop_exit485.4 ], [ %polly.indvar_next487.5, %polly.loop_header483.5 ]
  %394 = add nuw nsw i64 %polly.indvar486.5, %161
  %polly.access.add.Packed_MemRef_call1305490.5 = add nuw nsw i64 %polly.indvar486.5, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.5
  %_p_scalar_492.5 = load double, double* %polly.access.Packed_MemRef_call1305491.5, align 8
  %p_mul27.i73.5 = fmul fast double %_p_scalar_496.5, %_p_scalar_492.5
  %polly.access.Packed_MemRef_call2307499.5 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.5
  %_p_scalar_500.5 = load double, double* %polly.access.Packed_MemRef_call2307499.5, align 8
  %p_mul37.i75.5 = fmul fast double %_p_scalar_504.5, %_p_scalar_500.5
  %395 = shl i64 %394, 3
  %396 = add nuw nsw i64 %395, %201
  %scevgep505.5 = getelementptr i8, i8* %call, i64 %396
  %scevgep505506.5 = bitcast i8* %scevgep505.5 to double*
  %_p_scalar_507.5 = load double, double* %scevgep505506.5, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.5 = fadd fast double %p_mul37.i75.5, %p_mul27.i73.5
  %p_reass.mul.i78.5 = fmul fast double %p_reass.add.i77.5, 1.500000e+00
  %p_add42.i79.5 = fadd fast double %p_reass.mul.i78.5, %_p_scalar_507.5
  store double %p_add42.i79.5, double* %scevgep505506.5, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.5 = add nuw nsw i64 %polly.indvar486.5, 1
  %exitcond1002.5.not = icmp eq i64 %polly.indvar486.5, %smin1001.5
  br i1 %exitcond1002.5.not, label %polly.loop_exit485.5, label %polly.loop_header483.5

polly.loop_exit485.5:                             ; preds = %polly.loop_header483.5
  %polly.access.add.Packed_MemRef_call2307494.6 = add nuw nsw i64 %202, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.6 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.6
  %_p_scalar_496.6 = load double, double* %polly.access.Packed_MemRef_call2307495.6, align 8
  %polly.access.Packed_MemRef_call1305503.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.6
  %_p_scalar_504.6 = load double, double* %polly.access.Packed_MemRef_call1305503.6, align 8
  br label %polly.loop_header483.6

polly.loop_header483.6:                           ; preds = %polly.loop_header483.6, %polly.loop_exit485.5
  %polly.indvar486.6 = phi i64 [ 0, %polly.loop_exit485.5 ], [ %polly.indvar_next487.6, %polly.loop_header483.6 ]
  %397 = add nuw nsw i64 %polly.indvar486.6, %161
  %polly.access.add.Packed_MemRef_call1305490.6 = add nuw nsw i64 %polly.indvar486.6, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.6
  %_p_scalar_492.6 = load double, double* %polly.access.Packed_MemRef_call1305491.6, align 8
  %p_mul27.i73.6 = fmul fast double %_p_scalar_496.6, %_p_scalar_492.6
  %polly.access.Packed_MemRef_call2307499.6 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.6
  %_p_scalar_500.6 = load double, double* %polly.access.Packed_MemRef_call2307499.6, align 8
  %p_mul37.i75.6 = fmul fast double %_p_scalar_504.6, %_p_scalar_500.6
  %398 = shl i64 %397, 3
  %399 = add nuw nsw i64 %398, %204
  %scevgep505.6 = getelementptr i8, i8* %call, i64 %399
  %scevgep505506.6 = bitcast i8* %scevgep505.6 to double*
  %_p_scalar_507.6 = load double, double* %scevgep505506.6, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.6 = fadd fast double %p_mul37.i75.6, %p_mul27.i73.6
  %p_reass.mul.i78.6 = fmul fast double %p_reass.add.i77.6, 1.500000e+00
  %p_add42.i79.6 = fadd fast double %p_reass.mul.i78.6, %_p_scalar_507.6
  store double %p_add42.i79.6, double* %scevgep505506.6, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.6 = add nuw nsw i64 %polly.indvar486.6, 1
  %exitcond1002.6.not = icmp eq i64 %polly.indvar486.6, %smin1001.6
  br i1 %exitcond1002.6.not, label %polly.loop_exit485.6, label %polly.loop_header483.6

polly.loop_exit485.6:                             ; preds = %polly.loop_header483.6
  %polly.access.add.Packed_MemRef_call2307494.7 = add nuw nsw i64 %205, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call2307495.7 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307494.7
  %_p_scalar_496.7 = load double, double* %polly.access.Packed_MemRef_call2307495.7, align 8
  %polly.access.Packed_MemRef_call1305503.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call2307494.7
  %_p_scalar_504.7 = load double, double* %polly.access.Packed_MemRef_call1305503.7, align 8
  br label %polly.loop_header483.7

polly.loop_header483.7:                           ; preds = %polly.loop_header483.7, %polly.loop_exit485.6
  %polly.indvar486.7 = phi i64 [ 0, %polly.loop_exit485.6 ], [ %polly.indvar_next487.7, %polly.loop_header483.7 ]
  %400 = add nuw nsw i64 %polly.indvar486.7, %161
  %polly.access.add.Packed_MemRef_call1305490.7 = add nuw nsw i64 %polly.indvar486.7, %polly.access.mul.Packed_MemRef_call1305489
  %polly.access.Packed_MemRef_call1305491.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305490.7
  %_p_scalar_492.7 = load double, double* %polly.access.Packed_MemRef_call1305491.7, align 8
  %p_mul27.i73.7 = fmul fast double %_p_scalar_496.7, %_p_scalar_492.7
  %polly.access.Packed_MemRef_call2307499.7 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call1305490.7
  %_p_scalar_500.7 = load double, double* %polly.access.Packed_MemRef_call2307499.7, align 8
  %p_mul37.i75.7 = fmul fast double %_p_scalar_504.7, %_p_scalar_500.7
  %401 = shl i64 %400, 3
  %402 = add nuw nsw i64 %401, %207
  %scevgep505.7 = getelementptr i8, i8* %call, i64 %402
  %scevgep505506.7 = bitcast i8* %scevgep505.7 to double*
  %_p_scalar_507.7 = load double, double* %scevgep505506.7, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i77.7 = fadd fast double %p_mul37.i75.7, %p_mul27.i73.7
  %p_reass.mul.i78.7 = fmul fast double %p_reass.add.i77.7, 1.500000e+00
  %p_add42.i79.7 = fadd fast double %p_reass.mul.i78.7, %_p_scalar_507.7
  store double %p_add42.i79.7, double* %scevgep505506.7, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next487.7 = add nuw nsw i64 %polly.indvar486.7, 1
  %exitcond1002.7.not = icmp eq i64 %polly.indvar_next487.7, 8
  br i1 %exitcond1002.7.not, label %polly.loop_exit485.7, label %polly.loop_header483.7

polly.loop_exit485.7:                             ; preds = %polly.loop_header483.7
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %exitcond1005.not = icmp eq i64 %polly.indvar_next475, %159
  br i1 %exitcond1005.not, label %polly.loop_exit473, label %polly.loop_header471

polly.loop_header691.1:                           ; preds = %polly.loop_header691.1, %polly.loop_exit693
  %polly.indvar694.1 = phi i64 [ 0, %polly.loop_exit693 ], [ %polly.indvar_next695.1, %polly.loop_header691.1 ]
  %403 = add nuw nsw i64 %polly.indvar694.1, %223
  %polly.access.add.Packed_MemRef_call1513698.1 = add nuw nsw i64 %polly.indvar694.1, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_700.1 = load double, double* %polly.access.Packed_MemRef_call1513699.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_704.1, %_p_scalar_700.1
  %polly.access.Packed_MemRef_call2515707.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.1
  %_p_scalar_708.1 = load double, double* %polly.access.Packed_MemRef_call2515707.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_712.1, %_p_scalar_708.1
  %404 = shl i64 %403, 3
  %405 = add nuw nsw i64 %404, %251
  %scevgep713.1 = getelementptr i8, i8* %call, i64 %405
  %scevgep713714.1 = bitcast i8* %scevgep713.1 to double*
  %_p_scalar_715.1 = load double, double* %scevgep713714.1, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_715.1
  store double %p_add42.i.1, double* %scevgep713714.1, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.1 = add nuw nsw i64 %polly.indvar694.1, 1
  %exitcond1029.1.not = icmp eq i64 %polly.indvar694.1, %smin1028.1
  br i1 %exitcond1029.1.not, label %polly.loop_exit693.1, label %polly.loop_header691.1

polly.loop_exit693.1:                             ; preds = %polly.loop_header691.1
  %polly.access.add.Packed_MemRef_call2515702.2 = add nuw nsw i64 %252, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_704.2 = load double, double* %polly.access.Packed_MemRef_call2515703.2, align 8
  %polly.access.Packed_MemRef_call1513711.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.2
  %_p_scalar_712.2 = load double, double* %polly.access.Packed_MemRef_call1513711.2, align 8
  br label %polly.loop_header691.2

polly.loop_header691.2:                           ; preds = %polly.loop_header691.2, %polly.loop_exit693.1
  %polly.indvar694.2 = phi i64 [ 0, %polly.loop_exit693.1 ], [ %polly.indvar_next695.2, %polly.loop_header691.2 ]
  %406 = add nuw nsw i64 %polly.indvar694.2, %223
  %polly.access.add.Packed_MemRef_call1513698.2 = add nuw nsw i64 %polly.indvar694.2, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.2 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.2
  %_p_scalar_700.2 = load double, double* %polly.access.Packed_MemRef_call1513699.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_704.2, %_p_scalar_700.2
  %polly.access.Packed_MemRef_call2515707.2 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.2
  %_p_scalar_708.2 = load double, double* %polly.access.Packed_MemRef_call2515707.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_712.2, %_p_scalar_708.2
  %407 = shl i64 %406, 3
  %408 = add nuw nsw i64 %407, %254
  %scevgep713.2 = getelementptr i8, i8* %call, i64 %408
  %scevgep713714.2 = bitcast i8* %scevgep713.2 to double*
  %_p_scalar_715.2 = load double, double* %scevgep713714.2, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_715.2
  store double %p_add42.i.2, double* %scevgep713714.2, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.2 = add nuw nsw i64 %polly.indvar694.2, 1
  %exitcond1029.2.not = icmp eq i64 %polly.indvar694.2, %smin1028.2
  br i1 %exitcond1029.2.not, label %polly.loop_exit693.2, label %polly.loop_header691.2

polly.loop_exit693.2:                             ; preds = %polly.loop_header691.2
  %polly.access.add.Packed_MemRef_call2515702.3 = add nuw nsw i64 %255, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_704.3 = load double, double* %polly.access.Packed_MemRef_call2515703.3, align 8
  %polly.access.Packed_MemRef_call1513711.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.3
  %_p_scalar_712.3 = load double, double* %polly.access.Packed_MemRef_call1513711.3, align 8
  br label %polly.loop_header691.3

polly.loop_header691.3:                           ; preds = %polly.loop_header691.3, %polly.loop_exit693.2
  %polly.indvar694.3 = phi i64 [ 0, %polly.loop_exit693.2 ], [ %polly.indvar_next695.3, %polly.loop_header691.3 ]
  %409 = add nuw nsw i64 %polly.indvar694.3, %223
  %polly.access.add.Packed_MemRef_call1513698.3 = add nuw nsw i64 %polly.indvar694.3, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.3 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.3
  %_p_scalar_700.3 = load double, double* %polly.access.Packed_MemRef_call1513699.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_704.3, %_p_scalar_700.3
  %polly.access.Packed_MemRef_call2515707.3 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.3
  %_p_scalar_708.3 = load double, double* %polly.access.Packed_MemRef_call2515707.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_712.3, %_p_scalar_708.3
  %410 = shl i64 %409, 3
  %411 = add nuw nsw i64 %410, %257
  %scevgep713.3 = getelementptr i8, i8* %call, i64 %411
  %scevgep713714.3 = bitcast i8* %scevgep713.3 to double*
  %_p_scalar_715.3 = load double, double* %scevgep713714.3, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_715.3
  store double %p_add42.i.3, double* %scevgep713714.3, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.3 = add nuw nsw i64 %polly.indvar694.3, 1
  %exitcond1029.3.not = icmp eq i64 %polly.indvar694.3, %smin1028.3
  br i1 %exitcond1029.3.not, label %polly.loop_exit693.3, label %polly.loop_header691.3

polly.loop_exit693.3:                             ; preds = %polly.loop_header691.3
  %polly.access.add.Packed_MemRef_call2515702.4 = add nuw nsw i64 %258, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.4 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.4
  %_p_scalar_704.4 = load double, double* %polly.access.Packed_MemRef_call2515703.4, align 8
  %polly.access.Packed_MemRef_call1513711.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.4
  %_p_scalar_712.4 = load double, double* %polly.access.Packed_MemRef_call1513711.4, align 8
  br label %polly.loop_header691.4

polly.loop_header691.4:                           ; preds = %polly.loop_header691.4, %polly.loop_exit693.3
  %polly.indvar694.4 = phi i64 [ 0, %polly.loop_exit693.3 ], [ %polly.indvar_next695.4, %polly.loop_header691.4 ]
  %412 = add nuw nsw i64 %polly.indvar694.4, %223
  %polly.access.add.Packed_MemRef_call1513698.4 = add nuw nsw i64 %polly.indvar694.4, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.4 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.4
  %_p_scalar_700.4 = load double, double* %polly.access.Packed_MemRef_call1513699.4, align 8
  %p_mul27.i.4 = fmul fast double %_p_scalar_704.4, %_p_scalar_700.4
  %polly.access.Packed_MemRef_call2515707.4 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.4
  %_p_scalar_708.4 = load double, double* %polly.access.Packed_MemRef_call2515707.4, align 8
  %p_mul37.i.4 = fmul fast double %_p_scalar_712.4, %_p_scalar_708.4
  %413 = shl i64 %412, 3
  %414 = add nuw nsw i64 %413, %260
  %scevgep713.4 = getelementptr i8, i8* %call, i64 %414
  %scevgep713714.4 = bitcast i8* %scevgep713.4 to double*
  %_p_scalar_715.4 = load double, double* %scevgep713714.4, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.4 = fadd fast double %p_mul37.i.4, %p_mul27.i.4
  %p_reass.mul.i.4 = fmul fast double %p_reass.add.i.4, 1.500000e+00
  %p_add42.i.4 = fadd fast double %p_reass.mul.i.4, %_p_scalar_715.4
  store double %p_add42.i.4, double* %scevgep713714.4, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.4 = add nuw nsw i64 %polly.indvar694.4, 1
  %exitcond1029.4.not = icmp eq i64 %polly.indvar694.4, %smin1028.4
  br i1 %exitcond1029.4.not, label %polly.loop_exit693.4, label %polly.loop_header691.4

polly.loop_exit693.4:                             ; preds = %polly.loop_header691.4
  %polly.access.add.Packed_MemRef_call2515702.5 = add nuw nsw i64 %261, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.5 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.5
  %_p_scalar_704.5 = load double, double* %polly.access.Packed_MemRef_call2515703.5, align 8
  %polly.access.Packed_MemRef_call1513711.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.5
  %_p_scalar_712.5 = load double, double* %polly.access.Packed_MemRef_call1513711.5, align 8
  br label %polly.loop_header691.5

polly.loop_header691.5:                           ; preds = %polly.loop_header691.5, %polly.loop_exit693.4
  %polly.indvar694.5 = phi i64 [ 0, %polly.loop_exit693.4 ], [ %polly.indvar_next695.5, %polly.loop_header691.5 ]
  %415 = add nuw nsw i64 %polly.indvar694.5, %223
  %polly.access.add.Packed_MemRef_call1513698.5 = add nuw nsw i64 %polly.indvar694.5, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.5 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.5
  %_p_scalar_700.5 = load double, double* %polly.access.Packed_MemRef_call1513699.5, align 8
  %p_mul27.i.5 = fmul fast double %_p_scalar_704.5, %_p_scalar_700.5
  %polly.access.Packed_MemRef_call2515707.5 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.5
  %_p_scalar_708.5 = load double, double* %polly.access.Packed_MemRef_call2515707.5, align 8
  %p_mul37.i.5 = fmul fast double %_p_scalar_712.5, %_p_scalar_708.5
  %416 = shl i64 %415, 3
  %417 = add nuw nsw i64 %416, %263
  %scevgep713.5 = getelementptr i8, i8* %call, i64 %417
  %scevgep713714.5 = bitcast i8* %scevgep713.5 to double*
  %_p_scalar_715.5 = load double, double* %scevgep713714.5, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.5 = fadd fast double %p_mul37.i.5, %p_mul27.i.5
  %p_reass.mul.i.5 = fmul fast double %p_reass.add.i.5, 1.500000e+00
  %p_add42.i.5 = fadd fast double %p_reass.mul.i.5, %_p_scalar_715.5
  store double %p_add42.i.5, double* %scevgep713714.5, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.5 = add nuw nsw i64 %polly.indvar694.5, 1
  %exitcond1029.5.not = icmp eq i64 %polly.indvar694.5, %smin1028.5
  br i1 %exitcond1029.5.not, label %polly.loop_exit693.5, label %polly.loop_header691.5

polly.loop_exit693.5:                             ; preds = %polly.loop_header691.5
  %polly.access.add.Packed_MemRef_call2515702.6 = add nuw nsw i64 %264, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.6 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.6
  %_p_scalar_704.6 = load double, double* %polly.access.Packed_MemRef_call2515703.6, align 8
  %polly.access.Packed_MemRef_call1513711.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.6
  %_p_scalar_712.6 = load double, double* %polly.access.Packed_MemRef_call1513711.6, align 8
  br label %polly.loop_header691.6

polly.loop_header691.6:                           ; preds = %polly.loop_header691.6, %polly.loop_exit693.5
  %polly.indvar694.6 = phi i64 [ 0, %polly.loop_exit693.5 ], [ %polly.indvar_next695.6, %polly.loop_header691.6 ]
  %418 = add nuw nsw i64 %polly.indvar694.6, %223
  %polly.access.add.Packed_MemRef_call1513698.6 = add nuw nsw i64 %polly.indvar694.6, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.6 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.6
  %_p_scalar_700.6 = load double, double* %polly.access.Packed_MemRef_call1513699.6, align 8
  %p_mul27.i.6 = fmul fast double %_p_scalar_704.6, %_p_scalar_700.6
  %polly.access.Packed_MemRef_call2515707.6 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.6
  %_p_scalar_708.6 = load double, double* %polly.access.Packed_MemRef_call2515707.6, align 8
  %p_mul37.i.6 = fmul fast double %_p_scalar_712.6, %_p_scalar_708.6
  %419 = shl i64 %418, 3
  %420 = add nuw nsw i64 %419, %266
  %scevgep713.6 = getelementptr i8, i8* %call, i64 %420
  %scevgep713714.6 = bitcast i8* %scevgep713.6 to double*
  %_p_scalar_715.6 = load double, double* %scevgep713714.6, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.6 = fadd fast double %p_mul37.i.6, %p_mul27.i.6
  %p_reass.mul.i.6 = fmul fast double %p_reass.add.i.6, 1.500000e+00
  %p_add42.i.6 = fadd fast double %p_reass.mul.i.6, %_p_scalar_715.6
  store double %p_add42.i.6, double* %scevgep713714.6, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.6 = add nuw nsw i64 %polly.indvar694.6, 1
  %exitcond1029.6.not = icmp eq i64 %polly.indvar694.6, %smin1028.6
  br i1 %exitcond1029.6.not, label %polly.loop_exit693.6, label %polly.loop_header691.6

polly.loop_exit693.6:                             ; preds = %polly.loop_header691.6
  %polly.access.add.Packed_MemRef_call2515702.7 = add nuw nsw i64 %267, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call2515703.7 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515702.7
  %_p_scalar_704.7 = load double, double* %polly.access.Packed_MemRef_call2515703.7, align 8
  %polly.access.Packed_MemRef_call1513711.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call2515702.7
  %_p_scalar_712.7 = load double, double* %polly.access.Packed_MemRef_call1513711.7, align 8
  br label %polly.loop_header691.7

polly.loop_header691.7:                           ; preds = %polly.loop_header691.7, %polly.loop_exit693.6
  %polly.indvar694.7 = phi i64 [ 0, %polly.loop_exit693.6 ], [ %polly.indvar_next695.7, %polly.loop_header691.7 ]
  %421 = add nuw nsw i64 %polly.indvar694.7, %223
  %polly.access.add.Packed_MemRef_call1513698.7 = add nuw nsw i64 %polly.indvar694.7, %polly.access.mul.Packed_MemRef_call1513697
  %polly.access.Packed_MemRef_call1513699.7 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513698.7
  %_p_scalar_700.7 = load double, double* %polly.access.Packed_MemRef_call1513699.7, align 8
  %p_mul27.i.7 = fmul fast double %_p_scalar_704.7, %_p_scalar_700.7
  %polly.access.Packed_MemRef_call2515707.7 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call1513698.7
  %_p_scalar_708.7 = load double, double* %polly.access.Packed_MemRef_call2515707.7, align 8
  %p_mul37.i.7 = fmul fast double %_p_scalar_712.7, %_p_scalar_708.7
  %422 = shl i64 %421, 3
  %423 = add nuw nsw i64 %422, %269
  %scevgep713.7 = getelementptr i8, i8* %call, i64 %423
  %scevgep713714.7 = bitcast i8* %scevgep713.7 to double*
  %_p_scalar_715.7 = load double, double* %scevgep713714.7, align 8, !alias.scope !94, !noalias !96
  %p_reass.add.i.7 = fadd fast double %p_mul37.i.7, %p_mul27.i.7
  %p_reass.mul.i.7 = fmul fast double %p_reass.add.i.7, 1.500000e+00
  %p_add42.i.7 = fadd fast double %p_reass.mul.i.7, %_p_scalar_715.7
  store double %p_add42.i.7, double* %scevgep713714.7, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next695.7 = add nuw nsw i64 %polly.indvar694.7, 1
  %exitcond1029.7.not = icmp eq i64 %polly.indvar_next695.7, 8
  br i1 %exitcond1029.7.not, label %polly.loop_exit693.7, label %polly.loop_header691.7

polly.loop_exit693.7:                             ; preds = %polly.loop_header691.7
  %polly.indvar_next683 = add nuw nsw i64 %polly.indvar682, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next683, %221
  br i1 %exitcond1032.not, label %polly.loop_exit681, label %polly.loop_header679
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 64}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !26, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !80, !13}
!92 = !{!83, !86, !88, !89}
!93 = !{!83, !87, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98, !99, !100}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !95, !"polly.alias.scope.Packed_MemRef_call1"}
!100 = distinct !{!100, !95, !"polly.alias.scope.Packed_MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !80, !13}
!103 = !{!94, !97, !99, !100}
!104 = !{!94, !98, !99, !100}
!105 = distinct !{!105, !106, !"polly.alias.scope.MemRef_call"}
!106 = distinct !{!106, !"polly.alias.scope.domain"}
!107 = !{!108, !109}
!108 = distinct !{!108, !106, !"polly.alias.scope.MemRef_call1"}
!109 = distinct !{!109, !106, !"polly.alias.scope.MemRef_call2"}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !80, !13}
!112 = !{!108, !105}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !80, !13}
!115 = !{!109, !105}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
