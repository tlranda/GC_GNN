; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4608.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4608.c"
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
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
  %indvars.iv990 = phi i64 [ 24, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %indvars.iv979 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next980, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = lshr i64 %indvars.iv990, 7
  %98 = mul nsw i64 %polly.indvar202, -50
  %99 = mul nuw nsw i64 %polly.indvar202, 50
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 50
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 25
  %exitcond994.not = icmp eq i64 %polly.indvar_next203, 24
  br i1 %exitcond994.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %100 = shl nsw i64 %polly.indvar208, 2
  %101 = or i64 %100, 1
  %102 = or i64 %100, 2
  %103 = or i64 %100, 3
  %104 = shl i64 %polly.indvar208, 5
  %105 = shl i64 %polly.indvar208, 5
  %106 = or i64 %105, 8
  %107 = shl i64 %polly.indvar208, 5
  %108 = or i64 %107, 16
  %109 = shl i64 %polly.indvar208, 5
  %110 = or i64 %109, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond993.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond993.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv981 = phi i64 [ %indvars.iv.next982, %polly.loop_exit219 ], [ %indvars.iv979, %polly.loop_header205 ]
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %111 = shl nsw i64 %polly.indvar214, 8
  %112 = add nsw i64 %111, %98
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %polly.loop_guard = icmp slt i64 %114, 50
  br i1 %polly.loop_guard, label %polly.loop_header217.preheader, label %polly.loop_exit219

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv977, i64 0)
  %115 = add i64 %smax, %indvars.iv981
  %116 = sub nsw i64 %99, %111
  %117 = add nuw nsw i64 %111, 256
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, 256
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, -256
  %exitcond992.not = icmp eq i64 %polly.indvar214, %97
  br i1 %exitcond992.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv983 = phi i64 [ %115, %polly.loop_header217.preheader ], [ %indvars.iv.next984, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %114, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv983, i64 255)
  %118 = add nsw i64 %polly.indvar220, %116
  %polly.loop_guard2331081 = icmp sgt i64 %118, -1
  %119 = add nuw nsw i64 %polly.indvar220, %99
  %.not = icmp ult i64 %119, %117
  %polly.access.mul.call1242 = mul nsw i64 %119, 1000
  %120 = add nuw i64 %polly.access.mul.call1242, %100
  br i1 %polly.loop_guard2331081, label %polly.loop_header230.us, label %polly.loop_header217.split

polly.loop_header230.us:                          ; preds = %polly.loop_header217, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header217 ]
  %121 = add nuw nsw i64 %polly.indvar234.us, %111
  %polly.access.mul.call1238.us = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %100, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar234.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar234.us, %smin987
  br i1 %exitcond985.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1665, i64 %120
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %118
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.loop_header230.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.loop_header230.us.1.preheader, label %polly.then.us

polly.loop_header230.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header230.us.1

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1665, i64 %120
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %118
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.access.add.call1243.1 = or i64 %120, 1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %118, 1200
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.access.add.call1243.2 = or i64 %120, 2
  %polly.access.call1244.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.2
  %polly.access.call1244.load.2 = load double, double* %polly.access.call1244.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.2 = add nsw i64 %118, 2400
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  store double %polly.access.call1244.load.2, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %polly.access.add.call1243.3 = or i64 %120, 3
  %polly.access.call1244.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.3
  %polly.access.call1244.load.3 = load double, double* %polly.access.call1244.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.3 = add nsw i64 %118, 3600
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  store double %polly.access.call1244.load.3, double* %polly.access.Packed_MemRef_call1247.3, align 8
  br label %polly.loop_exit250

polly.loop_exit250:                               ; preds = %polly.loop_header255.us.3, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222 = icmp ult i64 %polly.indvar220, 49
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  br i1 %polly.loop_cond222, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %122 = mul i64 %119, 8000
  %123 = mul i64 %119, 9600
  br i1 %polly.loop_guard2331081, label %polly.loop_header248.us.preheader, label %polly.loop_exit250

polly.loop_header248.us.preheader:                ; preds = %polly.loop_header248.preheader
  %124 = add i64 %104, %122
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %124
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %118
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us.preheader, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us.preheader ]
  %125 = add nuw nsw i64 %polly.indvar259.us, %111
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar259.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %126 = mul nuw nsw i64 %125, 8000
  %127 = add nuw nsw i64 %126, %104
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %127
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %128 = shl i64 %125, 3
  %129 = add i64 %128, %123
  %scevgep276.us = getelementptr i8, i8* %call, i64 %129
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
  %130 = add i64 %106, %122
  %scevgep266.us.1 = getelementptr i8, i8* %call2, i64 %130
  %scevgep266267.us.1 = bitcast i8* %scevgep266.us.1 to double*
  %_p_scalar_268.us.1 = load double, double* %scevgep266267.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.1 = add nsw i64 %118, 1200
  %polly.access.Packed_MemRef_call1274.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.1
  %_p_scalar_275.us.1 = load double, double* %polly.access.Packed_MemRef_call1274.us.1, align 8
  br label %polly.loop_header255.us.1

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header367

polly.exiting282:                                 ; preds = %polly.loop_exit391
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1190 = phi i64 [ %indvar.next1191, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %131 = add i64 %indvar1190, 1
  %132 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %132
  %min.iters.check1192 = icmp ult i64 %131, 4
  br i1 %min.iters.check1192, label %polly.loop_header373.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header367
  %n.vec1195 = and i64 %131, -4
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1189 ]
  %133 = shl nuw nsw i64 %index1196, 3
  %134 = getelementptr i8, i8* %scevgep379, i64 %133
  %135 = bitcast i8* %134 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %135, align 8, !alias.scope !74, !noalias !76
  %136 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %137 = bitcast i8* %134 to <4 x double>*
  store <4 x double> %136, <4 x double>* %137, align 8, !alias.scope !74, !noalias !76
  %index.next1197 = add i64 %index1196, 4
  %138 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %138, label %middle.block1187, label %vector.body1189, !llvm.loop !80

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1199 = icmp eq i64 %131, %n.vec1195
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
  %139 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %139
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1020.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1015 = phi i64 [ 24, %polly.loop_header383.preheader ], [ %indvars.iv.next1016, %polly.loop_exit391 ]
  %indvars.iv1003 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1004, %polly.loop_exit391 ]
  %indvars.iv998 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next999, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %140 = lshr i64 %indvars.iv1015, 7
  %141 = mul nsw i64 %polly.indvar386, -50
  %142 = mul nuw nsw i64 %polly.indvar386, 50
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit398
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, -50
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 50
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 25
  %exitcond1019.not = icmp eq i64 %polly.indvar_next387, 24
  br i1 %exitcond1019.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit398, %polly.loop_header383
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header383 ], [ %polly.indvar_next393, %polly.loop_exit398 ]
  %143 = shl nsw i64 %polly.indvar392, 2
  %144 = or i64 %143, 1
  %145 = or i64 %143, 2
  %146 = or i64 %143, 3
  %147 = shl i64 %polly.indvar392, 5
  %148 = shl i64 %polly.indvar392, 5
  %149 = or i64 %148, 8
  %150 = shl i64 %polly.indvar392, 5
  %151 = or i64 %150, 16
  %152 = shl i64 %polly.indvar392, 5
  %153 = or i64 %152, 24
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_exit405
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next393, 250
  br i1 %exitcond1018.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header396:                             ; preds = %polly.loop_exit405, %polly.loop_header389
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit405 ], [ %indvars.iv1003, %polly.loop_header389 ]
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit405 ], [ %indvars.iv998, %polly.loop_header389 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit405 ], [ 0, %polly.loop_header389 ]
  %154 = shl nsw i64 %polly.indvar399, 8
  %155 = add nsw i64 %154, %141
  %156 = icmp sgt i64 %155, 0
  %157 = select i1 %156, i64 %155, i64 0
  %polly.loop_guard406 = icmp slt i64 %157, 50
  br i1 %polly.loop_guard406, label %polly.loop_header403.preheader, label %polly.loop_exit405

polly.loop_header403.preheader:                   ; preds = %polly.loop_header396
  %smax1002 = call i64 @llvm.smax.i64(i64 %indvars.iv1000, i64 0)
  %158 = add i64 %smax1002, %indvars.iv1005
  %159 = sub nsw i64 %142, %154
  %160 = add nuw nsw i64 %154, 256
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit441, %polly.loop_header396
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next1001 = add nsw i64 %indvars.iv1000, 256
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -256
  %exitcond1017.not = icmp eq i64 %polly.indvar399, %140
  br i1 %exitcond1017.not, label %polly.loop_exit398, label %polly.loop_header396

polly.loop_header403:                             ; preds = %polly.loop_header403.preheader, %polly.loop_exit441
  %indvars.iv1007 = phi i64 [ %158, %polly.loop_header403.preheader ], [ %indvars.iv.next1008, %polly.loop_exit441 ]
  %polly.indvar407 = phi i64 [ %157, %polly.loop_header403.preheader ], [ %polly.indvar_next408, %polly.loop_exit441 ]
  %smin1012 = call i64 @llvm.smin.i64(i64 %indvars.iv1007, i64 255)
  %161 = add nsw i64 %polly.indvar407, %159
  %polly.loop_guard4201082 = icmp sgt i64 %161, -1
  %162 = add nuw nsw i64 %polly.indvar407, %142
  %.not867 = icmp ult i64 %162, %160
  %polly.access.mul.call1433 = mul nsw i64 %162, 1000
  %163 = add nuw i64 %polly.access.mul.call1433, %143
  br i1 %polly.loop_guard4201082, label %polly.loop_header417.us, label %polly.loop_header403.split

