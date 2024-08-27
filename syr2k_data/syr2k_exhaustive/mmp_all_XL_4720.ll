; ModuleID = 'syr2k_exhaustive/mmp_all_XL_4720.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_4720.c"
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
  %call811 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1663 = bitcast i8* %call1 to double*
  %polly.access.call1672 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1672, %call2
  %polly.access.call2692 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2692, %call1
  %2 = or i1 %0, %1
  %polly.access.call712 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call712, %call2
  %4 = icmp ule i8* %polly.access.call2692, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call712, %call1
  %8 = icmp ule i8* %polly.access.call1672, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header785, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv7.i, i64 %index1094
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit846
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %index1159
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
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting472
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
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1182
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
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1208
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
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %exitcond994.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1217 = add i64 %indvar1216, 1
  br i1 %exitcond994.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond993.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond993.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv988 = phi i64 [ 7, %polly.loop_header199.preheader ], [ %indvars.iv.next989, %polly.loop_exit207 ]
  %indvars.iv977 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next978, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv988, i64 149)
  %97 = mul nsw i64 %polly.indvar202, -64
  %98 = icmp slt i64 %97, -1136
  %99 = select i1 %98, i64 %97, i64 -1136
  %100 = add nsw i64 %99, 1199
  %101 = shl nsw i64 %polly.indvar202, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -64
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 64
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 8
  %exitcond992.not = icmp eq i64 %polly.indvar_next203, 19
  br i1 %exitcond992.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %102 = shl nsw i64 %polly.indvar208, 2
  %103 = or i64 %102, 1
  %104 = or i64 %102, 2
  %105 = or i64 %102, 3
  %106 = shl i64 %polly.indvar208, 5
  %107 = shl i64 %polly.indvar208, 5
  %108 = or i64 %107, 8
  %109 = shl i64 %polly.indvar208, 5
  %110 = or i64 %109, 16
  %111 = shl i64 %polly.indvar208, 5
  %112 = or i64 %111, 24
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next209, 250
  br i1 %exitcond991.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit219 ], [ %indvars.iv977, %polly.loop_header205 ]
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit219 ], [ %indvars.iv, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %113 = shl nsw i64 %polly.indvar214, 3
  %114 = add nsw i64 %113, %97
  %115 = icmp sgt i64 %114, 0
  %116 = select i1 %115, i64 %114, i64 0
  %polly.loop_guard.not = icmp sgt i64 %116, %100
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv975, i64 0)
  %117 = add i64 %smax, %indvars.iv979
  %118 = sub nsw i64 %101, %113
  %119 = add nuw nsw i64 %113, 8
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, 8
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, -8
  %exitcond990.not = icmp eq i64 %polly.indvar214, %umin
  br i1 %exitcond990.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv981 = phi i64 [ %117, %polly.loop_header217.preheader ], [ %indvars.iv.next982, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %116, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv981, i64 7)
  %120 = add nsw i64 %polly.indvar220, %118
  %polly.loop_guard2331081 = icmp sgt i64 %120, -1
  %121 = add nuw nsw i64 %polly.indvar220, %101
  %.not = icmp ult i64 %121, %119
  %polly.access.mul.call1242 = mul nsw i64 %121, 1000
  %122 = add nuw i64 %polly.access.mul.call1242, %102
  br i1 %polly.loop_guard2331081, label %polly.loop_header230.us, label %polly.loop_header217.split

polly.loop_header230.us:                          ; preds = %polly.loop_header217, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header217 ]
  %123 = add nuw nsw i64 %polly.indvar234.us, %113
  %polly.access.mul.call1238.us = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1239.us = add nuw nsw i64 %102, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar234.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond983.not = icmp eq i64 %polly.indvar234.us, %smin985
  br i1 %exitcond983.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1663, i64 %122
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.loop_header230.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not, label %polly.loop_header230.us.1.preheader, label %polly.then.us

polly.loop_header230.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header230.us.1

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit250, label %polly.loop_header223.preheader

polly.loop_header223.preheader:                   ; preds = %polly.loop_header217.split
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1663, i64 %122
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.access.add.call1243.1 = or i64 %122, 1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %120, 1200
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.access.add.call1243.2 = or i64 %122, 2
  %polly.access.call1244.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.2
  %polly.access.call1244.load.2 = load double, double* %polly.access.call1244.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.2 = add nsw i64 %120, 2400
  %polly.access.Packed_MemRef_call1247.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.2
  store double %polly.access.call1244.load.2, double* %polly.access.Packed_MemRef_call1247.2, align 8
  %polly.access.add.call1243.3 = or i64 %122, 3
  %polly.access.call1244.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.3
  %polly.access.call1244.load.3 = load double, double* %polly.access.call1244.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.3 = add nsw i64 %120, 3600
  %polly.access.Packed_MemRef_call1247.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.3
  store double %polly.access.call1244.load.3, double* %polly.access.Packed_MemRef_call1247.3, align 8
  br label %polly.loop_exit250

polly.loop_exit250:                               ; preds = %polly.loop_header255.us.3, %polly.loop_header217.split, %polly.loop_header223.preheader, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, %100
  %indvars.iv.next982 = add i64 %indvars.iv981, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header248.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %124 = mul i64 %121, 8000
  %125 = mul i64 %121, 9600
  br i1 %polly.loop_guard2331081, label %polly.loop_header248.us.preheader, label %polly.loop_exit250

polly.loop_header248.us.preheader:                ; preds = %polly.loop_header248.preheader
  %126 = add i64 %106, %124
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %126
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %120
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us.preheader, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us.preheader ]
  %127 = add nuw nsw i64 %polly.indvar259.us, %113
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar259.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %128 = mul nuw nsw i64 %127, 8000
  %129 = add nuw nsw i64 %128, %106
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %130 = shl i64 %127, 3
  %131 = add i64 %130, %125
  %scevgep276.us = getelementptr i8, i8* %call, i64 %131
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar259.us, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %132 = add i64 %108, %124
  %scevgep266.us.1 = getelementptr i8, i8* %call2, i64 %132
  %scevgep266267.us.1 = bitcast i8* %scevgep266.us.1 to double*
  %_p_scalar_268.us.1 = load double, double* %scevgep266267.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.1 = add nsw i64 %120, 1200
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
  %133 = add i64 %indvar1190, 1
  %134 = mul nuw nsw i64 %polly.indvar370, 9600
  %scevgep379 = getelementptr i8, i8* %call, i64 %134
  %min.iters.check1192 = icmp ult i64 %133, 4
  br i1 %min.iters.check1192, label %polly.loop_header373.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header367
  %n.vec1195 = and i64 %133, -4
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1189 ]
  %135 = shl nuw nsw i64 %index1196, 3
  %136 = getelementptr i8, i8* %scevgep379, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %137, align 8, !alias.scope !74, !noalias !76
  %138 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %139 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %138, <4 x double>* %139, align 8, !alias.scope !74, !noalias !76
  %index.next1197 = add i64 %index1196, 4
  %140 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %140, label %middle.block1187, label %vector.body1189, !llvm.loop !80

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1199 = icmp eq i64 %133, %n.vec1195
  br i1 %cmp.n1199, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1187
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1195, %middle.block1187 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1187
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next371, 1200
  %indvar.next1191 = add i64 %indvar1190, 1
  br i1 %exitcond1020.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header383

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %141 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %141
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1019.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1019.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header383:                             ; preds = %polly.loop_header383.preheader, %polly.loop_exit391
  %indvars.iv1013 = phi i64 [ 7, %polly.loop_header383.preheader ], [ %indvars.iv.next1014, %polly.loop_exit391 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next1002, %polly.loop_exit391 ]
  %indvars.iv996 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %indvars.iv.next997, %polly.loop_exit391 ]
  %polly.indvar386 = phi i64 [ 0, %polly.loop_header383.preheader ], [ %polly.indvar_next387, %polly.loop_exit391 ]
  %umin1015 = call i64 @llvm.umin.i64(i64 %indvars.iv1013, i64 149)
  %142 = mul nsw i64 %polly.indvar386, -64
  %143 = icmp slt i64 %142, -1136
  %144 = select i1 %143, i64 %142, i64 -1136
  %145 = add nsw i64 %144, 1199
  %146 = shl nsw i64 %polly.indvar386, 6
  br label %polly.loop_header389

polly.loop_exit391:                               ; preds = %polly.loop_exit397
  %polly.indvar_next387 = add nuw nsw i64 %polly.indvar386, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -64
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 64
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 8
  %exitcond1018.not = icmp eq i64 %polly.indvar_next387, 19
  br i1 %exitcond1018.not, label %polly.exiting282, label %polly.loop_header383

