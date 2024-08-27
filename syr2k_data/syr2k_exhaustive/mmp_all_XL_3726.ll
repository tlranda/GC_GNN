; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3726.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3726.c"
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
  %call874 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1726 = bitcast i8* %call1 to double*
  %polly.access.call1735 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1735, %call2
  %polly.access.call2755 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2755, %call1
  %2 = or i1 %0, %1
  %polly.access.call775 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call775, %call2
  %4 = icmp ule i8* %polly.access.call2755, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call775, %call1
  %8 = icmp ule i8* %polly.access.call1735, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header848, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1074 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1073 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1072 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1071 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1071, %scevgep1074
  %bound1 = icmp ult i8* %scevgep1073, %scevgep1072
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
  br i1 %exitcond18.not.i, label %vector.ph1078, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1078:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1085 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1086 = shufflevector <4 x i64> %broadcast.splatinsert1085, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1078
  %index1079 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1078 ], [ %vec.ind.next1084, %vector.body1077 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1083, %broadcast.splat1086
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv7.i, i64 %index1079
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1080, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1077, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1077
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1078, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit909
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start513, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1141 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1141, label %for.body3.i46.preheader1221, label %vector.ph1142

vector.ph1142:                                    ; preds = %for.body3.i46.preheader
  %n.vec1144 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1142
  %index1145 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1146, %vector.body1140 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %index1145
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1146 = add i64 %index1145, 4
  %46 = icmp eq i64 %index.next1146, %n.vec1144
  br i1 %46, label %middle.block1138, label %vector.body1140, !llvm.loop !18

middle.block1138:                                 ; preds = %vector.body1140
  %cmp.n1148 = icmp eq i64 %indvars.iv21.i, %n.vec1144
  br i1 %cmp.n1148, label %for.inc6.i, label %for.body3.i46.preheader1221

for.body3.i46.preheader1221:                      ; preds = %for.body3.i46.preheader, %middle.block1138
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1144, %middle.block1138 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1221, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1221 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1138, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting514
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1164 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1164, label %for.body3.i60.preheader1218, label %vector.ph1165

vector.ph1165:                                    ; preds = %for.body3.i60.preheader
  %n.vec1167 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1169, %vector.body1163 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %index1168
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1172 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1172, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1169 = add i64 %index1168, 4
  %57 = icmp eq i64 %index.next1169, %n.vec1167
  br i1 %57, label %middle.block1161, label %vector.body1163, !llvm.loop !59

middle.block1161:                                 ; preds = %vector.body1163
  %cmp.n1171 = icmp eq i64 %indvars.iv21.i52, %n.vec1167
  br i1 %cmp.n1171, label %for.inc6.i63, label %for.body3.i60.preheader1218

for.body3.i60.preheader1218:                      ; preds = %for.body3.i60.preheader, %middle.block1161
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1167, %middle.block1161 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1218, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1218 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1161, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  %min.iters.check1190 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1190, label %for.body3.i99.preheader1215, label %vector.ph1191

vector.ph1191:                                    ; preds = %for.body3.i99.preheader
  %n.vec1193 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1191
  %index1194 = phi i64 [ 0, %vector.ph1191 ], [ %index.next1195, %vector.body1189 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %index1194
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1198 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1198, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1195 = add i64 %index1194, 4
  %68 = icmp eq i64 %index.next1195, %n.vec1193
  br i1 %68, label %middle.block1187, label %vector.body1189, !llvm.loop !61

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %indvars.iv21.i91, %n.vec1193
  br i1 %cmp.n1197, label %for.inc6.i102, label %for.body3.i99.preheader1215

for.body3.i99.preheader1215:                      ; preds = %for.body3.i99.preheader, %middle.block1187
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1193, %middle.block1187 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1215, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1215 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1187, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1202 = phi i64 [ %indvar.next1203, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1202, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1204 = icmp ult i64 %88, 4
  br i1 %min.iters.check1204, label %polly.loop_header191.preheader, label %vector.ph1205

vector.ph1205:                                    ; preds = %polly.loop_header
  %n.vec1207 = and i64 %88, -4
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1201 ]
  %90 = shl nuw nsw i64 %index1208, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1209 = add i64 %index1208, 4
  %95 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %95, label %middle.block1199, label %vector.body1201, !llvm.loop !73

middle.block1199:                                 ; preds = %vector.body1201
  %cmp.n1211 = icmp eq i64 %88, %n.vec1207
  br i1 %cmp.n1211, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1199
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1207, %middle.block1199 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1199
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1203 = add i64 %indvar1202, 1
  br i1 %exitcond969.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond968.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond968.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond967.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond967.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv953 = phi i64 [ %indvars.iv.next954, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 96, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %101, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = mul nuw nsw i64 %polly.indvar208, 100
  %99 = mul nsw i64 %polly.indvar208, -100
  %100 = add nsw i64 %99, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %101 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 4
  %indvars.iv.next958 = add nsw i64 %indvars.iv957, -4
  %exitcond966.not = icmp eq i64 %101, 12
  br i1 %exitcond966.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv959 = phi i64 [ %indvars.iv.next960, %polly.loop_exit263 ], [ %indvars.iv957, %polly.loop_header205 ]
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %polly.loop_exit263 ], [ %indvars.iv953, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv955, i64 0)
  %102 = add i64 %smax, %indvars.iv959
  %.not.not = icmp ugt i64 %polly.indvar214, %polly.indvar208
  %103 = mul nuw nsw i64 %polly.indvar214, 96
  %104 = add nsw i64 %103, %99
  %105 = add nsw i64 %104, -1
  %.inv = icmp sgt i64 %104, 99
  %106 = select i1 %.inv, i64 99, i64 %105
  %polly.loop_guard = icmp sgt i64 %106, -1
  %107 = add nsw i64 %104, 95
  %108 = icmp ult i64 %100, %107
  %109 = select i1 %108, i64 %100, i64 %107
  %polly.loop_guard237.not = icmp sgt i64 %104, %109
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  br i1 %polly.loop_guard, label %polly.loop_header223.preheader.us, label %polly.loop_exit225.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.preheader.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header223.preheader.us ]
  %110 = add nuw nsw i64 %polly.indvar226.us, %98
  %polly.access.mul.call1230.us = mul nuw nsw i64 %110, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %113, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond951.not = icmp eq i64 %polly.indvar226.us, %106
  br i1 %exitcond951.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  br i1 %polly.loop_guard237.not, label %polly.merge.us, label %polly.loop_header234.preheader.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.preheader.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %104, %polly.loop_header234.preheader.us ]
  %111 = add nsw i64 %polly.indvar238.us, %98
  %polly.access.mul.call1242.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %112, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1245.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %109
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header234.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond952.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header234.preheader.us:                ; preds = %polly.loop_exit225.us
  %112 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1245.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header234.us

