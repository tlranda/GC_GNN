; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4031.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4031.c"
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
  %call813 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1665 = bitcast i8* %call1 to double*
  %polly.access.call1674 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1674, %call2
  %polly.access.call2694 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2694, %call1
  %2 = or i1 %0, %1
  %polly.access.call714 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call714, %call2
  %4 = icmp ule i8* %polly.access.call2694, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call714, %call1
  %8 = icmp ule i8* %polly.access.call1674, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header787, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1089 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1088 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1087 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1086 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1086, %scevgep1089
  %bound1 = icmp ult i8* %scevgep1088, %scevgep1087
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
  br i1 %exitcond18.not.i, label %vector.ph1093, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1093:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1100 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1101 = shufflevector <4 x i64> %broadcast.splatinsert1100, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %vector.ph1093
  %index1094 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1098 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1093 ], [ %vec.ind.next1099, %vector.body1092 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1098, %broadcast.splat1101
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv7.i, i64 %index1094
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1099 = add <4 x i64> %vec.ind1098, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1095, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1092, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1092
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1093, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit848
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1155 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1155, label %for.body3.i46.preheader1229, label %vector.ph1156

vector.ph1156:                                    ; preds = %for.body3.i46.preheader
  %n.vec1158 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1154 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %index1159
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1160 = add i64 %index1159, 4
  %46 = icmp eq i64 %index.next1160, %n.vec1158
  br i1 %46, label %middle.block1152, label %vector.body1154, !llvm.loop !18

middle.block1152:                                 ; preds = %vector.body1154
  %cmp.n1162 = icmp eq i64 %indvars.iv21.i, %n.vec1158
  br i1 %cmp.n1162, label %for.inc6.i, label %for.body3.i46.preheader1229

for.body3.i46.preheader1229:                      ; preds = %for.body3.i46.preheader, %middle.block1152
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1158, %middle.block1152 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1229, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1229 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1152, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1178 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1178, label %for.body3.i60.preheader1228, label %vector.ph1179

vector.ph1179:                                    ; preds = %for.body3.i60.preheader
  %n.vec1181 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %index1182
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1183 = add i64 %index1182, 4
  %57 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %57, label %middle.block1175, label %vector.body1177, !llvm.loop !55

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %indvars.iv21.i52, %n.vec1181
  br i1 %cmp.n1185, label %for.inc6.i63, label %for.body3.i60.preheader1228

for.body3.i60.preheader1228:                      ; preds = %for.body3.i60.preheader, %middle.block1175
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1181, %middle.block1175 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1228, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1228 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1175, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %min.iters.check1204 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1204, label %for.body3.i99.preheader1227, label %vector.ph1205

vector.ph1205:                                    ; preds = %for.body3.i99.preheader
  %n.vec1207 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1203 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %index1208
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1209 = add i64 %index1208, 4
  %68 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %68, label %middle.block1201, label %vector.body1203, !llvm.loop !57

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1211 = icmp eq i64 %indvars.iv21.i91, %n.vec1207
  br i1 %cmp.n1211, label %for.inc6.i102, label %for.body3.i99.preheader1227

for.body3.i99.preheader1227:                      ; preds = %for.body3.i99.preheader, %middle.block1201
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1207, %middle.block1201 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1227, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1227 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1201, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call813, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1216 = phi i64 [ %indvar.next1217, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1216, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1218 = icmp ult i64 %88, 4
  br i1 %min.iters.check1218, label %polly.loop_header191.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %polly.loop_header
  %n.vec1221 = and i64 %88, -4
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1219
  %index1222 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1223, %vector.body1215 ]
  %90 = shl nuw nsw i64 %index1222, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1226 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1223 = add i64 %index1222, 4
  %95 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %95, label %middle.block1213, label %vector.body1215, !llvm.loop !69

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1225 = icmp eq i64 %88, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1213
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1221, %middle.block1213 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1213
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1217 = add i64 %indvar1216, 1
  br i1 %exitcond996.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond995.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv990 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv990, 25
  %98 = mul nsw i64 %polly.indvar202, -4
  %99 = shl nsw i64 %polly.indvar202, 2
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 4
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 2
  %exitcond994.not = icmp eq i64 %polly.indvar_next203, 300
  br i1 %exitcond994.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %100 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next209, 50
  br i1 %exitcond993.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %101 = mul nuw nsw i64 %polly.indvar214, 50
  %102 = add nsw i64 %101, %98
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %polly.loop_guard = icmp slt i64 %104, 4
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %105 = add i64 %smax, %indvars.iv981
  %106 = sub nsw i64 %99, %101
  %107 = add nuw nsw i64 %101, 50
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 50
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -50
  %exitcond992.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond992.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %105, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %104, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 49)
  %108 = add nsw i64 %polly.indvar220, %106
  %polly.loop_guard2331081 = icmp sgt i64 %108, -1
  %109 = add nuw nsw i64 %polly.indvar220, %99
  %.not = icmp ult i64 %109, %107
  %polly.access.mul.call1242 = mul nsw i64 %109, 1000
  %110 = add nuw i64 %polly.access.mul.call1242, %100
  br i1 %polly.loop_guard2331081, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %111 = add nuw nsw i64 %polly.indvar226.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 1200
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %112 = add nuw nsw i64 %polly.indvar234.us, %101
  %polly.access.mul.call1238.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %111, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar234.us, %smin987
  br i1 %exitcond985.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %110, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %108
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar_next227.us, 20
  br i1 %exitcond986.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1665, i64 %110
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %108
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.access.add.call1243.1 = or i64 %110, 1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %108, 1200
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.access.add.call1243.2 = or i64 %110, 2
  %polly.access.call1244.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.2
  %polly.access.call1244.load.2 = load double, double* %polly.access.call1244.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.2 = add nsw i64 %108, 2400
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  store double %polly.access.call1244.load.2, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %polly.access.add.call1243.3 = or i64 %110, 3
  %polly.access.call1244.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.3
  %polly.access.call1244.load.3 = load double, double* %polly.access.call1244.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.3 = add nsw i64 %108, 3600
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  store double %polly.access.call1244.load.3, double* %polly.access.Packed_MemRef_call1247.3, align 8
  %polly.access.add.call1243.4 = add nuw nsw i64 %110, 4
  %polly.access.call1244.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.4
  %polly.access.call1244.load.4 = load double, double* %polly.access.call1244.4, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.4 = add nsw i64 %108, 4800
  %polly.access.Packed_MemRef_call1247.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.4
  store double %polly.access.call1244.load.4, double* %polly.access.Packed_MemRef_call1247.4, align 8
  %polly.access.add.call1243.5 = add nuw nsw i64 %110, 5
  %polly.access.call1244.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.5
  %polly.access.call1244.load.5 = load double, double* %polly.access.call1244.5, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.5 = add nsw i64 %108, 6000
  %polly.access.Packed_MemRef_call1247.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.5
  store double %polly.access.call1244.load.5, double* %polly.access.Packed_MemRef_call1247.5, align 8
  %polly.access.add.call1243.6 = add nuw nsw i64 %110, 6
  %polly.access.call1244.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.6
  %polly.access.call1244.load.6 = load double, double* %polly.access.call1244.6, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.6 = add nsw i64 %108, 7200
  %polly.access.Packed_MemRef_call1247.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.6
  store double %polly.access.call1244.load.6, double* %polly.access.Packed_MemRef_call1247.6, align 8
  %polly.access.add.call1243.7 = add nuw nsw i64 %110, 7
  %polly.access.call1244.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.7
  %polly.access.call1244.load.7 = load double, double* %polly.access.call1244.7, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.7 = add nsw i64 %108, 8400
  %polly.access.Packed_MemRef_call1247.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.7
  store double %polly.access.call1244.load.7, double* %polly.access.Packed_MemRef_call1247.7, align 8
  %polly.access.add.call1243.8 = add nuw nsw i64 %110, 8
  %polly.access.call1244.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.8
  %polly.access.call1244.load.8 = load double, double* %polly.access.call1244.8, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.8 = add nsw i64 %108, 9600
  %polly.access.Packed_MemRef_call1247.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.8
  store double %polly.access.call1244.load.8, double* %polly.access.Packed_MemRef_call1247.8, align 8
  %polly.access.add.call1243.9 = add nuw nsw i64 %110, 9
  %polly.access.call1244.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.9
  %polly.access.call1244.load.9 = load double, double* %polly.access.call1244.9, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.9 = add nsw i64 %108, 10800
  %polly.access.Packed_MemRef_call1247.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.9
  store double %polly.access.call1244.load.9, double* %polly.access.Packed_MemRef_call1247.9, align 8
  %polly.access.add.call1243.10 = add nuw nsw i64 %110, 10
  %polly.access.call1244.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.10
  %polly.access.call1244.load.10 = load double, double* %polly.access.call1244.10, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.10 = add nsw i64 %108, 12000
  %polly.access.Packed_MemRef_call1247.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.10
  store double %polly.access.call1244.load.10, double* %polly.access.Packed_MemRef_call1247.10, align 8
  %polly.access.add.call1243.11 = add nuw nsw i64 %110, 11
  %polly.access.call1244.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.11
  %polly.access.call1244.load.11 = load double, double* %polly.access.call1244.11, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.11 = add nsw i64 %108, 13200
  %polly.access.Packed_MemRef_call1247.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.11
  store double %polly.access.call1244.load.11, double* %polly.access.Packed_MemRef_call1247.11, align 8
  %polly.access.add.call1243.12 = add nuw nsw i64 %110, 12
  %polly.access.call1244.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.12
  %polly.access.call1244.load.12 = load double, double* %polly.access.call1244.12, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.12 = add nsw i64 %108, 14400
  %polly.access.Packed_MemRef_call1247.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.12
  store double %polly.access.call1244.load.12, double* %polly.access.Packed_MemRef_call1247.12, align 8
  %polly.access.add.call1243.13 = add nuw nsw i64 %110, 13
  %polly.access.call1244.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.13
  %polly.access.call1244.load.13 = load double, double* %polly.access.call1244.13, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.13 = add nsw i64 %108, 15600
  %polly.access.Packed_MemRef_call1247.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.13
  store double %polly.access.call1244.load.13, double* %polly.access.Packed_MemRef_call1247.13, align 8
  %polly.access.add.call1243.14 = add nuw nsw i64 %110, 14
  %polly.access.call1244.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.14
  %polly.access.call1244.load.14 = load double, double* %polly.access.call1244.14, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.14 = add nsw i64 %108, 16800
  %polly.access.Packed_MemRef_call1247.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.14
  store double %polly.access.call1244.load.14, double* %polly.access.Packed_MemRef_call1247.14, align 8
  %polly.access.add.call1243.15 = add nuw nsw i64 %110, 15
  %polly.access.call1244.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.15
  %polly.access.call1244.load.15 = load double, double* %polly.access.call1244.15, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.15 = add nsw i64 %108, 18000
  %polly.access.Packed_MemRef_call1247.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.15
  store double %polly.access.call1244.load.15, double* %polly.access.Packed_MemRef_call1247.15, align 8
  %polly.access.add.call1243.16 = add nuw nsw i64 %110, 16
  %polly.access.call1244.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.16
  %polly.access.call1244.load.16 = load double, double* %polly.access.call1244.16, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.16 = add nsw i64 %108, 19200
  %polly.access.Packed_MemRef_call1247.16 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.16
  store double %polly.access.call1244.load.16, double* %polly.access.Packed_MemRef_call1247.16, align 8
  %polly.access.add.call1243.17 = add nuw nsw i64 %110, 17
  %polly.access.call1244.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.17
  %polly.access.call1244.load.17 = load double, double* %polly.access.call1244.17, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.17 = add nsw i64 %108, 20400
  %polly.access.Packed_MemRef_call1247.17 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.17
  store double %polly.access.call1244.load.17, double* %polly.access.Packed_MemRef_call1247.17, align 8
  %polly.access.add.call1243.18 = add nuw nsw i64 %110, 18
  %polly.access.call1244.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.18
  %polly.access.call1244.load.18 = load double, double* %polly.access.call1244.18, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.18 = add nsw i64 %108, 21600
  %polly.access.Packed_MemRef_call1247.18 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.18
  store double %polly.access.call1244.load.18, double* %polly.access.Packed_MemRef_call1247.18, align 8
  %polly.access.add.call1243.19 = add nuw nsw i64 %110, 19
  %polly.access.call1244.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.19
  %polly.access.call1244.load.19 = load double, double* %polly.access.call1244.19, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.19 = add nsw i64 %108, 22800
  %polly.access.Packed_MemRef_call1247.19 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.19
  store double %polly.access.call1244.load.19, double* %polly.access.Packed_MemRef_call1247.19, align 8
  br label %polly.loop_exit250

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 3
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.merge.us
  %113 = mul i64 %109, 8000
  %114 = mul i64 %109, 9600
  br i1 %polly.loop_guard2331081, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %115 = add nuw nsw i64 %polly.indvar251.us, %100
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 1200
  %116 = shl i64 %115, 3
  %117 = add i64 %116, %113
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %117
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %108
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %118 = add nuw nsw i64 %polly.indvar259.us, %101
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %119 = mul nuw nsw i64 %118, 8000
  %120 = add nuw nsw i64 %119, %116
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %120
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %114
  %scevgep276.us = getelementptr i8, i8* %call, i64 %122
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar259.us, %smin987
  br i1 %exitcond988.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next252.us, 20
  br i1 %exitcond989.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1190 = phi i64 [ %indvar.next1191, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %123 = add i64 %indvar1190, 1
  %124 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1192 = icmp ult i64 %123, 4
  br i1 %min.iters.check1192, label %polly.loop_header373.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header367
  %n.vec1195 = and i64 %123, -4
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1189 ]
  %125 = shl nuw nsw i64 %index1196, 3
  %126 = getelementptr i8, i8* %scevgep379, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %128 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !74, !noalias !76
  %index.next1197 = add i64 %index1196, 4
  %130 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %130, label %middle.block1187, label %vector.body1189, !llvm.loop !80

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1199 = icmp eq i64 %123, %n.vec1195
  br i1 %cmp.n1199, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1187
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1195, %middle.block1187 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1187
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1191 = add i64 %indvar1190, 1
  br i1 %exitcond1021.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %131
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1020.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1015 = phi i64 [ 1, %polly.loop_header383.preheader ], [ %indvars.iv.next1016, %polly.loop_exit391 ]
  %indvars.iv1003 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1004, %polly.loop_exit391 ]
  %indvars.iv998 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next999, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %132 = udiv i64 %indvars.iv1015, 25
  %133 = mul nsw i64 %polly.indvar386, -4
  %134 = shl nsw i64 %polly.indvar386, 2
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit398
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, -4
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 4
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 2
  %exitcond1019.not = icmp eq i64 %polly.indvar_next387, 300
  br i1 %exitcond1019.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit398, %polly.loop_header383
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header383 ], [ %polly.indvar_next393, %polly.loop_exit398 ]
  %135 = mul nuw nsw i64 %polly.indvar392, 20
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next393, 50
  br i1 %exitcond1018.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header389
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit405 ], [ %indvars.iv1003, %polly.loop_header389 ]
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit405 ], [ %indvars.iv998, %polly.loop_header389 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header389 ]
  %136 = mul nuw nsw i64 %polly.indvar399, 50
  %137 = add nsw i64 %136, %133
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard406 = icmp slt i64 %139, 4
  br i1 %polly.loop_guard406, label %polly.loop_header403.preheader, label %polly.loop_exit405

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1002 = call i64 @llvm.smax.i64(i64 %indvars.iv1000, i64 0)
  %140 = add i64 %smax1002, %indvars.iv1005
  %141 = sub nsw i64 %134, %136
  %142 = add nuw nsw i64 %136, 50
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, 50
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -50
  %exitcond1017.not = icmp eq i64 %polly.indvar399, %132
  br i1 %exitcond1017.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1007 = phi i64 [ %140, %polly.loop_header403.preheader ], [ %indvars.iv.next1008, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %139, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1012 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 49)
  %143 = add nsw i64 %polly.indvar407, %141
  %polly.loop_guard4201082 = icmp sgt i64 %143, -1
  %144 = add nuw nsw i64 %polly.indvar407, %134
  %.not867 = icmp ult i64 %144, %142
  %polly.access.mul.call1433 = mul nsw i64 %144, 1000
  %145 = add nuw i64 %polly.access.mul.call1433, %135
  br i1 %polly.loop_guard4201082, label %polly.loop_header410.us, label %polly.loop_header403.split