polly.loop_header417.us:                          ; preds = %polly.loop_header403, %polly.loop_header417.us
  %polly.indvar421.us = phi i64 [ %polly.indvar_next422.us, %polly.loop_header417.us ], [ 0, %polly.loop_header403 ]
  %164 = add nuw nsw i64 %polly.indvar421.us, %154
  %polly.access.mul.call1425.us = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1426.us = add nuw nsw i64 %143, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.indvar421.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next422.us = add nuw nsw i64 %polly.indvar421.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar421.us, %smin1012
  br i1 %exitcond1010.not, label %polly.cond428.loopexit.us, label %polly.loop_header417.us

polly.then430.us:                                 ; preds = %polly.cond428.loopexit.us
  %polly.access.call1435.us = getelementptr double, double* %polly.access.cast.call1665, i64 %163
  %polly.access.call1435.load.us = load double, double* %polly.access.call1435.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284438.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %161
  store double %polly.access.call1435.load.us, double* %polly.access.Packed_MemRef_call1284438.us, align 8
  br label %polly.loop_header417.us.1.preheader

polly.cond428.loopexit.us:                        ; preds = %polly.loop_header417.us
  br i1 %.not867, label %polly.loop_header417.us.1.preheader, label %polly.then430.us

polly.loop_header417.us.1.preheader:              ; preds = %polly.then430.us, %polly.cond428.loopexit.us
  br label %polly.loop_header417.us.1

polly.loop_header403.split:                       ; preds = %polly.loop_header403
  br i1 %.not867, label %polly.loop_exit441, label %polly.loop_header410.preheader

polly.loop_header410.preheader:                   ; preds = %polly.loop_header403.split
  %polly.access.call1435 = getelementptr double, double* %polly.access.cast.call1665, i64 %163
  %polly.access.call1435.load = load double, double* %polly.access.call1435, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284438 = getelementptr double, double* %Packed_MemRef_call1284, i64 %161
  store double %polly.access.call1435.load, double* %polly.access.Packed_MemRef_call1284438, align 8
  %polly.access.add.call1434.1 = or i64 %163, 1
  %polly.access.call1435.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.1
  %polly.access.call1435.load.1 = load double, double* %polly.access.call1435.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.1 = add nsw i64 %161, 1200
  %polly.access.Packed_MemRef_call1284438.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.1
  store double %polly.access.call1435.load.1, double* %polly.access.Packed_MemRef_call1284438.1, align 8
  %polly.access.add.call1434.2 = or i64 %163, 2
  %polly.access.call1435.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.2
  %polly.access.call1435.load.2 = load double, double* %polly.access.call1435.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.2 = add nsw i64 %161, 2400
  %polly.access.Packed_MemRef_call1284438.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.2
  store double %polly.access.call1435.load.2, double* %polly.access.Packed_MemRef_call1284438.2, align 8
  %polly.access.add.call1434.3 = or i64 %163, 3
  %polly.access.call1435.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.3
  %polly.access.call1435.load.3 = load double, double* %polly.access.call1435.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.3 = add nsw i64 %161, 3600
  %polly.access.Packed_MemRef_call1284438.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.3
  store double %polly.access.call1435.load.3, double* %polly.access.Packed_MemRef_call1284438.3, align 8
  br label %polly.loop_exit441

polly.loop_exit441:                               ; preds = %polly.loop_header446.us.3, %polly.loop_header403.split, %polly.loop_header410.preheader, %polly.loop_header439.preheader
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %polly.loop_cond409 = icmp ult i64 %polly.indvar407, 49
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 1
  br i1 %polly.loop_cond409, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header439.preheader:                   ; preds = %polly.cond428.loopexit.us.3, %polly.then430.us.3
  %165 = mul i64 %162, 8000
  %166 = mul i64 %162, 9600
  br i1 %polly.loop_guard4201082, label %polly.loop_header439.us.preheader, label %polly.loop_exit441

polly.loop_header439.us.preheader:                ; preds = %polly.loop_header439.preheader
  %167 = add i64 %147, %165
  %scevgep457.us = getelementptr i8, i8* %call2, i64 %167
  %scevgep457458.us = bitcast i8* %scevgep457.us to double*
  %_p_scalar_459.us = load double, double* %scevgep457458.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.Packed_MemRef_call1284465.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %161
  %_p_scalar_466.us = load double, double* %polly.access.Packed_MemRef_call1284465.us, align 8
  br label %polly.loop_header446.us

polly.loop_header446.us:                          ; preds = %polly.loop_header439.us.preheader, %polly.loop_header446.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_header446.us ], [ 0, %polly.loop_header439.us.preheader ]
  %168 = add nuw nsw i64 %polly.indvar450.us, %154
  %polly.access.Packed_MemRef_call1284455.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.indvar450.us
  %_p_scalar_456.us = load double, double* %polly.access.Packed_MemRef_call1284455.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_459.us, %_p_scalar_456.us
  %169 = mul nuw nsw i64 %168, 8000
  %170 = add nuw nsw i64 %169, %147
  %scevgep460.us = getelementptr i8, i8* %call2, i64 %170
  %scevgep460461.us = bitcast i8* %scevgep460.us to double*
  %_p_scalar_462.us = load double, double* %scevgep460461.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_466.us, %_p_scalar_462.us
  %171 = shl i64 %168, 3
  %172 = add i64 %171, %166
  %scevgep467.us = getelementptr i8, i8* %call, i64 %172
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
  %173 = add i64 %149, %165
  %scevgep457.us.1 = getelementptr i8, i8* %call2, i64 %173
  %scevgep457458.us.1 = bitcast i8* %scevgep457.us.1 to double*
  %_p_scalar_459.us.1 = load double, double* %scevgep457458.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us.1 = add nsw i64 %161, 1200
  %polly.access.Packed_MemRef_call1284465.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us.1
  %_p_scalar_466.us.1 = load double, double* %polly.access.Packed_MemRef_call1284465.us.1, align 8
  br label %polly.loop_header446.us.1

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header558

polly.exiting473:                                 ; preds = %polly.loop_exit582
  tail call void @free(i8* %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start472 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start472 ]
  %174 = add i64 %indvar, 1
  %175 = mul nuw nsw i64 %polly.indvar561, 9600
  %scevgep570 = getelementptr i8, i8* %call, i64 %175
  %min.iters.check1166 = icmp ult i64 %174, 4
  br i1 %min.iters.check1166, label %polly.loop_header564.preheader, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header558
  %n.vec1169 = and i64 %174, -4
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1165 ]
  %176 = shl nuw nsw i64 %index1170, 3
  %177 = getelementptr i8, i8* %scevgep570, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.load1174 = load <4 x double>, <4 x double>* %178, align 8, !alias.scope !84, !noalias !86
  %179 = fmul fast <4 x double> %wide.load1174, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast i8* %177 to <4 x double>*
  store <4 x double> %179, <4 x double>* %180, align 8, !alias.scope !84, !noalias !86
  %index.next1171 = add i64 %index1170, 4
  %181 = icmp eq i64 %index.next1171, %n.vec1169
  br i1 %181, label %middle.block1163, label %vector.body1165, !llvm.loop !90

middle.block1163:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %174, %n.vec1169
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
  %182 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %182
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond1045.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !91

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit582
  %indvars.iv1040 = phi i64 [ 24, %polly.loop_header574.preheader ], [ %indvars.iv.next1041, %polly.loop_exit582 ]
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1029, %polly.loop_exit582 ]
  %indvars.iv1023 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %indvars.iv.next1024, %polly.loop_exit582 ]
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header574.preheader ], [ %polly.indvar_next578, %polly.loop_exit582 ]
  %183 = lshr i64 %indvars.iv1040, 7
  %184 = mul nsw i64 %polly.indvar577, -50
  %185 = mul nuw nsw i64 %polly.indvar577, 50
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit589
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -50
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 50
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 25
  %exitcond1044.not = icmp eq i64 %polly.indvar_next578, 24
  br i1 %exitcond1044.not, label %polly.exiting473, label %polly.loop_header574

polly.loop_header580:                             ; preds = %polly.loop_exit589, %polly.loop_header574
  %polly.indvar583 = phi i64 [ 0, %polly.loop_header574 ], [ %polly.indvar_next584, %polly.loop_exit589 ]
  %186 = shl nsw i64 %polly.indvar583, 2
  %187 = or i64 %186, 1
  %188 = or i64 %186, 2
  %189 = or i64 %186, 3
  %190 = shl i64 %polly.indvar583, 5
  %191 = shl i64 %polly.indvar583, 5
  %192 = or i64 %191, 8
  %193 = shl i64 %polly.indvar583, 5
  %194 = or i64 %193, 16
  %195 = shl i64 %polly.indvar583, 5
  %196 = or i64 %195, 24
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596
  %polly.indvar_next584 = add nuw nsw i64 %polly.indvar583, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next584, 250
  br i1 %exitcond1043.not, label %polly.loop_exit582, label %polly.loop_header580