polly.loop_header389:                             ; preds = %polly.loop_exit397, %polly.loop_header383
  %polly.indvar392 = phi i64 [ 0, %polly.loop_header383 ], [ %polly.indvar_next393, %polly.loop_exit397 ]
  %147 = shl nsw i64 %polly.indvar392, 2
  %148 = or i64 %147, 1
  %149 = or i64 %147, 2
  %150 = or i64 %147, 3
  %151 = shl i64 %polly.indvar392, 5
  %152 = shl i64 %polly.indvar392, 5
  %153 = or i64 %152, 8
  %154 = shl i64 %polly.indvar392, 5
  %155 = or i64 %154, 16
  %156 = shl i64 %polly.indvar392, 5
  %157 = or i64 %156, 24
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next393, 250
  br i1 %exitcond1017.not, label %polly.loop_exit391, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit404 ], [ %indvars.iv1001, %polly.loop_header389 ]
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %polly.loop_exit404 ], [ %indvars.iv996, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %158 = shl nsw i64 %polly.indvar398, 3
  %159 = add nsw i64 %158, %142
  %160 = icmp sgt i64 %159, 0
  %161 = select i1 %160, i64 %159, i64 0
  %polly.loop_guard405.not = icmp sgt i64 %161, %145
  br i1 %polly.loop_guard405.not, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header395
  %smax1000 = call i64 @llvm.smax.i64(i64 %indvars.iv998, i64 0)
  %162 = add i64 %smax1000, %indvars.iv1003
  %163 = sub nsw i64 %146, %158
  %164 = add nuw nsw i64 %158, 8
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit440, %polly.loop_header395
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, 8
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -8
  %exitcond1016.not = icmp eq i64 %polly.indvar398, %umin1015
  br i1 %exitcond1016.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit440
  %indvars.iv1005 = phi i64 [ %162, %polly.loop_header402.preheader ], [ %indvars.iv.next1006, %polly.loop_exit440 ]
  %polly.indvar406 = phi i64 [ %161, %polly.loop_header402.preheader ], [ %polly.indvar_next407, %polly.loop_exit440 ]
  %smin1010 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 7)
  %165 = add nsw i64 %polly.indvar406, %163
  %polly.loop_guard4191082 = icmp sgt i64 %165, -1
  %166 = add nuw nsw i64 %polly.indvar406, %146
  %.not865 = icmp ult i64 %166, %164
  %polly.access.mul.call1432 = mul nsw i64 %166, 1000
  %167 = add nuw i64 %polly.access.mul.call1432, %147
  br i1 %polly.loop_guard4191082, label %polly.loop_header416.us, label %polly.loop_header402.split

polly.loop_header416.us:                          ; preds = %polly.loop_header402, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ 0, %polly.loop_header402 ]
  %168 = add nuw nsw i64 %polly.indvar420.us, %158
  %polly.access.mul.call1424.us = mul nuw nsw i64 %168, 1000
  %polly.access.add.call1425.us = add nuw nsw i64 %147, %polly.access.mul.call1424.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.indvar420.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar420.us, %smin1010
  br i1 %exitcond1008.not, label %polly.cond427.loopexit.us, label %polly.loop_header416.us

polly.then429.us:                                 ; preds = %polly.cond427.loopexit.us
  %polly.access.call1434.us = getelementptr double, double* %polly.access.cast.call1663, i64 %167
  %polly.access.call1434.load.us = load double, double* %polly.access.call1434.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284437.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %165
  store double %polly.access.call1434.load.us, double* %polly.access.Packed_MemRef_call1284437.us, align 8
  br label %polly.loop_header416.us.1.preheader

polly.cond427.loopexit.us:                        ; preds = %polly.loop_header416.us
  br i1 %.not865, label %polly.loop_header416.us.1.preheader, label %polly.then429.us

polly.loop_header416.us.1.preheader:              ; preds = %polly.then429.us, %polly.cond427.loopexit.us
  br label %polly.loop_header416.us.1

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %.not865, label %polly.loop_exit440, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402.split
  %polly.access.call1434 = getelementptr double, double* %polly.access.cast.call1663, i64 %167
  %polly.access.call1434.load = load double, double* %polly.access.call1434, align 8, !alias.scope !77, !noalias !82
  %polly.access.Packed_MemRef_call1284437 = getelementptr double, double* %Packed_MemRef_call1284, i64 %165
  store double %polly.access.call1434.load, double* %polly.access.Packed_MemRef_call1284437, align 8
  %polly.access.add.call1433.1 = or i64 %167, 1
  %polly.access.call1434.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.1
  %polly.access.call1434.load.1 = load double, double* %polly.access.call1434.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.1 = add nsw i64 %165, 1200
  %polly.access.Packed_MemRef_call1284437.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.1
  store double %polly.access.call1434.load.1, double* %polly.access.Packed_MemRef_call1284437.1, align 8
  %polly.access.add.call1433.2 = or i64 %167, 2
  %polly.access.call1434.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.2
  %polly.access.call1434.load.2 = load double, double* %polly.access.call1434.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.2 = add nsw i64 %165, 2400
  %polly.access.Packed_MemRef_call1284437.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.2
  store double %polly.access.call1434.load.2, double* %polly.access.Packed_MemRef_call1284437.2, align 8
  %polly.access.add.call1433.3 = or i64 %167, 3
  %polly.access.call1434.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.3
  %polly.access.call1434.load.3 = load double, double* %polly.access.call1434.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.3 = add nsw i64 %165, 3600
  %polly.access.Packed_MemRef_call1284437.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.3
  store double %polly.access.call1434.load.3, double* %polly.access.Packed_MemRef_call1284437.3, align 8
  br label %polly.loop_exit440

polly.loop_exit440:                               ; preds = %polly.loop_header445.us.3, %polly.loop_header402.split, %polly.loop_header409.preheader, %polly.loop_header438.preheader
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408.not.not = icmp ult i64 %polly.indvar406, %145
  %indvars.iv.next1006 = add i64 %indvars.iv1005, 1
  br i1 %polly.loop_cond408.not.not, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header438.preheader:                   ; preds = %polly.cond427.loopexit.us.3, %polly.then429.us.3
  %169 = mul i64 %166, 8000
  %170 = mul i64 %166, 9600
  br i1 %polly.loop_guard4191082, label %polly.loop_header438.us.preheader, label %polly.loop_exit440

polly.loop_header438.us.preheader:                ; preds = %polly.loop_header438.preheader
  %171 = add i64 %151, %169
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %171
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.Packed_MemRef_call1284464.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %165
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1284464.us, align 8
  br label %polly.loop_header445.us

polly.loop_header445.us:                          ; preds = %polly.loop_header438.us.preheader, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ 0, %polly.loop_header438.us.preheader ]
  %172 = add nuw nsw i64 %polly.indvar449.us, %158
  %polly.access.Packed_MemRef_call1284454.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.indvar449.us
  %_p_scalar_455.us = load double, double* %polly.access.Packed_MemRef_call1284454.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_458.us, %_p_scalar_455.us
  %173 = mul nuw nsw i64 %172, 8000
  %174 = add nuw nsw i64 %173, %151
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %174
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %175 = shl i64 %172, 3
  %176 = add i64 %175, %170
  %scevgep466.us = getelementptr i8, i8* %call, i64 %176
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar449.us, %smin1010
  br i1 %exitcond1011.not, label %polly.loop_exit447.loopexit.us, label %polly.loop_header445.us

polly.loop_exit447.loopexit.us:                   ; preds = %polly.loop_header445.us
  %177 = add i64 %153, %169
  %scevgep456.us.1 = getelementptr i8, i8* %call2, i64 %177
  %scevgep456457.us.1 = bitcast i8* %scevgep456.us.1 to double*
  %_p_scalar_458.us.1 = load double, double* %scevgep456457.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us.1 = add nsw i64 %165, 1200
  %polly.access.Packed_MemRef_call1284464.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us.1
  %_p_scalar_465.us.1 = load double, double* %polly.access.Packed_MemRef_call1284464.us.1, align 8
  br label %polly.loop_header445.us.1

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header557

polly.exiting472:                                 ; preds = %polly.loop_exit581
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %178 = add i64 %indvar, 1
  %179 = mul nuw nsw i64 %polly.indvar560, 9600
  %scevgep569 = getelementptr i8, i8* %call, i64 %179
  %min.iters.check1166 = icmp ult i64 %178, 4
  br i1 %min.iters.check1166, label %polly.loop_header563.preheader, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header557
  %n.vec1169 = and i64 %178, -4
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1165 ]
  %180 = shl nuw nsw i64 %index1170, 3
  %181 = getelementptr i8, i8* %scevgep569, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  %wide.load1174 = load <4 x double>, <4 x double>* %182, align 8, !alias.scope !84, !noalias !86
  %183 = fmul fast <4 x double> %wide.load1174, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %184 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %183, <4 x double>* %184, align 8, !alias.scope !84, !noalias !86
  %index.next1171 = add i64 %index1170, 4
  %185 = icmp eq i64 %index.next1171, %n.vec1169
  br i1 %185, label %middle.block1163, label %vector.body1165, !llvm.loop !90