polly.loop_header410.us:                          ; preds = %polly.loop_header403, %polly.merge429.us
  %polly.indvar413.us = phi i64 [ %polly.indvar_next414.us, %polly.merge429.us ], [ 0, %polly.loop_header403 ]
  %146 = add nuw nsw i64 %polly.indvar413.us, %135
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar413.us, 1200
  br label %polly.loop_header417.us

polly.loop_header417.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header410.us ]
  %147 = add nuw nsw i64 %polly.indvar421.us, %136
  %polly.access.mul.call1425.us = mul nuw nsw i64 %147, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %146, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar421.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar421.us, %smin1012
  br i1 %exitcond1010.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.add.call1434.us = add nuw nsw i64 %145, %polly.indvar413.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %143
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  %polly.indvar_next414.us = add nuw nsw i64 %polly.indvar413.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next414.us, 20
  br i1 %exitcond1011.not, label %polly.loop_header439.preheader, label %polly.loop_header410.us

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %.not867, label %polly.merge429.us, label %polly.then430.us

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %.not867, label %polly.loop_exit441, label %polly.loop_header410.preheader

polly.loop_header410.preheader:                   ; preds = %polly.loop_header403.split
  %polly.access.call1435 = getelementptr double, double* %polly.access.cast.call1665, i64 %145
  %polly.access.call1435.load = load double, double* %polly.access.call1435, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284438 = getelementptr double, double* %Packed_MemRef_call1284, i64 %143
  store double %polly.access.call1435.load, double* %polly.access.Packed_MemRef_call1284438, align 8
  %polly.access.add.call1434.1 = or i64 %145, 1
  %polly.access.call1435.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.1
  %polly.access.call1435.load.1 = load double, double* %polly.access.call1435.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.1 = add nsw i64 %143, 1200
  %polly.access.Packed_MemRef_call1284438.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.1
  store double %polly.access.call1435.load.1, double* %polly.access.Packed_MemRef_call1284438.1, align 8
  %polly.access.add.call1434.2 = or i64 %145, 2
  %polly.access.call1435.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.2
  %polly.access.call1435.load.2 = load double, double* %polly.access.call1435.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.2 = add nsw i64 %143, 2400
  %polly.access.Packed_MemRef_call1284438.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.2
  store double %polly.access.call1435.load.2, double* %polly.access.Packed_MemRef_call1284438.2, align 8
  %polly.access.add.call1434.3 = or i64 %145, 3
  %polly.access.call1435.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.3
  %polly.access.call1435.load.3 = load double, double* %polly.access.call1435.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.3 = add nsw i64 %143, 3600
  %polly.access.Packed_MemRef_call1284438.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.3
  store double %polly.access.call1435.load.3, double* %polly.access.Packed_MemRef_call1284438.3, align 8
  %polly.access.add.call1434.4 = add nuw nsw i64 %145, 4
  %polly.access.call1435.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.4
  %polly.access.call1435.load.4 = load double, double* %polly.access.call1435.4, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.4 = add nsw i64 %143, 4800
  %polly.access.Packed_MemRef_call1284438.4 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.4
  store double %polly.access.call1435.load.4, double* %polly.access.Packed_MemRef_call1284438.4, align 8
  %polly.access.add.call1434.5 = add nuw nsw i64 %145, 5
  %polly.access.call1435.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.5
  %polly.access.call1435.load.5 = load double, double* %polly.access.call1435.5, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.5 = add nsw i64 %143, 6000
  %polly.access.Packed_MemRef_call1284438.5 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.5
  store double %polly.access.call1435.load.5, double* %polly.access.Packed_MemRef_call1284438.5, align 8
  %polly.access.add.call1434.6 = add nuw nsw i64 %145, 6
  %polly.access.call1435.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.6
  %polly.access.call1435.load.6 = load double, double* %polly.access.call1435.6, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.6 = add nsw i64 %143, 7200
  %polly.access.Packed_MemRef_call1284438.6 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.6
  store double %polly.access.call1435.load.6, double* %polly.access.Packed_MemRef_call1284438.6, align 8
  %polly.access.add.call1434.7 = add nuw nsw i64 %145, 7
  %polly.access.call1435.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.7
  %polly.access.call1435.load.7 = load double, double* %polly.access.call1435.7, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.7 = add nsw i64 %143, 8400
  %polly.access.Packed_MemRef_call1284438.7 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.7
  store double %polly.access.call1435.load.7, double* %polly.access.Packed_MemRef_call1284438.7, align 8
  %polly.access.add.call1434.8 = add nuw nsw i64 %145, 8
  %polly.access.call1435.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.8
  %polly.access.call1435.load.8 = load double, double* %polly.access.call1435.8, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.8 = add nsw i64 %143, 9600
  %polly.access.Packed_MemRef_call1284438.8 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.8
  store double %polly.access.call1435.load.8, double* %polly.access.Packed_MemRef_call1284438.8, align 8
  %polly.access.add.call1434.9 = add nuw nsw i64 %145, 9
  %polly.access.call1435.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.9
  %polly.access.call1435.load.9 = load double, double* %polly.access.call1435.9, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.9 = add nsw i64 %143, 10800
  %polly.access.Packed_MemRef_call1284438.9 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.9
  store double %polly.access.call1435.load.9, double* %polly.access.Packed_MemRef_call1284438.9, align 8
  %polly.access.add.call1434.10 = add nuw nsw i64 %145, 10
  %polly.access.call1435.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.10
  %polly.access.call1435.load.10 = load double, double* %polly.access.call1435.10, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.10 = add nsw i64 %143, 12000
  %polly.access.Packed_MemRef_call1284438.10 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.10
  store double %polly.access.call1435.load.10, double* %polly.access.Packed_MemRef_call1284438.10, align 8
  %polly.access.add.call1434.11 = add nuw nsw i64 %145, 11
  %polly.access.call1435.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.11
  %polly.access.call1435.load.11 = load double, double* %polly.access.call1435.11, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.11 = add nsw i64 %143, 13200
  %polly.access.Packed_MemRef_call1284438.11 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.11
  store double %polly.access.call1435.load.11, double* %polly.access.Packed_MemRef_call1284438.11, align 8
  %polly.access.add.call1434.12 = add nuw nsw i64 %145, 12
  %polly.access.call1435.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.12
  %polly.access.call1435.load.12 = load double, double* %polly.access.call1435.12, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.12 = add nsw i64 %143, 14400
  %polly.access.Packed_MemRef_call1284438.12 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.12
  store double %polly.access.call1435.load.12, double* %polly.access.Packed_MemRef_call1284438.12, align 8
  %polly.access.add.call1434.13 = add nuw nsw i64 %145, 13
  %polly.access.call1435.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.13
  %polly.access.call1435.load.13 = load double, double* %polly.access.call1435.13, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.13 = add nsw i64 %143, 15600
  %polly.access.Packed_MemRef_call1284438.13 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.13
  store double %polly.access.call1435.load.13, double* %polly.access.Packed_MemRef_call1284438.13, align 8
  %polly.access.add.call1434.14 = add nuw nsw i64 %145, 14
  %polly.access.call1435.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.14
  %polly.access.call1435.load.14 = load double, double* %polly.access.call1435.14, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.14 = add nsw i64 %143, 16800
  %polly.access.Packed_MemRef_call1284438.14 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.14
  store double %polly.access.call1435.load.14, double* %polly.access.Packed_MemRef_call1284438.14, align 8
  %polly.access.add.call1434.15 = add nuw nsw i64 %145, 15
  %polly.access.call1435.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.15
  %polly.access.call1435.load.15 = load double, double* %polly.access.call1435.15, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.15 = add nsw i64 %143, 18000
  %polly.access.Packed_MemRef_call1284438.15 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.15
  store double %polly.access.call1435.load.15, double* %polly.access.Packed_MemRef_call1284438.15, align 8
  %polly.access.add.call1434.16 = add nuw nsw i64 %145, 16
  %polly.access.call1435.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.16
  %polly.access.call1435.load.16 = load double, double* %polly.access.call1435.16, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.16 = add nsw i64 %143, 19200
  %polly.access.Packed_MemRef_call1284438.16 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.16
  store double %polly.access.call1435.load.16, double* %polly.access.Packed_MemRef_call1284438.16, align 8
  %polly.access.add.call1434.17 = add nuw nsw i64 %145, 17
  %polly.access.call1435.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.17
  %polly.access.call1435.load.17 = load double, double* %polly.access.call1435.17, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.17 = add nsw i64 %143, 20400
  %polly.access.Packed_MemRef_call1284438.17 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.17
  store double %polly.access.call1435.load.17, double* %polly.access.Packed_MemRef_call1284438.17, align 8
  %polly.access.add.call1434.18 = add nuw nsw i64 %145, 18
  %polly.access.call1435.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.18
  %polly.access.call1435.load.18 = load double, double* %polly.access.call1435.18, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.18 = add nsw i64 %143, 21600
  %polly.access.Packed_MemRef_call1284438.18 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.18
  store double %polly.access.call1435.load.18, double* %polly.access.Packed_MemRef_call1284438.18, align 8
  %polly.access.add.call1434.19 = add nuw nsw i64 %145, 19
  %polly.access.call1435.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.19
  %polly.access.call1435.load.19 = load double, double* %polly.access.call1435.19, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.19 = add nsw i64 %143, 22800
  %polly.access.Packed_MemRef_call1284438.19 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.19
  store double %polly.access.call1435.load.19, double* %polly.access.Packed_MemRef_call1284438.19, align 8
  br label %polly.loop_exit441