polly.loop_header587:                             ; preds = %polly.loop_exit596, %polly.loop_header580
  %indvars.iv1030 = phi i64 [ %indvars.iv.next1031, %polly.loop_exit596 ], [ %indvars.iv1028, %polly.loop_header580 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit596 ], [ %indvars.iv1023, %polly.loop_header580 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header580 ]
  %197 = shl nsw i64 %polly.indvar590, 8
  %198 = add nsw i64 %197, %184
  %199 = icmp sgt i64 %198, 0
  %200 = select i1 %199, i64 %198, i64 0
  %polly.loop_guard597 = icmp slt i64 %200, 50
  br i1 %polly.loop_guard597, label %polly.loop_header594.preheader, label %polly.loop_exit596

polly.loop_header594.preheader:                   ; preds = %polly.loop_header587
  %smax1027 = call i64 @llvm.smax.i64(i64 %indvars.iv1025, i64 0)
  %201 = add i64 %smax1027, %indvars.iv1030
  %202 = sub nsw i64 %185, %197
  %203 = add nuw nsw i64 %197, 256
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit632, %polly.loop_header587
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 256
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -256
  %exitcond1042.not = icmp eq i64 %polly.indvar590, %183
  br i1 %exitcond1042.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header594.preheader, %polly.loop_exit632
  %indvars.iv1032 = phi i64 [ %201, %polly.loop_header594.preheader ], [ %indvars.iv.next1033, %polly.loop_exit632 ]
  %polly.indvar598 = phi i64 [ %200, %polly.loop_header594.preheader ], [ %polly.indvar_next599, %polly.loop_exit632 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 255)
  %204 = add nsw i64 %polly.indvar598, %202
  %polly.loop_guard6111083 = icmp sgt i64 %204, -1
  %205 = add nuw nsw i64 %polly.indvar598, %185
  %.not868 = icmp ult i64 %205, %203
  %polly.access.mul.call1624 = mul nsw i64 %205, 1000
  %206 = add nuw i64 %polly.access.mul.call1624, %186
  br i1 %polly.loop_guard6111083, label %polly.loop_header608.us, label %polly.loop_header594.split

polly.loop_header608.us:                          ; preds = %polly.loop_header594, %polly.loop_header608.us
  %polly.indvar612.us = phi i64 [ %polly.indvar_next613.us, %polly.loop_header608.us ], [ 0, %polly.loop_header594 ]
  %207 = add nuw nsw i64 %polly.indvar612.us, %197
  %polly.access.mul.call1616.us = mul nuw nsw i64 %207, 1000
  %polly.access.add.call1617.us = add nuw nsw i64 %186, %polly.access.mul.call1616.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1475.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.indvar612.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1475.us, align 8
  %polly.indvar_next613.us = add nuw nsw i64 %polly.indvar612.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar612.us, %smin1037
  br i1 %exitcond1035.not, label %polly.cond619.loopexit.us, label %polly.loop_header608.us

polly.then621.us:                                 ; preds = %polly.cond619.loopexit.us
  %polly.access.call1626.us = getelementptr double, double* %polly.access.cast.call1665, i64 %206
  %polly.access.call1626.load.us = load double, double* %polly.access.call1626.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1475629.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %204
  store double %polly.access.call1626.load.us, double* %polly.access.Packed_MemRef_call1475629.us, align 8
  br label %polly.loop_header608.us.1.preheader

polly.cond619.loopexit.us:                        ; preds = %polly.loop_header608.us
  br i1 %.not868, label %polly.loop_header608.us.1.preheader, label %polly.then621.us

polly.loop_header608.us.1.preheader:              ; preds = %polly.then621.us, %polly.cond619.loopexit.us
  br label %polly.loop_header608.us.1

polly.loop_header594.split:                       ; preds = %polly.loop_header594
  br i1 %.not868, label %polly.loop_exit632, label %polly.loop_header601.preheader

polly.loop_header601.preheader:                   ; preds = %polly.loop_header594.split
  %polly.access.call1626 = getelementptr double, double* %polly.access.cast.call1665, i64 %206
  %polly.access.call1626.load = load double, double* %polly.access.call1626, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1475629 = getelementptr double, double* %Packed_MemRef_call1475, i64 %204
  store double %polly.access.call1626.load, double* %polly.access.Packed_MemRef_call1475629, align 8
  %polly.access.add.call1625.1 = or i64 %206, 1
  %polly.access.call1626.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.1
  %polly.access.call1626.load.1 = load double, double* %polly.access.call1626.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.1 = add nsw i64 %204, 1200
  %polly.access.Packed_MemRef_call1475629.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.1
  store double %polly.access.call1626.load.1, double* %polly.access.Packed_MemRef_call1475629.1, align 8
  %polly.access.add.call1625.2 = or i64 %206, 2
  %polly.access.call1626.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.2
  %polly.access.call1626.load.2 = load double, double* %polly.access.call1626.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.2 = add nsw i64 %204, 2400
  %polly.access.Packed_MemRef_call1475629.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.2
  store double %polly.access.call1626.load.2, double* %polly.access.Packed_MemRef_call1475629.2, align 8
  %polly.access.add.call1625.3 = or i64 %206, 3
  %polly.access.call1626.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.3
  %polly.access.call1626.load.3 = load double, double* %polly.access.call1626.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.3 = add nsw i64 %204, 3600
  %polly.access.Packed_MemRef_call1475629.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.3
  store double %polly.access.call1626.load.3, double* %polly.access.Packed_MemRef_call1475629.3, align 8
  br label %polly.loop_exit632

polly.loop_exit632:                               ; preds = %polly.loop_header637.us.3, %polly.loop_header594.split, %polly.loop_header601.preheader, %polly.loop_header630.preheader
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600 = icmp ult i64 %polly.indvar598, 49
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  br i1 %polly.loop_cond600, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header630.preheader:                   ; preds = %polly.cond619.loopexit.us.3, %polly.then621.us.3
  %208 = mul i64 %205, 8000
  %209 = mul i64 %205, 9600
  br i1 %polly.loop_guard6111083, label %polly.loop_header630.us.preheader, label %polly.loop_exit632

polly.loop_header630.us.preheader:                ; preds = %polly.loop_header630.preheader
  %210 = add i64 %190, %208
  %scevgep648.us = getelementptr i8, i8* %call2, i64 %210
  %scevgep648649.us = bitcast i8* %scevgep648.us to double*
  %_p_scalar_650.us = load double, double* %scevgep648649.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.Packed_MemRef_call1475656.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %204
  %_p_scalar_657.us = load double, double* %polly.access.Packed_MemRef_call1475656.us, align 8
  br label %polly.loop_header637.us

polly.loop_header637.us:                          ; preds = %polly.loop_header630.us.preheader, %polly.loop_header637.us
  %polly.indvar641.us = phi i64 [ %polly.indvar_next642.us, %polly.loop_header637.us ], [ 0, %polly.loop_header630.us.preheader ]
  %211 = add nuw nsw i64 %polly.indvar641.us, %197
  %polly.access.Packed_MemRef_call1475646.us = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.indvar641.us
  %_p_scalar_647.us = load double, double* %polly.access.Packed_MemRef_call1475646.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_650.us, %_p_scalar_647.us
  %212 = mul nuw nsw i64 %211, 8000
  %213 = add nuw nsw i64 %212, %190
  %scevgep651.us = getelementptr i8, i8* %call2, i64 %213
  %scevgep651652.us = bitcast i8* %scevgep651.us to double*
  %_p_scalar_653.us = load double, double* %scevgep651652.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_657.us, %_p_scalar_653.us
  %214 = shl i64 %211, 3
  %215 = add i64 %214, %209
  %scevgep658.us = getelementptr i8, i8* %call, i64 %215
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
  %216 = add i64 %192, %208
  %scevgep648.us.1 = getelementptr i8, i8* %call2, i64 %216
  %scevgep648649.us.1 = bitcast i8* %scevgep648.us.1 to double*
  %_p_scalar_650.us.1 = load double, double* %scevgep648649.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us.1 = add nsw i64 %204, 1200
  %polly.access.Packed_MemRef_call1475656.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us.1
  %_p_scalar_657.us.1 = load double, double* %polly.access.Packed_MemRef_call1475656.us.1, align 8
  br label %polly.loop_header637.us.1

polly.loop_header787:                             ; preds = %entry, %polly.loop_exit795
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit795 ], [ 0, %entry ]
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %entry ]
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 -1168)
  %217 = shl nsw i64 %polly.indvar790, 5
  %218 = add nsw i64 %smin1073, 1199
  br label %polly.loop_header793

polly.loop_exit795:                               ; preds = %polly.loop_exit801
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next791, 38
  br i1 %exitcond1076.not, label %polly.loop_header814, label %polly.loop_header787

polly.loop_header793:                             ; preds = %polly.loop_exit801, %polly.loop_header787
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %polly.loop_header787 ]
  %219 = mul nsw i64 %polly.indvar796, -32
  %smin = call i64 @llvm.smin.i64(i64 %219, i64 -1168)
  %220 = add nsw i64 %smin, 1200
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -1168)
  %221 = shl nsw i64 %polly.indvar796, 5
  %222 = add nsw i64 %smin1069, 1199
  br label %polly.loop_header799

polly.loop_exit801:                               ; preds = %polly.loop_exit807
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next797, 38
  br i1 %exitcond1075.not, label %polly.loop_exit795, label %polly.loop_header793