middle.block1163:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %178, %n.vec1169
  br i1 %cmp.n1173, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1163
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1169, %middle.block1163 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1163
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next561, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1046.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header573

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %186 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %186
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1045.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !91

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit581
  %indvars.iv1039 = phi i64 [ 7, %polly.loop_header573.preheader ], [ %indvars.iv.next1040, %polly.loop_exit581 ]
  %indvars.iv1027 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1028, %polly.loop_exit581 ]
  %indvars.iv1022 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %indvars.iv.next1023, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ 0, %polly.loop_header573.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %umin1041 = call i64 @llvm.umin.i64(i64 %indvars.iv1039, i64 149)
  %187 = mul nsw i64 %polly.indvar576, -64
  %188 = icmp slt i64 %187, -1136
  %189 = select i1 %188, i64 %187, i64 -1136
  %190 = add nsw i64 %189, 1199
  %191 = shl nsw i64 %polly.indvar576, 6
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit587
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, -64
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 64
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 8
  %exitcond1044.not = icmp eq i64 %polly.indvar_next577, 19
  br i1 %exitcond1044.not, label %polly.exiting472, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit587 ]
  %192 = shl nsw i64 %polly.indvar582, 2
  %193 = or i64 %192, 1
  %194 = or i64 %192, 2
  %195 = or i64 %192, 3
  %196 = shl i64 %polly.indvar582, 5
  %197 = shl i64 %polly.indvar582, 5
  %198 = or i64 %197, 8
  %199 = shl i64 %polly.indvar582, 5
  %200 = or i64 %199, 16
  %201 = shl i64 %polly.indvar582, 5
  %202 = or i64 %201, 24
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next583, 250
  br i1 %exitcond1043.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit594, %polly.loop_header579
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit594 ], [ %indvars.iv1027, %polly.loop_header579 ]
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %polly.loop_exit594 ], [ %indvars.iv1022, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %203 = shl nsw i64 %polly.indvar588, 3
  %204 = add nsw i64 %203, %187
  %205 = icmp sgt i64 %204, 0
  %206 = select i1 %205, i64 %204, i64 0
  %polly.loop_guard595.not = icmp sgt i64 %206, %190
  br i1 %polly.loop_guard595.not, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header585
  %smax1026 = call i64 @llvm.smax.i64(i64 %indvars.iv1024, i64 0)
  %207 = add i64 %smax1026, %indvars.iv1029
  %208 = sub nsw i64 %191, %203
  %209 = add nuw nsw i64 %203, 8
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit630, %polly.loop_header585
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, 8
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -8
  %exitcond1042.not = icmp eq i64 %polly.indvar588, %umin1041
  br i1 %exitcond1042.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit630
  %indvars.iv1031 = phi i64 [ %207, %polly.loop_header592.preheader ], [ %indvars.iv.next1032, %polly.loop_exit630 ]
  %polly.indvar596 = phi i64 [ %206, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit630 ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1031, i64 7)
  %210 = add nsw i64 %polly.indvar596, %208
  %polly.loop_guard6091083 = icmp sgt i64 %210, -1
  %211 = add nuw nsw i64 %polly.indvar596, %191
  %.not866 = icmp ult i64 %211, %209
  %polly.access.mul.call1622 = mul nsw i64 %211, 1000
  %212 = add nuw i64 %polly.access.mul.call1622, %192
  br i1 %polly.loop_guard6091083, label %polly.loop_header606.us, label %polly.loop_header592.split

polly.loop_header606.us:                          ; preds = %polly.loop_header592, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header592 ]
  %213 = add nuw nsw i64 %polly.indvar610.us, %203
  %polly.access.mul.call1614.us = mul nuw nsw i64 %213, 1000
  %polly.access.add.call1615.us = add nuw nsw i64 %192, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.indvar610.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar610.us, %smin1036
  br i1 %exitcond1034.not, label %polly.cond617.loopexit.us, label %polly.loop_header606.us

polly.then619.us:                                 ; preds = %polly.cond617.loopexit.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1663, i64 %212
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1474627.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %210
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1474627.us, align 8
  br label %polly.loop_header606.us.1.preheader

polly.cond617.loopexit.us:                        ; preds = %polly.loop_header606.us
  br i1 %.not866, label %polly.loop_header606.us.1.preheader, label %polly.then619.us

polly.loop_header606.us.1.preheader:              ; preds = %polly.then619.us, %polly.cond617.loopexit.us
  br label %polly.loop_header606.us.1

polly.loop_header592.split:                       ; preds = %polly.loop_header592
  br i1 %.not866, label %polly.loop_exit630, label %polly.loop_header599.preheader

polly.loop_header599.preheader:                   ; preds = %polly.loop_header592.split
  %polly.access.call1624 = getelementptr double, double* %polly.access.cast.call1663, i64 %212
  %polly.access.call1624.load = load double, double* %polly.access.call1624, align 8, !alias.scope !87, !noalias !92
  %polly.access.Packed_MemRef_call1474627 = getelementptr double, double* %Packed_MemRef_call1474, i64 %210
  store double %polly.access.call1624.load, double* %polly.access.Packed_MemRef_call1474627, align 8
  %polly.access.add.call1623.1 = or i64 %212, 1
  %polly.access.call1624.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.1
  %polly.access.call1624.load.1 = load double, double* %polly.access.call1624.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1474627.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.1
  store double %polly.access.call1624.load.1, double* %polly.access.Packed_MemRef_call1474627.1, align 8
  %polly.access.add.call1623.2 = or i64 %212, 2
  %polly.access.call1624.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.2
  %polly.access.call1624.load.2 = load double, double* %polly.access.call1624.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1474627.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.2
  store double %polly.access.call1624.load.2, double* %polly.access.Packed_MemRef_call1474627.2, align 8
  %polly.access.add.call1623.3 = or i64 %212, 3
  %polly.access.call1624.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.3
  %polly.access.call1624.load.3 = load double, double* %polly.access.call1624.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1474627.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.3
  store double %polly.access.call1624.load.3, double* %polly.access.Packed_MemRef_call1474627.3, align 8
  br label %polly.loop_exit630

polly.loop_exit630:                               ; preds = %polly.loop_header635.us.3, %polly.loop_header592.split, %polly.loop_header599.preheader, %polly.loop_header628.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not.not = icmp ult i64 %polly.indvar596, %190
  %indvars.iv.next1032 = add i64 %indvars.iv1031, 1
  br i1 %polly.loop_cond598.not.not, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header628.preheader:                   ; preds = %polly.cond617.loopexit.us.3, %polly.then619.us.3
  %214 = mul i64 %211, 8000
  %215 = mul i64 %211, 9600
  br i1 %polly.loop_guard6091083, label %polly.loop_header628.us.preheader, label %polly.loop_exit630

polly.loop_header628.us.preheader:                ; preds = %polly.loop_header628.preheader
  %216 = add i64 %196, %214
  %scevgep646.us = getelementptr i8, i8* %call2, i64 %216
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.Packed_MemRef_call1474654.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %210
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1474654.us, align 8
  br label %polly.loop_header635.us

polly.loop_header635.us:                          ; preds = %polly.loop_header628.us.preheader, %polly.loop_header635.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_header635.us ], [ 0, %polly.loop_header628.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar639.us, %203
  %polly.access.Packed_MemRef_call1474644.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.indvar639.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1474644.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_648.us, %_p_scalar_645.us
  %218 = mul nuw nsw i64 %217, 8000
  %219 = add nuw nsw i64 %218, %196
  %scevgep649.us = getelementptr i8, i8* %call2, i64 %219
  %scevgep649650.us = bitcast i8* %scevgep649.us to double*
  %_p_scalar_651.us = load double, double* %scevgep649650.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %220 = shl i64 %217, 3
  %221 = add i64 %220, %215
  %scevgep656.us = getelementptr i8, i8* %call, i64 %221
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_658.us
  store double %p_add42.i.us, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar639.us, %smin1036
  br i1 %exitcond1037.not, label %polly.loop_exit637.loopexit.us, label %polly.loop_header635.us

polly.loop_exit637.loopexit.us:                   ; preds = %polly.loop_header635.us
  %222 = add i64 %198, %214
  %scevgep646.us.1 = getelementptr i8, i8* %call2, i64 %222
  %scevgep646647.us.1 = bitcast i8* %scevgep646.us.1 to double*
  %_p_scalar_648.us.1 = load double, double* %scevgep646647.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1474654.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us.1
  %_p_scalar_655.us.1 = load double, double* %polly.access.Packed_MemRef_call1474654.us.1, align 8
  br label %polly.loop_header635.us.1

polly.loop_header785:                             ; preds = %entry, %polly.loop_exit793
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit793 ], [ 0, %entry ]
  %polly.indvar788 = phi i64 [ %polly.indvar_next789, %polly.loop_exit793 ], [ 0, %entry ]
  %smin1073 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 -1168)
  %223 = shl nsw i64 %polly.indvar788, 5
  %224 = add nsw i64 %smin1073, 1199
  br label %polly.loop_header791

polly.loop_exit793:                               ; preds = %polly.loop_exit799
  %polly.indvar_next789 = add nuw nsw i64 %polly.indvar788, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1076.not = icmp eq i64 %polly.indvar_next789, 38
  br i1 %exitcond1076.not, label %polly.loop_header812, label %polly.loop_header785

polly.loop_header791:                             ; preds = %polly.loop_exit799, %polly.loop_header785
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_header785 ]
  %225 = mul nsw i64 %polly.indvar794, -32
  %smin = call i64 @llvm.smin.i64(i64 %225, i64 -1168)
  %226 = add nsw i64 %smin, 1200
  %smin1069 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 -1168)
  %227 = shl nsw i64 %polly.indvar794, 5
  %228 = add nsw i64 %smin1069, 1199
  br label %polly.loop_header797

polly.loop_exit799:                               ; preds = %polly.loop_exit805
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -32
  %exitcond1075.not = icmp eq i64 %polly.indvar_next795, 38
  br i1 %exitcond1075.not, label %polly.loop_exit793, label %polly.loop_header791