polly.loop_exit441:                               ; preds = %polly.loop_exit448.loopexit.us, %polly.loop_header403.split, %polly.loop_header410.preheader, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 3
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 1
  br i1 %polly.loop_cond409, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header439.preheader:                   ; preds = %polly.merge429.us
  %148 = mul i64 %144, 8000
  %149 = mul i64 %144, 9600
  br i1 %polly.loop_guard4201082, label %polly.loop_header439.us, label %polly.loop_exit441

polly.loop_header439.us:                          ; preds = %polly.loop_header439.preheader, %polly.loop_exit448.loopexit.us
  %polly.indvar442.us = phi i64 [ %polly.indvar_next443.us, %polly.loop_exit448.loopexit.us ], [ 0, %polly.loop_header439.preheader ]
  %150 = add nuw nsw i64 %polly.indvar442.us, %135
  %polly.access.mul.Packed_MemRef_call1284453.us = mul nuw nsw i64 %polly.indvar442.us, 1200
  %151 = shl i64 %150, 3
  %152 = add i64 %151, %148
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %152
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284453.us, %143
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us ]
  %153 = add nuw nsw i64 %polly.indvar450.us, %136
  %polly.access.add.Packed_MemRef_call1284454.us = add nuw nsw i64 %polly.indvar450.us, %polly.access.mul.Packed_MemRef_call1284453.us
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %154 = mul nuw nsw i64 %153, 8000
  %155 = add nuw nsw i64 %154, %151
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %155
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %156 = shl i64 %153, 3
  %157 = add i64 %156, %149
  %scevgep467.us = getelementptr i8, i8* %call, i64 %157
  %scevgep467468.us = bitcast i8* %scevgep467.us to double*
  %_p_scalar_469.us = load double, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_469.us
  store double %p_add42.i79.us, double* %scevgep467468.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1013.not = icmp eq i64 %polly.indvar450.us, %smin1012
  br i1 %exitcond1013.not, label %polly.loop_exit448.loopexit.us, label %polly.loop_header446.us

