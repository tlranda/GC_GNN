; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3704.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3704.c"
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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv7.i, i64 %index1094
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit909
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start513, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1155 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1155, label %for.body3.i46.preheader1235, label %vector.ph1156

vector.ph1156:                                    ; preds = %for.body3.i46.preheader
  %n.vec1158 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %vector.ph1156
  %index1159 = phi i64 [ 0, %vector.ph1156 ], [ %index.next1160, %vector.body1154 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %index1159
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
  br i1 %cmp.n1162, label %for.inc6.i, label %for.body3.i46.preheader1235

for.body3.i46.preheader1235:                      ; preds = %for.body3.i46.preheader, %middle.block1152
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1158, %middle.block1152 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1235, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1235 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  %min.iters.check1178 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1178, label %for.body3.i60.preheader1232, label %vector.ph1179

vector.ph1179:                                    ; preds = %for.body3.i60.preheader
  %n.vec1181 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1179
  %index1182 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1183, %vector.body1177 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %index1182
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1186 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1186, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1183 = add i64 %index1182, 4
  %57 = icmp eq i64 %index.next1183, %n.vec1181
  br i1 %57, label %middle.block1175, label %vector.body1177, !llvm.loop !60

middle.block1175:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %indvars.iv21.i52, %n.vec1181
  br i1 %cmp.n1185, label %for.inc6.i63, label %for.body3.i60.preheader1232

for.body3.i60.preheader1232:                      ; preds = %for.body3.i60.preheader, %middle.block1175
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1181, %middle.block1175 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1232, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1232 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  %min.iters.check1204 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1204, label %for.body3.i99.preheader1229, label %vector.ph1205

vector.ph1205:                                    ; preds = %for.body3.i99.preheader
  %n.vec1207 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1205
  %index1208 = phi i64 [ 0, %vector.ph1205 ], [ %index.next1209, %vector.body1203 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %index1208
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1212 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1212, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1209 = add i64 %index1208, 4
  %68 = icmp eq i64 %index.next1209, %n.vec1207
  br i1 %68, label %middle.block1201, label %vector.body1203, !llvm.loop !62

middle.block1201:                                 ; preds = %vector.body1203
  %cmp.n1211 = icmp eq i64 %indvars.iv21.i91, %n.vec1207
  br i1 %cmp.n1211, label %for.inc6.i102, label %for.body3.i99.preheader1229

for.body3.i99.preheader1229:                      ; preds = %for.body3.i99.preheader, %middle.block1201
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1207, %middle.block1201 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1229, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1229 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call874, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
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
  %wide.load1226 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1226, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1223 = add i64 %index1222, 4
  %95 = icmp eq i64 %index.next1223, %n.vec1221
  br i1 %95, label %middle.block1213, label %vector.body1215, !llvm.loop !74

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1225 = icmp eq i64 %88, %n.vec1221
  br i1 %cmp.n1225, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1213
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1221, %middle.block1213 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1213
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond974.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1217 = add i64 %indvar1216, 1
  br i1 %exitcond974.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond973.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond973.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv950 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next951, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin968 = call i64 @llvm.smin.i64(i64 %indvars.iv950, i64 -936)
  %97 = add nsw i64 %smin968, 1000
  %98 = shl nsw i64 %polly.indvar202, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next951 = add nsw i64 %indvars.iv950, -64
  %exitcond972.not = icmp eq i64 %polly.indvar_next203, 16
  br i1 %exitcond972.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv960 = phi i64 [ %indvars.iv.next961, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 96, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %102, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = mul nuw nsw i64 %polly.indvar208, 100
  %100 = mul nsw i64 %polly.indvar208, -100
  %101 = add nsw i64 %100, 1199
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %102 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 4
  %indvars.iv.next961 = add nsw i64 %indvars.iv960, -4
  %exitcond971.not = icmp eq i64 %102, 12
  br i1 %exitcond971.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv962 = phi i64 [ %indvars.iv.next963, %polly.loop_exit263 ], [ %indvars.iv960, %polly.loop_header205 ]
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %polly.loop_exit263 ], [ %indvars.iv956, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %polly.indvar208, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv958, i64 0)
  %103 = add i64 %smax, %indvars.iv962
  %.not.not = icmp ugt i64 %polly.indvar214, %polly.indvar208
  %104 = mul nuw nsw i64 %polly.indvar214, 96
  %105 = add nsw i64 %104, %100
  %106 = add nsw i64 %105, -1
  %.inv = icmp sgt i64 %105, 99
  %107 = select i1 %.inv, i64 99, i64 %106
  %polly.loop_guard = icmp sgt i64 %107, -1
  %108 = add nsw i64 %105, 95
  %109 = icmp ult i64 %101, %108
  %110 = select i1 %109, i64 %101, i64 %108
  %polly.loop_guard237.not = icmp sgt i64 %105, %110
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header217

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  br i1 %polly.loop_guard, label %polly.loop_header223.preheader.us, label %polly.loop_exit225.us

polly.loop_header223.us:                          ; preds = %polly.loop_header223.preheader.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header223.preheader.us ]
  %111 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.call1230.us = mul nuw nsw i64 %111, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %114, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw i64 %polly.indvar226.us, 1
  %exitcond953.not = icmp eq i64 %polly.indvar226.us, %107
  br i1 %exitcond953.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us, %polly.loop_header217.us
  br i1 %polly.loop_guard237.not, label %polly.merge.us, label %polly.loop_header234.preheader.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.preheader.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %105, %polly.loop_header234.preheader.us ]
  %112 = add nsw i64 %polly.indvar238.us, %99
  %polly.access.mul.call1242.us = mul nuw nsw i64 %112, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %113, %polly.access.mul.call1242.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1245.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %110
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header234.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond955.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header234.preheader.us:                ; preds = %polly.loop_exit225.us
  %113 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1245.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header234.us

polly.loop_header223.preheader.us:                ; preds = %polly.loop_header217.us
  %114 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_exit263:                               ; preds = %polly.loop_exit270, %polly.loop_header261.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, -96
  %indvars.iv.next963 = add nsw i64 %indvars.iv962, 96
  %exitcond970.not = icmp eq i64 %polly.indvar_next215, 13
  br i1 %exitcond970.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211, %polly.merge
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.merge ], [ 0, %polly.loop_header211 ]
  %115 = add nuw nsw i64 %polly.indvar220, %98
  %polly.access.mul.Packed_MemRef_call1258 = mul nuw nsw i64 %polly.indvar220, 1200
  br label %polly.loop_header248

polly.merge:                                      ; preds = %polly.loop_header248
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond952.not = icmp eq i64 %polly.indvar_next221, %97
  br i1 %exitcond952.not, label %polly.loop_header261.preheader, label %polly.loop_header217