polly.loop_header797:                             ; preds = %polly.loop_exit805, %polly.loop_header791
  %polly.indvar800 = phi i64 [ 0, %polly.loop_header791 ], [ %polly.indvar_next801, %polly.loop_exit805 ]
  %229 = add nuw nsw i64 %polly.indvar800, %223
  %230 = trunc i64 %229 to i32
  %231 = mul nuw nsw i64 %229, 9600
  %min.iters.check = icmp eq i64 %226, 0
  br i1 %min.iters.check, label %polly.loop_header803, label %vector.ph1105

vector.ph1105:                                    ; preds = %polly.loop_header797
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %227, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %232 = add nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %233 = trunc <4 x i64> %232 to <4 x i32>
  %234 = mul <4 x i32> %broadcast.splat1115, %233
  %235 = add <4 x i32> %234, <i32 3, i32 3, i32 3, i32 3>
  %236 = urem <4 x i32> %235, <i32 1200, i32 1200, i32 1200, i32 1200>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %239 = extractelement <4 x i64> %232, i32 0
  %240 = shl i64 %239, 3
  %241 = add nuw nsw i64 %240, %231
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %238, <4 x double>* %243, align 8, !alias.scope !94, !noalias !96
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %244 = icmp eq i64 %index.next1107, %226
  br i1 %244, label %polly.loop_exit805, label %vector.body1104, !llvm.loop !99

polly.loop_exit805:                               ; preds = %vector.body1104, %polly.loop_header803
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar800, %224
  br i1 %exitcond1074.not, label %polly.loop_exit799, label %polly.loop_header797

polly.loop_header803:                             ; preds = %polly.loop_header797, %polly.loop_header803
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_header803 ], [ 0, %polly.loop_header797 ]
  %245 = add nuw nsw i64 %polly.indvar806, %227
  %246 = trunc i64 %245 to i32
  %247 = mul i32 %246, %230
  %248 = add i32 %247, 3
  %249 = urem i32 %248, 1200
  %p_conv31.i = sitofp i32 %249 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %250 = shl i64 %245, 3
  %251 = add nuw nsw i64 %250, %231
  %scevgep809 = getelementptr i8, i8* %call, i64 %251
  %scevgep809810 = bitcast i8* %scevgep809 to double*
  store double %p_div33.i, double* %scevgep809810, align 8, !alias.scope !94, !noalias !96
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar806, %228
  br i1 %exitcond1070.not, label %polly.loop_exit805, label %polly.loop_header803, !llvm.loop !100

polly.loop_header812:                             ; preds = %polly.loop_exit793, %polly.loop_exit820
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %polly.indvar815 = phi i64 [ %polly.indvar_next816, %polly.loop_exit820 ], [ 0, %polly.loop_exit793 ]
  %smin1063 = call i64 @llvm.smin.i64(i64 %indvars.iv1061, i64 -1168)
  %252 = shl nsw i64 %polly.indvar815, 5
  %253 = add nsw i64 %smin1063, 1199
  br label %polly.loop_header818

polly.loop_exit820:                               ; preds = %polly.loop_exit826
  %polly.indvar_next816 = add nuw nsw i64 %polly.indvar815, 1
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -32
  %exitcond1066.not = icmp eq i64 %polly.indvar_next816, 38
  br i1 %exitcond1066.not, label %polly.loop_header838, label %polly.loop_header812

polly.loop_header818:                             ; preds = %polly.loop_exit826, %polly.loop_header812
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_header812 ]
  %254 = mul nsw i64 %polly.indvar821, -32
  %smin1119 = call i64 @llvm.smin.i64(i64 %254, i64 -968)
  %255 = add nsw i64 %smin1119, 1000
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 -968)
  %256 = shl nsw i64 %polly.indvar821, 5
  %257 = add nsw i64 %smin1059, 999
  br label %polly.loop_header824

polly.loop_exit826:                               ; preds = %polly.loop_exit832
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %indvars.iv.next1058 = add nsw i64 %indvars.iv1057, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next822, 32
  br i1 %exitcond1065.not, label %polly.loop_exit820, label %polly.loop_header818

polly.loop_header824:                             ; preds = %polly.loop_exit832, %polly.loop_header818
  %polly.indvar827 = phi i64 [ 0, %polly.loop_header818 ], [ %polly.indvar_next828, %polly.loop_exit832 ]
  %258 = add nuw nsw i64 %polly.indvar827, %252
  %259 = trunc i64 %258 to i32
  %260 = mul nuw nsw i64 %258, 8000
  %min.iters.check1120 = icmp eq i64 %255, 0
  br i1 %min.iters.check1120, label %polly.loop_header830, label %vector.ph1121

vector.ph1121:                                    ; preds = %polly.loop_header824
  %broadcast.splatinsert1130 = insertelement <4 x i64> poison, i64 %256, i32 0
  %broadcast.splat1131 = shufflevector <4 x i64> %broadcast.splatinsert1130, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %259, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1125, %vector.body1118 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1121 ], [ %vec.ind.next1129, %vector.body1118 ]
  %261 = add nuw nsw <4 x i64> %vec.ind1128, %broadcast.splat1131
  %262 = trunc <4 x i64> %261 to <4 x i32>
  %263 = mul <4 x i32> %broadcast.splat1133, %262
  %264 = add <4 x i32> %263, <i32 2, i32 2, i32 2, i32 2>
  %265 = urem <4 x i32> %264, <i32 1000, i32 1000, i32 1000, i32 1000>
  %266 = sitofp <4 x i32> %265 to <4 x double>
  %267 = fmul fast <4 x double> %266, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %268 = extractelement <4 x i64> %261, i32 0
  %269 = shl i64 %268, 3
  %270 = add nuw nsw i64 %269, %260
  %271 = getelementptr i8, i8* %call2, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %267, <4 x double>* %272, align 8, !alias.scope !98, !noalias !101
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %273 = icmp eq i64 %index.next1125, %255
  br i1 %273, label %polly.loop_exit832, label %vector.body1118, !llvm.loop !102

polly.loop_exit832:                               ; preds = %vector.body1118, %polly.loop_header830
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar827, %253
  br i1 %exitcond1064.not, label %polly.loop_exit826, label %polly.loop_header824

polly.loop_header830:                             ; preds = %polly.loop_header824, %polly.loop_header830
  %polly.indvar833 = phi i64 [ %polly.indvar_next834, %polly.loop_header830 ], [ 0, %polly.loop_header824 ]
  %274 = add nuw nsw i64 %polly.indvar833, %256
  %275 = trunc i64 %274 to i32
  %276 = mul i32 %275, %259
  %277 = add i32 %276, 2
  %278 = urem i32 %277, 1000
  %p_conv10.i = sitofp i32 %278 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %279 = shl i64 %274, 3
  %280 = add nuw nsw i64 %279, %260
  %scevgep836 = getelementptr i8, i8* %call2, i64 %280
  %scevgep836837 = bitcast i8* %scevgep836 to double*
  store double %p_div12.i, double* %scevgep836837, align 8, !alias.scope !98, !noalias !101
  %polly.indvar_next834 = add nuw nsw i64 %polly.indvar833, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar833, %257
  br i1 %exitcond1060.not, label %polly.loop_exit832, label %polly.loop_header830, !llvm.loop !103

polly.loop_header838:                             ; preds = %polly.loop_exit820, %polly.loop_exit846
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %polly.loop_exit820 ]
  %smin1053 = call i64 @llvm.smin.i64(i64 %indvars.iv1051, i64 -1168)
  %281 = shl nsw i64 %polly.indvar841, 5
  %282 = add nsw i64 %smin1053, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1052 = add nsw i64 %indvars.iv1051, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1056.not, label %init_array.exit, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %283 = mul nsw i64 %polly.indvar847, -32
  %smin1137 = call i64 @llvm.smin.i64(i64 %283, i64 -968)
  %284 = add nsw i64 %smin1137, 1000
  %smin1049 = call i64 @llvm.smin.i64(i64 %indvars.iv1047, i64 -968)
  %285 = shl nsw i64 %polly.indvar847, 5
  %286 = add nsw i64 %smin1049, 999
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1048 = add nsw i64 %indvars.iv1047, -32
  %exitcond1055.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1055.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %287 = add nuw nsw i64 %polly.indvar853, %281
  %288 = trunc i64 %287 to i32
  %289 = mul nuw nsw i64 %287, 8000
  %min.iters.check1138 = icmp eq i64 %284, 0
  br i1 %min.iters.check1138, label %polly.loop_header856, label %vector.ph1139

vector.ph1139:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %285, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1136 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1147, %vector.body1136 ]
  %290 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %291 = trunc <4 x i64> %290 to <4 x i32>
  %292 = mul <4 x i32> %broadcast.splat1151, %291
  %293 = add <4 x i32> %292, <i32 1, i32 1, i32 1, i32 1>
  %294 = urem <4 x i32> %293, <i32 1200, i32 1200, i32 1200, i32 1200>
  %295 = sitofp <4 x i32> %294 to <4 x double>
  %296 = fmul fast <4 x double> %295, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %297 = extractelement <4 x i64> %290, i32 0
  %298 = shl i64 %297, 3
  %299 = add nuw nsw i64 %298, %289
  %300 = getelementptr i8, i8* %call1, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %296, <4 x double>* %301, align 8, !alias.scope !97, !noalias !104
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %302 = icmp eq i64 %index.next1143, %284
  br i1 %302, label %polly.loop_exit858, label %vector.body1136, !llvm.loop !105