polly.loop_exit448.loopexit.us:                   ; preds = %polly.loop_header446.us
  %polly.indvar_next443.us = add nuw nsw i64 %polly.indvar442.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next443.us, 20
  br i1 %exitcond1014.not, label %polly.loop_exit441, label %polly.loop_header439.us

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit582
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar561, 9600
  %scevgep570 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1166 = icmp ult i64 %158, 4
  br i1 %min.iters.check1166, label %polly.loop_header564.preheader, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header558
  %n.vec1169 = and i64 %158, -4
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1165 ]
  %160 = shl nuw nsw i64 %index1170, 3
  %161 = getelementptr i8, i8* %scevgep570, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1174 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !84, !noalias !86
  %163 = fmul fast <4 x double> %wide.load1174, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !84, !noalias !86
  %index.next1171 = add i64 %index1170, 4
  %165 = icmp eq i64 %index.next1171, %n.vec1169
  br i1 %165, label %middle.block1163, label %vector.body1165, !llvm.loop !90

middle.block1163:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %158, %n.vec1169
  br i1 %cmp.n1173, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1163
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1169, %middle.block1163 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1163
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next562, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1046.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  br label %polly.loop_header574

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %166
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1045.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit582
  %indvars.iv1040 = phi i64 [ 1, %polly.loop_header574.preheader ], [ %indvars.iv.next1041, %polly.loop_exit582 ]
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1029, %polly.loop_exit582 ]
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1024, %polly.loop_exit582 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit582 ]
  %167 = udiv i64 %indvars.iv1040, 25
  %168 = mul nsw i64 %polly.indvar577, -4
  %169 = shl nsw i64 %polly.indvar577, 2
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit589
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -4
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 4
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 2
  %exitcond1044.not = icmp eq i64 %polly.indvar_next578, 300
  br i1 %exitcond1044.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_exit589, %polly.loop_header574
  %polly.indvar583 = phi i64 [ 0, %polly.loop_header574 ], [ %polly.indvar_next584, %polly.loop_exit589 ]
  %170 = mul nuw nsw i64 %polly.indvar583, 20
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next584, 50
  br i1 %exitcond1043.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header580
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit596 ], [ %indvars.iv1028, %polly.loop_header580 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit596 ], [ %indvars.iv1023, %polly.loop_header580 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header580 ]
  %171 = mul nuw nsw i64 %polly.indvar590, 50
  %172 = add nsw i64 %171, %168
  %173 = icmp sgt i64 %172, 0
  %174 = select i1 %173, i64 %172, i64 0
  %polly.loop_guard597 = icmp slt i64 %174, 4
  br i1 %polly.loop_guard597, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1027 = call i64 @llvm.smax.i64(i64 %indvars.iv1025, i64 0)
  %175 = add i64 %smax1027, %indvars.iv1030
  %176 = sub nsw i64 %169, %171
  %177 = add nuw nsw i64 %171, 50
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 50
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -50
  %exitcond1042.not = icmp eq i64 %polly.indvar590, %167
  br i1 %exitcond1042.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1032 = phi i64 [ %175, %polly.loop_header594.preheader ], [ %indvars.iv.next1033, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %174, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 49)
  %178 = add nsw i64 %polly.indvar598, %176
  %polly.loop_guard6111083 = icmp sgt i64 %178, -1
  %179 = add nuw nsw i64 %polly.indvar598, %169
  %.not868 = icmp ult i64 %179, %177
  %polly.access.mul.call1624 = mul nsw i64 %179, 1000
  %180 = add nuw i64 %polly.access.mul.call1624, %170
  br i1 %polly.loop_guard6111083, label %polly.loop_header601.us, label %polly.loop_header594.split