polly.loop_header261.preheader:                   ; preds = %polly.merge, %polly.merge.us
  %116 = sub nsw i64 %99, %104
  %117 = icmp sgt i64 %116, 0
  %118 = select i1 %117, i64 %116, i64 0
  %119 = mul nsw i64 %polly.indvar214, -96
  %120 = icmp slt i64 %119, -1104
  %121 = select i1 %120, i64 %119, i64 -1104
  %122 = add nsw i64 %121, 1199
  %polly.loop_guard271.not = icmp sgt i64 %118, %122
  br i1 %polly.loop_guard271.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header248:                             ; preds = %polly.loop_header248, %polly.loop_header217
  %polly.indvar251 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next252, %polly.loop_header248 ]
  %123 = add nuw nsw i64 %polly.indvar251, %99
  %polly.access.mul.call1255 = mul nuw nsw i64 %123, 1000
  %polly.access.add.call1256 = add nuw nsw i64 %115, %polly.access.mul.call1255
  %polly.access.call1257 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1256
  %polly.access.call1257.load = load double, double* %polly.access.call1257, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.indvar251, %polly.access.mul.Packed_MemRef_call1258
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  store double %polly.access.call1257.load, double* %polly.access.Packed_MemRef_call1260, align 8
  %polly.indvar_next252 = add nuw nsw i64 %polly.indvar251, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next252, %indvars.iv
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header248

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_exit270
  %polly.indvar264 = phi i64 [ %polly.indvar_next265, %polly.loop_exit270 ], [ 0, %polly.loop_header261.preheader ]
  %124 = add nuw nsw i64 %polly.indvar264, %98
  %polly.access.mul.Packed_MemRef_call1283 = mul nuw nsw i64 %polly.indvar264, 1200
  %125 = shl i64 %124, 3
  br label %polly.loop_header268

polly.loop_exit270:                               ; preds = %polly.loop_exit278
  %polly.indvar_next265 = add nuw nsw i64 %polly.indvar264, 1
  %exitcond969.not = icmp eq i64 %polly.indvar_next265, %97
  br i1 %exitcond969.not, label %polly.loop_exit263, label %polly.loop_header261

polly.loop_header268:                             ; preds = %polly.loop_header261, %polly.loop_exit278
  %indvars.iv964 = phi i64 [ %103, %polly.loop_header261 ], [ %indvars.iv.next965, %polly.loop_exit278 ]
  %polly.indvar272 = phi i64 [ %118, %polly.loop_header261 ], [ %polly.indvar_next273, %polly.loop_exit278 ]
  %smin966 = call i64 @llvm.smin.i64(i64 %indvars.iv964, i64 99)
  %126 = add nuw i64 %polly.indvar272, %104
  %127 = add i64 %126, %100
  %polly.loop_guard2791072 = icmp sgt i64 %127, -1
  br i1 %polly.loop_guard2791072, label %polly.loop_header276.preheader, label %polly.loop_exit278

polly.loop_header276.preheader:                   ; preds = %polly.loop_header268
  %128 = mul i64 %126, 8000
  %129 = add i64 %128, %125
  %scevgep287 = getelementptr i8, i8* %call2, i64 %129
  %scevgep287288 = bitcast i8* %scevgep287 to double*
  %_p_scalar_289 = load double, double* %scevgep287288, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1294 = add nsw i64 %polly.access.mul.Packed_MemRef_call1283, %127
  %polly.access.Packed_MemRef_call1295 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call1295, align 8
  %130 = mul i64 %126, 9600
  br label %polly.loop_header276

polly.loop_exit278:                               ; preds = %polly.loop_header276, %polly.loop_header268
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %polly.loop_cond274.not.not = icmp slt i64 %polly.indvar272, %122
  %indvars.iv.next965 = add i64 %indvars.iv964, 1
  br i1 %polly.loop_cond274.not.not, label %polly.loop_header268, label %polly.loop_exit270

polly.loop_header276:                             ; preds = %polly.loop_header276.preheader, %polly.loop_header276
  %polly.indvar280 = phi i64 [ %polly.indvar_next281, %polly.loop_header276 ], [ 0, %polly.loop_header276.preheader ]
  %131 = add nuw nsw i64 %polly.indvar280, %99
  %polly.access.add.Packed_MemRef_call1284 = add nuw nsw i64 %polly.indvar280, %polly.access.mul.Packed_MemRef_call1283
  %polly.access.Packed_MemRef_call1285 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284
  %_p_scalar_286 = load double, double* %polly.access.Packed_MemRef_call1285, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_289, %_p_scalar_286
  %132 = mul nuw nsw i64 %131, 8000
  %133 = add nuw nsw i64 %132, %125
  %scevgep290 = getelementptr i8, i8* %call2, i64 %133
  %scevgep290291 = bitcast i8* %scevgep290 to double*
  %_p_scalar_292 = load double, double* %scevgep290291, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_296, %_p_scalar_292
  %134 = shl i64 %131, 3
  %135 = add i64 %134, %130
  %scevgep297 = getelementptr i8, i8* %call, i64 %135
  %scevgep297298 = bitcast i8* %scevgep297 to double*
  %_p_scalar_299 = load double, double* %scevgep297298, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_299
  store double %p_add42.i118, double* %scevgep297298, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next281 = add nuw nsw i64 %polly.indvar280, 1
  %exitcond967.not = icmp eq i64 %polly.indvar280, %smin966
  br i1 %exitcond967.not, label %polly.loop_exit278, label %polly.loop_header276

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1190 = phi i64 [ %indvar.next1191, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %136 = add i64 %indvar1190, 1
  %137 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1192 = icmp ult i64 %136, 4
  br i1 %min.iters.check1192, label %polly.loop_header394.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %polly.loop_header388
  %n.vec1195 = and i64 %136, -4
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1193
  %index1196 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1197, %vector.body1189 ]
  %138 = shl nuw nsw i64 %index1196, 3
  %139 = getelementptr i8, i8* %scevgep400, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1200 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !79, !noalias !81
  %141 = fmul fast <4 x double> %wide.load1200, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !79, !noalias !81
  %index.next1197 = add i64 %index1196, 4
  %143 = icmp eq i64 %index.next1197, %n.vec1195
  br i1 %143, label %middle.block1187, label %vector.body1189, !llvm.loop !85