polly.loop_header799:                             ; preds = %polly.loop_exit807, %polly.loop_header793
  %polly.indvar802 = phi i64 [ 0, %polly.loop_header793 ], [ %polly.indvar_next803, %polly.loop_exit807 ]
  %223 = add nuw nsw i64 %polly.indvar802, %217
  %224 = trunc i64 %223 to i32
  %225 = mul nuw nsw i64 %223, 9600
  %min.iters.check = icmp eq i64 %220, 0
  br i1 %min.iters.check, label %polly.loop_header805, label %vector.ph1105

vector.ph1105:                                    ; preds = %polly.loop_header799
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %221, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %226 = add nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %227 = trunc <4 x i64> %226 to <4 x i32>
  %228 = mul <4 x i32> %broadcast.splat1115, %227
  %229 = add <4 x i32> %228, <i32 3, i32 3, i32 3, i32 3>
  %230 = urem <4 x i32> %229, <i32 1200, i32 1200, i32 1200, i32 1200>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %233 = extractelement <4 x i64> %226, i32 0
  %234 = shl i64 %233, 3
  %235 = add nuw nsw i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %232, <4 x double>* %237, align 8, !alias.scope !94, !noalias !96
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %238 = icmp eq i64 %index.next1107, %220
  br i1 %238, label %polly.loop_exit807, label %vector.body1104, !llvm.loop !99

polly.loop_exit807:                               ; preds = %vector.body1104, %polly.loop_header805
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar802, %218
  br i1 %exitcond1074.not, label %polly.loop_exit801, label %polly.loop_header799

polly.loop_header805:                             ; preds = %polly.loop_header799, %polly.loop_header805
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_header805 ], [ 0, %polly.loop_header799 ]
  %239 = add nuw nsw i64 %polly.indvar808, %221
  %240 = trunc i64 %239 to i32
  %241 = mul i32 %240, %224
  %242 = add i32 %241, 3
  %243 = urem i32 %242, 1200
  %p_conv31.i = sitofp i32 %243 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %244 = shl i64 %239, 3
  %245 = add nuw nsw i64 %244, %225
  %scevgep811 = getelementptr i8, i8* %call, i64 %245
  %scevgep811812 = bitcast i8* %scevgep811 to double*
  store double %p_div33.i, double* %scevgep811812, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar808, %222
  br i1 %exitcond1070.not, label %polly.loop_exit807, label %polly.loop_header805, !llvm.loop !100

polly.loop_header814:                             ; preds = %polly.loop_exit795, %polly.loop_exit822
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %polly.indvar817 = phi i64 [ %polly.indvar_next818, %polly.loop_exit822 ], [ 0, %polly.loop_exit795 ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %246 = shl nsw i64 %polly.indvar817, 5
  %247 = add nsw i64 %smin1063, 1199
  br label %polly.loop_header820

polly.loop_exit822:                               ; preds = %polly.loop_exit828
  %polly.indvar_next818 = add nuw nsw i64 %polly.indvar817, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next818, 38
  br i1 %exitcond1066.not, label %polly.loop_header840, label %polly.loop_header814

polly.loop_header820:                             ; preds = %polly.loop_exit828, %polly.loop_header814
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_header814 ]
  %248 = mul nsw i64 %polly.indvar823, -32
  %smin1119 = call i64 @llvm.smin.i64(i64 %248, i64 -968)
  %249 = add nsw i64 %smin1119, 1000
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -968)
  %250 = shl nsw i64 %polly.indvar823, 5
  %251 = add nsw i64 %smin1059, 999
  br label %polly.loop_header826

polly.loop_exit828:                               ; preds = %polly.loop_exit834
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond1065.not, label %polly.loop_exit822, label %polly.loop_header820

polly.loop_header826:                             ; preds = %polly.loop_exit834, %polly.loop_header820
  %polly.indvar829 = phi i64 [ 0, %polly.loop_header820 ], [ %polly.indvar_next830, %polly.loop_exit834 ]
  %252 = add nuw nsw i64 %polly.indvar829, %246
  %253 = trunc i64 %252 to i32
  %254 = mul nuw nsw i64 %252, 8000
  %min.iters.check1120 = icmp eq i64 %249, 0
  br i1 %min.iters.check1120, label %polly.loop_header832, label %vector.ph1121

vector.ph1121:                                    ; preds = %polly.loop_header826
  %broadcast.splatinsert1130 = insertelement <4 x i64> poison, i64 %250, i32 0
  %broadcast.splat1131 = shufflevector <4 x i64> %broadcast.splatinsert1130, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1125, %vector.body1118 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1121 ], [ %vec.ind.next1129, %vector.body1118 ]
  %255 = add nuw nsw <4 x i64> %vec.ind1128, %broadcast.splat1131
  %256 = trunc <4 x i64> %255 to <4 x i32>
  %257 = mul <4 x i32> %broadcast.splat1133, %256
  %258 = add <4 x i32> %257, <i32 2, i32 2, i32 2, i32 2>
  %259 = urem <4 x i32> %258, <i32 1000, i32 1000, i32 1000, i32 1000>
  %260 = sitofp <4 x i32> %259 to <4 x double>
  %261 = fmul fast <4 x double> %260, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %262 = extractelement <4 x i64> %255, i32 0
  %263 = shl i64 %262, 3
  %264 = add nuw nsw i64 %263, %254
  %265 = getelementptr i8, i8* %call2, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %261, <4 x double>* %266, align 8, !alias.scope !98, !noalias !101
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %267 = icmp eq i64 %index.next1125, %249
  br i1 %267, label %polly.loop_exit834, label %vector.body1118, !llvm.loop !102

polly.loop_exit834:                               ; preds = %vector.body1118, %polly.loop_header832
  %polly.indvar_next830 = add nuw nsw i64 %polly.indvar829, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar829, %247
  br i1 %exitcond1064.not, label %polly.loop_exit828, label %polly.loop_header826

polly.loop_header832:                             ; preds = %polly.loop_header826, %polly.loop_header832
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_header832 ], [ 0, %polly.loop_header826 ]
  %268 = add nuw nsw i64 %polly.indvar835, %250
  %269 = trunc i64 %268 to i32
  %270 = mul i32 %269, %253
  %271 = add i32 %270, 2
  %272 = urem i32 %271, 1000
  %p_conv10.i = sitofp i32 %272 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %273 = shl i64 %268, 3
  %274 = add nuw nsw i64 %273, %254
  %scevgep838 = getelementptr i8, i8* %call2, i64 %274
  %scevgep838839 = bitcast i8* %scevgep838 to double*
  store double %p_div12.i, double* %scevgep838839, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar835, %251
  br i1 %exitcond1060.not, label %polly.loop_exit834, label %polly.loop_header832, !llvm.loop !103

polly.loop_header840:                             ; preds = %polly.loop_exit822, %polly.loop_exit848
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %polly.indvar843 = phi i64 [ %polly.indvar_next844, %polly.loop_exit848 ], [ 0, %polly.loop_exit822 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 -1168)
  %275 = shl nsw i64 %polly.indvar843, 5
  %276 = add nsw i64 %smin1053, 1199
  br label %polly.loop_header846

polly.loop_exit848:                               ; preds = %polly.loop_exit854
  %polly.indvar_next844 = add nuw nsw i64 %polly.indvar843, 1
  %indvars.iv.next1052 = add nsw i64 %indvars.iv1051, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next844, 38
  br i1 %exitcond1056.not, label %init_array.exit, label %polly.loop_header840

polly.loop_header846:                             ; preds = %polly.loop_exit854, %polly.loop_header840
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_header840 ]
  %277 = mul nsw i64 %polly.indvar849, -32
  %smin1137 = call i64 @llvm.smin.i64(i64 %277, i64 -968)
  %278 = add nsw i64 %smin1137, 1000
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -968)
  %279 = shl nsw i64 %polly.indvar849, 5
  %280 = add nsw i64 %smin1049, 999
  br label %polly.loop_header852

polly.loop_exit854:                               ; preds = %polly.loop_exit860
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -32
  %exitcond1055.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond1055.not, label %polly.loop_exit848, label %polly.loop_header846

polly.loop_header852:                             ; preds = %polly.loop_exit860, %polly.loop_header846
  %polly.indvar855 = phi i64 [ 0, %polly.loop_header846 ], [ %polly.indvar_next856, %polly.loop_exit860 ]
  %281 = add nuw nsw i64 %polly.indvar855, %275
  %282 = trunc i64 %281 to i32
  %283 = mul nuw nsw i64 %281, 8000
  %min.iters.check1138 = icmp eq i64 %278, 0
  br i1 %min.iters.check1138, label %polly.loop_header858, label %vector.ph1139

vector.ph1139:                                    ; preds = %polly.loop_header852
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %279, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1136 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1147, %vector.body1136 ]
  %284 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %285 = trunc <4 x i64> %284 to <4 x i32>
  %286 = mul <4 x i32> %broadcast.splat1151, %285
  %287 = add <4 x i32> %286, <i32 1, i32 1, i32 1, i32 1>
  %288 = urem <4 x i32> %287, <i32 1200, i32 1200, i32 1200, i32 1200>
  %289 = sitofp <4 x i32> %288 to <4 x double>
  %290 = fmul fast <4 x double> %289, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %291 = extractelement <4 x i64> %284, i32 0
  %292 = shl i64 %291, 3
  %293 = add nuw nsw i64 %292, %283
  %294 = getelementptr i8, i8* %call1, i64 %293
  %295 = bitcast i8* %294 to <4 x double>*
  store <4 x double> %290, <4 x double>* %295, align 8, !alias.scope !97, !noalias !104
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %index.next1143, %278
  br i1 %296, label %polly.loop_exit860, label %vector.body1136, !llvm.loop !105