polly.loop_header601.us:                          ; preds = %polly.loop_header594, %polly.merge620.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.merge620.us ], [ 0, %polly.loop_header594 ]
  %181 = add nuw nsw i64 %polly.indvar604.us, %170
  %polly.access.mul.Packed_MemRef_call1475.us = mul nuw nsw i64 %polly.indvar604.us, 1200
  br label %polly.loop_header608.us

polly.loop_header608.us:                          ; preds = %polly.loop_header601.us, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header601.us ]
  %182 = add nuw nsw i64 %polly.indvar612.us, %171
  %polly.access.mul.call1616.us = mul nuw nsw i64 %182, 1000
  %polly.access.add.call1617.us = add nuw nsw i64 %181, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us = add nuw nsw i64 %polly.indvar612.us, %polly.access.mul.Packed_MemRef_call1475.us
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar612.us, %smin1037
  br i1 %exitcond1035.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.add.call1625.us = add nuw nsw i64 %180, %polly.indvar604.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475.us, %178
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.merge620.us

polly.merge620.us:                                ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next605.us, 20
  br i1 %exitcond1036.not, label %polly.loop_header630.preheader, label %polly.loop_header601.us

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %.not868, label %polly.merge620.us, label %polly.then621.us

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %.not868, label %polly.loop_exit632, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header594.split
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1665, i64 %180
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1475629 = getelementptr double, double* %Packed_MemRef_call1475, i64 %178
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1475629, align 8
  %polly.access.add.call1625.1 = or i64 %180, 1
  %polly.access.call1626.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.1
  %polly.access.call1626.load.1 = load double, double* %polly.access.call1626.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.1 = add nsw i64 %178, 1200
  %polly.access.Packed_MemRef_call1475629.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.1
  store double %polly.access.call1626.load.1, double* %polly.access.Packed_MemRef_call1475629.1, align 8
  %polly.access.add.call1625.2 = or i64 %180, 2
  %polly.access.call1626.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.2
  %polly.access.call1626.load.2 = load double, double* %polly.access.call1626.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.2 = add nsw i64 %178, 2400
  %polly.access.Packed_MemRef_call1475629.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.2
  store double %polly.access.call1626.load.2, double* %polly.access.Packed_MemRef_call1475629.2, align 8
  %polly.access.add.call1625.3 = or i64 %180, 3
  %polly.access.call1626.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.3
  %polly.access.call1626.load.3 = load double, double* %polly.access.call1626.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.3 = add nsw i64 %178, 3600
  %polly.access.Packed_MemRef_call1475629.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.3
  store double %polly.access.call1626.load.3, double* %polly.access.Packed_MemRef_call1475629.3, align 8
  %polly.access.add.call1625.4 = add nuw nsw i64 %180, 4
  %polly.access.call1626.4 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.4
  %polly.access.call1626.load.4 = load double, double* %polly.access.call1626.4, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.4 = add nsw i64 %178, 4800
  %polly.access.Packed_MemRef_call1475629.4 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.4
  store double %polly.access.call1626.load.4, double* %polly.access.Packed_MemRef_call1475629.4, align 8
  %polly.access.add.call1625.5 = add nuw nsw i64 %180, 5
  %polly.access.call1626.5 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.5
  %polly.access.call1626.load.5 = load double, double* %polly.access.call1626.5, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.5 = add nsw i64 %178, 6000
  %polly.access.Packed_MemRef_call1475629.5 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.5
  store double %polly.access.call1626.load.5, double* %polly.access.Packed_MemRef_call1475629.5, align 8
  %polly.access.add.call1625.6 = add nuw nsw i64 %180, 6
  %polly.access.call1626.6 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.6
  %polly.access.call1626.load.6 = load double, double* %polly.access.call1626.6, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.6 = add nsw i64 %178, 7200
  %polly.access.Packed_MemRef_call1475629.6 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.6
  store double %polly.access.call1626.load.6, double* %polly.access.Packed_MemRef_call1475629.6, align 8
  %polly.access.add.call1625.7 = add nuw nsw i64 %180, 7
  %polly.access.call1626.7 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.7
  %polly.access.call1626.load.7 = load double, double* %polly.access.call1626.7, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.7 = add nsw i64 %178, 8400
  %polly.access.Packed_MemRef_call1475629.7 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.7
  store double %polly.access.call1626.load.7, double* %polly.access.Packed_MemRef_call1475629.7, align 8
  %polly.access.add.call1625.8 = add nuw nsw i64 %180, 8
  %polly.access.call1626.8 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.8
  %polly.access.call1626.load.8 = load double, double* %polly.access.call1626.8, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.8 = add nsw i64 %178, 9600
  %polly.access.Packed_MemRef_call1475629.8 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.8
  store double %polly.access.call1626.load.8, double* %polly.access.Packed_MemRef_call1475629.8, align 8
  %polly.access.add.call1625.9 = add nuw nsw i64 %180, 9
  %polly.access.call1626.9 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.9
  %polly.access.call1626.load.9 = load double, double* %polly.access.call1626.9, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.9 = add nsw i64 %178, 10800
  %polly.access.Packed_MemRef_call1475629.9 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.9
  store double %polly.access.call1626.load.9, double* %polly.access.Packed_MemRef_call1475629.9, align 8
  %polly.access.add.call1625.10 = add nuw nsw i64 %180, 10
  %polly.access.call1626.10 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.10
  %polly.access.call1626.load.10 = load double, double* %polly.access.call1626.10, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.10 = add nsw i64 %178, 12000
  %polly.access.Packed_MemRef_call1475629.10 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.10
  store double %polly.access.call1626.load.10, double* %polly.access.Packed_MemRef_call1475629.10, align 8
  %polly.access.add.call1625.11 = add nuw nsw i64 %180, 11
  %polly.access.call1626.11 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.11
  %polly.access.call1626.load.11 = load double, double* %polly.access.call1626.11, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.11 = add nsw i64 %178, 13200
  %polly.access.Packed_MemRef_call1475629.11 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.11
  store double %polly.access.call1626.load.11, double* %polly.access.Packed_MemRef_call1475629.11, align 8
  %polly.access.add.call1625.12 = add nuw nsw i64 %180, 12
  %polly.access.call1626.12 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.12
  %polly.access.call1626.load.12 = load double, double* %polly.access.call1626.12, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.12 = add nsw i64 %178, 14400
  %polly.access.Packed_MemRef_call1475629.12 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.12
  store double %polly.access.call1626.load.12, double* %polly.access.Packed_MemRef_call1475629.12, align 8
  %polly.access.add.call1625.13 = add nuw nsw i64 %180, 13
  %polly.access.call1626.13 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.13
  %polly.access.call1626.load.13 = load double, double* %polly.access.call1626.13, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.13 = add nsw i64 %178, 15600
  %polly.access.Packed_MemRef_call1475629.13 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.13
  store double %polly.access.call1626.load.13, double* %polly.access.Packed_MemRef_call1475629.13, align 8
  %polly.access.add.call1625.14 = add nuw nsw i64 %180, 14
  %polly.access.call1626.14 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.14
  %polly.access.call1626.load.14 = load double, double* %polly.access.call1626.14, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.14 = add nsw i64 %178, 16800
  %polly.access.Packed_MemRef_call1475629.14 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.14
  store double %polly.access.call1626.load.14, double* %polly.access.Packed_MemRef_call1475629.14, align 8
  %polly.access.add.call1625.15 = add nuw nsw i64 %180, 15
  %polly.access.call1626.15 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.15
  %polly.access.call1626.load.15 = load double, double* %polly.access.call1626.15, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.15 = add nsw i64 %178, 18000
  %polly.access.Packed_MemRef_call1475629.15 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.15
  store double %polly.access.call1626.load.15, double* %polly.access.Packed_MemRef_call1475629.15, align 8
  %polly.access.add.call1625.16 = add nuw nsw i64 %180, 16
  %polly.access.call1626.16 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.16
  %polly.access.call1626.load.16 = load double, double* %polly.access.call1626.16, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.16 = add nsw i64 %178, 19200
  %polly.access.Packed_MemRef_call1475629.16 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.16
  store double %polly.access.call1626.load.16, double* %polly.access.Packed_MemRef_call1475629.16, align 8
  %polly.access.add.call1625.17 = add nuw nsw i64 %180, 17
  %polly.access.call1626.17 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.17
  %polly.access.call1626.load.17 = load double, double* %polly.access.call1626.17, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.17 = add nsw i64 %178, 20400
  %polly.access.Packed_MemRef_call1475629.17 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.17
  store double %polly.access.call1626.load.17, double* %polly.access.Packed_MemRef_call1475629.17, align 8
  %polly.access.add.call1625.18 = add nuw nsw i64 %180, 18
  %polly.access.call1626.18 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.18
  %polly.access.call1626.load.18 = load double, double* %polly.access.call1626.18, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.18 = add nsw i64 %178, 21600
  %polly.access.Packed_MemRef_call1475629.18 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.18
  store double %polly.access.call1626.load.18, double* %polly.access.Packed_MemRef_call1475629.18, align 8
  %polly.access.add.call1625.19 = add nuw nsw i64 %180, 19
  %polly.access.call1626.19 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.19
  %polly.access.call1626.load.19 = load double, double* %polly.access.call1626.19, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.19 = add nsw i64 %178, 22800
  %polly.access.Packed_MemRef_call1475629.19 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.19
  store double %polly.access.call1626.load.19, double* %polly.access.Packed_MemRef_call1475629.19, align 8
  br label %polly.loop_exit632