middle.block1187:                                 ; preds = %vector.body1189
  %cmp.n1199 = icmp eq i64 %136, %n.vec1195
  br i1 %cmp.n1199, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1187
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1195, %middle.block1187 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1187
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1004.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1191 = add i64 %indvar1190, 1
  br i1 %exitcond1004.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %144
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1003.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1003.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %indvars.iv978 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %indvars.iv.next979, %polly.loop_exit412 ]
  %polly.indvar407 = phi i64 [ 0, %polly.loop_header404.preheader ], [ %polly.indvar_next408, %polly.loop_exit412 ]
  %smin998 = call i64 @llvm.smin.i64(i64 %indvars.iv978, i64 -936)
  %145 = add nsw i64 %smin998, 1000
  %146 = shl nsw i64 %polly.indvar407, 6
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit418
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next979 = add nsw i64 %indvars.iv978, -64
  %exitcond1002.not = icmp eq i64 %polly.indvar_next408, 16
  br i1 %exitcond1002.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit418, %polly.loop_header404
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %indvars.iv985 = phi i64 [ %indvars.iv.next986, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %indvars.iv975 = phi i64 [ %indvars.iv.next976, %polly.loop_exit418 ], [ 96, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %150, %polly.loop_exit418 ], [ 0, %polly.loop_header404 ]
  %147 = mul nuw nsw i64 %polly.indvar413, 100
  %148 = mul nsw i64 %polly.indvar413, -100
  %149 = add nsw i64 %148, 1199
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit474
  %150 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -4
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 4
  %indvars.iv.next991 = add nsw i64 %indvars.iv990, -4
  %exitcond1001.not = icmp eq i64 %150, 12
  br i1 %exitcond1001.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit474, %polly.loop_header410
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %polly.loop_exit474 ], [ %indvars.iv990, %polly.loop_header410 ]
  %indvars.iv987 = phi i64 [ %indvars.iv.next988, %polly.loop_exit474 ], [ %indvars.iv985, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit474 ], [ %polly.indvar413, %polly.loop_header410 ]
  %smax989 = call i64 @llvm.smax.i64(i64 %indvars.iv987, i64 0)
  %151 = add i64 %smax989, %indvars.iv992
  %.not.not928 = icmp ugt i64 %polly.indvar419, %polly.indvar413
  %152 = mul nuw nsw i64 %polly.indvar419, 96
  %153 = add nsw i64 %152, %148
  %154 = add nsw i64 %153, -1
  %.inv929 = icmp sgt i64 %153, 99
  %155 = select i1 %.inv929, i64 99, i64 %154
  %polly.loop_guard436 = icmp sgt i64 %155, -1
  %156 = add nsw i64 %153, 95
  %157 = icmp ult i64 %149, %156
  %158 = select i1 %157, i64 %149, i64 %156
  %polly.loop_guard448.not = icmp sgt i64 %153, %158
  br i1 %.not.not928, label %polly.loop_header422.us, label %polly.loop_header422

polly.loop_header422.us:                          ; preds = %polly.loop_header416, %polly.merge429.us
  %polly.indvar425.us = phi i64 [ %polly.indvar_next426.us, %polly.merge429.us ], [ 0, %polly.loop_header416 ]
  br i1 %polly.loop_guard436, label %polly.loop_header433.preheader.us, label %polly.loop_exit435.us

polly.loop_header433.us:                          ; preds = %polly.loop_header433.preheader.us, %polly.loop_header433.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_header433.us ], [ 0, %polly.loop_header433.preheader.us ]
  %159 = add nuw nsw i64 %polly.indvar437.us, %147
  %polly.access.mul.call1441.us = mul nuw nsw i64 %159, 1000
  %polly.access.add.call1442.us = add nuw nsw i64 %162, %polly.access.mul.call1441.us
  %polly.access.call1443.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1442.us
  %polly.access.call1443.load.us = load double, double* %polly.access.call1443.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar437.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1443.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next438.us = add nuw i64 %polly.indvar437.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar437.us, %155
  br i1 %exitcond982.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us, %polly.loop_header422.us
  br i1 %polly.loop_guard448.not, label %polly.merge429.us, label %polly.loop_header445.preheader.us

polly.loop_header445.us:                          ; preds = %polly.loop_header445.preheader.us, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ %153, %polly.loop_header445.preheader.us ]
  %160 = add nsw i64 %polly.indvar449.us, %147
  %polly.access.mul.call1453.us = mul nuw nsw i64 %160, 1000
  %polly.access.add.call1454.us = add nuw nsw i64 %161, %polly.access.mul.call1453.us
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305457.us = add nsw i64 %polly.indvar449.us, %polly.access.mul.Packed_MemRef_call1305456.us
  %polly.access.Packed_MemRef_call1305458.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305457.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1305458.us, align 8
  %polly.indvar_next450.us = add nsw i64 %polly.indvar449.us, 1
  %polly.loop_cond451.not.not.us = icmp slt i64 %polly.indvar449.us, %158
  br i1 %polly.loop_cond451.not.not.us, label %polly.loop_header445.us, label %polly.merge429.us

polly.merge429.us:                                ; preds = %polly.loop_header445.us, %polly.loop_exit435.us
  %polly.indvar_next426.us = add nuw nsw i64 %polly.indvar425.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next426.us, %145
  br i1 %exitcond984.not, label %polly.loop_header472.preheader, label %polly.loop_header422.us

polly.loop_header445.preheader.us:                ; preds = %polly.loop_exit435.us
  %161 = add nuw nsw i64 %polly.indvar425.us, %146
  %polly.access.mul.Packed_MemRef_call1305456.us = mul nuw nsw i64 %polly.indvar425.us, 1200
  br label %polly.loop_header445.us

polly.loop_header433.preheader.us:                ; preds = %polly.loop_header422.us
  %162 = add nuw nsw i64 %polly.indvar425.us, %146
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar425.us, 1200
  br label %polly.loop_header433.us

polly.loop_exit474:                               ; preds = %polly.loop_exit481, %polly.loop_header472.preheader
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, -96
  %indvars.iv.next993 = add nsw i64 %indvars.iv992, 96
  %exitcond1000.not = icmp eq i64 %polly.indvar_next420, 13
  br i1 %exitcond1000.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_header416, %polly.merge429
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.merge429 ], [ 0, %polly.loop_header416 ]
  %163 = add nuw nsw i64 %polly.indvar425, %146
  %polly.access.mul.Packed_MemRef_call1305469 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header459

polly.merge429:                                   ; preds = %polly.loop_header459
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond981.not = icmp eq i64 %polly.indvar_next426, %145
  br i1 %exitcond981.not, label %polly.loop_header472.preheader, label %polly.loop_header422

polly.loop_header472.preheader:                   ; preds = %polly.merge429, %polly.merge429.us
  %164 = sub nsw i64 %147, %152
  %165 = icmp sgt i64 %164, 0
  %166 = select i1 %165, i64 %164, i64 0
  %167 = mul nsw i64 %polly.indvar419, -96
  %168 = icmp slt i64 %167, -1104
  %169 = select i1 %168, i64 %167, i64 -1104
  %170 = add nsw i64 %169, 1199
  %polly.loop_guard482.not = icmp sgt i64 %166, %170
  br i1 %polly.loop_guard482.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header459:                             ; preds = %polly.loop_header459, %polly.loop_header422
  %polly.indvar462 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next463, %polly.loop_header459 ]
  %171 = add nuw nsw i64 %polly.indvar462, %147
  %polly.access.mul.call1466 = mul nuw nsw i64 %171, 1000
  %polly.access.add.call1467 = add nuw nsw i64 %163, %polly.access.mul.call1466
  %polly.access.call1468 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1467
  %polly.access.call1468.load = load double, double* %polly.access.call1468, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305470 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1305469
  %polly.access.Packed_MemRef_call1305471 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305470
  store double %polly.access.call1468.load, double* %polly.access.Packed_MemRef_call1305471, align 8
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond977.not = icmp eq i64 %polly.indvar_next463, %indvars.iv975
  br i1 %exitcond977.not, label %polly.merge429, label %polly.loop_header459