polly.loop_exit858:                               ; preds = %vector.body1136, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1054.not = icmp eq i64 %polly.indvar853, %282
  br i1 %exitcond1054.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %303 = add nuw nsw i64 %polly.indvar859, %285
  %304 = trunc i64 %303 to i32
  %305 = mul i32 %304, %288
  %306 = add i32 %305, 1
  %307 = urem i32 %306, 1200
  %p_conv.i = sitofp i32 %307 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %308 = shl i64 %303, 3
  %309 = add nuw nsw i64 %308, %289
  %scevgep863 = getelementptr i8, i8* %call1, i64 %309
  %scevgep863864 = bitcast i8* %scevgep863 to double*
  store double %p_div.i, double* %scevgep863864, align 8, !alias.scope !97, !noalias !104
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar859, %286
  br i1 %exitcond1050.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !106

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1.preheader, %polly.loop_header230.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header230.us.1.preheader ]
  %310 = add nuw nsw i64 %polly.indvar234.us.1, %113
  %polly.access.mul.call1238.us.1 = mul nuw nsw i64 %310, 1000
  %polly.access.add.call1239.us.1 = add nuw nsw i64 %103, %polly.access.mul.call1238.us.1
  %polly.access.call1240.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us.1
  %polly.access.call1240.load.us.1 = load double, double* %polly.access.call1240.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1240.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond983.1.not = icmp eq i64 %polly.indvar234.us.1, %smin985
  br i1 %exitcond983.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header230.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header230.us.1
  br i1 %.not, label %polly.loop_header230.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1243.us.1 = or i64 %122, 1
  %polly.access.call1244.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us.1
  %polly.access.call1244.load.us.1 = load double, double* %polly.access.call1244.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.1 = add nsw i64 %120, 1200
  %polly.access.Packed_MemRef_call1247.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.1
  store double %polly.access.call1244.load.us.1, double* %polly.access.Packed_MemRef_call1247.us.1, align 8
  br label %polly.loop_header230.us.2.preheader

polly.loop_header230.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header230.us.2

polly.loop_header230.us.2:                        ; preds = %polly.loop_header230.us.2.preheader, %polly.loop_header230.us.2
  %polly.indvar234.us.2 = phi i64 [ %polly.indvar_next235.us.2, %polly.loop_header230.us.2 ], [ 0, %polly.loop_header230.us.2.preheader ]
  %311 = add nuw nsw i64 %polly.indvar234.us.2, %113
  %polly.access.mul.call1238.us.2 = mul nuw nsw i64 %311, 1000
  %polly.access.add.call1239.us.2 = add nuw nsw i64 %104, %polly.access.mul.call1238.us.2
  %polly.access.call1240.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us.2
  %polly.access.call1240.load.us.2 = load double, double* %polly.access.call1240.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1240.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next235.us.2 = add nuw nsw i64 %polly.indvar234.us.2, 1
  %exitcond983.2.not = icmp eq i64 %polly.indvar234.us.2, %smin985
  br i1 %exitcond983.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header230.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header230.us.2
  br i1 %.not, label %polly.loop_header230.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1243.us.2 = or i64 %122, 2
  %polly.access.call1244.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us.2
  %polly.access.call1244.load.us.2 = load double, double* %polly.access.call1244.us.2, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.2 = add nsw i64 %120, 2400
  %polly.access.Packed_MemRef_call1247.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.2
  store double %polly.access.call1244.load.us.2, double* %polly.access.Packed_MemRef_call1247.us.2, align 8
  br label %polly.loop_header230.us.3.preheader

polly.loop_header230.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header230.us.3

polly.loop_header230.us.3:                        ; preds = %polly.loop_header230.us.3.preheader, %polly.loop_header230.us.3
  %polly.indvar234.us.3 = phi i64 [ %polly.indvar_next235.us.3, %polly.loop_header230.us.3 ], [ 0, %polly.loop_header230.us.3.preheader ]
  %312 = add nuw nsw i64 %polly.indvar234.us.3, %113
  %polly.access.mul.call1238.us.3 = mul nuw nsw i64 %312, 1000
  %polly.access.add.call1239.us.3 = add nuw nsw i64 %105, %polly.access.mul.call1238.us.3
  %polly.access.call1240.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us.3
  %polly.access.call1240.load.us.3 = load double, double* %polly.access.call1240.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1240.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next235.us.3 = add nuw nsw i64 %polly.indvar234.us.3, 1
  %exitcond983.3.not = icmp eq i64 %polly.indvar234.us.3, %smin985
  br i1 %exitcond983.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header230.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header230.us.3
  br i1 %.not, label %polly.loop_header248.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1243.us.3 = or i64 %122, 3
  %polly.access.call1244.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us.3
  %polly.access.call1244.load.us.3 = load double, double* %polly.access.call1244.us.3, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.3 = add nsw i64 %120, 3600
  %polly.access.Packed_MemRef_call1247.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.3
  store double %polly.access.call1244.load.us.3, double* %polly.access.Packed_MemRef_call1247.us.3, align 8
  br label %polly.loop_header248.preheader

polly.loop_header255.us.1:                        ; preds = %polly.loop_header255.us.1, %polly.loop_exit257.loopexit.us
  %polly.indvar259.us.1 = phi i64 [ %polly.indvar_next260.us.1, %polly.loop_header255.us.1 ], [ 0, %polly.loop_exit257.loopexit.us ]
  %313 = add nuw nsw i64 %polly.indvar259.us.1, %113
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  %_p_scalar_265.us.1 = load double, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_268.us.1, %_p_scalar_265.us.1
  %314 = mul nuw nsw i64 %313, 8000
  %315 = add nuw nsw i64 %314, %108
  %scevgep269.us.1 = getelementptr i8, i8* %call2, i64 %315
  %scevgep269270.us.1 = bitcast i8* %scevgep269.us.1 to double*
  %_p_scalar_271.us.1 = load double, double* %scevgep269270.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_275.us.1, %_p_scalar_271.us.1
  %316 = shl i64 %313, 3
  %317 = add i64 %316, %125
  %scevgep276.us.1 = getelementptr i8, i8* %call, i64 %317
  %scevgep276277.us.1 = bitcast i8* %scevgep276.us.1 to double*
  %_p_scalar_278.us.1 = load double, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_278.us.1
  store double %p_add42.i118.us.1, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %exitcond986.1.not = icmp eq i64 %polly.indvar259.us.1, %smin985
  br i1 %exitcond986.1.not, label %polly.loop_exit257.loopexit.us.1, label %polly.loop_header255.us.1

polly.loop_exit257.loopexit.us.1:                 ; preds = %polly.loop_header255.us.1
  %318 = add i64 %110, %124
  %scevgep266.us.2 = getelementptr i8, i8* %call2, i64 %318
  %scevgep266267.us.2 = bitcast i8* %scevgep266.us.2 to double*
  %_p_scalar_268.us.2 = load double, double* %scevgep266267.us.2, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.2 = add nsw i64 %120, 2400
  %polly.access.Packed_MemRef_call1274.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.2
  %_p_scalar_275.us.2 = load double, double* %polly.access.Packed_MemRef_call1274.us.2, align 8
  br label %polly.loop_header255.us.2

polly.loop_header255.us.2:                        ; preds = %polly.loop_header255.us.2, %polly.loop_exit257.loopexit.us.1
  %polly.indvar259.us.2 = phi i64 [ %polly.indvar_next260.us.2, %polly.loop_header255.us.2 ], [ 0, %polly.loop_exit257.loopexit.us.1 ]
  %319 = add nuw nsw i64 %polly.indvar259.us.2, %113
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar259.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  %_p_scalar_265.us.2 = load double, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_268.us.2, %_p_scalar_265.us.2
  %320 = mul nuw nsw i64 %319, 8000
  %321 = add nuw nsw i64 %320, %110
  %scevgep269.us.2 = getelementptr i8, i8* %call2, i64 %321
  %scevgep269270.us.2 = bitcast i8* %scevgep269.us.2 to double*
  %_p_scalar_271.us.2 = load double, double* %scevgep269270.us.2, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_275.us.2, %_p_scalar_271.us.2
  %322 = shl i64 %319, 3
  %323 = add i64 %322, %125
  %scevgep276.us.2 = getelementptr i8, i8* %call, i64 %323
  %scevgep276277.us.2 = bitcast i8* %scevgep276.us.2 to double*
  %_p_scalar_278.us.2 = load double, double* %scevgep276277.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_278.us.2
  store double %p_add42.i118.us.2, double* %scevgep276277.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.2 = add nuw nsw i64 %polly.indvar259.us.2, 1
  %exitcond986.2.not = icmp eq i64 %polly.indvar259.us.2, %smin985
  br i1 %exitcond986.2.not, label %polly.loop_exit257.loopexit.us.2, label %polly.loop_header255.us.2

polly.loop_exit257.loopexit.us.2:                 ; preds = %polly.loop_header255.us.2
  %324 = add i64 %112, %124
  %scevgep266.us.3 = getelementptr i8, i8* %call2, i64 %324
  %scevgep266267.us.3 = bitcast i8* %scevgep266.us.3 to double*
  %_p_scalar_268.us.3 = load double, double* %scevgep266267.us.3, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.3 = add nsw i64 %120, 3600
  %polly.access.Packed_MemRef_call1274.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.3
  %_p_scalar_275.us.3 = load double, double* %polly.access.Packed_MemRef_call1274.us.3, align 8
  br label %polly.loop_header255.us.3