polly.loop_header223.preheader.us:                ; preds = %polly.loop_header217.us
  %113 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_exit263:                               ; preds = %polly.loop_exit270, %polly.loop_header261.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next956 = add nsw i64 %indvars.iv955, -96
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, 96
  %exitcond965.not = icmp eq i64 %polly.indvar_next215, 13
  br i1 %exitcond965.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.merge
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.merge ], [ 0, %polly.loop_header211 ]
  %114 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header248

polly.merge:                                      ; preds = %polly.loop_header248
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond950.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond950.not, label %polly.loop_header261.preheader, label %polly.loop_header217

polly.loop_header261.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %115 = sub nsw i64 %98, %103
  %116 = icmp sgt i64 %115, 0
  %117 = select i1 %116, i64 %115, i64 0
  %118 = mul nsw i64 %polly.indvar214, -96
  %119 = icmp slt i64 %118, -1104
  %120 = select i1 %119, i64 %118, i64 -1104
  %121 = add nsw i64 %120, 1199
  %polly.loop_guard271.not = icmp sgt i64 %117, %121
  br i1 %polly.loop_guard271.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header248:                             ; preds = %polly.loop_header248, %polly.loop_header217
  %polly.indvar251 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next252, %polly.loop_header248 ]
  %122 = add nuw nsw i64 %polly.indvar251, %98
  %polly.access.mul.call1255 = mul nuw nsw i64 %122, 1000
  %polly.access.add.call1256 = add nuw nsw i64 %114, %polly.access.mul.call1255
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar251, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next252, %indvars.iv
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header248

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_exit270
  %polly.indvar264 = phi i64 [ %polly.indvar_next265, %polly.loop_exit270 ], [ 0, %polly.loop_header261.preheader ]
  %123 = add nuw nsw i64 %polly.indvar264, %97
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar264, 1200
  %124 = shl i64 %123, 3
  br label %polly.loop_header268

polly.loop_exit270:                               ; preds = %polly.loop_exit278
  %polly.indvar_next265 = add nuw nsw i64 %polly.indvar264, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next265, 100
  br i1 %exitcond964.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header268:                             ; preds = %polly.loop_header261, %polly.loop_exit278
  %indvars.iv961 = phi i64 [ %102, %polly.loop_header261 ], [ %indvars.iv.next962, %polly.loop_exit278 ]
  %polly.indvar272 = phi i64 [ %117, %polly.loop_header261 ], [ %polly.indvar_next273, %polly.loop_exit278 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv961, i64 99)
  %125 = add nuw i64 %polly.indvar272, %103
  %126 = add i64 %125, %99
  %polly.loop_guard2791057 = icmp sgt i64 %126, -1
  br i1 %polly.loop_guard2791057, label %polly.loop_header276.preheader, label %polly.loop_exit278

polly.loop_header276.preheader:                   ; preds = %polly.loop_header268
  %127 = mul i64 %125, 8000
  %128 = add i64 %127, %124
  %scevgep287 = getelementptr i8, i8* %call2, i64 %128
  %scevgep287288 = bitcast i8* %scevgep287 to double*
  %_p_scalar_289 = load double, double* %scevgep287288, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1294 = add nsw i64 %polly.access.mul.Packed_MemRef_call1283, %126
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %129 = mul i64 %125, 9600
  br label %polly.loop_header276

polly.loop_exit278:                               ; preds = %polly.loop_header276, %polly.loop_header268
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %polly.loop_cond274.not.not = icmp slt i64 %polly.indvar272, %121
  %indvars.iv.next962 = add i64 %indvars.iv961, 1
  br i1 %polly.loop_cond274.not.not, label %polly.loop_header268, label %polly.loop_exit270