polly.loop_exit860:                               ; preds = %vector.body1136, %polly.loop_header858
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar855, %276
  br i1 %exitcond1054.not, label %polly.loop_exit854, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_header852, %polly.loop_header858
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_header858 ], [ 0, %polly.loop_header852 ]
  %297 = add nuw nsw i64 %polly.indvar861, %279
  %298 = trunc i64 %297 to i32
  %299 = mul i32 %298, %282
  %300 = add i32 %299, 1
  %301 = urem i32 %300, 1200
  %p_conv.i = sitofp i32 %301 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %302 = shl i64 %297, 3
  %303 = add nuw nsw i64 %302, %283
  %scevgep865 = getelementptr i8, i8* %call1, i64 %303
  %scevgep865866 = bitcast i8* %scevgep865 to double*
  store double %p_div.i, double* %scevgep865866, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar861, %280
  br i1 %exitcond1050.not, label %polly.loop_exit860, label %polly.loop_header858, !llvm.loop !106

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1.preheader, %polly.loop_header230.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header230.us.1.preheader ]
  %304 = add nuw nsw i64 %polly.indvar234.us.1, %111
  %polly.access.mul.call1238.us.1 = mul nuw nsw i64 %304, 1000
  %polly.access.add.call1239.us.1 = add nuw nsw i64 %101, %polly.access.mul.call1238.us.1
  %polly.access.call1240.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us.1
  %polly.access.call1240.load.us.1 = load double, double* %polly.access.call1240.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1240.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar234.us.1, %smin987
  br i1 %exitcond985.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header230.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header230.us.1
  br i1 %.not, label %polly.loop_header230.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1243.us.1 = or i64 %120, 1
  %polly.access.call1244.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us.1
  %polly.access.call1244.load.us.1 = load double, double* %polly.access.call1244.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.1 = add nsw i64 %118, 1200
  %polly.access.Packed_MemRef_call1247.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.1
  store double %polly.access.call1244.load.us.1, double* %polly.access.Packed_MemRef_call1247.us.1, align 8
  br label %polly.loop_header230.us.2.preheader

polly.loop_header230.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2.preheader, %polly.loop_header230.us.2
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_header230.us.2.preheader ]
  %305 = add nuw nsw i64 %polly.indvar234.us.2, %111
  %polly.access.mul.call1238.us.2 = mul nuw nsw i64 %305, 1000
  %polly.access.add.call1239.us.2 = add nuw nsw i64 %102, %polly.access.mul.call1238.us.2
  %polly.access.call1240.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us.2
  %polly.access.call1240.load.us.2 = load double, double* %polly.access.call1240.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1240.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next235.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 1
  %exitcond985.2.not = icmp eq i64 %polly.indvar234.us.2, %smin987
  br i1 %exitcond985.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header230.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header230.us.2
  br i1 %.not, label %polly.loop_header230.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1243.us.2 = or i64 %120, 2
  %polly.access.call1244.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us.2
  %polly.access.call1244.load.us.2 = load double, double* %polly.access.call1244.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.2 = add nsw i64 %118, 2400
  %polly.access.Packed_MemRef_call1247.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.2
  store double %polly.access.call1244.load.us.2, double* %polly.access.Packed_MemRef_call1247.us.2, align 8
  br label %polly.loop_header230.us.3.preheader

polly.loop_header230.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3.preheader, %polly.loop_header230.us.3
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_header230.us.3.preheader ]
  %306 = add nuw nsw i64 %polly.indvar234.us.3, %111
  %polly.access.mul.call1238.us.3 = mul nuw nsw i64 %306, 1000
  %polly.access.add.call1239.us.3 = add nuw nsw i64 %103, %polly.access.mul.call1238.us.3
  %polly.access.call1240.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1239.us.3
  %polly.access.call1240.load.us.3 = load double, double* %polly.access.call1240.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1240.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next235.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 1
  %exitcond985.3.not = icmp eq i64 %polly.indvar234.us.3, %smin987
  br i1 %exitcond985.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header230.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header230.us.3
  br i1 %.not, label %polly.loop_header248.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1243.us.3 = or i64 %120, 3
  %polly.access.call1244.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1243.us.3
  %polly.access.call1244.load.us.3 = load double, double* %polly.access.call1244.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.3 = add nsw i64 %118, 3600
  %polly.access.Packed_MemRef_call1247.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.3
  store double %polly.access.call1244.load.us.3, double* %polly.access.Packed_MemRef_call1247.us.3, align 8
  br label %polly.loop_header248.preheader

polly.loop_header255.us.1:                        ; preds = %polly.loop_header255.us.1, %polly.loop_exit257.loopexit.us
  %polly.indvar259.us.1 = phi i64 [ %polly.indvar_next260.us.1, %polly.loop_header255.us.1 ], [ 0, %polly.loop_exit257.loopexit.us ]
  %307 = add nuw nsw i64 %polly.indvar259.us.1, %111
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  %_p_scalar_265.us.1 = load double, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_268.us.1, %_p_scalar_265.us.1
  %308 = mul nuw nsw i64 %307, 8000
  %309 = add nuw nsw i64 %308, %106
  %scevgep269.us.1 = getelementptr i8, i8* %call2, i64 %309
  %scevgep269270.us.1 = bitcast i8* %scevgep269.us.1 to double*
  %_p_scalar_271.us.1 = load double, double* %scevgep269270.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_275.us.1, %_p_scalar_271.us.1
  %310 = shl i64 %307, 3
  %311 = add i64 %310, %123
  %scevgep276.us.1 = getelementptr i8, i8* %call, i64 %311
  %scevgep276277.us.1 = bitcast i8* %scevgep276.us.1 to double*
  %_p_scalar_278.us.1 = load double, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_278.us.1
  store double %p_add42.i118.us.1, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %exitcond988.1.not = icmp eq i64 %polly.indvar259.us.1, %smin987
  br i1 %exitcond988.1.not, label %polly.loop_exit257.loopexit.us.1, label %polly.loop_header255.us.1

polly.loop_exit257.loopexit.us.1:                 ; preds = %polly.loop_header255.us.1
  %312 = add i64 %108, %122
  %scevgep266.us.2 = getelementptr i8, i8* %call2, i64 %312
  %scevgep266267.us.2 = bitcast i8* %scevgep266.us.2 to double*
  %_p_scalar_268.us.2 = load double, double* %scevgep266267.us.2, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.2 = add nsw i64 %118, 2400
  %polly.access.Packed_MemRef_call1274.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.2
  %_p_scalar_275.us.2 = load double, double* %polly.access.Packed_MemRef_call1274.us.2, align 8
  br label %polly.loop_header255.us.2

polly.loop_header255.us.2:                        ; preds = %polly.loop_header255.us.2, %polly.loop_exit257.loopexit.us.1
  %polly.indvar259.us.2 = phi i64 [ %polly.indvar_next260.us.2, %polly.loop_header255.us.2 ], [ 0, %polly.loop_exit257.loopexit.us.1 ]
  %313 = add nuw nsw i64 %polly.indvar259.us.2, %111
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar259.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  %_p_scalar_265.us.2 = load double, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_268.us.2, %_p_scalar_265.us.2
  %314 = mul nuw nsw i64 %313, 8000
  %315 = add nuw nsw i64 %314, %108
  %scevgep269.us.2 = getelementptr i8, i8* %call2, i64 %315
  %scevgep269270.us.2 = bitcast i8* %scevgep269.us.2 to double*
  %_p_scalar_271.us.2 = load double, double* %scevgep269270.us.2, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_275.us.2, %_p_scalar_271.us.2
  %316 = shl i64 %313, 3
  %317 = add i64 %316, %123
  %scevgep276.us.2 = getelementptr i8, i8* %call, i64 %317
  %scevgep276277.us.2 = bitcast i8* %scevgep276.us.2 to double*
  %_p_scalar_278.us.2 = load double, double* %scevgep276277.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_278.us.2
  store double %p_add42.i118.us.2, double* %scevgep276277.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.2 = add nuw nsw i64 %polly.indvar259.us.2, 1
  %exitcond988.2.not = icmp eq i64 %polly.indvar259.us.2, %smin987
  br i1 %exitcond988.2.not, label %polly.loop_exit257.loopexit.us.2, label %polly.loop_header255.us.2

polly.loop_exit257.loopexit.us.2:                 ; preds = %polly.loop_header255.us.2
  %318 = add i64 %110, %122
  %scevgep266.us.3 = getelementptr i8, i8* %call2, i64 %318
  %scevgep266267.us.3 = bitcast i8* %scevgep266.us.3 to double*
  %_p_scalar_268.us.3 = load double, double* %scevgep266267.us.3, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.3 = add nsw i64 %118, 3600
  %polly.access.Packed_MemRef_call1274.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.3
  %_p_scalar_275.us.3 = load double, double* %polly.access.Packed_MemRef_call1274.us.3, align 8
  br label %polly.loop_header255.us.3