polly.loop_header472:                             ; preds = %polly.loop_header472.preheader, %polly.loop_exit481
  %polly.indvar475 = phi i64 [ %polly.indvar_next476, %polly.loop_exit481 ], [ 0, %polly.loop_header472.preheader ]
  %172 = add nuw nsw i64 %polly.indvar475, %146
  %polly.access.mul.Packed_MemRef_call1305494 = mul nuw nsw i64 %polly.indvar475, 1200
  %173 = shl i64 %172, 3
  br label %polly.loop_header479

polly.loop_exit481:                               ; preds = %polly.loop_exit489
  %polly.indvar_next476 = add nuw nsw i64 %polly.indvar475, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next476, %145
  br i1 %exitcond999.not, label %polly.loop_exit474, label %polly.loop_header472

polly.loop_header479:                             ; preds = %polly.loop_header472, %polly.loop_exit489
  %indvars.iv994 = phi i64 [ %151, %polly.loop_header472 ], [ %indvars.iv.next995, %polly.loop_exit489 ]
  %polly.indvar483 = phi i64 [ %166, %polly.loop_header472 ], [ %polly.indvar_next484, %polly.loop_exit489 ]
  %smin996 = call i64 @llvm.smin.i64(i64 %indvars.iv994, i64 99)
  %174 = add nuw i64 %polly.indvar483, %152
  %175 = add i64 %174, %148
  %polly.loop_guard4901073 = icmp sgt i64 %175, -1
  br i1 %polly.loop_guard4901073, label %polly.loop_header487.preheader, label %polly.loop_exit489

polly.loop_header487.preheader:                   ; preds = %polly.loop_header479
  %176 = mul i64 %174, 8000
  %177 = add i64 %176, %173
  %scevgep498 = getelementptr i8, i8* %call2, i64 %177
  %scevgep498499 = bitcast i8* %scevgep498 to double*
  %_p_scalar_500 = load double, double* %scevgep498499, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1305505 = add nsw i64 %polly.access.mul.Packed_MemRef_call1305494, %175
  %polly.access.Packed_MemRef_call1305506 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305505
  %_p_scalar_507 = load double, double* %polly.access.Packed_MemRef_call1305506, align 8
  %178 = mul i64 %174, 9600
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_header487, %polly.loop_header479
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %polly.loop_cond485.not.not = icmp slt i64 %polly.indvar483, %170
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  br i1 %polly.loop_cond485.not.not, label %polly.loop_header479, label %polly.loop_exit481

polly.loop_header487:                             ; preds = %polly.loop_header487.preheader, %polly.loop_header487
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_header487 ], [ 0, %polly.loop_header487.preheader ]
  %179 = add nuw nsw i64 %polly.indvar491, %147
  %polly.access.add.Packed_MemRef_call1305495 = add nuw nsw i64 %polly.indvar491, %polly.access.mul.Packed_MemRef_call1305494
  %polly.access.Packed_MemRef_call1305496 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495
  %_p_scalar_497 = load double, double* %polly.access.Packed_MemRef_call1305496, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_500, %_p_scalar_497
  %180 = mul nuw nsw i64 %179, 8000
  %181 = add nuw nsw i64 %180, %173
  %scevgep501 = getelementptr i8, i8* %call2, i64 %181
  %scevgep501502 = bitcast i8* %scevgep501 to double*
  %_p_scalar_503 = load double, double* %scevgep501502, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_507, %_p_scalar_503
  %182 = shl i64 %179, 3
  %183 = add i64 %182, %178
  %scevgep508 = getelementptr i8, i8* %call, i64 %183
  %scevgep508509 = bitcast i8* %scevgep508 to double*
  %_p_scalar_510 = load double, double* %scevgep508509, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_510
  store double %p_add42.i79, double* %scevgep508509, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %exitcond997.not = icmp eq i64 %polly.indvar491, %smin996
  br i1 %exitcond997.not, label %polly.loop_exit489, label %polly.loop_header487

polly.start513:                                   ; preds = %init_array.exit
  %malloccall515 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header599

polly.exiting514:                                 ; preds = %polly.loop_exit623
  tail call void @free(i8* %malloccall515)
  br label %kernel_syr2k.exit

polly.loop_header599:                             ; preds = %polly.loop_exit607, %polly.start513
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit607 ], [ 0, %polly.start513 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit607 ], [ 1, %polly.start513 ]
  %184 = add i64 %indvar, 1
  %185 = mul nuw nsw i64 %polly.indvar602, 9600
  %scevgep611 = getelementptr i8, i8* %call, i64 %185
  %min.iters.check1166 = icmp ult i64 %184, 4
  br i1 %min.iters.check1166, label %polly.loop_header605.preheader, label %vector.ph1167

vector.ph1167:                                    ; preds = %polly.loop_header599
  %n.vec1169 = and i64 %184, -4
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1165 ]
  %186 = shl nuw nsw i64 %index1170, 3
  %187 = getelementptr i8, i8* %scevgep611, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  %wide.load1174 = load <4 x double>, <4 x double>* %188, align 8, !alias.scope !89, !noalias !91
  %189 = fmul fast <4 x double> %wide.load1174, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %190 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %189, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %index.next1171 = add i64 %index1170, 4
  %191 = icmp eq i64 %index.next1171, %n.vec1169
  br i1 %191, label %middle.block1163, label %vector.body1165, !llvm.loop !95

middle.block1163:                                 ; preds = %vector.body1165
  %cmp.n1173 = icmp eq i64 %184, %n.vec1169
  br i1 %cmp.n1173, label %polly.loop_exit607, label %polly.loop_header605.preheader

polly.loop_header605.preheader:                   ; preds = %polly.loop_header599, %middle.block1163
  %polly.indvar608.ph = phi i64 [ 0, %polly.loop_header599 ], [ %n.vec1169, %middle.block1163 ]
  br label %polly.loop_header605

polly.loop_exit607:                               ; preds = %polly.loop_header605, %middle.block1163
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next603, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1034.not, label %polly.loop_header615.preheader, label %polly.loop_header599

polly.loop_header615.preheader:                   ; preds = %polly.loop_exit607
  %Packed_MemRef_call1516 = bitcast i8* %malloccall515 to double*
  br label %polly.loop_header615