polly.loop_header276:                             ; preds = %polly.loop_header276.preheader, %polly.loop_header276
  %polly.indvar280 = phi i64 [ %polly.indvar_next281, %polly.loop_header276 ], [ 0, %polly.loop_header276.preheader ]
  %130 = add nuw nsw i64 %polly.indvar280, %98
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_289, %_p_scalar_286
  %131 = mul nuw nsw i64 %130, 8000
  %132 = add nuw nsw i64 %131, %124
  %scevgep290 = getelementptr i8, i8* %call2, i64 %132
  %scevgep290291 = bitcast i8* %scevgep290 to double*
  %_p_scalar_292 = load double, double* %scevgep290291, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %133 = shl i64 %130, 3
  %134 = add i64 %133, %129
  %scevgep297 = getelementptr i8, i8* %call, i64 %134
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond963.not = icmp eq i64 %polly.indvar280, %smin
  br i1 %exitcond963.not, label %polly.loop_exit278, label %polly.loop_header276

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1176 = phi i64 [ %indvar.next1177, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %135 = add i64 %indvar1176, 1
  %136 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %136
  %min.iters.check1178 = icmp ult i64 %135, 4
  br i1 %min.iters.check1178, label %polly.loop_header394.preheader, label %vector.ph1179

vector.ph1179:                                    ; preds = %polly.loop_header388
  %n.vec1181 = and i64 %135, -4
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1175 ]
  %137 = shl nuw nsw i64 %index1182, 3
  %138 = getelementptr i8, i8* %scevgep400, i64 %137
  %139 = bitcast i8* %138 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %139, align 8, !alias.scope !78, !noalias !80
  %140 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %141 = bitcast i8* %138 to <4 x double>*
  store <4 x double> %140, <4 x double>* %141, align 8, !alias.scope !78, !noalias !80
  %index.next1183 = add i64 %index1182, 4
  %142 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %142, label %middle.block1173, label %vector.body1175, !llvm.loop !84

middle.block1173:                                 ; preds = %vector.body1175
  %cmp.n1185 = icmp eq i64 %135, %n.vec1181
  br i1 %cmp.n1185, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1173
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1181, %middle.block1173 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1173
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1177 = add i64 %indvar1176, 1
  br i1 %exitcond994.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %143 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %143
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond993.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !85

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %144 = mul nuw nsw i64 %polly.indvar407, 100
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond992.not = icmp eq i64 %polly.indvar_next408, 10
  br i1 %exitcond992.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %indvars.iv976 = phi i64 [ %indvars.iv.next977, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %indvars.iv970 = phi i64 [ %indvars.iv.next971, %polly.loop_exit418 ], [ 96, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %148, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %145 = mul nuw nsw i64 %polly.indvar413, 100
  %146 = mul nsw i64 %polly.indvar413, -100
  %147 = add nsw i64 %146, 1199
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit474
  %148 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next971 = add nsw i64 %indvars.iv970, -4
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 4
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -4
  %exitcond991.not = icmp eq i64 %148, 12
  br i1 %exitcond991.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit474, %polly.loop_header410
  %indvars.iv983 = phi i64 [ %indvars.iv.next984, %polly.loop_exit474 ], [ %indvars.iv981, %polly.loop_header410 ]
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit474 ], [ %indvars.iv976, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit474 ], [ %polly.indvar413, %polly.loop_header410 ]
  %smax980 = call i64 @llvm.smax.i64(i64 %indvars.iv978, i64 0)
  %149 = add i64 %smax980, %indvars.iv983
  %.not.not928 = icmp ugt i64 %polly.indvar419, %polly.indvar413
  %150 = mul nuw nsw i64 %polly.indvar419, 96
  %151 = add nsw i64 %150, %146
  %152 = add nsw i64 %151, -1
  %.inv929 = icmp sgt i64 %151, 99
  %153 = select i1 %.inv929, i64 99, i64 %152
  %polly.loop_guard436 = icmp sgt i64 %153, -1
  %154 = add nsw i64 %151, 95
  %155 = icmp ult i64 %147, %154
  %156 = select i1 %155, i64 %147, i64 %154
  %polly.loop_guard448.not = icmp sgt i64 %151, %156
  br i1 %.not.not928, label %polly.loop_header422.us, label %polly.loop_header422

polly.loop_header422.us:                          ; preds = %polly.loop_header416, %polly.merge429.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.merge429.us ], [ 0, %polly.loop_header416 ]
  br i1 %polly.loop_guard436, label %polly.loop_header433.preheader.us, label %polly.loop_exit435.us

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader.us, %polly.loop_header433.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_header433.us ], [ 0, %polly.loop_header433.preheader.us ]
  %157 = add nuw nsw i64 %polly.indvar437.us, %145
  %polly.access.mul.call1441.us = mul nuw nsw i64 %157, 1000
  %polly.access.add.call1442.us = add nuw nsw i64 %160, %polly.access.mul.call1441.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next438.us = add nuw i64 %polly.indvar437.us, 1
  %exitcond974.not = icmp eq i64 %polly.indvar437.us, %153
  br i1 %exitcond974.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us, %polly.loop_header422.us
  br i1 %polly.loop_guard448.not, label %polly.merge429.us, label %polly.loop_header445.preheader.us

polly.loop_header445.us:                          ; preds = %polly.loop_header445.preheader.us, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ %151, %polly.loop_header445.preheader.us ]
  %158 = add nsw i64 %polly.indvar449.us, %145
  %polly.access.mul.call1453.us = mul nuw nsw i64 %158, 1000
  %polly.access.add.call1454.us = add nuw nsw i64 %159, %polly.access.mul.call1453.us
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305457.us = add nsw i64 %polly.indvar449.us, %polly.access.mul.Packed_MemRef_call1305456.us
  %polly.access.Packed_MemRef_call1305458.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305457.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1305458.us, align 8
  %polly.indvar_next450.us = add nsw i64 %polly.indvar449.us, 1
  %polly.loop_cond451.not.not.us = icmp slt i64 %polly.indvar449.us, %156
  br i1 %polly.loop_cond451.not.not.us, label %polly.loop_header445.us, label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.loop_header445.us, %polly.loop_exit435.us
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond975.not = icmp eq i64 %polly.indvar_next426.us, 100
  br i1 %exitcond975.not, label %polly.loop_header472.preheader, label %polly.loop_header422.us