polly.loop_header255.us.3:                        ; preds = %polly.loop_header255.us.3, %polly.loop_exit257.loopexit.us.2
  %polly.indvar259.us.3 = phi i64 [ %polly.indvar_next260.us.3, %polly.loop_header255.us.3 ], [ 0, %polly.loop_exit257.loopexit.us.2 ]
  %325 = add nuw nsw i64 %polly.indvar259.us.3, %113
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar259.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  %_p_scalar_265.us.3 = load double, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_268.us.3, %_p_scalar_265.us.3
  %326 = mul nuw nsw i64 %325, 8000
  %327 = add nuw nsw i64 %326, %112
  %scevgep269.us.3 = getelementptr i8, i8* %call2, i64 %327
  %scevgep269270.us.3 = bitcast i8* %scevgep269.us.3 to double*
  %_p_scalar_271.us.3 = load double, double* %scevgep269270.us.3, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_275.us.3, %_p_scalar_271.us.3
  %328 = shl i64 %325, 3
  %329 = add i64 %328, %125
  %scevgep276.us.3 = getelementptr i8, i8* %call, i64 %329
  %scevgep276277.us.3 = bitcast i8* %scevgep276.us.3 to double*
  %_p_scalar_278.us.3 = load double, double* %scevgep276277.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_278.us.3
  store double %p_add42.i118.us.3, double* %scevgep276277.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.3 = add nuw nsw i64 %polly.indvar259.us.3, 1
  %exitcond986.3.not = icmp eq i64 %polly.indvar259.us.3, %smin985
  br i1 %exitcond986.3.not, label %polly.loop_exit250, label %polly.loop_header255.us.3

polly.loop_header416.us.1:                        ; preds = %polly.loop_header416.us.1.preheader, %polly.loop_header416.us.1
  %polly.indvar420.us.1 = phi i64 [ %polly.indvar_next421.us.1, %polly.loop_header416.us.1 ], [ 0, %polly.loop_header416.us.1.preheader ]
  %330 = add nuw nsw i64 %polly.indvar420.us.1, %158
  %polly.access.mul.call1424.us.1 = mul nuw nsw i64 %330, 1000
  %polly.access.add.call1425.us.1 = add nuw nsw i64 %148, %polly.access.mul.call1424.us.1
  %polly.access.call1426.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us.1
  %polly.access.call1426.load.us.1 = load double, double* %polly.access.call1426.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.1 = add nuw nsw i64 %polly.indvar420.us.1, 1200
  %polly.access.Packed_MemRef_call1284.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.1
  store double %polly.access.call1426.load.us.1, double* %polly.access.Packed_MemRef_call1284.us.1, align 8
  %polly.indvar_next421.us.1 = add nuw nsw i64 %polly.indvar420.us.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar420.us.1, %smin1010
  br i1 %exitcond1008.1.not, label %polly.cond427.loopexit.us.1, label %polly.loop_header416.us.1

polly.cond427.loopexit.us.1:                      ; preds = %polly.loop_header416.us.1
  br i1 %.not865, label %polly.loop_header416.us.2.preheader, label %polly.then429.us.1

polly.then429.us.1:                               ; preds = %polly.cond427.loopexit.us.1
  %polly.access.add.call1433.us.1 = or i64 %167, 1
  %polly.access.call1434.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us.1
  %polly.access.call1434.load.us.1 = load double, double* %polly.access.call1434.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us.1 = add nsw i64 %165, 1200
  %polly.access.Packed_MemRef_call1284437.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us.1
  store double %polly.access.call1434.load.us.1, double* %polly.access.Packed_MemRef_call1284437.us.1, align 8
  br label %polly.loop_header416.us.2.preheader

polly.loop_header416.us.2.preheader:              ; preds = %polly.then429.us.1, %polly.cond427.loopexit.us.1
  br label %polly.loop_header416.us.2

polly.loop_header416.us.2:                        ; preds = %polly.loop_header416.us.2.preheader, %polly.loop_header416.us.2
  %polly.indvar420.us.2 = phi i64 [ %polly.indvar_next421.us.2, %polly.loop_header416.us.2 ], [ 0, %polly.loop_header416.us.2.preheader ]
  %331 = add nuw nsw i64 %polly.indvar420.us.2, %158
  %polly.access.mul.call1424.us.2 = mul nuw nsw i64 %331, 1000
  %polly.access.add.call1425.us.2 = add nuw nsw i64 %149, %polly.access.mul.call1424.us.2
  %polly.access.call1426.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us.2
  %polly.access.call1426.load.us.2 = load double, double* %polly.access.call1426.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.2 = add nuw nsw i64 %polly.indvar420.us.2, 2400
  %polly.access.Packed_MemRef_call1284.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.2
  store double %polly.access.call1426.load.us.2, double* %polly.access.Packed_MemRef_call1284.us.2, align 8
  %polly.indvar_next421.us.2 = add nuw nsw i64 %polly.indvar420.us.2, 1
  %exitcond1008.2.not = icmp eq i64 %polly.indvar420.us.2, %smin1010
  br i1 %exitcond1008.2.not, label %polly.cond427.loopexit.us.2, label %polly.loop_header416.us.2

polly.cond427.loopexit.us.2:                      ; preds = %polly.loop_header416.us.2
  br i1 %.not865, label %polly.loop_header416.us.3.preheader, label %polly.then429.us.2

polly.then429.us.2:                               ; preds = %polly.cond427.loopexit.us.2
  %polly.access.add.call1433.us.2 = or i64 %167, 2
  %polly.access.call1434.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us.2
  %polly.access.call1434.load.us.2 = load double, double* %polly.access.call1434.us.2, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us.2 = add nsw i64 %165, 2400
  %polly.access.Packed_MemRef_call1284437.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us.2
  store double %polly.access.call1434.load.us.2, double* %polly.access.Packed_MemRef_call1284437.us.2, align 8
  br label %polly.loop_header416.us.3.preheader

polly.loop_header416.us.3.preheader:              ; preds = %polly.then429.us.2, %polly.cond427.loopexit.us.2
  br label %polly.loop_header416.us.3

polly.loop_header416.us.3:                        ; preds = %polly.loop_header416.us.3.preheader, %polly.loop_header416.us.3
  %polly.indvar420.us.3 = phi i64 [ %polly.indvar_next421.us.3, %polly.loop_header416.us.3 ], [ 0, %polly.loop_header416.us.3.preheader ]
  %332 = add nuw nsw i64 %polly.indvar420.us.3, %158
  %polly.access.mul.call1424.us.3 = mul nuw nsw i64 %332, 1000
  %polly.access.add.call1425.us.3 = add nuw nsw i64 %150, %polly.access.mul.call1424.us.3
  %polly.access.call1426.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us.3
  %polly.access.call1426.load.us.3 = load double, double* %polly.access.call1426.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.3 = add nuw nsw i64 %polly.indvar420.us.3, 3600
  %polly.access.Packed_MemRef_call1284.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.3
  store double %polly.access.call1426.load.us.3, double* %polly.access.Packed_MemRef_call1284.us.3, align 8
  %polly.indvar_next421.us.3 = add nuw nsw i64 %polly.indvar420.us.3, 1
  %exitcond1008.3.not = icmp eq i64 %polly.indvar420.us.3, %smin1010
  br i1 %exitcond1008.3.not, label %polly.cond427.loopexit.us.3, label %polly.loop_header416.us.3

polly.cond427.loopexit.us.3:                      ; preds = %polly.loop_header416.us.3
  br i1 %.not865, label %polly.loop_header438.preheader, label %polly.then429.us.3

polly.then429.us.3:                               ; preds = %polly.cond427.loopexit.us.3
  %polly.access.add.call1433.us.3 = or i64 %167, 3
  %polly.access.call1434.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us.3
  %polly.access.call1434.load.us.3 = load double, double* %polly.access.call1434.us.3, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us.3 = add nsw i64 %165, 3600
  %polly.access.Packed_MemRef_call1284437.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us.3
  store double %polly.access.call1434.load.us.3, double* %polly.access.Packed_MemRef_call1284437.us.3, align 8
  br label %polly.loop_header438.preheader

polly.loop_header445.us.1:                        ; preds = %polly.loop_header445.us.1, %polly.loop_exit447.loopexit.us
  %polly.indvar449.us.1 = phi i64 [ %polly.indvar_next450.us.1, %polly.loop_header445.us.1 ], [ 0, %polly.loop_exit447.loopexit.us ]
  %333 = add nuw nsw i64 %polly.indvar449.us.1, %158
  %polly.access.add.Packed_MemRef_call1284453.us.1 = add nuw nsw i64 %polly.indvar449.us.1, 1200
  %polly.access.Packed_MemRef_call1284454.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us.1
  %_p_scalar_455.us.1 = load double, double* %polly.access.Packed_MemRef_call1284454.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_458.us.1, %_p_scalar_455.us.1
  %334 = mul nuw nsw i64 %333, 8000
  %335 = add nuw nsw i64 %334, %153
  %scevgep459.us.1 = getelementptr i8, i8* %call2, i64 %335
  %scevgep459460.us.1 = bitcast i8* %scevgep459.us.1 to double*
  %_p_scalar_461.us.1 = load double, double* %scevgep459460.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_465.us.1, %_p_scalar_461.us.1
  %336 = shl i64 %333, 3
  %337 = add i64 %336, %170
  %scevgep466.us.1 = getelementptr i8, i8* %call, i64 %337
  %scevgep466467.us.1 = bitcast i8* %scevgep466.us.1 to double*
  %_p_scalar_468.us.1 = load double, double* %scevgep466467.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_468.us.1
  store double %p_add42.i79.us.1, double* %scevgep466467.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us.1 = add nuw nsw i64 %polly.indvar449.us.1, 1
  %exitcond1011.1.not = icmp eq i64 %polly.indvar449.us.1, %smin1010
  br i1 %exitcond1011.1.not, label %polly.loop_exit447.loopexit.us.1, label %polly.loop_header445.us.1