polly.loop_header605:                             ; preds = %polly.loop_header605.preheader, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ %polly.indvar608.ph, %polly.loop_header605.preheader ]
  %192 = shl nuw nsw i64 %polly.indvar608, 3
  %scevgep612 = getelementptr i8, i8* %scevgep611, i64 %192
  %scevgep612613 = bitcast i8* %scevgep612 to double*
  %_p_scalar_614 = load double, double* %scevgep612613, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_614, 1.200000e+00
  store double %p_mul.i, double* %scevgep612613, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next609, %polly.indvar602
  br i1 %exitcond1033.not, label %polly.loop_exit607, label %polly.loop_header605, !llvm.loop !96

polly.loop_header615:                             ; preds = %polly.loop_header615.preheader, %polly.loop_exit623
  %indvars.iv1008 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %indvars.iv.next1009, %polly.loop_exit623 ]
  %polly.indvar618 = phi i64 [ 0, %polly.loop_header615.preheader ], [ %polly.indvar_next619, %polly.loop_exit623 ]
  %smin1028 = call i64 @llvm.smin.i64(i64 %indvars.iv1008, i64 -936)
  %193 = add nsw i64 %smin1028, 1000
  %194 = shl nsw i64 %polly.indvar618, 6
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_exit629
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, -64
  %exitcond1032.not = icmp eq i64 %polly.indvar_next619, 16
  br i1 %exitcond1032.not, label %polly.exiting514, label %polly.loop_header615

polly.loop_header621:                             ; preds = %polly.loop_exit629, %polly.loop_header615
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %indvars.iv1015 = phi i64 [ %indvars.iv.next1016, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit629 ], [ 96, %polly.loop_header615 ]
  %polly.indvar624 = phi i64 [ %198, %polly.loop_exit629 ], [ 0, %polly.loop_header615 ]
  %195 = mul nuw nsw i64 %polly.indvar624, 100
  %196 = mul nsw i64 %polly.indvar624, -100
  %197 = add nsw i64 %196, 1199
  br label %polly.loop_header627

polly.loop_exit629:                               ; preds = %polly.loop_exit685
  %198 = add nuw nsw i64 %polly.indvar624, 1
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, -4
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 4
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, -4
  %exitcond1031.not = icmp eq i64 %198, 12
  br i1 %exitcond1031.not, label %polly.loop_exit623, label %polly.loop_header621

polly.loop_header627:                             ; preds = %polly.loop_exit685, %polly.loop_header621
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %polly.loop_exit685 ], [ %indvars.iv1020, %polly.loop_header621 ]
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %polly.loop_exit685 ], [ %indvars.iv1015, %polly.loop_header621 ]
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit685 ], [ %polly.indvar624, %polly.loop_header621 ]
  %smax1019 = call i64 @llvm.smax.i64(i64 %indvars.iv1017, i64 0)
  %199 = add i64 %smax1019, %indvars.iv1022
  %.not.not930 = icmp ugt i64 %polly.indvar630, %polly.indvar624
  %200 = mul nuw nsw i64 %polly.indvar630, 96
  %201 = add nsw i64 %200, %196
  %202 = add nsw i64 %201, -1
  %.inv931 = icmp sgt i64 %201, 99
  %203 = select i1 %.inv931, i64 99, i64 %202
  %polly.loop_guard647 = icmp sgt i64 %203, -1
  %204 = add nsw i64 %201, 95
  %205 = icmp ult i64 %197, %204
  %206 = select i1 %205, i64 %197, i64 %204
  %polly.loop_guard659.not = icmp sgt i64 %201, %206
  br i1 %.not.not930, label %polly.loop_header633.us, label %polly.loop_header633

polly.loop_header633.us:                          ; preds = %polly.loop_header627, %polly.merge640.us
  %polly.indvar636.us = phi i64 [ %polly.indvar_next637.us, %polly.merge640.us ], [ 0, %polly.loop_header627 ]
  br i1 %polly.loop_guard647, label %polly.loop_header644.preheader.us, label %polly.loop_exit646.us

polly.loop_header644.us:                          ; preds = %polly.loop_header644.preheader.us, %polly.loop_header644.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_header644.us ], [ 0, %polly.loop_header644.preheader.us ]
  %207 = add nuw nsw i64 %polly.indvar648.us, %195
  %polly.access.mul.call1652.us = mul nuw nsw i64 %207, 1000
  %polly.access.add.call1653.us = add nuw nsw i64 %210, %polly.access.mul.call1652.us
  %polly.access.call1654.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1653.us
  %polly.access.call1654.load.us = load double, double* %polly.access.call1654.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516.us = add nuw nsw i64 %polly.indvar648.us, %polly.access.mul.Packed_MemRef_call1516.us
  %polly.access.Packed_MemRef_call1516.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516.us
  store double %polly.access.call1654.load.us, double* %polly.access.Packed_MemRef_call1516.us, align 8
  %polly.indvar_next649.us = add nuw i64 %polly.indvar648.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar648.us, %203
  br i1 %exitcond1012.not, label %polly.loop_exit646.us, label %polly.loop_header644.us

polly.loop_exit646.us:                            ; preds = %polly.loop_header644.us, %polly.loop_header633.us
  br i1 %polly.loop_guard659.not, label %polly.merge640.us, label %polly.loop_header656.preheader.us

polly.loop_header656.us:                          ; preds = %polly.loop_header656.preheader.us, %polly.loop_header656.us
  %polly.indvar660.us = phi i64 [ %polly.indvar_next661.us, %polly.loop_header656.us ], [ %201, %polly.loop_header656.preheader.us ]
  %208 = add nsw i64 %polly.indvar660.us, %195
  %polly.access.mul.call1664.us = mul nuw nsw i64 %208, 1000
  %polly.access.add.call1665.us = add nuw nsw i64 %209, %polly.access.mul.call1664.us
  %polly.access.call1666.us = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1665.us
  %polly.access.call1666.load.us = load double, double* %polly.access.call1666.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516668.us = add nsw i64 %polly.indvar660.us, %polly.access.mul.Packed_MemRef_call1516667.us
  %polly.access.Packed_MemRef_call1516669.us = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516668.us
  store double %polly.access.call1666.load.us, double* %polly.access.Packed_MemRef_call1516669.us, align 8
  %polly.indvar_next661.us = add nsw i64 %polly.indvar660.us, 1
  %polly.loop_cond662.not.not.us = icmp slt i64 %polly.indvar660.us, %206
  br i1 %polly.loop_cond662.not.not.us, label %polly.loop_header656.us, label %polly.merge640.us

polly.merge640.us:                                ; preds = %polly.loop_header656.us, %polly.loop_exit646.us
  %polly.indvar_next637.us = add nuw nsw i64 %polly.indvar636.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next637.us, %193
  br i1 %exitcond1014.not, label %polly.loop_header683.preheader, label %polly.loop_header633.us

polly.loop_header656.preheader.us:                ; preds = %polly.loop_exit646.us
  %209 = add nuw nsw i64 %polly.indvar636.us, %194
  %polly.access.mul.Packed_MemRef_call1516667.us = mul nuw nsw i64 %polly.indvar636.us, 1200
  br label %polly.loop_header656.us