polly.loop_header445.preheader.us:                ; preds = %polly.loop_exit435.us
  %159 = add nuw nsw i64 %polly.indvar425.us, %144
  %polly.access.mul.Packed_MemRef_call1305456.us = mul nuw nsw i64 %polly.indvar425.us, 1200
  br label %polly.loop_header445.us

polly.loop_header433.preheader.us:                ; preds = %polly.loop_header422.us
  %160 = add nuw nsw i64 %polly.indvar425.us, %144
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar425.us, 1200
  br label %polly.loop_header433.us

polly.loop_exit474:                               ; preds = %polly.loop_exit481, %polly.loop_header472.preheader
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -96
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, 96
  %exitcond990.not = icmp eq i64 %polly.indvar_next420, 13
  br i1 %exitcond990.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_header416, %polly.merge429
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.merge429 ], [ 0, %polly.loop_header416 ]
  %161 = add nuw nsw i64 %polly.indvar425, %144
  %polly.access.mul.Packed_MemRef_call1305469 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header459

polly.merge429:                                   ; preds = %polly.loop_header459
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond973.not = icmp eq i64 %polly.indvar_next426, 100
  br i1 %exitcond973.not, label %polly.loop_header472.preheader, label %polly.loop_header422

polly.loop_header472.preheader:                   ; preds = %polly.merge429, %polly.merge429.us
  %162 = sub nsw i64 %145, %150
  %163 = icmp sgt i64 %162, 0
  %164 = select i1 %163, i64 %162, i64 0
  %165 = mul nsw i64 %polly.indvar419, -96
  %166 = icmp slt i64 %165, -1104
  %167 = select i1 %166, i64 %165, i64 -1104
  %168 = add nsw i64 %167, 1199
  %polly.loop_guard482.not = icmp sgt i64 %164, %168
  br i1 %polly.loop_guard482.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header459:                             ; preds = %polly.loop_header459, %polly.loop_header422
  %polly.indvar462 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next463, %polly.loop_header459 ]
  %169 = add nuw nsw i64 %polly.indvar462, %145
  %polly.access.mul.call1466 = mul nuw nsw i64 %169, 1000
  %polly.access.add.call1467 = add nuw nsw i64 %161, %polly.access.mul.call1466
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305470 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1305469
  %polly.access.Packed_MemRef_call1305471 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1305471, align 8
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond972.not = icmp eq i64 %polly.indvar_next463, %indvars.iv970
  br i1 %exitcond972.not, label %polly.merge429, label %polly.loop_header459

polly.loop_header472:                             ; preds = %polly.loop_header472.preheader, %polly.loop_exit481
  %polly.indvar475 = phi i64 [ %polly.indvar_next476, %polly.loop_exit481 ], [ 0, %polly.loop_header472.preheader ]
  %170 = add nuw nsw i64 %polly.indvar475, %144
  %polly.access.mul.Packed_MemRef_call1305494 = mul nuw nsw i64 %polly.indvar475, 1200
  %171 = shl i64 %170, 3
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_exit489
  %polly.indvar_next476 = add nuw nsw i64 %polly.indvar475, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next476, 100
  br i1 %exitcond989.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header479:                             ; preds = %polly.loop_header472, %polly.loop_exit489
  %indvars.iv985 = phi i64 [ %149, %polly.loop_header472 ], [ %indvars.iv.next986, %polly.loop_exit489 ]
  %polly.indvar483 = phi i64 [ %164, %polly.loop_header472 ], [ %polly.indvar_next484, %polly.loop_exit489 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv985, i64 99)
  %172 = add nuw i64 %polly.indvar483, %150
  %173 = add i64 %172, %146
  %polly.loop_guard4901058 = icmp sgt i64 %173, -1
  br i1 %polly.loop_guard4901058, label %polly.loop_header487.preheader, label %polly.loop_exit489

polly.loop_header487.preheader:                   ; preds = %polly.loop_header479
  %174 = mul i64 %172, 8000
  %175 = add i64 %174, %171
  %scevgep498 = getelementptr i8, i8* %call2, i64 %175
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305505 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305494, %173
  %polly.access.Packed_MemRef_call1305506 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305505
  %_p_scalar_507 = load double, double* %polly.access.Packed_MemRef_call1305506, align 8
  %176 = mul i64 %172, 9600
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_header487, %polly.loop_header479
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %polly.loop_cond485.not.not = icmp slt i64 %polly.indvar483, %168
  %indvars.iv.next986 = add i64 %indvars.iv985, 1
  br i1 %polly.loop_cond485.not.not, label %polly.loop_header479, label %polly.loop_exit481

polly.loop_header487:                             ; preds = %polly.loop_header487.preheader, %polly.loop_header487
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_header487 ], [ 0, %polly.loop_header487.preheader ]
  %177 = add nuw nsw i64 %polly.indvar491, %145
  %polly.access.add.Packed_MemRef_call1305495 = add nuw nsw i64 %polly.indvar491, %polly.access.mul.Packed_MemRef_call1305494
  %polly.access.Packed_MemRef_call1305496 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call1305496, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_500, %_p_scalar_497
  %178 = mul nuw nsw i64 %177, 8000
  %179 = add nuw nsw i64 %178, %171
  %scevgep501 = getelementptr i8, i8* %call2, i64 %179
  %scevgep501502 = bitcast i8* %scevgep501 to double*
  %_p_scalar_503 = load double, double* %scevgep501502, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75 = fmul fast double %_p_scalar_507, %_p_scalar_503
  %180 = shl i64 %177, 3
  %181 = add i64 %180, %176
  %scevgep508 = getelementptr i8, i8* %call, i64 %181
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_510
  store double %p_add42.i79, double* %scevgep508509, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %exitcond988.not = icmp eq i64 %polly.indvar491, %smin987
  br i1 %exitcond988.not, label %polly.loop_exit489, label %polly.loop_header487