polly.loop_exit447.loopexit.us.1:                 ; preds = %polly.loop_header445.us.1
  %338 = add i64 %155, %169
  %scevgep456.us.2 = getelementptr i8, i8* %call2, i64 %338
  %scevgep456457.us.2 = bitcast i8* %scevgep456.us.2 to double*
  %_p_scalar_458.us.2 = load double, double* %scevgep456457.us.2, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us.2 = add nsw i64 %165, 2400
  %polly.access.Packed_MemRef_call1284464.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us.2
  %_p_scalar_465.us.2 = load double, double* %polly.access.Packed_MemRef_call1284464.us.2, align 8
  br label %polly.loop_header445.us.2

polly.loop_header445.us.2:                        ; preds = %polly.loop_header445.us.2, %polly.loop_exit447.loopexit.us.1
  %polly.indvar449.us.2 = phi i64 [ %polly.indvar_next450.us.2, %polly.loop_header445.us.2 ], [ 0, %polly.loop_exit447.loopexit.us.1 ]
  %339 = add nuw nsw i64 %polly.indvar449.us.2, %158
  %polly.access.add.Packed_MemRef_call1284453.us.2 = add nuw nsw i64 %polly.indvar449.us.2, 2400
  %polly.access.Packed_MemRef_call1284454.us.2 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us.2
  %_p_scalar_455.us.2 = load double, double* %polly.access.Packed_MemRef_call1284454.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_458.us.2, %_p_scalar_455.us.2
  %340 = mul nuw nsw i64 %339, 8000
  %341 = add nuw nsw i64 %340, %155
  %scevgep459.us.2 = getelementptr i8, i8* %call2, i64 %341
  %scevgep459460.us.2 = bitcast i8* %scevgep459.us.2 to double*
  %_p_scalar_461.us.2 = load double, double* %scevgep459460.us.2, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_465.us.2, %_p_scalar_461.us.2
  %342 = shl i64 %339, 3
  %343 = add i64 %342, %170
  %scevgep466.us.2 = getelementptr i8, i8* %call, i64 %343
  %scevgep466467.us.2 = bitcast i8* %scevgep466.us.2 to double*
  %_p_scalar_468.us.2 = load double, double* %scevgep466467.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_468.us.2
  store double %p_add42.i79.us.2, double* %scevgep466467.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us.2 = add nuw nsw i64 %polly.indvar449.us.2, 1
  %exitcond1011.2.not = icmp eq i64 %polly.indvar449.us.2, %smin1010
  br i1 %exitcond1011.2.not, label %polly.loop_exit447.loopexit.us.2, label %polly.loop_header445.us.2

polly.loop_exit447.loopexit.us.2:                 ; preds = %polly.loop_header445.us.2
  %344 = add i64 %157, %169
  %scevgep456.us.3 = getelementptr i8, i8* %call2, i64 %344
  %scevgep456457.us.3 = bitcast i8* %scevgep456.us.3 to double*
  %_p_scalar_458.us.3 = load double, double* %scevgep456457.us.3, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us.3 = add nsw i64 %165, 3600
  %polly.access.Packed_MemRef_call1284464.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us.3
  %_p_scalar_465.us.3 = load double, double* %polly.access.Packed_MemRef_call1284464.us.3, align 8
  br label %polly.loop_header445.us.3

polly.loop_header445.us.3:                        ; preds = %polly.loop_header445.us.3, %polly.loop_exit447.loopexit.us.2
  %polly.indvar449.us.3 = phi i64 [ %polly.indvar_next450.us.3, %polly.loop_header445.us.3 ], [ 0, %polly.loop_exit447.loopexit.us.2 ]
  %345 = add nuw nsw i64 %polly.indvar449.us.3, %158
  %polly.access.add.Packed_MemRef_call1284453.us.3 = add nuw nsw i64 %polly.indvar449.us.3, 3600
  %polly.access.Packed_MemRef_call1284454.us.3 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us.3
  %_p_scalar_455.us.3 = load double, double* %polly.access.Packed_MemRef_call1284454.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_458.us.3, %_p_scalar_455.us.3
  %346 = mul nuw nsw i64 %345, 8000
  %347 = add nuw nsw i64 %346, %157
  %scevgep459.us.3 = getelementptr i8, i8* %call2, i64 %347
  %scevgep459460.us.3 = bitcast i8* %scevgep459.us.3 to double*
  %_p_scalar_461.us.3 = load double, double* %scevgep459460.us.3, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_465.us.3, %_p_scalar_461.us.3
  %348 = shl i64 %345, 3
  %349 = add i64 %348, %170
  %scevgep466.us.3 = getelementptr i8, i8* %call, i64 %349
  %scevgep466467.us.3 = bitcast i8* %scevgep466.us.3 to double*
  %_p_scalar_468.us.3 = load double, double* %scevgep466467.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_468.us.3
  store double %p_add42.i79.us.3, double* %scevgep466467.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us.3 = add nuw nsw i64 %polly.indvar449.us.3, 1
  %exitcond1011.3.not = icmp eq i64 %polly.indvar449.us.3, %smin1010
  br i1 %exitcond1011.3.not, label %polly.loop_exit440, label %polly.loop_header445.us.3

polly.loop_header606.us.1:                        ; preds = %polly.loop_header606.us.1.preheader, %polly.loop_header606.us.1
  %polly.indvar610.us.1 = phi i64 [ %polly.indvar_next611.us.1, %polly.loop_header606.us.1 ], [ 0, %polly.loop_header606.us.1.preheader ]
  %350 = add nuw nsw i64 %polly.indvar610.us.1, %203
  %polly.access.mul.call1614.us.1 = mul nuw nsw i64 %350, 1000
  %polly.access.add.call1615.us.1 = add nuw nsw i64 %193, %polly.access.mul.call1614.us.1
  %polly.access.call1616.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us.1
  %polly.access.call1616.load.us.1 = load double, double* %polly.access.call1616.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us.1 = add nuw nsw i64 %polly.indvar610.us.1, 1200
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1616.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.indvar_next611.us.1 = add nuw nsw i64 %polly.indvar610.us.1, 1
  %exitcond1034.1.not = icmp eq i64 %polly.indvar610.us.1, %smin1036
  br i1 %exitcond1034.1.not, label %polly.cond617.loopexit.us.1, label %polly.loop_header606.us.1

polly.cond617.loopexit.us.1:                      ; preds = %polly.loop_header606.us.1
  br i1 %.not866, label %polly.loop_header606.us.2.preheader, label %polly.then619.us.1

polly.then619.us.1:                               ; preds = %polly.cond617.loopexit.us.1
  %polly.access.add.call1623.us.1 = or i64 %212, 1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us.1 = add nsw i64 %210, 1200
  %polly.access.Packed_MemRef_call1474627.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1474627.us.1, align 8
  br label %polly.loop_header606.us.2.preheader

polly.loop_header606.us.2.preheader:              ; preds = %polly.then619.us.1, %polly.cond617.loopexit.us.1
  br label %polly.loop_header606.us.2

polly.loop_header606.us.2:                        ; preds = %polly.loop_header606.us.2.preheader, %polly.loop_header606.us.2
  %polly.indvar610.us.2 = phi i64 [ %polly.indvar_next611.us.2, %polly.loop_header606.us.2 ], [ 0, %polly.loop_header606.us.2.preheader ]
  %351 = add nuw nsw i64 %polly.indvar610.us.2, %203
  %polly.access.mul.call1614.us.2 = mul nuw nsw i64 %351, 1000
  %polly.access.add.call1615.us.2 = add nuw nsw i64 %194, %polly.access.mul.call1614.us.2
  %polly.access.call1616.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us.2
  %polly.access.call1616.load.us.2 = load double, double* %polly.access.call1616.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us.2 = add nuw nsw i64 %polly.indvar610.us.2, 2400
  %polly.access.Packed_MemRef_call1474.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.2
  store double %polly.access.call1616.load.us.2, double* %polly.access.Packed_MemRef_call1474.us.2, align 8
  %polly.indvar_next611.us.2 = add nuw nsw i64 %polly.indvar610.us.2, 1
  %exitcond1034.2.not = icmp eq i64 %polly.indvar610.us.2, %smin1036
  br i1 %exitcond1034.2.not, label %polly.cond617.loopexit.us.2, label %polly.loop_header606.us.2

polly.cond617.loopexit.us.2:                      ; preds = %polly.loop_header606.us.2
  br i1 %.not866, label %polly.loop_header606.us.3.preheader, label %polly.then619.us.2