polly.loop_header644.preheader.us:                ; preds = %polly.loop_header633.us
  %210 = add nuw nsw i64 %polly.indvar636.us, %194
  %polly.access.mul.Packed_MemRef_call1516.us = mul nuw nsw i64 %polly.indvar636.us, 1200
  br label %polly.loop_header644.us

polly.loop_exit685:                               ; preds = %polly.loop_exit692, %polly.loop_header683.preheader
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, -96
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, 96
  %exitcond1030.not = icmp eq i64 %polly.indvar_next631, 13
  br i1 %exitcond1030.not, label %polly.loop_exit629, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_header627, %polly.merge640
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.merge640 ], [ 0, %polly.loop_header627 ]
  %211 = add nuw nsw i64 %polly.indvar636, %194
  %polly.access.mul.Packed_MemRef_call1516680 = mul nuw nsw i64 %polly.indvar636, 1200
  br label %polly.loop_header670

polly.merge640:                                   ; preds = %polly.loop_header670
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %exitcond1011.not = icmp eq i64 %polly.indvar_next637, %193
  br i1 %exitcond1011.not, label %polly.loop_header683.preheader, label %polly.loop_header633

polly.loop_header683.preheader:                   ; preds = %polly.merge640, %polly.merge640.us
  %212 = sub nsw i64 %195, %200
  %213 = icmp sgt i64 %212, 0
  %214 = select i1 %213, i64 %212, i64 0
  %215 = mul nsw i64 %polly.indvar630, -96
  %216 = icmp slt i64 %215, -1104
  %217 = select i1 %216, i64 %215, i64 -1104
  %218 = add nsw i64 %217, 1199
  %polly.loop_guard693.not = icmp sgt i64 %214, %218
  br i1 %polly.loop_guard693.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header670:                             ; preds = %polly.loop_header670, %polly.loop_header633
  %polly.indvar673 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next674, %polly.loop_header670 ]
  %219 = add nuw nsw i64 %polly.indvar673, %195
  %polly.access.mul.call1677 = mul nuw nsw i64 %219, 1000
  %polly.access.add.call1678 = add nuw nsw i64 %211, %polly.access.mul.call1677
  %polly.access.call1679 = getelementptr double, double* %polly.access.cast.call1726, i64 %polly.access.add.call1678
  %polly.access.call1679.load = load double, double* %polly.access.call1679, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1516681 = add nuw nsw i64 %polly.indvar673, %polly.access.mul.Packed_MemRef_call1516680
  %polly.access.Packed_MemRef_call1516682 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516681
  store double %polly.access.call1679.load, double* %polly.access.Packed_MemRef_call1516682, align 8
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %exitcond1007.not = icmp eq i64 %polly.indvar_next674, %indvars.iv1005
  br i1 %exitcond1007.not, label %polly.merge640, label %polly.loop_header670

polly.loop_header683:                             ; preds = %polly.loop_header683.preheader, %polly.loop_exit692
  %polly.indvar686 = phi i64 [ %polly.indvar_next687, %polly.loop_exit692 ], [ 0, %polly.loop_header683.preheader ]
  %220 = add nuw nsw i64 %polly.indvar686, %194
  %polly.access.mul.Packed_MemRef_call1516705 = mul nuw nsw i64 %polly.indvar686, 1200
  %221 = shl i64 %220, 3
  br label %polly.loop_header690

polly.loop_exit692:                               ; preds = %polly.loop_exit700
  %polly.indvar_next687 = add nuw nsw i64 %polly.indvar686, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next687, %193
  br i1 %exitcond1029.not, label %polly.loop_exit685, label %polly.loop_header683

polly.loop_header690:                             ; preds = %polly.loop_header683, %polly.loop_exit700
  %indvars.iv1024 = phi i64 [ %199, %polly.loop_header683 ], [ %indvars.iv.next1025, %polly.loop_exit700 ]
  %polly.indvar694 = phi i64 [ %214, %polly.loop_header683 ], [ %polly.indvar_next695, %polly.loop_exit700 ]
  %smin1026 = call i64 @llvm.smin.i64(i64 %indvars.iv1024, i64 99)
  %222 = add nuw i64 %polly.indvar694, %200
  %223 = add i64 %222, %196
  %polly.loop_guard7011074 = icmp sgt i64 %223, -1
  br i1 %polly.loop_guard7011074, label %polly.loop_header698.preheader, label %polly.loop_exit700

polly.loop_header698.preheader:                   ; preds = %polly.loop_header690
  %224 = mul i64 %222, 8000
  %225 = add i64 %224, %221
  %scevgep709 = getelementptr i8, i8* %call2, i64 %225
  %scevgep709710 = bitcast i8* %scevgep709 to double*
  %_p_scalar_711 = load double, double* %scevgep709710, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1516716 = add nsw i64 %polly.access.mul.Packed_MemRef_call1516705, %223
  %polly.access.Packed_MemRef_call1516717 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516716
  %_p_scalar_718 = load double, double* %polly.access.Packed_MemRef_call1516717, align 8
  %226 = mul i64 %222, 9600
  br label %polly.loop_header698

polly.loop_exit700:                               ; preds = %polly.loop_header698, %polly.loop_header690
  %polly.indvar_next695 = add nuw nsw i64 %polly.indvar694, 1
  %polly.loop_cond696.not.not = icmp slt i64 %polly.indvar694, %218
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  br i1 %polly.loop_cond696.not.not, label %polly.loop_header690, label %polly.loop_exit692

polly.loop_header698:                             ; preds = %polly.loop_header698.preheader, %polly.loop_header698
  %polly.indvar702 = phi i64 [ %polly.indvar_next703, %polly.loop_header698 ], [ 0, %polly.loop_header698.preheader ]
  %227 = add nuw nsw i64 %polly.indvar702, %195
  %polly.access.add.Packed_MemRef_call1516706 = add nuw nsw i64 %polly.indvar702, %polly.access.mul.Packed_MemRef_call1516705
  %polly.access.Packed_MemRef_call1516707 = getelementptr double, double* %Packed_MemRef_call1516, i64 %polly.access.add.Packed_MemRef_call1516706
  %_p_scalar_708 = load double, double* %polly.access.Packed_MemRef_call1516707, align 8
  %p_mul27.i = fmul fast double %_p_scalar_711, %_p_scalar_708
  %228 = mul nuw nsw i64 %227, 8000
  %229 = add nuw nsw i64 %228, %221
  %scevgep712 = getelementptr i8, i8* %call2, i64 %229
  %scevgep712713 = bitcast i8* %scevgep712 to double*
  %_p_scalar_714 = load double, double* %scevgep712713, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_718, %_p_scalar_714
  %230 = shl i64 %227, 3
  %231 = add i64 %230, %226
  %scevgep719 = getelementptr i8, i8* %call, i64 %231
  %scevgep719720 = bitcast i8* %scevgep719 to double*
  %_p_scalar_721 = load double, double* %scevgep719720, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_721
  store double %p_add42.i, double* %scevgep719720, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next703 = add nuw nsw i64 %polly.indvar702, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar702, %smin1026
  br i1 %exitcond1027.not, label %polly.loop_exit700, label %polly.loop_header698