polly.start513:                                   ; preds = %init_array.exit
  %malloccall515 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header599

polly.exiting514:                                 ; preds = %polly.loop_exit623
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start513
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start513 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start513 ]
  %182 = add i64 %indvar, 1
  %183 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %183
  %min.iters.check1152 = icmp ult i64 %182, 4
  br i1 %min.iters.check1152, label %polly.loop_header605.preheader, label %vector.ph1153

vector.ph1153:                                    ; preds = %polly.loop_header599
  %n.vec1155 = and i64 %182, -4
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1153
  %index1156 = phi i64 [ 0, %vector.ph1153 ], [ %index.next1157, %vector.body1151 ]
  %184 = shl nuw nsw i64 %index1156, 3
  %185 = getelementptr i8, i8* %scevgep611, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  %wide.load1160 = load <4 x double>, <4 x double>* %186, align 8, !alias.scope !88, !noalias !90
  %187 = fmul fast <4 x double> %wide.load1160, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %187, <4 x double>* %188, align 8, !alias.scope !88, !noalias !90
  %index.next1157 = add i64 %index1156, 4
  %189 = icmp eq i64 %index.next1157, %n.vec1155
  br i1 %189, label %middle.block1149, label %vector.body1151, !llvm.loop !94

middle.block1149:                                 ; preds = %vector.body1151
  %cmp.n1159 = icmp eq i64 %182, %n.vec1155
  br i1 %cmp.n1159, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1149
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1155, %middle.block1149 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1149
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1019.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %190 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %190
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1018.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !95

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 0, %polly.loop_header615.preheader ]
  %191 = mul nuw nsw i64 %polly.indvar618, 100
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next619, 10
  br i1 %exitcond1017.not, label %polly.exiting514, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %polly.loop_exit629 ], [ 96, %polly.loop_header615 ]
  %polly.indvar624 = phi i64 [ %195, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %192 = mul nuw nsw i64 %polly.indvar624, 100
  %193 = mul nsw i64 %polly.indvar624, -100
  %194 = add nsw i64 %193, 1199
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_exit685
  %195 = add nuw nsw i64 %polly.indvar624, 1
  %indvars.iv.next996 = add nsw i64 %indvars.iv995, -4
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 4
  %indvars.iv.next1007 = add nsw i64 %indvars.iv1006, -4
  %exitcond1016.not = icmp eq i64 %195, 12
  br i1 %exitcond1016.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_exit685, %polly.loop_header621
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %polly.loop_exit685 ], [ %indvars.iv1006, %polly.loop_header621 ]
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit685 ], [ %indvars.iv1001, %polly.loop_header621 ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit685 ], [ %polly.indvar624, %polly.loop_header621 ]
  %smax1005 = call i64 @llvm.smax.i64(i64 %indvars.iv1003, i64 0)
  %196 = add i64 %smax1005, %indvars.iv1008
  %.not.not930 = icmp ugt i64 %polly.indvar630, %polly.indvar624
  %197 = mul nuw nsw i64 %polly.indvar630, 96
  %198 = add nsw i64 %197, %193
  %199 = add nsw i64 %198, -1
  %.inv931 = icmp sgt i64 %198, 99
  %200 = select i1 %.inv931, i64 99, i64 %199
  %polly.loop_guard647 = icmp sgt i64 %200, -1
  %201 = add nsw i64 %198, 95
  %202 = icmp ult i64 %194, %201
  %203 = select i1 %202, i64 %194, i64 %201
  %polly.loop_guard659.not = icmp sgt i64 %198, %203
  br i1 %.not.not930, label %polly.loop_header633.us, label %polly.loop_header633

polly.loop_header633.us:                          ; preds = %polly.loop_header627, %polly.merge640.us
  %polly.indvar636.us = phi i64 [ %polly.indvar_next637.us, %polly.merge640.us ], [ 0, %polly.loop_header627 ]
  br i1 %polly.loop_guard647, label %polly.loop_header644.preheader.us, label %polly.loop_exit646.us

polly.loop_header644.us:                          ; preds = %polly.loop_header644.preheader.us, %polly.loop_header644.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_header644.us ], [ 0, %polly.loop_header644.preheader.us ]
  %204 = add nuw nsw i64 %polly.indvar648.us, %192
  %polly.access.mul.call1652.us = mul nuw nsw i64 %204, 1000
  %polly.access.add.call1653.us = add nuw nsw i64 %207, %polly.access.mul.call1652.us
  %polly.access.call1654.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1653.us
  %polly.access.call1654.load.us = load double, double* %polly.access.call1654.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1516.us = add nuw nsw i64 %polly.indvar648.us, %polly.access.mul.Packed_MemRef_call1516.us
  %polly.access.Packed_MemRef_call1516.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516.us
  store double %polly.access.call1654.load.us, double* %polly.access.Packed_MemRef_call1516.us, align 8
  %polly.indvar_next649.us = add nuw i64 %polly.indvar648.us, 1
  %exitcond999.not = icmp eq i64 %polly.indvar648.us, %200
  br i1 %exitcond999.not, label %polly.loop_exit646.us, label %polly.loop_header644.us