polly.then619.us.2:                               ; preds = %polly.cond617.loopexit.us.2
  %polly.access.add.call1623.us.2 = or i64 %212, 2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1474627.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1474627.us.2, align 8
  br label %polly.loop_header606.us.3.preheader

polly.loop_header606.us.3.preheader:              ; preds = %polly.then619.us.2, %polly.cond617.loopexit.us.2
  br label %polly.loop_header606.us.3

polly.loop_header606.us.3:                        ; preds = %polly.loop_header606.us.3.preheader, %polly.loop_header606.us.3
  %polly.indvar610.us.3 = phi i64 [ %polly.indvar_next611.us.3, %polly.loop_header606.us.3 ], [ 0, %polly.loop_header606.us.3.preheader ]
  %352 = add nuw nsw i64 %polly.indvar610.us.3, %203
  %polly.access.mul.call1614.us.3 = mul nuw nsw i64 %352, 1000
  %polly.access.add.call1615.us.3 = add nuw nsw i64 %195, %polly.access.mul.call1614.us.3
  %polly.access.call1616.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us.3
  %polly.access.call1616.load.us.3 = load double, double* %polly.access.call1616.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us.3 = add nuw nsw i64 %polly.indvar610.us.3, 3600
  %polly.access.Packed_MemRef_call1474.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.3
  store double %polly.access.call1616.load.us.3, double* %polly.access.Packed_MemRef_call1474.us.3, align 8
  %polly.indvar_next611.us.3 = add nuw nsw i64 %polly.indvar610.us.3, 1
  %exitcond1034.3.not = icmp eq i64 %polly.indvar610.us.3, %smin1036
  br i1 %exitcond1034.3.not, label %polly.cond617.loopexit.us.3, label %polly.loop_header606.us.3

polly.cond617.loopexit.us.3:                      ; preds = %polly.loop_header606.us.3
  br i1 %.not866, label %polly.loop_header628.preheader, label %polly.then619.us.3

polly.then619.us.3:                               ; preds = %polly.cond617.loopexit.us.3
  %polly.access.add.call1623.us.3 = or i64 %212, 3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1474627.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1474627.us.3, align 8
  br label %polly.loop_header628.preheader

polly.loop_header635.us.1:                        ; preds = %polly.loop_header635.us.1, %polly.loop_exit637.loopexit.us
  %polly.indvar639.us.1 = phi i64 [ %polly.indvar_next640.us.1, %polly.loop_header635.us.1 ], [ 0, %polly.loop_exit637.loopexit.us ]
  %353 = add nuw nsw i64 %polly.indvar639.us.1, %203
  %polly.access.add.Packed_MemRef_call1474643.us.1 = add nuw nsw i64 %polly.indvar639.us.1, 1200
  %polly.access.Packed_MemRef_call1474644.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us.1
  %_p_scalar_645.us.1 = load double, double* %polly.access.Packed_MemRef_call1474644.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_648.us.1, %_p_scalar_645.us.1
  %354 = mul nuw nsw i64 %353, 8000
  %355 = add nuw nsw i64 %354, %198
  %scevgep649.us.1 = getelementptr i8, i8* %call2, i64 %355
  %scevgep649650.us.1 = bitcast i8* %scevgep649.us.1 to double*
  %_p_scalar_651.us.1 = load double, double* %scevgep649650.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_655.us.1, %_p_scalar_651.us.1
  %356 = shl i64 %353, 3
  %357 = add i64 %356, %215
  %scevgep656.us.1 = getelementptr i8, i8* %call, i64 %357
  %scevgep656657.us.1 = bitcast i8* %scevgep656.us.1 to double*
  %_p_scalar_658.us.1 = load double, double* %scevgep656657.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_658.us.1
  store double %p_add42.i.us.1, double* %scevgep656657.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us.1 = add nuw nsw i64 %polly.indvar639.us.1, 1
  %exitcond1037.1.not = icmp eq i64 %polly.indvar639.us.1, %smin1036
  br i1 %exitcond1037.1.not, label %polly.loop_exit637.loopexit.us.1, label %polly.loop_header635.us.1

polly.loop_exit637.loopexit.us.1:                 ; preds = %polly.loop_header635.us.1
  %358 = add i64 %200, %214
  %scevgep646.us.2 = getelementptr i8, i8* %call2, i64 %358
  %scevgep646647.us.2 = bitcast i8* %scevgep646.us.2 to double*
  %_p_scalar_648.us.2 = load double, double* %scevgep646647.us.2, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us.2 = add nsw i64 %210, 2400
  %polly.access.Packed_MemRef_call1474654.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us.2
  %_p_scalar_655.us.2 = load double, double* %polly.access.Packed_MemRef_call1474654.us.2, align 8
  br label %polly.loop_header635.us.2

polly.loop_header635.us.2:                        ; preds = %polly.loop_header635.us.2, %polly.loop_exit637.loopexit.us.1
  %polly.indvar639.us.2 = phi i64 [ %polly.indvar_next640.us.2, %polly.loop_header635.us.2 ], [ 0, %polly.loop_exit637.loopexit.us.1 ]
  %359 = add nuw nsw i64 %polly.indvar639.us.2, %203
  %polly.access.add.Packed_MemRef_call1474643.us.2 = add nuw nsw i64 %polly.indvar639.us.2, 2400
  %polly.access.Packed_MemRef_call1474644.us.2 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us.2
  %_p_scalar_645.us.2 = load double, double* %polly.access.Packed_MemRef_call1474644.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_648.us.2, %_p_scalar_645.us.2
  %360 = mul nuw nsw i64 %359, 8000
  %361 = add nuw nsw i64 %360, %200
  %scevgep649.us.2 = getelementptr i8, i8* %call2, i64 %361
  %scevgep649650.us.2 = bitcast i8* %scevgep649.us.2 to double*
  %_p_scalar_651.us.2 = load double, double* %scevgep649650.us.2, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_655.us.2, %_p_scalar_651.us.2
  %362 = shl i64 %359, 3
  %363 = add i64 %362, %215
  %scevgep656.us.2 = getelementptr i8, i8* %call, i64 %363
  %scevgep656657.us.2 = bitcast i8* %scevgep656.us.2 to double*
  %_p_scalar_658.us.2 = load double, double* %scevgep656657.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_658.us.2
  store double %p_add42.i.us.2, double* %scevgep656657.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us.2 = add nuw nsw i64 %polly.indvar639.us.2, 1
  %exitcond1037.2.not = icmp eq i64 %polly.indvar639.us.2, %smin1036
  br i1 %exitcond1037.2.not, label %polly.loop_exit637.loopexit.us.2, label %polly.loop_header635.us.2

polly.loop_exit637.loopexit.us.2:                 ; preds = %polly.loop_header635.us.2
  %364 = add i64 %202, %214
  %scevgep646.us.3 = getelementptr i8, i8* %call2, i64 %364
  %scevgep646647.us.3 = bitcast i8* %scevgep646.us.3 to double*
  %_p_scalar_648.us.3 = load double, double* %scevgep646647.us.3, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us.3 = add nsw i64 %210, 3600
  %polly.access.Packed_MemRef_call1474654.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us.3
  %_p_scalar_655.us.3 = load double, double* %polly.access.Packed_MemRef_call1474654.us.3, align 8
  br label %polly.loop_header635.us.3

polly.loop_header635.us.3:                        ; preds = %polly.loop_header635.us.3, %polly.loop_exit637.loopexit.us.2
  %polly.indvar639.us.3 = phi i64 [ %polly.indvar_next640.us.3, %polly.loop_header635.us.3 ], [ 0, %polly.loop_exit637.loopexit.us.2 ]
  %365 = add nuw nsw i64 %polly.indvar639.us.3, %203
  %polly.access.add.Packed_MemRef_call1474643.us.3 = add nuw nsw i64 %polly.indvar639.us.3, 3600
  %polly.access.Packed_MemRef_call1474644.us.3 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us.3
  %_p_scalar_645.us.3 = load double, double* %polly.access.Packed_MemRef_call1474644.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_648.us.3, %_p_scalar_645.us.3
  %366 = mul nuw nsw i64 %365, 8000
  %367 = add nuw nsw i64 %366, %202
  %scevgep649.us.3 = getelementptr i8, i8* %call2, i64 %367
  %scevgep649650.us.3 = bitcast i8* %scevgep649.us.3 to double*
  %_p_scalar_651.us.3 = load double, double* %scevgep649650.us.3, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_655.us.3, %_p_scalar_651.us.3
  %368 = shl i64 %365, 3
  %369 = add i64 %368, %215
  %scevgep656.us.3 = getelementptr i8, i8* %call, i64 %369
  %scevgep656657.us.3 = bitcast i8* %scevgep656.us.3 to double*
  %_p_scalar_658.us.3 = load double, double* %scevgep656657.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_658.us.3
  store double %p_add42.i.us.3, double* %scevgep656657.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us.3 = add nuw nsw i64 %polly.indvar639.us.3, 1
  %exitcond1037.3.not = icmp eq i64 %polly.indvar639.us.3, %smin1036
  br i1 %exitcond1037.3.not, label %polly.loop_exit630, label %polly.loop_header635.us.3
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
!25 = !{!"llvm.loop.tile.size", i32 8}
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
!48 = !{!"llvm.loop.tile.size", i32 64}
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