polly.loop_header848:                             ; preds = %entry, %polly.loop_exit856
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %polly.loop_exit856 ], [ 0, %entry ]
  %polly.indvar851 = phi i64 [ %polly.indvar_next852, %polly.loop_exit856 ], [ 0, %entry ]
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 -1168)
  %232 = shl nsw i64 %polly.indvar851, 5
  %233 = add nsw i64 %smin1061, 1199
  br label %polly.loop_header854

polly.loop_exit856:                               ; preds = %polly.loop_exit862
  %polly.indvar_next852 = add nuw nsw i64 %polly.indvar851, 1
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -32
  %exitcond1064.not = icmp eq i64 %polly.indvar_next852, 38
  br i1 %exitcond1064.not, label %polly.loop_header875, label %polly.loop_header848

polly.loop_header854:                             ; preds = %polly.loop_exit862, %polly.loop_header848
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %polly.indvar857 = phi i64 [ %polly.indvar_next858, %polly.loop_exit862 ], [ 0, %polly.loop_header848 ]
  %234 = mul nsw i64 %polly.indvar857, -32
  %smin = call i64 @llvm.smin.i64(i64 %234, i64 -1168)
  %235 = add nsw i64 %smin, 1200
  %smin1057 = call i64 @llvm.smin.i64(i64 %indvars.iv1055, i64 -1168)
  %236 = shl nsw i64 %polly.indvar857, 5
  %237 = add nsw i64 %smin1057, 1199
  br label %polly.loop_header860

polly.loop_exit862:                               ; preds = %polly.loop_exit868
  %polly.indvar_next858 = add nuw nsw i64 %polly.indvar857, 1
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, -32
  %exitcond1063.not = icmp eq i64 %polly.indvar_next858, 38
  br i1 %exitcond1063.not, label %polly.loop_exit856, label %polly.loop_header854

polly.loop_header860:                             ; preds = %polly.loop_exit868, %polly.loop_header854
  %polly.indvar863 = phi i64 [ 0, %polly.loop_header854 ], [ %polly.indvar_next864, %polly.loop_exit868 ]
  %238 = add nuw nsw i64 %polly.indvar863, %232
  %239 = trunc i64 %238 to i32
  %240 = mul nuw nsw i64 %238, 9600
  %min.iters.check = icmp eq i64 %235, 0
  br i1 %min.iters.check, label %polly.loop_header866, label %vector.ph1105

vector.ph1105:                                    ; preds = %polly.loop_header860
  %broadcast.splatinsert1112 = insertelement <4 x i64> poison, i64 %236, i32 0
  %broadcast.splat1113 = shufflevector <4 x i64> %broadcast.splatinsert1112, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %239, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1105
  %index1106 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1105 ], [ %vec.ind.next1111, %vector.body1104 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1110, %broadcast.splat1113
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1115, %242
  %244 = add <4 x i32> %243, <i32 3, i32 3, i32 3, i32 3>
  %245 = urem <4 x i32> %244, <i32 1200, i32 1200, i32 1200, i32 1200>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add nuw nsw i64 %249, %240
  %251 = getelementptr i8, i8* %call, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !99, !noalias !101
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1111 = add <4 x i64> %vec.ind1110, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1107, %235
  br i1 %253, label %polly.loop_exit868, label %vector.body1104, !llvm.loop !104

polly.loop_exit868:                               ; preds = %vector.body1104, %polly.loop_header866
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar863, %233
  br i1 %exitcond1062.not, label %polly.loop_exit862, label %polly.loop_header860

polly.loop_header866:                             ; preds = %polly.loop_header860, %polly.loop_header866
  %polly.indvar869 = phi i64 [ %polly.indvar_next870, %polly.loop_header866 ], [ 0, %polly.loop_header860 ]
  %254 = add nuw nsw i64 %polly.indvar869, %236
  %255 = trunc i64 %254 to i32
  %256 = mul i32 %255, %239
  %257 = add i32 %256, 3
  %258 = urem i32 %257, 1200
  %p_conv31.i = sitofp i32 %258 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %259 = shl i64 %254, 3
  %260 = add nuw nsw i64 %259, %240
  %scevgep872 = getelementptr i8, i8* %call, i64 %260
  %scevgep872873 = bitcast i8* %scevgep872 to double*
  store double %p_div33.i, double* %scevgep872873, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next870 = add nuw nsw i64 %polly.indvar869, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar869, %237
  br i1 %exitcond1058.not, label %polly.loop_exit868, label %polly.loop_header866, !llvm.loop !105

polly.loop_header875:                             ; preds = %polly.loop_exit856, %polly.loop_exit883
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %polly.indvar878 = phi i64 [ %polly.indvar_next879, %polly.loop_exit883 ], [ 0, %polly.loop_exit856 ]
  %smin1051 = call i64 @llvm.smin.i64(i64 %indvars.iv1049, i64 -1168)
  %261 = shl nsw i64 %polly.indvar878, 5
  %262 = add nsw i64 %smin1051, 1199
  br label %polly.loop_header881

polly.loop_exit883:                               ; preds = %polly.loop_exit889
  %polly.indvar_next879 = add nuw nsw i64 %polly.indvar878, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, -32
  %exitcond1054.not = icmp eq i64 %polly.indvar_next879, 38
  br i1 %exitcond1054.not, label %polly.loop_header901, label %polly.loop_header875

polly.loop_header881:                             ; preds = %polly.loop_exit889, %polly.loop_header875
  %indvars.iv1045 = phi i64 [ %indvars.iv.next1046, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %polly.indvar884 = phi i64 [ %polly.indvar_next885, %polly.loop_exit889 ], [ 0, %polly.loop_header875 ]
  %263 = mul nsw i64 %polly.indvar884, -32
  %smin1119 = call i64 @llvm.smin.i64(i64 %263, i64 -968)
  %264 = add nsw i64 %smin1119, 1000
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1045, i64 -968)
  %265 = shl nsw i64 %polly.indvar884, 5
  %266 = add nsw i64 %smin1047, 999
  br label %polly.loop_header887

polly.loop_exit889:                               ; preds = %polly.loop_exit895
  %polly.indvar_next885 = add nuw nsw i64 %polly.indvar884, 1
  %indvars.iv.next1046 = add nsw i64 %indvars.iv1045, -32
  %exitcond1053.not = icmp eq i64 %polly.indvar_next885, 32
  br i1 %exitcond1053.not, label %polly.loop_exit883, label %polly.loop_header881

polly.loop_header887:                             ; preds = %polly.loop_exit895, %polly.loop_header881
  %polly.indvar890 = phi i64 [ 0, %polly.loop_header881 ], [ %polly.indvar_next891, %polly.loop_exit895 ]
  %267 = add nuw nsw i64 %polly.indvar890, %261
  %268 = trunc i64 %267 to i32
  %269 = mul nuw nsw i64 %267, 8000
  %min.iters.check1120 = icmp eq i64 %264, 0
  br i1 %min.iters.check1120, label %polly.loop_header893, label %vector.ph1121

vector.ph1121:                                    ; preds = %polly.loop_header887
  %broadcast.splatinsert1130 = insertelement <4 x i64> poison, i64 %265, i32 0
  %broadcast.splat1131 = shufflevector <4 x i64> %broadcast.splatinsert1130, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1121
  %index1124 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1125, %vector.body1118 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1121 ], [ %vec.ind.next1129, %vector.body1118 ]
  %270 = add nuw nsw <4 x i64> %vec.ind1128, %broadcast.splat1131
  %271 = trunc <4 x i64> %270 to <4 x i32>
  %272 = mul <4 x i32> %broadcast.splat1133, %271
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 1000, i32 1000, i32 1000, i32 1000>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %277 = extractelement <4 x i64> %270, i32 0
  %278 = shl i64 %277, 3
  %279 = add nuw nsw i64 %278, %269
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %276, <4 x double>* %281, align 8, !alias.scope !103, !noalias !106
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %282 = icmp eq i64 %index.next1125, %264
  br i1 %282, label %polly.loop_exit895, label %vector.body1118, !llvm.loop !107