polly.loop_exit632:                               ; preds = %polly.loop_exit639.loopexit.us, %polly.loop_header594.split, %polly.loop_header601.preheader, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600 = icmp ult i64 %polly.indvar598, 3
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  br i1 %polly.loop_cond600, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header630.preheader:                   ; preds = %polly.merge620.us
  %183 = mul i64 %179, 8000
  %184 = mul i64 %179, 9600
  br i1 %polly.loop_guard6111083, label %polly.loop_header630.us, label %polly.loop_exit632

polly.loop_header630.us:                          ; preds = %polly.loop_header630.preheader, %polly.loop_exit639.loopexit.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_exit639.loopexit.us ], [ 0, %polly.loop_header630.preheader ]
  %185 = add nuw nsw i64 %polly.indvar633.us, %170
  %polly.access.mul.Packed_MemRef_call1475644.us = mul nuw nsw i64 %polly.indvar633.us, 1200
  %186 = shl i64 %185, 3
  %187 = add i64 %186, %183
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %187
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1475644.us, %178
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us ]
  %188 = add nuw nsw i64 %polly.indvar641.us, %171
  %polly.access.add.Packed_MemRef_call1475645.us = add nuw nsw i64 %polly.indvar641.us, %polly.access.mul.Packed_MemRef_call1475644.us
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %189 = mul nuw nsw i64 %188, 8000
  %190 = add nuw nsw i64 %189, %186
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %190
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %184
  %scevgep658.us = getelementptr i8, i8* %call, i64 %192
  %scevgep658659.us = bitcast i8* %scevgep658.us to double*
  %_p_scalar_660.us = load double, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_660.us
  store double %p_add42.i.us, double* %scevgep658659.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us = add nuw nsw i64 %polly.indvar641.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar641.us, %smin1037
  br i1 %exitcond1038.not, label %polly.loop_exit639.loopexit.us, label %polly.loop_header637.us