polly.loop_header255.us.3:                        ; preds = %polly.loop_header255.us.3, %polly.loop_exit257.loopexit.us.2
  %polly.indvar259.us.3 = phi i64 [ %polly.indvar_next260.us.3, %polly.loop_header255.us.3 ], [ 0, %polly.loop_exit257.loopexit.us.2 ]
  %319 = add nuw nsw i64 %polly.indvar259.us.3, %111
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar259.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  %_p_scalar_265.us.3 = load double, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_268.us.3, %_p_scalar_265.us.3
  %320 = mul nuw nsw i64 %319, 8000
  %321 = add nuw nsw i64 %320, %110
  %scevgep269.us.3 = getelementptr i8, i8* %call2, i64 %321
  %scevgep269270.us.3 = bitcast i8* %scevgep269.us.3 to double*
  %_p_scalar_271.us.3 = load double, double* %scevgep269270.us.3, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_275.us.3, %_p_scalar_271.us.3
  %322 = shl i64 %319, 3
  %323 = add i64 %322, %123
  %scevgep276.us.3 = getelementptr i8, i8* %call, i64 %323
  %scevgep276277.us.3 = bitcast i8* %scevgep276.us.3 to double*
  %_p_scalar_278.us.3 = load double, double* %scevgep276277.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_278.us.3
  store double %p_add42.i118.us.3, double* %scevgep276277.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.3 = add nuw nsw i64 %polly.indvar259.us.3, 1
  %exitcond988.3.not = icmp eq i64 %polly.indvar259.us.3, %smin987
  br i1 %exitcond988.3.not, label %polly.loop_exit250, label %polly.loop_header255.us.3

polly.loop_header417.us.1:                        ; preds = %polly.loop_header417.us.1.preheader, %polly.loop_header417.us.1
  %polly.indvar421.us.1 = phi i64 [ %polly.indvar_next422.us.1, %polly.loop_header417.us.1 ], [ 0, %polly.loop_header417.us.1.preheader ]
  %324 = add nuw nsw i64 %polly.indvar421.us.1, %154
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %324, 1000
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %144, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.1 = add nuw nsw i64 %polly.indvar421.us.1, 1200
  %polly.access.Packed_MemRef_call1284.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1284.us.1, align 8
  %polly.indvar_next422.us.1 = add nuw nsw i64 %polly.indvar421.us.1, 1
  %exitcond1010.1.not = icmp eq i64 %polly.indvar421.us.1, %smin1012
  br i1 %exitcond1010.1.not, label %polly.cond428.loopexit.us.1, label %polly.loop_header417.us.1

polly.cond428.loopexit.us.1:                      ; preds = %polly.loop_header417.us.1
  br i1 %.not867, label %polly.loop_header417.us.2.preheader, label %polly.then430.us.1

polly.then430.us.1:                               ; preds = %polly.cond428.loopexit.us.1
  %polly.access.add.call1434.us.1 = or i64 %163, 1
  %polly.access.call1435.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us.1
  %polly.access.call1435.load.us.1 = load double, double* %polly.access.call1435.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us.1 = add nsw i64 %161, 1200
  %polly.access.Packed_MemRef_call1284438.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us.1
  store double %polly.access.call1435.load.us.1, double* %polly.access.Packed_MemRef_call1284438.us.1, align 8
  br label %polly.loop_header417.us.2.preheader

polly.loop_header417.us.2.preheader:              ; preds = %polly.then430.us.1, %polly.cond428.loopexit.us.1
  br label %polly.loop_header417.us.2

polly.loop_header417.us.2:                        ; preds = %polly.loop_header417.us.2.preheader, %polly.loop_header417.us.2
  %polly.indvar421.us.2 = phi i64 [ %polly.indvar_next422.us.2, %polly.loop_header417.us.2 ], [ 0, %polly.loop_header417.us.2.preheader ]
  %325 = add nuw nsw i64 %polly.indvar421.us.2, %154
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %325, 1000
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %145, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.2 = add nuw nsw i64 %polly.indvar421.us.2, 2400
  %polly.access.Packed_MemRef_call1284.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1284.us.2, align 8
  %polly.indvar_next422.us.2 = add nuw nsw i64 %polly.indvar421.us.2, 1
  %exitcond1010.2.not = icmp eq i64 %polly.indvar421.us.2, %smin1012
  br i1 %exitcond1010.2.not, label %polly.cond428.loopexit.us.2, label %polly.loop_header417.us.2

polly.cond428.loopexit.us.2:                      ; preds = %polly.loop_header417.us.2
  br i1 %.not867, label %polly.loop_header417.us.3.preheader, label %polly.then430.us.2

polly.then430.us.2:                               ; preds = %polly.cond428.loopexit.us.2
  %polly.access.add.call1434.us.2 = or i64 %163, 2
  %polly.access.call1435.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us.2
  %polly.access.call1435.load.us.2 = load double, double* %polly.access.call1435.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us.2 = add nsw i64 %161, 2400
  %polly.access.Packed_MemRef_call1284438.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us.2
  store double %polly.access.call1435.load.us.2, double* %polly.access.Packed_MemRef_call1284438.us.2, align 8
  br label %polly.loop_header417.us.3.preheader

polly.loop_header417.us.3.preheader:              ; preds = %polly.then430.us.2, %polly.cond428.loopexit.us.2
  br label %polly.loop_header417.us.3

polly.loop_header417.us.3:                        ; preds = %polly.loop_header417.us.3.preheader, %polly.loop_header417.us.3
  %polly.indvar421.us.3 = phi i64 [ %polly.indvar_next422.us.3, %polly.loop_header417.us.3 ], [ 0, %polly.loop_header417.us.3.preheader ]
  %326 = add nuw nsw i64 %polly.indvar421.us.3, %154
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %326, 1000
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %146, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.3 = add nuw nsw i64 %polly.indvar421.us.3, 3600
  %polly.access.Packed_MemRef_call1284.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1284.us.3, align 8
  %polly.indvar_next422.us.3 = add nuw nsw i64 %polly.indvar421.us.3, 1
  %exitcond1010.3.not = icmp eq i64 %polly.indvar421.us.3, %smin1012
  br i1 %exitcond1010.3.not, label %polly.cond428.loopexit.us.3, label %polly.loop_header417.us.3

polly.cond428.loopexit.us.3:                      ; preds = %polly.loop_header417.us.3
  br i1 %.not867, label %polly.loop_header439.preheader, label %polly.then430.us.3

polly.then430.us.3:                               ; preds = %polly.cond428.loopexit.us.3
  %polly.access.add.call1434.us.3 = or i64 %163, 3
  %polly.access.call1435.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1434.us.3
  %polly.access.call1435.load.us.3 = load double, double* %polly.access.call1435.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284437.us.3 = add nsw i64 %161, 3600
  %polly.access.Packed_MemRef_call1284438.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284437.us.3
  store double %polly.access.call1435.load.us.3, double* %polly.access.Packed_MemRef_call1284438.us.3, align 8
  br label %polly.loop_header439.preheader

polly.loop_header446.us.1:                        ; preds = %polly.loop_header446.us.1, %polly.loop_exit448.loopexit.us
  %polly.indvar450.us.1 = phi i64 [ %polly.indvar_next451.us.1, %polly.loop_header446.us.1 ], [ 0, %polly.loop_exit448.loopexit.us ]
  %327 = add nuw nsw i64 %polly.indvar450.us.1, %154
  %polly.access.add.Packed_MemRef_call1284454.us.1 = add nuw nsw i64 %polly.indvar450.us.1, 1200
  %polly.access.Packed_MemRef_call1284455.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us.1
  %_p_scalar_456.us.1 = load double, double* %polly.access.Packed_MemRef_call1284455.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_459.us.1, %_p_scalar_456.us.1
  %328 = mul nuw nsw i64 %327, 8000
  %329 = add nuw nsw i64 %328, %149
  %scevgep460.us.1 = getelementptr i8, i8* %call2, i64 %329
  %scevgep460461.us.1 = bitcast i8* %scevgep460.us.1 to double*
  %_p_scalar_462.us.1 = load double, double* %scevgep460461.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_466.us.1, %_p_scalar_462.us.1
  %330 = shl i64 %327, 3
  %331 = add i64 %330, %166
  %scevgep467.us.1 = getelementptr i8, i8* %call, i64 %331
  %scevgep467468.us.1 = bitcast i8* %scevgep467.us.1 to double*
  %_p_scalar_469.us.1 = load double, double* %scevgep467468.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_469.us.1
  store double %p_add42.i79.us.1, double* %scevgep467468.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us.1 = add nuw nsw i64 %polly.indvar450.us.1, 1
  %exitcond1013.1.not = icmp eq i64 %polly.indvar450.us.1, %smin1012
  br i1 %exitcond1013.1.not, label %polly.loop_exit448.loopexit.us.1, label %polly.loop_header446.us.1

polly.loop_exit448.loopexit.us.1:                 ; preds = %polly.loop_header446.us.1
  %332 = add i64 %151, %165
  %scevgep457.us.2 = getelementptr i8, i8* %call2, i64 %332
  %scevgep457458.us.2 = bitcast i8* %scevgep457.us.2 to double*
  %_p_scalar_459.us.2 = load double, double* %scevgep457458.us.2, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us.2 = add nsw i64 %161, 2400
  %polly.access.Packed_MemRef_call1284465.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us.2
  %_p_scalar_466.us.2 = load double, double* %polly.access.Packed_MemRef_call1284465.us.2, align 8
  br label %polly.loop_header446.us.2