polly.loop_exit646.us:                            ; preds = %polly.loop_header644.us, %polly.loop_header633.us
  br i1 %polly.loop_guard659.not, label %polly.merge640.us, label %polly.loop_header656.preheader.us

polly.loop_header656.us:                          ; preds = %polly.loop_header656.preheader.us, %polly.loop_header656.us
  %polly.indvar660.us = phi i64 [ %polly.indvar_next661.us, %polly.loop_header656.us ], [ %198, %polly.loop_header656.preheader.us ]
  %205 = add nsw i64 %polly.indvar660.us, %192
  %polly.access.mul.call1664.us = mul nuw nsw i64 %205, 1000
  %polly.access.add.call1665.us = add nuw nsw i64 %206, %polly.access.mul.call1664.us
  %polly.access.call1666.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1665.us
  %polly.access.call1666.load.us = load double, double* %polly.access.call1666.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1516668.us = add nsw i64 %polly.indvar660.us, %polly.access.mul.Packed_MemRef_call1516667.us
  %polly.access.Packed_MemRef_call1516669.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516668.us
  store double %polly.access.call1666.load.us, double* %polly.access.Packed_MemRef_call1516669.us, align 8
  %polly.indvar_next661.us = add nsw i64 %polly.indvar660.us, 1
  %polly.loop_cond662.not.not.us = icmp slt i64 %polly.indvar660.us, %203
  br i1 %polly.loop_cond662.not.not.us, label %polly.loop_header656.us, label %polly.merge640.us

polly.merge640.us:                                ; preds = %polly.loop_header656.us, %polly.loop_exit646.us
  %polly.indvar_next637.us = add nuw nsw i64 %polly.indvar636.us, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next637.us, 100
  br i1 %exitcond1000.not, label %polly.loop_header683.preheader, label %polly.loop_header633.us

polly.loop_header656.preheader.us:                ; preds = %polly.loop_exit646.us
  %206 = add nuw nsw i64 %polly.indvar636.us, %191
  %polly.access.mul.Packed_MemRef_call1516667.us = mul nuw nsw i64 %polly.indvar636.us, 1200
  br label %polly.loop_header656.us

polly.loop_header644.preheader.us:                ; preds = %polly.loop_header633.us
  %207 = add nuw nsw i64 %polly.indvar636.us, %191
  %polly.access.mul.Packed_MemRef_call1516.us = mul nuw nsw i64 %polly.indvar636.us, 1200
  br label %polly.loop_header644.us

polly.loop_exit685:                               ; preds = %polly.loop_exit692, %polly.loop_header683.preheader
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -96
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 96
  %exitcond1015.not = icmp eq i64 %polly.indvar_next631, 13
  br i1 %exitcond1015.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_header627, %polly.merge640
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.merge640 ], [ 0, %polly.loop_header627 ]
  %208 = add nuw nsw i64 %polly.indvar636, %191
  %polly.access.mul.Packed_MemRef_call1516680 = mul nuw nsw i64 %polly.indvar636, 1200
  br label %polly.loop_header670

polly.merge640:                                   ; preds = %polly.loop_header670
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond998.not = icmp eq i64 %polly.indvar_next637, 100
  br i1 %exitcond998.not, label %polly.loop_header683.preheader, label %polly.loop_header633

polly.loop_header683.preheader:                   ; preds = %polly.merge640, %polly.merge640.us
  %209 = sub nsw i64 %192, %197
  %210 = icmp sgt i64 %209, 0
  %211 = select i1 %210, i64 %209, i64 0
  %212 = mul nsw i64 %polly.indvar630, -96
  %213 = icmp slt i64 %212, -1104
  %214 = select i1 %213, i64 %212, i64 -1104
  %215 = add nsw i64 %214, 1199
  %polly.loop_guard693.not = icmp sgt i64 %211, %215
  br i1 %polly.loop_guard693.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header670:                             ; preds = %polly.loop_header670, %polly.loop_header633
  %polly.indvar673 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next674, %polly.loop_header670 ]
  %216 = add nuw nsw i64 %polly.indvar673, %192
  %polly.access.mul.call1677 = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1678 = add nuw nsw i64 %208, %polly.access.mul.call1677
  %polly.access.call1679 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1678
  %polly.access.call1679.load = load double, double* %polly.access.call1679, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1516681 = add nuw nsw i64 %polly.indvar673, %polly.access.mul.Packed_MemRef_call1516680
  %polly.access.Packed_MemRef_call1516682 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516681
  store double %polly.access.call1679.load, double* %polly.access.Packed_MemRef_call1516682, align 8
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %exitcond997.not = icmp eq i64 %polly.indvar_next674, %indvars.iv995
  br i1 %exitcond997.not, label %polly.merge640, label %polly.loop_header670

polly.loop_header683:                             ; preds = %polly.loop_header683.preheader, %polly.loop_exit692
  %polly.indvar686 = phi i64 [ %polly.indvar_next687, %polly.loop_exit692 ], [ 0, %polly.loop_header683.preheader ]
  %217 = add nuw nsw i64 %polly.indvar686, %191
  %polly.access.mul.Packed_MemRef_call1516705 = mul nuw nsw i64 %polly.indvar686, 1200
  %218 = shl i64 %217, 3
  br label %polly.loop_header690