polly.loop_exit639.loopexit.us:                   ; preds = %polly.loop_header637.us
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next634.us, 20
  br i1 %exitcond1039.not, label %polly.loop_exit632, label %polly.loop_header630.us

polly.loop_header787:                             ; preds = %entry, %polly.loop_exit795
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit795 ], [ 0, %entry ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %entry ]
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 -1168)
  %193 = shl nsw i64 %polly.indvar790, 5
  %194 = add nsw i64 %smin1073, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1076.not, label %polly.loop_header814, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %195 = mul nsw i64 %polly.indvar796, -32
  %smin = call i64 @llvm.smin.i64(i64 %195, i64 -1168)
  %196 = add nsw i64 %smin, 1200
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -1168)
  %197 = shl nsw i64 %polly.indvar796, 5
  %198 = add nsw i64 %smin1069, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1075.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %polly.indvar802 = phi i64 [ 0, %polly.loop_header793 ], [ %polly.indvar_next803, %polly.loop_exit807 ]
  %199 = add nuw nsw i64 %polly.indvar802, %193
  %200 = trunc i64 %199 to i32
  %201 = mul nuw nsw i64 %199, 9600
  %min.iters.check = icmp eq i64 %196, 0
  br i1 %min.iters.check, label %polly.loop_header805, label %vector.ph1105

vector.ph1105:                                    ; preds = %polly.loop_header799
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %197, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %202 = add nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %203 = trunc <4 x i64> %202 to <4 x i32>
  %204 = mul <4 x i32> %broadcast.splat1115, %203
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 1200, i32 1200, i32 1200, i32 1200>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %209 = extractelement <4 x i64> %202, i32 0
  %210 = shl i64 %209, 3
  %211 = add nuw nsw i64 %210, %201
  %212 = getelementptr i8, i8* %call, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %208, <4 x double>* %213, align 8, !alias.scope !94, !noalias !96
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %214 = icmp eq i64 %index.next1107, %196
  br i1 %214, label %polly.loop_exit807, label %vector.body1104, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1104, %polly.loop_header805
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar802, %194
  br i1 %exitcond1074.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_header799, %polly.loop_header805
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_header805 ], [ 0, %polly.loop_header799 ]
  %215 = add nuw nsw i64 %polly.indvar808, %197
  %216 = trunc i64 %215 to i32
  %217 = mul i32 %216, %200
  %218 = add i32 %217, 3
  %219 = urem i32 %218, 1200
  %p_conv31.i = sitofp i32 %219 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %220 = shl i64 %215, 3
  %221 = add nuw nsw i64 %220, %201
  %scevgep811 = getelementptr i8, i8* %call, i64 %221
  %scevgep811812 = bitcast i8* %scevgep811 to double*
  store double %p_div33.i, double* %scevgep811812, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar808, %198
  br i1 %exitcond1070.not, label %polly.loop_exit807, label %polly.loop_header805, !llvm.loop !100