polly.loop_header446.us.2:                        ; preds = %polly.loop_header446.us.2, %polly.loop_exit448.loopexit.us.1
  %polly.indvar450.us.2 = phi i64 [ %polly.indvar_next451.us.2, %polly.loop_header446.us.2 ], [ 0, %polly.loop_exit448.loopexit.us.1 ]
  %333 = add nuw nsw i64 %polly.indvar450.us.2, %154
  %polly.access.add.Packed_MemRef_call1284454.us.2 = add nuw nsw i64 %polly.indvar450.us.2, 2400
  %polly.access.Packed_MemRef_call1284455.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us.2
  %_p_scalar_456.us.2 = load double, double* %polly.access.Packed_MemRef_call1284455.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_459.us.2, %_p_scalar_456.us.2
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %151
  %scevgep460.us.2 = getelementptr i8, i8* %call2, i64 %335
  %scevgep460461.us.2 = bitcast i8* %scevgep460.us.2 to double*
  %_p_scalar_462.us.2 = load double, double* %scevgep460461.us.2, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_466.us.2, %_p_scalar_462.us.2
  %336 = shl i64 %333, 3
  %337 = add i64 %336, %166
  %scevgep467.us.2 = getelementptr i8, i8* %call, i64 %337
  %scevgep467468.us.2 = bitcast i8* %scevgep467.us.2 to double*
  %_p_scalar_469.us.2 = load double, double* %scevgep467468.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_469.us.2
  store double %p_add42.i79.us.2, double* %scevgep467468.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us.2 = add nuw nsw i64 %polly.indvar450.us.2, 1
  %exitcond1013.2.not = icmp eq i64 %polly.indvar450.us.2, %smin1012
  br i1 %exitcond1013.2.not, label %polly.loop_exit448.loopexit.us.2, label %polly.loop_header446.us.2

polly.loop_exit448.loopexit.us.2:                 ; preds = %polly.loop_header446.us.2
  %338 = add i64 %153, %165
  %scevgep457.us.3 = getelementptr i8, i8* %call2, i64 %338
  %scevgep457458.us.3 = bitcast i8* %scevgep457.us.3 to double*
  %_p_scalar_459.us.3 = load double, double* %scevgep457458.us.3, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284464.us.3 = add nsw i64 %161, 3600
  %polly.access.Packed_MemRef_call1284465.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284464.us.3
  %_p_scalar_466.us.3 = load double, double* %polly.access.Packed_MemRef_call1284465.us.3, align 8
  br label %polly.loop_header446.us.3

polly.loop_header446.us.3:                        ; preds = %polly.loop_header446.us.3, %polly.loop_exit448.loopexit.us.2
  %polly.indvar450.us.3 = phi i64 [ %polly.indvar_next451.us.3, %polly.loop_header446.us.3 ], [ 0, %polly.loop_exit448.loopexit.us.2 ]
  %339 = add nuw nsw i64 %polly.indvar450.us.3, %154
  %polly.access.add.Packed_MemRef_call1284454.us.3 = add nuw nsw i64 %polly.indvar450.us.3, 3600
  %polly.access.Packed_MemRef_call1284455.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284454.us.3
  %_p_scalar_456.us.3 = load double, double* %polly.access.Packed_MemRef_call1284455.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_459.us.3, %_p_scalar_456.us.3
  %340 = mul nuw nsw i64 %339, 8000
  %341 = add nuw nsw i64 %340, %153
  %scevgep460.us.3 = getelementptr i8, i8* %call2, i64 %341
  %scevgep460461.us.3 = bitcast i8* %scevgep460.us.3 to double*
  %_p_scalar_462.us.3 = load double, double* %scevgep460461.us.3, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_466.us.3, %_p_scalar_462.us.3
  %342 = shl i64 %339, 3
  %343 = add i64 %342, %166
  %scevgep467.us.3 = getelementptr i8, i8* %call, i64 %343
  %scevgep467468.us.3 = bitcast i8* %scevgep467.us.3 to double*
  %_p_scalar_469.us.3 = load double, double* %scevgep467468.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_469.us.3
  store double %p_add42.i79.us.3, double* %scevgep467468.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next451.us.3 = add nuw nsw i64 %polly.indvar450.us.3, 1
  %exitcond1013.3.not = icmp eq i64 %polly.indvar450.us.3, %smin1012
  br i1 %exitcond1013.3.not, label %polly.loop_exit441, label %polly.loop_header446.us.3

polly.loop_header608.us.1:                        ; preds = %polly.loop_header608.us.1.preheader, %polly.loop_header608.us.1
  %polly.indvar612.us.1 = phi i64 [ %polly.indvar_next613.us.1, %polly.loop_header608.us.1 ], [ 0, %polly.loop_header608.us.1.preheader ]
  %344 = add nuw nsw i64 %polly.indvar612.us.1, %197
  %polly.access.mul.call1616.us.1 = mul nuw nsw i64 %344, 1000
  %polly.access.add.call1617.us.1 = add nuw nsw i64 %187, %polly.access.mul.call1616.us.1
  %polly.access.call1618.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us.1
  %polly.access.call1618.load.us.1 = load double, double* %polly.access.call1618.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us.1 = add nuw nsw i64 %polly.indvar612.us.1, 1200
  %polly.access.Packed_MemRef_call1475.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us.1
  store double %polly.access.call1618.load.us.1, double* %polly.access.Packed_MemRef_call1475.us.1, align 8
  %polly.indvar_next613.us.1 = add nuw nsw i64 %polly.indvar612.us.1, 1
  %exitcond1035.1.not = icmp eq i64 %polly.indvar612.us.1, %smin1037
  br i1 %exitcond1035.1.not, label %polly.cond619.loopexit.us.1, label %polly.loop_header608.us.1

polly.cond619.loopexit.us.1:                      ; preds = %polly.loop_header608.us.1
  br i1 %.not868, label %polly.loop_header608.us.2.preheader, label %polly.then621.us.1

polly.then621.us.1:                               ; preds = %polly.cond619.loopexit.us.1
  %polly.access.add.call1625.us.1 = or i64 %206, 1
  %polly.access.call1626.us.1 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us.1
  %polly.access.call1626.load.us.1 = load double, double* %polly.access.call1626.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us.1 = add nsw i64 %204, 1200
  %polly.access.Packed_MemRef_call1475629.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us.1
  store double %polly.access.call1626.load.us.1, double* %polly.access.Packed_MemRef_call1475629.us.1, align 8
  br label %polly.loop_header608.us.2.preheader

polly.loop_header608.us.2.preheader:              ; preds = %polly.then621.us.1, %polly.cond619.loopexit.us.1
  br label %polly.loop_header608.us.2

polly.loop_header608.us.2:                        ; preds = %polly.loop_header608.us.2.preheader, %polly.loop_header608.us.2
  %polly.indvar612.us.2 = phi i64 [ %polly.indvar_next613.us.2, %polly.loop_header608.us.2 ], [ 0, %polly.loop_header608.us.2.preheader ]
  %345 = add nuw nsw i64 %polly.indvar612.us.2, %197
  %polly.access.mul.call1616.us.2 = mul nuw nsw i64 %345, 1000
  %polly.access.add.call1617.us.2 = add nuw nsw i64 %188, %polly.access.mul.call1616.us.2
  %polly.access.call1618.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us.2
  %polly.access.call1618.load.us.2 = load double, double* %polly.access.call1618.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us.2 = add nuw nsw i64 %polly.indvar612.us.2, 2400
  %polly.access.Packed_MemRef_call1475.us.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us.2
  store double %polly.access.call1618.load.us.2, double* %polly.access.Packed_MemRef_call1475.us.2, align 8
  %polly.indvar_next613.us.2 = add nuw nsw i64 %polly.indvar612.us.2, 1
  %exitcond1035.2.not = icmp eq i64 %polly.indvar612.us.2, %smin1037
  br i1 %exitcond1035.2.not, label %polly.cond619.loopexit.us.2, label %polly.loop_header608.us.2

polly.cond619.loopexit.us.2:                      ; preds = %polly.loop_header608.us.2
  br i1 %.not868, label %polly.loop_header608.us.3.preheader, label %polly.then621.us.2

polly.then621.us.2:                               ; preds = %polly.cond619.loopexit.us.2
  %polly.access.add.call1625.us.2 = or i64 %206, 2
  %polly.access.call1626.us.2 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us.2
  %polly.access.call1626.load.us.2 = load double, double* %polly.access.call1626.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us.2 = add nsw i64 %204, 2400
  %polly.access.Packed_MemRef_call1475629.us.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us.2
  store double %polly.access.call1626.load.us.2, double* %polly.access.Packed_MemRef_call1475629.us.2, align 8
  br label %polly.loop_header608.us.3.preheader

polly.loop_header608.us.3.preheader:              ; preds = %polly.then621.us.2, %polly.cond619.loopexit.us.2
  br label %polly.loop_header608.us.3