polly.loop_exit692:                               ; preds = %polly.loop_exit700
  %polly.indvar_next687 = add nuw nsw i64 %polly.indvar686, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next687, 100
  br i1 %exitcond1014.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header690:                             ; preds = %polly.loop_header683, %polly.loop_exit700
  %indvars.iv1010 = phi i64 [ %196, %polly.loop_header683 ], [ %indvars.iv.next1011, %polly.loop_exit700 ]
  %polly.indvar694 = phi i64 [ %211, %polly.loop_header683 ], [ %polly.indvar_next695, %polly.loop_exit700 ]
  %smin1012 = call i64 @llvm.smin.i64(i64 %indvars.iv1010, i64 99)
  %219 = add nuw i64 %polly.indvar694, %197
  %220 = add i64 %219, %193
  %polly.loop_guard7011059 = icmp sgt i64 %220, -1
  br i1 %polly.loop_guard7011059, label %polly.loop_header698.preheader, label %polly.loop_exit700

polly.loop_header698.preheader:                   ; preds = %polly.loop_header690
  %221 = mul i64 %219, 8000
  %222 = add i64 %221, %218
  %scevgep709 = getelementptr i8, i8* %call2, i64 %222
  %scevgep709710 = bitcast i8* %scevgep709 to double*
  %_p_scalar_711 = load double, double* %scevgep709710, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516716 = add nsw i64 %polly.access.mul.Packed_MemRef_call1516705, %220
  %polly.access.Packed_MemRef_call1516717 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516716
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call1516717, align 8
  %223 = mul i64 %219, 9600
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_header698, %polly.loop_header690
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %polly.loop_cond696.not.not = icmp slt i64 %polly.indvar694, %215
  %indvars.iv.next1011 = add i64 %indvars.iv1010, 1
  br i1 %polly.loop_cond696.not.not, label %polly.loop_header690, label %polly.loop_exit692

polly.loop_header698:                             ; preds = %polly.loop_header698.preheader, %polly.loop_header698
  %polly.indvar702 = phi i64 [ %polly.indvar_next703, %polly.loop_header698 ], [ 0, %polly.loop_header698.preheader ]
  %224 = add nuw nsw i64 %polly.indvar702, %192
  %polly.access.add.Packed_MemRef_call1516706 = add nuw nsw i64 %polly.indvar702, %polly.access.mul.Packed_MemRef_call1516705
  %polly.access.Packed_MemRef_call1516707 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call1516707, align 8
  %p_mul27.i = fmul fast double %_p_scalar_711, %_p_scalar_708
  %225 = mul nuw nsw i64 %224, 8000
  %226 = add nuw nsw i64 %225, %218
  %scevgep712 = getelementptr i8, i8* %call2, i64 %226
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  %_p_scalar_714 = load double, double* %scevgep712713, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %227 = shl i64 %224, 3
  %228 = add i64 %227, %223
  %scevgep719 = getelementptr i8, i8* %call, i64 %228
  %scevgep719720 = bitcast i8* %scevgep719 to double*
  %_p_scalar_721 = load double, double* %scevgep719720, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_721
  store double %p_add42.i, double* %scevgep719720, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next703 = add nuw nsw i64 %polly.indvar702, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar702, %smin1012
  br i1 %exitcond1013.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header848:                             ; preds = %entry, %polly.loop_exit856
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit856 ], [ 0, %entry ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %entry ]
  %smin1046 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 -1168)
  %229 = shl nsw i64 %polly.indvar851, 5
  %230 = add nsw i64 %smin1046, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -32
  %exitcond1049.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1049.not, label %polly.loop_header875, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %231 = mul nsw i64 %polly.indvar857, -32
  %smin1090 = call i64 @llvm.smin.i64(i64 %231, i64 -1168)
  %232 = add nsw i64 %smin1090, 1200
  %smin1042 = call i64 @llvm.smin.i64(i64 %indvars.iv1040, i64 -1168)
  %233 = shl nsw i64 %polly.indvar857, 5
  %234 = add nsw i64 %smin1042, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1048.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1048.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %235 = add nuw nsw i64 %polly.indvar863, %229
  %236 = trunc i64 %235 to i32
  %237 = mul nuw nsw i64 %235, 9600
  %min.iters.check = icmp eq i64 %232, 0
  br i1 %min.iters.check, label %polly.loop_header866, label %vector.ph1091