polly.loop_header814:                             ; preds = %polly.loop_exit795, %polly.loop_exit822
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %222 = shl nsw i64 %polly.indvar817, 5
  %223 = add nsw i64 %smin1063, 1199
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next818, 38
  br i1 %exitcond1066.not, label %polly.loop_header840, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %224 = mul nsw i64 %polly.indvar823, -32
  %smin1119 = call i64 @llvm.smin.i64(i64 %224, i64 -968)
  %225 = add nsw i64 %smin1119, 1000
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -968)
  %226 = shl nsw i64 %polly.indvar823, 5
  %227 = add nsw i64 %smin1059, 999
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond1065.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %polly.indvar829 = phi i64 [ 0, %polly.loop_header820 ], [ %polly.indvar_next830, %polly.loop_exit834 ]
  %228 = add nuw nsw i64 %polly.indvar829, %222
  %229 = trunc i64 %228 to i32
  %230 = mul nuw nsw i64 %228, 8000
  %min.iters.check1120 = icmp eq i64 %225, 0
  br i1 %min.iters.check1120, label %polly.loop_header832, label %vector.ph1121

vector.ph1121:                                    ; preds = %polly.loop_header826
  %broadcast.splatinsert1130 = insertelement <4 x i64> poison, i64 %226, i32 0
  %broadcast.splat1131 = shufflevector <4 x i64> %broadcast.splatinsert1130, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %229, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1125, %vector.body1118 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1121 ], [ %vec.ind.next1129, %vector.body1118 ]
  %231 = add nuw nsw <4 x i64> %vec.ind1128, %broadcast.splat1131
  %232 = trunc <4 x i64> %231 to <4 x i32>
  %233 = mul <4 x i32> %broadcast.splat1133, %232
  %234 = add <4 x i32> %233, <i32 2, i32 2, i32 2, i32 2>
  %235 = urem <4 x i32> %234, <i32 1000, i32 1000, i32 1000, i32 1000>
  %236 = sitofp <4 x i32> %235 to <4 x double>
  %237 = fmul fast <4 x double> %236, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %238 = extractelement <4 x i64> %231, i32 0
  %239 = shl i64 %238, 3
  %240 = add nuw nsw i64 %239, %230
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %237, <4 x double>* %242, align 8, !alias.scope !98, !noalias !101
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %243 = icmp eq i64 %index.next1125, %225
  br i1 %243, label %polly.loop_exit834, label %vector.body1118, !llvm.loop !102

polly.loop_exit834:                               ; preds = %vector.body1118, %polly.loop_header832
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar829, %223
  br i1 %exitcond1064.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_header826, %polly.loop_header832
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_header832 ], [ 0, %polly.loop_header826 ]
  %244 = add nuw nsw i64 %polly.indvar835, %226
  %245 = trunc i64 %244 to i32
  %246 = mul i32 %245, %229
  %247 = add i32 %246, 2
  %248 = urem i32 %247, 1000
  %p_conv10.i = sitofp i32 %248 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %249 = shl i64 %244, 3
  %250 = add nuw nsw i64 %249, %230
  %scevgep838 = getelementptr i8, i8* %call2, i64 %250
  %scevgep838839 = bitcast i8* %scevgep838 to double*
  store double %p_div12.i, double* %scevgep838839, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar835, %227
  br i1 %exitcond1060.not, label %polly.loop_exit834, label %polly.loop_header832, !llvm.loop !103

polly.loop_header840:                             ; preds = %polly.loop_exit822, %polly.loop_exit848
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 -1168)
  %251 = shl nsw i64 %polly.indvar843, 5
  %252 = add nsw i64 %smin1053, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1052 = add nsw i64 %indvars.iv1051, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1056.not, label %init_array.exit, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %253 = mul nsw i64 %polly.indvar849, -32
  %smin1137 = call i64 @llvm.smin.i64(i64 %253, i64 -968)
  %254 = add nsw i64 %smin1137, 1000
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -968)
  %255 = shl nsw i64 %polly.indvar849, 5
  %256 = add nsw i64 %smin1049, 999
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -32
  %exitcond1055.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond1055.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %257 = add nuw nsw i64 %polly.indvar855, %251
  %258 = trunc i64 %257 to i32
  %259 = mul nuw nsw i64 %257, 8000
  %min.iters.check1138 = icmp eq i64 %254, 0
  br i1 %min.iters.check1138, label %polly.loop_header858, label %vector.ph1139

vector.ph1139:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %255, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1136 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1147, %vector.body1136 ]
  %260 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = mul <4 x i32> %broadcast.splat1151, %261
  %263 = add <4 x i32> %262, <i32 1, i32 1, i32 1, i32 1>
  %264 = urem <4 x i32> %263, <i32 1200, i32 1200, i32 1200, i32 1200>
  %265 = sitofp <4 x i32> %264 to <4 x double>
  %266 = fmul fast <4 x double> %265, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %267 = extractelement <4 x i64> %260, i32 0
  %268 = shl i64 %267, 3
  %269 = add nuw nsw i64 %268, %259
  %270 = getelementptr i8, i8* %call1, i64 %269
  %271 = bitcast i8* %270 to <4 x double>*
  store <4 x double> %266, <4 x double>* %271, align 8, !alias.scope !97, !noalias !104
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %272 = icmp eq i64 %index.next1143, %254
  br i1 %272, label %polly.loop_exit860, label %vector.body1136, !llvm.loop !105

polly.loop_exit860:                               ; preds = %vector.body1136, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar855, %252
  br i1 %exitcond1054.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %273 = add nuw nsw i64 %polly.indvar861, %255
  %274 = trunc i64 %273 to i32
  %275 = mul i32 %274, %258
  %276 = add i32 %275, 1
  %277 = urem i32 %276, 1200
  %p_conv.i = sitofp i32 %277 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %278 = shl i64 %273, 3
  %279 = add nuw nsw i64 %278, %259
  %scevgep865 = getelementptr i8, i8* %call1, i64 %279
  %scevgep865866 = bitcast i8* %scevgep865 to double*
  store double %p_div.i, double* %scevgep865866, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar861, %256
  br i1 %exitcond1050.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !106
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 4}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !71, !13}
!101 = !{!97, !94}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !71, !13}
!104 = !{!98, !94}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !71, !13}