polly.loop_header608.us.3:                        ; preds = %polly.loop_header608.us.3.preheader, %polly.loop_header608.us.3
  %polly.indvar612.us.3 = phi i64 [ %polly.indvar_next613.us.3, %polly.loop_header608.us.3 ], [ 0, %polly.loop_header608.us.3.preheader ]
  %346 = add nuw nsw i64 %polly.indvar612.us.3, %197
  %polly.access.mul.call1616.us.3 = mul nuw nsw i64 %346, 1000
  %polly.access.add.call1617.us.3 = add nuw nsw i64 %189, %polly.access.mul.call1616.us.3
  %polly.access.call1618.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1617.us.3
  %polly.access.call1618.load.us.3 = load double, double* %polly.access.call1618.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475.us.3 = add nuw nsw i64 %polly.indvar612.us.3, 3600
  %polly.access.Packed_MemRef_call1475.us.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.us.3
  store double %polly.access.call1618.load.us.3, double* %polly.access.Packed_MemRef_call1475.us.3, align 8
  %polly.indvar_next613.us.3 = add nuw nsw i64 %polly.indvar612.us.3, 1
  %exitcond1035.3.not = icmp eq i64 %polly.indvar612.us.3, %smin1037
  br i1 %exitcond1035.3.not, label %polly.cond619.loopexit.us.3, label %polly.loop_header608.us.3

polly.cond619.loopexit.us.3:                      ; preds = %polly.loop_header608.us.3
  br i1 %.not868, label %polly.loop_header630.preheader, label %polly.then621.us.3

polly.then621.us.3:                               ; preds = %polly.cond619.loopexit.us.3
  %polly.access.add.call1625.us.3 = or i64 %206, 3
  %polly.access.call1626.us.3 = getelementptr double, double* %polly.access.cast.call1665, i64 %polly.access.add.call1625.us.3
  %polly.access.call1626.load.us.3 = load double, double* %polly.access.call1626.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1475628.us.3 = add nsw i64 %204, 3600
  %polly.access.Packed_MemRef_call1475629.us.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475628.us.3
  store double %polly.access.call1626.load.us.3, double* %polly.access.Packed_MemRef_call1475629.us.3, align 8
  br label %polly.loop_header630.preheader

polly.loop_header637.us.1:                        ; preds = %polly.loop_header637.us.1, %polly.loop_exit639.loopexit.us
  %polly.indvar641.us.1 = phi i64 [ %polly.indvar_next642.us.1, %polly.loop_header637.us.1 ], [ 0, %polly.loop_exit639.loopexit.us ]
  %347 = add nuw nsw i64 %polly.indvar641.us.1, %197
  %polly.access.add.Packed_MemRef_call1475645.us.1 = add nuw nsw i64 %polly.indvar641.us.1, 1200
  %polly.access.Packed_MemRef_call1475646.us.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us.1
  %_p_scalar_647.us.1 = load double, double* %polly.access.Packed_MemRef_call1475646.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_650.us.1, %_p_scalar_647.us.1
  %348 = mul nuw nsw i64 %347, 8000
  %349 = add nuw nsw i64 %348, %192
  %scevgep651.us.1 = getelementptr i8, i8* %call2, i64 %349
  %scevgep651652.us.1 = bitcast i8* %scevgep651.us.1 to double*
  %_p_scalar_653.us.1 = load double, double* %scevgep651652.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_657.us.1, %_p_scalar_653.us.1
  %350 = shl i64 %347, 3
  %351 = add i64 %350, %209
  %scevgep658.us.1 = getelementptr i8, i8* %call, i64 %351
  %scevgep658659.us.1 = bitcast i8* %scevgep658.us.1 to double*
  %_p_scalar_660.us.1 = load double, double* %scevgep658659.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_660.us.1
  store double %p_add42.i.us.1, double* %scevgep658659.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us.1 = add nuw nsw i64 %polly.indvar641.us.1, 1
  %exitcond1038.1.not = icmp eq i64 %polly.indvar641.us.1, %smin1037
  br i1 %exitcond1038.1.not, label %polly.loop_exit639.loopexit.us.1, label %polly.loop_header637.us.1

polly.loop_exit639.loopexit.us.1:                 ; preds = %polly.loop_header637.us.1
  %352 = add i64 %194, %208
  %scevgep648.us.2 = getelementptr i8, i8* %call2, i64 %352
  %scevgep648649.us.2 = bitcast i8* %scevgep648.us.2 to double*
  %_p_scalar_650.us.2 = load double, double* %scevgep648649.us.2, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us.2 = add nsw i64 %204, 2400
  %polly.access.Packed_MemRef_call1475656.us.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us.2
  %_p_scalar_657.us.2 = load double, double* %polly.access.Packed_MemRef_call1475656.us.2, align 8
  br label %polly.loop_header637.us.2

polly.loop_header637.us.2:                        ; preds = %polly.loop_header637.us.2, %polly.loop_exit639.loopexit.us.1
  %polly.indvar641.us.2 = phi i64 [ %polly.indvar_next642.us.2, %polly.loop_header637.us.2 ], [ 0, %polly.loop_exit639.loopexit.us.1 ]
  %353 = add nuw nsw i64 %polly.indvar641.us.2, %197
  %polly.access.add.Packed_MemRef_call1475645.us.2 = add nuw nsw i64 %polly.indvar641.us.2, 2400
  %polly.access.Packed_MemRef_call1475646.us.2 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us.2
  %_p_scalar_647.us.2 = load double, double* %polly.access.Packed_MemRef_call1475646.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_650.us.2, %_p_scalar_647.us.2
  %354 = mul nuw nsw i64 %353, 8000
  %355 = add nuw nsw i64 %354, %194
  %scevgep651.us.2 = getelementptr i8, i8* %call2, i64 %355
  %scevgep651652.us.2 = bitcast i8* %scevgep651.us.2 to double*
  %_p_scalar_653.us.2 = load double, double* %scevgep651652.us.2, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_657.us.2, %_p_scalar_653.us.2
  %356 = shl i64 %353, 3
  %357 = add i64 %356, %209
  %scevgep658.us.2 = getelementptr i8, i8* %call, i64 %357
  %scevgep658659.us.2 = bitcast i8* %scevgep658.us.2 to double*
  %_p_scalar_660.us.2 = load double, double* %scevgep658659.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_660.us.2
  store double %p_add42.i.us.2, double* %scevgep658659.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us.2 = add nuw nsw i64 %polly.indvar641.us.2, 1
  %exitcond1038.2.not = icmp eq i64 %polly.indvar641.us.2, %smin1037
  br i1 %exitcond1038.2.not, label %polly.loop_exit639.loopexit.us.2, label %polly.loop_header637.us.2

polly.loop_exit639.loopexit.us.2:                 ; preds = %polly.loop_header637.us.2
  %358 = add i64 %196, %208
  %scevgep648.us.3 = getelementptr i8, i8* %call2, i64 %358
  %scevgep648649.us.3 = bitcast i8* %scevgep648.us.3 to double*
  %_p_scalar_650.us.3 = load double, double* %scevgep648649.us.3, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1475655.us.3 = add nsw i64 %204, 3600
  %polly.access.Packed_MemRef_call1475656.us.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475655.us.3
  %_p_scalar_657.us.3 = load double, double* %polly.access.Packed_MemRef_call1475656.us.3, align 8
  br label %polly.loop_header637.us.3

polly.loop_header637.us.3:                        ; preds = %polly.loop_header637.us.3, %polly.loop_exit639.loopexit.us.2
  %polly.indvar641.us.3 = phi i64 [ %polly.indvar_next642.us.3, %polly.loop_header637.us.3 ], [ 0, %polly.loop_exit639.loopexit.us.2 ]
  %359 = add nuw nsw i64 %polly.indvar641.us.3, %197
  %polly.access.add.Packed_MemRef_call1475645.us.3 = add nuw nsw i64 %polly.indvar641.us.3, 3600
  %polly.access.Packed_MemRef_call1475646.us.3 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475645.us.3
  %_p_scalar_647.us.3 = load double, double* %polly.access.Packed_MemRef_call1475646.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_650.us.3, %_p_scalar_647.us.3
  %360 = mul nuw nsw i64 %359, 8000
  %361 = add nuw nsw i64 %360, %196
  %scevgep651.us.3 = getelementptr i8, i8* %call2, i64 %361
  %scevgep651652.us.3 = bitcast i8* %scevgep651.us.3 to double*
  %_p_scalar_653.us.3 = load double, double* %scevgep651652.us.3, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_657.us.3, %_p_scalar_653.us.3
  %362 = shl i64 %359, 3
  %363 = add i64 %362, %209
  %scevgep658.us.3 = getelementptr i8, i8* %call, i64 %363
  %scevgep658659.us.3 = bitcast i8* %scevgep658.us.3 to double*
  %_p_scalar_660.us.3 = load double, double* %scevgep658659.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_660.us.3
  store double %p_add42.i.us.3, double* %scevgep658659.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next642.us.3 = add nuw nsw i64 %polly.indvar641.us.3, 1
  %exitcond1038.3.not = icmp eq i64 %polly.indvar641.us.3, %smin1037
  br i1 %exitcond1038.3.not, label %polly.loop_exit632, label %polly.loop_header637.us.3
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
!25 = !{!"llvm.loop.tile.size", i32 256}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 4}
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
!48 = !{!"llvm.loop.tile.size", i32 50}
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