polly.loop_exit895:                               ; preds = %vector.body1118, %polly.loop_header893
  %polly.indvar_next891 = add nuw nsw i64 %polly.indvar890, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar890, %262
  br i1 %exitcond1052.not, label %polly.loop_exit889, label %polly.loop_header887

polly.loop_header893:                             ; preds = %polly.loop_header887, %polly.loop_header893
  %polly.indvar896 = phi i64 [ %polly.indvar_next897, %polly.loop_header893 ], [ 0, %polly.loop_header887 ]
  %283 = add nuw nsw i64 %polly.indvar896, %265
  %284 = trunc i64 %283 to i32
  %285 = mul i32 %284, %268
  %286 = add i32 %285, 2
  %287 = urem i32 %286, 1000
  %p_conv10.i = sitofp i32 %287 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %288 = shl i64 %283, 3
  %289 = add nuw nsw i64 %288, %269
  %scevgep899 = getelementptr i8, i8* %call2, i64 %289
  %scevgep899900 = bitcast i8* %scevgep899 to double*
  store double %p_div12.i, double* %scevgep899900, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next897 = add nuw nsw i64 %polly.indvar896, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar896, %266
  br i1 %exitcond1048.not, label %polly.loop_exit895, label %polly.loop_header893, !llvm.loop !108

polly.loop_header901:                             ; preds = %polly.loop_exit883, %polly.loop_exit909
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_exit883 ]
  %smin1041 = call i64 @llvm.smin.i64(i64 %indvars.iv1039, i64 -1168)
  %290 = shl nsw i64 %polly.indvar904, 5
  %291 = add nsw i64 %smin1041, 1199
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -32
  %exitcond1044.not = icmp eq i64 %polly.indvar_next905, 38
  br i1 %exitcond1044.not, label %init_array.exit, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %indvars.iv1035 = phi i64 [ %indvars.iv.next1036, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_exit915 ], [ 0, %polly.loop_header901 ]
  %292 = mul nsw i64 %polly.indvar910, -32
  %smin1137 = call i64 @llvm.smin.i64(i64 %292, i64 -968)
  %293 = add nsw i64 %smin1137, 1000
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1035, i64 -968)
  %294 = shl nsw i64 %polly.indvar910, 5
  %295 = add nsw i64 %smin1037, 999
  br label %polly.loop_header913

polly.loop_exit915:                               ; preds = %polly.loop_exit921
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -32
  %exitcond1043.not = icmp eq i64 %polly.indvar_next911, 32
  br i1 %exitcond1043.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_exit921, %polly.loop_header907
  %polly.indvar916 = phi i64 [ 0, %polly.loop_header907 ], [ %polly.indvar_next917, %polly.loop_exit921 ]
  %296 = add nuw nsw i64 %polly.indvar916, %290
  %297 = trunc i64 %296 to i32
  %298 = mul nuw nsw i64 %296, 8000
  %min.iters.check1138 = icmp eq i64 %293, 0
  br i1 %min.iters.check1138, label %polly.loop_header919, label %vector.ph1139

vector.ph1139:                                    ; preds = %polly.loop_header913
  %broadcast.splatinsert1148 = insertelement <4 x i64> poison, i64 %294, i32 0
  %broadcast.splat1149 = shufflevector <4 x i64> %broadcast.splatinsert1148, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1139
  %index1142 = phi i64 [ 0, %vector.ph1139 ], [ %index.next1143, %vector.body1136 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1139 ], [ %vec.ind.next1147, %vector.body1136 ]
  %299 = add nuw nsw <4 x i64> %vec.ind1146, %broadcast.splat1149
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = mul <4 x i32> %broadcast.splat1151, %300
  %302 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  %303 = urem <4 x i32> %302, <i32 1200, i32 1200, i32 1200, i32 1200>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %306 = extractelement <4 x i64> %299, i32 0
  %307 = shl i64 %306, 3
  %308 = add nuw nsw i64 %307, %298
  %309 = getelementptr i8, i8* %call1, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %305, <4 x double>* %310, align 8, !alias.scope !102, !noalias !109
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %311 = icmp eq i64 %index.next1143, %293
  br i1 %311, label %polly.loop_exit921, label %vector.body1136, !llvm.loop !110

polly.loop_exit921:                               ; preds = %vector.body1136, %polly.loop_header919
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar916, %291
  br i1 %exitcond1042.not, label %polly.loop_exit915, label %polly.loop_header913

polly.loop_header919:                             ; preds = %polly.loop_header913, %polly.loop_header919
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_header919 ], [ 0, %polly.loop_header913 ]
  %312 = add nuw nsw i64 %polly.indvar922, %294
  %313 = trunc i64 %312 to i32
  %314 = mul i32 %313, %297
  %315 = add i32 %314, 1
  %316 = urem i32 %315, 1200
  %p_conv.i = sitofp i32 %316 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %317 = shl i64 %312, 3
  %318 = add nuw nsw i64 %317, %298
  %scevgep926 = getelementptr i8, i8* %call1, i64 %318
  %scevgep926927 = bitcast i8* %scevgep926 to double*
  store double %p_div.i, double* %scevgep926927, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar922, %295
  br i1 %exitcond1038.not, label %polly.loop_exit921, label %polly.loop_header919, !llvm.loop !111
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
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
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
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
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