vector.ph1091:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1098 = insertelement <4 x i64> poison, i64 %233, i32 0
  %broadcast.splat1099 = shufflevector <4 x i64> %broadcast.splatinsert1098, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %vector.ph1091
  %index1092 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1093, %vector.body1089 ]
  %vec.ind1096 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1091 ], [ %vec.ind.next1097, %vector.body1089 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1096, %broadcast.splat1099
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1101, %239
  %241 = add <4 x i32> %240, <i32 3, i32 3, i32 3, i32 3>
  %242 = urem <4 x i32> %241, <i32 1200, i32 1200, i32 1200, i32 1200>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add nuw nsw i64 %246, %237
  %248 = getelementptr i8, i8* %call, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !98, !noalias !100
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1097 = add <4 x i64> %vec.ind1096, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1093, %232
  br i1 %250, label %polly.loop_exit868, label %vector.body1089, !llvm.loop !103

polly.loop_exit868:                               ; preds = %vector.body1089, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar863, %230
  br i1 %exitcond1047.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %251 = add nuw nsw i64 %polly.indvar869, %233
  %252 = trunc i64 %251 to i32
  %253 = mul i32 %252, %236
  %254 = add i32 %253, 3
  %255 = urem i32 %254, 1200
  %p_conv31.i = sitofp i32 %255 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %256 = shl i64 %251, 3
  %257 = add nuw nsw i64 %256, %237
  %scevgep872 = getelementptr i8, i8* %call, i64 %257
  %scevgep872873 = bitcast i8* %scevgep872 to double*
  store double %p_div33.i, double* %scevgep872873, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar869, %234
  br i1 %exitcond1043.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !104

polly.loop_header875:                             ; preds = %polly.loop_exit856, %polly.loop_exit883
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1034, i64 -1168)
  %258 = shl nsw i64 %polly.indvar878, 5
  %259 = add nsw i64 %smin1036, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1039.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1039.not, label %polly.loop_header901, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %260 = mul nsw i64 %polly.indvar884, -32
  %smin1105 = call i64 @llvm.smin.i64(i64 %260, i64 -968)
  %261 = add nsw i64 %smin1105, 1000
  %smin1032 = call i64 @llvm.smin.i64(i64 %indvars.iv1030, i64 -968)
  %262 = shl nsw i64 %polly.indvar884, 5
  %263 = add nsw i64 %smin1032, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -32
  %exitcond1038.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1038.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %264 = add nuw nsw i64 %polly.indvar890, %258
  %265 = trunc i64 %264 to i32
  %266 = mul nuw nsw i64 %264, 8000
  %min.iters.check1106 = icmp eq i64 %261, 0
  br i1 %min.iters.check1106, label %polly.loop_header893, label %vector.ph1107

vector.ph1107:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1116 = insertelement <4 x i64> poison, i64 %262, i32 0
  %broadcast.splat1117 = shufflevector <4 x i64> %broadcast.splatinsert1116, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1107
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1111, %vector.body1104 ]
  %vec.ind1114 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1107 ], [ %vec.ind.next1115, %vector.body1104 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1114, %broadcast.splat1117
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1119, %268
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 1000, i32 1000, i32 1000, i32 1000>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add nuw nsw i64 %275, %266
  %277 = getelementptr i8, i8* %call2, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !102, !noalias !105
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1115 = add <4 x i64> %vec.ind1114, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1111, %261
  br i1 %279, label %polly.loop_exit895, label %vector.body1104, !llvm.loop !106

polly.loop_exit895:                               ; preds = %vector.body1104, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar890, %259
  br i1 %exitcond1037.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %280 = add nuw nsw i64 %polly.indvar896, %262
  %281 = trunc i64 %280 to i32
  %282 = mul i32 %281, %265
  %283 = add i32 %282, 2
  %284 = urem i32 %283, 1000
  %p_conv10.i = sitofp i32 %284 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %285 = shl i64 %280, 3
  %286 = add nuw nsw i64 %285, %266
  %scevgep899 = getelementptr i8, i8* %call2, i64 %286
  %scevgep899900 = bitcast i8* %scevgep899 to double*
  store double %p_div12.i, double* %scevgep899900, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar896, %263
  br i1 %exitcond1033.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !107

polly.loop_header901:                             ; preds = %polly.loop_exit883, %polly.loop_exit909
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 -1168)
  %287 = shl nsw i64 %polly.indvar904, 5
  %288 = add nsw i64 %smin1026, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, -32
  %exitcond1029.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1029.not, label %init_array.exit, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %289 = mul nsw i64 %polly.indvar910, -32
  %smin1123 = call i64 @llvm.smin.i64(i64 %289, i64 -968)
  %290 = add nsw i64 %smin1123, 1000
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1020, i64 -968)
  %291 = shl nsw i64 %polly.indvar910, 5
  %292 = add nsw i64 %smin1022, 999
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -32
  %exitcond1028.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1028.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %293 = add nuw nsw i64 %polly.indvar916, %287
  %294 = trunc i64 %293 to i32
  %295 = mul nuw nsw i64 %293, 8000
  %min.iters.check1124 = icmp eq i64 %290, 0
  br i1 %min.iters.check1124, label %polly.loop_header919, label %vector.ph1125

vector.ph1125:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1134 = insertelement <4 x i64> poison, i64 %291, i32 0
  %broadcast.splat1135 = shufflevector <4 x i64> %broadcast.splatinsert1134, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %vector.ph1125
  %index1128 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1129, %vector.body1122 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1125 ], [ %vec.ind.next1133, %vector.body1122 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1132, %broadcast.splat1135
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1137, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 1200, i32 1200, i32 1200, i32 1200>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add nuw nsw i64 %304, %295
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !101, !noalias !108
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1129, %290
  br i1 %308, label %polly.loop_exit921, label %vector.body1122, !llvm.loop !109

polly.loop_exit921:                               ; preds = %vector.body1122, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar916, %288
  br i1 %exitcond1027.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %309 = add nuw nsw i64 %polly.indvar922, %291
  %310 = trunc i64 %309 to i32
  %311 = mul i32 %310, %294
  %312 = add i32 %311, 1
  %313 = urem i32 %312, 1200
  %p_conv.i = sitofp i32 %313 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %314 = shl i64 %309, 3
  %315 = add nuw nsw i64 %314, %295
  %scevgep926 = getelementptr i8, i8* %call1, i64 %315
  %scevgep926927 = bitcast i8* %scevgep926 to double*
  store double %p_div.i, double* %scevgep926927, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar922, %292
  br i1 %exitcond1023.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !110
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
!21 = distinct !{!"A"}
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
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.loop.interchange.followup_interchanged", !41}
!41 = distinct !{!41, !12, !23, !39, !42, !43, !44}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49, !50, !56}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 96}
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
