; ModuleID = 'syr2k_recreations//mmp_syr2k_S_13.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_13.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #6
  %call736 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1597 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1597, %call2
  %polly.access.call2617 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2617, %call1
  %2 = or i1 %0, %1
  %polly.access.call637 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call637, %call2
  %4 = icmp ule i8* %polly.access.call2617, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call637, %call1
  %8 = icmp ule i8* %polly.access.call1597, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header722, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep930 = getelementptr i8, i8* %call2, i64 %12
  %scevgep929 = getelementptr i8, i8* %call2, i64 %11
  %scevgep928 = getelementptr i8, i8* %call1, i64 %12
  %scevgep927 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep927, %scevgep930
  %bound1 = icmp ult i8* %scevgep929, %scevgep928
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
  %16 = urem <4 x i32> %15, <i32 80, i32 80, i32 80, i32 80>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %19 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 60, i32 60, i32 60, i32 60>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %25 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 60
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 80
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 1.250000e-02
  %arrayidx6.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 60
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 0x3F91111111111111
  %arrayidx16.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 60
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 80
  br i1 %exitcond18.not.i, label %vector.ph934, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph934:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert941 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat942 = shufflevector <4 x i64> %broadcast.splatinsert941, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph934
  %index935 = phi i64 [ 0, %vector.ph934 ], [ %index.next936, %vector.body933 ]
  %vec.ind939 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph934 ], [ %vec.ind.next940, %vector.body933 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind939, %broadcast.splat942
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index935
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next936 = add i64 %index935, 4
  %vec.ind.next940 = add <4 x i64> %vec.ind939, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next936, 80
  br i1 %40, label %for.inc41.i, label %vector.body933, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body933
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph934, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit783.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start423, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1287, label %vector.ph1216

vector.ph1216:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1216
  %index1217 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1218, %vector.body1215 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1217
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %46 = icmp eq i64 %index.next1218, %n.vec
  br i1 %46, label %middle.block1213, label %vector.body1215, !llvm.loop !18

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1220 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1220, label %for.inc6.i, label %for.body3.i46.preheader1287

for.body3.i46.preheader1287:                      ; preds = %for.body3.i46.preheader, %middle.block1213
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1213 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1287, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1287 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1213, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 80
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit549.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1236 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1236, label %for.body3.i60.preheader1286, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i60.preheader
  %n.vec1239 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1235 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1240
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %57 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %57, label %middle.block1233, label %vector.body1235, !llvm.loop !60

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i52, %n.vec1239
  br i1 %cmp.n1243, label %for.inc6.i63, label %for.body3.i60.preheader1286

for.body3.i60.preheader1286:                      ; preds = %for.body3.i60.preheader, %middle.block1233
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1239, %middle.block1233 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1286, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1286 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1233, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 80
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit386.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1262 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1262, label %for.body3.i99.preheader1285, label %vector.ph1263

vector.ph1263:                                    ; preds = %for.body3.i99.preheader
  %n.vec1265 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1261 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1266
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1267 = add i64 %index1266, 4
  %68 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %68, label %middle.block1259, label %vector.body1261, !llvm.loop !62

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %indvars.iv21.i91, %n.vec1265
  br i1 %cmp.n1269, label %for.inc6.i102, label %for.body3.i99.preheader1285

for.body3.i99.preheader1285:                      ; preds = %for.body3.i99.preheader, %middle.block1259
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1265, %middle.block1259 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1285, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1285 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1259, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 80
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.2
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 80
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1274 = phi i64 [ %indvar.next1275, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1274, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1276 = icmp ult i64 %88, 4
  br i1 %min.iters.check1276, label %polly.loop_header191.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header
  %n.vec1279 = and i64 %88, -4
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1273 ]
  %90 = shl nuw nsw i64 %index1280, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1281 = add i64 %index1280, 4
  %95 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %95, label %middle.block1271, label %vector.body1273, !llvm.loop !74

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1283 = icmp eq i64 %88, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1271
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1279, %middle.block1271 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1271
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond805.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %exitcond805.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond804.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond804.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199.preheader
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep792 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep793 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793, i64 480, i1 false)
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next209, 32
  br i1 %exitcond.not, label %polly.loop_header221, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_header205, %polly.loop_exit229
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_header205 ]
  %98 = shl nuw nsw i64 %polly.indvar224, 3
  %scevgep243 = getelementptr i8, i8* %call2, i64 %98
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %exitcond802.not = icmp eq i64 %polly.indvar_next225, 60
  br i1 %exitcond802.not, label %polly.loop_header205.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit235 ], [ 1, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %99 = mul nuw nsw i64 %polly.indvar230, 480
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %99
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1251 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.Packed_MemRef_call1252 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251, %polly.indvar224
  %polly.access.Packed_MemRef_call1253 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call1253, align 8
  %100 = mul nuw nsw i64 %polly.indvar230, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1
  %exitcond801.not = icmp eq i64 %polly.indvar_next231, 32
  br i1 %exitcond801.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = mul nuw nsw i64 %polly.indvar236, 60
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar224
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %101 = mul nuw nsw i64 %polly.indvar236, 480
  %scevgep248 = getelementptr i8, i8* %scevgep243, i64 %101
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %102 = shl nuw nsw i64 %polly.indvar236, 3
  %103 = add nuw nsw i64 %102, %100
  %scevgep255 = getelementptr i8, i8* %call, i64 %103
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next237, %indvars.iv796
  br i1 %exitcond798.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1248 = phi i64 [ %indvar.next1249, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %104 = add i64 %indvar1248, 1
  %105 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %105
  %min.iters.check1250 = icmp ult i64 %104, 4
  br i1 %min.iters.check1250, label %polly.loop_header352.preheader, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header346
  %n.vec1253 = and i64 %104, -4
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1247 ]
  %106 = shl nuw nsw i64 %index1254, 3
  %107 = getelementptr i8, i8* %scevgep358, i64 %106
  %108 = bitcast i8* %107 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %108, align 8, !alias.scope !78, !noalias !80
  %109 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %110 = bitcast i8* %107 to <4 x double>*
  store <4 x double> %109, <4 x double>* %110, align 8, !alias.scope !78, !noalias !80
  %index.next1255 = add i64 %index1254, 4
  %111 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %111, label %middle.block1245, label %vector.body1247, !llvm.loop !84

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1257 = icmp eq i64 %104, %n.vec1253
  br i1 %cmp.n1257, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1245
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1253, %middle.block1245 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1245
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond825.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1249 = add i64 %indvar1248, 1
  br i1 %exitcond825.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header368

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %112
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond824.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !85

polly.loop_header368:                             ; preds = %polly.loop_header368, %polly.loop_header362.preheader
  %polly.indvar371 = phi i64 [ 0, %polly.loop_header362.preheader ], [ %polly.indvar_next372, %polly.loop_header368 ]
  %113 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep807 = getelementptr i8, i8* %malloccall262, i64 %113
  %scevgep808 = getelementptr i8, i8* %call1, i64 %113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep807, i8* noundef nonnull align 8 dereferenceable(480) %scevgep808, i64 480, i1 false)
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next372, 32
  br i1 %exitcond812.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header384:                             ; preds = %polly.loop_header368, %polly.loop_exit392
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 0, %polly.loop_header368 ]
  %114 = shl nuw nsw i64 %polly.indvar387, 3
  %scevgep406 = getelementptr i8, i8* %call2, i64 %114
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond822.not = icmp eq i64 %polly.indvar_next388, 60
  br i1 %exitcond822.not, label %polly.loop_header368.1, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_header384
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit398 ], [ 1, %polly.loop_header384 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 0, %polly.loop_header384 ]
  %115 = mul nuw nsw i64 %polly.indvar393, 480
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %115
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263414 = mul nuw nsw i64 %polly.indvar393, 60
  %polly.access.add.Packed_MemRef_call1263415 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414, %polly.indvar387
  %polly.access.Packed_MemRef_call1263416 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415
  %_p_scalar_417 = load double, double* %polly.access.Packed_MemRef_call1263416, align 8
  %116 = mul nuw nsw i64 %polly.indvar393, 640
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1
  %exitcond821.not = icmp eq i64 %polly.indvar_next394, 32
  br i1 %exitcond821.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = mul nuw nsw i64 %polly.indvar399, 60
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar387
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %117 = mul nuw nsw i64 %polly.indvar399, 480
  %scevgep411 = getelementptr i8, i8* %scevgep406, i64 %117
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75 = fmul fast double %_p_scalar_417, %_p_scalar_413
  %118 = shl nuw nsw i64 %polly.indvar399, 3
  %119 = add nuw nsw i64 %118, %116
  %scevgep418 = getelementptr i8, i8* %call, i64 %119
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond817.not = icmp eq i64 %polly.indvar_next400, %indvars.iv815
  br i1 %exitcond817.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %120 = add i64 %indvar, 1
  %121 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1224 = icmp ult i64 %120, 4
  br i1 %min.iters.check1224, label %polly.loop_header515.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header509
  %n.vec1227 = and i64 %120, -4
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1223 ]
  %122 = shl nuw nsw i64 %index1228, 3
  %123 = getelementptr i8, i8* %scevgep521, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !87, !noalias !89
  %125 = fmul fast <4 x double> %wide.load1232, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !87, !noalias !89
  %index.next1229 = add i64 %index1228, 4
  %127 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %127, label %middle.block1221, label %vector.body1223, !llvm.loop !93

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %120, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1221
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1227, %middle.block1221 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1221
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond845.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header531

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %128
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond844.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !94

polly.loop_header531:                             ; preds = %polly.loop_header531, %polly.loop_header525.preheader
  %polly.indvar534 = phi i64 [ 0, %polly.loop_header525.preheader ], [ %polly.indvar_next535, %polly.loop_header531 ]
  %129 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep827 = getelementptr i8, i8* %malloccall425, i64 %129
  %scevgep828 = getelementptr i8, i8* %call1, i64 %129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep827, i8* noundef nonnull align 8 dereferenceable(480) %scevgep828, i64 480, i1 false)
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next535, 32
  br i1 %exitcond832.not, label %polly.loop_header547, label %polly.loop_header531

polly.loop_header547:                             ; preds = %polly.loop_header531, %polly.loop_exit555
  %polly.indvar550 = phi i64 [ %polly.indvar_next551, %polly.loop_exit555 ], [ 0, %polly.loop_header531 ]
  %130 = shl nuw nsw i64 %polly.indvar550, 3
  %scevgep569 = getelementptr i8, i8* %call2, i64 %130
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next551 = add nuw nsw i64 %polly.indvar550, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next551, 60
  br i1 %exitcond842.not, label %polly.loop_header531.1, label %polly.loop_header547

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_header547
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit561 ], [ 1, %polly.loop_header547 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 0, %polly.loop_header547 ]
  %131 = mul nuw nsw i64 %polly.indvar556, 480
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %131
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426577 = mul nuw nsw i64 %polly.indvar556, 60
  %polly.access.add.Packed_MemRef_call1426578 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577, %polly.indvar550
  %polly.access.Packed_MemRef_call1426579 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578
  %_p_scalar_580 = load double, double* %polly.access.Packed_MemRef_call1426579, align 8
  %132 = mul nuw nsw i64 %polly.indvar556, 640
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next557, 32
  br i1 %exitcond841.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = mul nuw nsw i64 %polly.indvar562, 60
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar550
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %133 = mul nuw nsw i64 %polly.indvar562, 480
  %scevgep574 = getelementptr i8, i8* %scevgep569, i64 %133
  %scevgep574575 = bitcast i8* %scevgep574 to double*
  %_p_scalar_576 = load double, double* %scevgep574575, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i = fmul fast double %_p_scalar_580, %_p_scalar_576
  %134 = shl nuw nsw i64 %polly.indvar562, 3
  %135 = add nuw nsw i64 %134, %132
  %scevgep581 = getelementptr i8, i8* %call, i64 %135
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond837.not = icmp eq i64 %polly.indvar_next563, %indvars.iv835
  br i1 %exitcond837.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %136 = mul nuw nsw i64 %polly.indvar725, 640
  %137 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %polly.loop_header722
  %index947 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next948, %vector.body945 ]
  %vec.ind953 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next954, %vector.body945 ]
  %138 = mul <4 x i32> %vec.ind953, %broadcast.splat956
  %139 = add <4 x i32> %138, <i32 3, i32 3, i32 3, i32 3>
  %140 = urem <4 x i32> %139, <i32 80, i32 80, i32 80, i32 80>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index947, 3
  %144 = add nuw nsw i64 %143, %136
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !96, !noalias !98
  %index.next948 = add i64 %index947, 4
  %vec.ind.next954 = add <4 x i32> %vec.ind953, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next948, 32
  br i1 %147, label %polly.loop_exit730, label %vector.body945, !llvm.loop !101

polly.loop_exit730:                               ; preds = %vector.body945
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond865.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %148 = mul nuw nsw i64 %polly.indvar752, 480
  %149 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header749
  %index1061 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1067 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1068, %vector.body1059 ]
  %150 = mul <4 x i32> %vec.ind1067, %broadcast.splat1070
  %151 = add <4 x i32> %150, <i32 2, i32 2, i32 2, i32 2>
  %152 = urem <4 x i32> %151, <i32 60, i32 60, i32 60, i32 60>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index1061, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call2, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !100, !noalias !102
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1068 = add <4 x i32> %vec.ind1067, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1062, 32
  br i1 %159, label %polly.loop_exit757, label %vector.body1059, !llvm.loop !103

polly.loop_exit757:                               ; preds = %vector.body1059
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond856.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %160 = mul nuw nsw i64 %polly.indvar778, 480
  %161 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header775
  %index1139 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1146, %vector.body1137 ]
  %162 = mul <4 x i32> %vec.ind1145, %broadcast.splat1148
  %163 = add <4 x i32> %162, <i32 1, i32 1, i32 1, i32 1>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %167 = shl i64 %index1139, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call1, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !99, !noalias !104
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1146 = add <4 x i32> %vec.ind1145, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1140, 32
  br i1 %171, label %polly.loop_exit783, label %vector.body1137, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body1137
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond850.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_header205.1
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_header205.1 ], [ 0, %polly.loop_exit229 ]
  %172 = mul nuw nsw i64 %polly.indvar208.1, 480
  %scevgep792.1 = getelementptr i8, i8* %malloccall, i64 %172
  %scevgep793.1 = getelementptr i8, i8* %call1, i64 %172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.1, i64 480, i1 false)
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next209.1, 64
  br i1 %exitcond.1.not, label %polly.loop_header221.1, label %polly.loop_header205.1

polly.loop_header221.1:                           ; preds = %polly.loop_header205.1, %polly.loop_exit229.1
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_header205.1 ]
  %173 = shl nuw nsw i64 %polly.indvar224.1, 3
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %173
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv796.1 = phi i64 [ %indvars.iv.next797.1, %polly.loop_exit235.1 ], [ 33, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %174 = add nuw nsw i64 %polly.indvar230.1, 32
  %175 = mul nuw nsw i64 %174, 480
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %175
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1251.1 = mul nuw nsw i64 %174, 60
  %polly.access.add.Packed_MemRef_call1252.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call1253.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call1253.1, align 8
  %176 = mul nuw nsw i64 %174, 640
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = mul nuw nsw i64 %polly.indvar236.1, 60
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %polly.indvar224.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %177 = mul nuw nsw i64 %polly.indvar236.1, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep243.1, i64 %177
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %178 = shl nuw nsw i64 %polly.indvar236.1, 3
  %179 = add nuw nsw i64 %178, %176
  %scevgep255.1 = getelementptr i8, i8* %call, i64 %179
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond798.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv796.1
  br i1 %exitcond798.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next797.1 = add nuw nsw i64 %indvars.iv796.1, 1
  %exitcond801.1.not = icmp eq i64 %polly.indvar_next231.1, 32
  br i1 %exitcond801.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %exitcond802.1.not = icmp eq i64 %polly.indvar_next225.1, 60
  br i1 %exitcond802.1.not, label %polly.loop_header205.2, label %polly.loop_header221.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_header205.2
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_header205.2 ], [ 0, %polly.loop_exit229.1 ]
  %180 = mul nuw nsw i64 %polly.indvar208.2, 480
  %scevgep792.2 = getelementptr i8, i8* %malloccall, i64 %180
  %scevgep793.2 = getelementptr i8, i8* %call1, i64 %180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep792.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep793.2, i64 480, i1 false)
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next209.2, 80
  br i1 %exitcond.2.not, label %polly.loop_header221.2, label %polly.loop_header205.2

polly.loop_header221.2:                           ; preds = %polly.loop_header205.2, %polly.loop_exit229.2
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_header205.2 ]
  %181 = shl nuw nsw i64 %polly.indvar224.2, 3
  %scevgep243.2 = getelementptr i8, i8* %call2, i64 %181
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv796.2 = phi i64 [ %indvars.iv.next797.2, %polly.loop_exit235.2 ], [ 65, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %182 = add nuw nsw i64 %polly.indvar230.2, 64
  %183 = mul nuw nsw i64 %182, 480
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %183
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !72, !noalias !77
  %polly.access.mul.Packed_MemRef_call1251.2 = mul nuw nsw i64 %182, 60
  %polly.access.add.Packed_MemRef_call1252.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1251.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call1253.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1252.2
  %_p_scalar_254.2 = load double, double* %polly.access.Packed_MemRef_call1253.2, align 8
  %184 = mul nuw nsw i64 %182, 640
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %polly.access.mul.Packed_MemRef_call1239.2 = mul nuw nsw i64 %polly.indvar236.2, 60
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.2, %polly.indvar224.2
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %185 = mul nuw nsw i64 %polly.indvar236.2, 480
  %scevgep248.2 = getelementptr i8, i8* %scevgep243.2, i64 %185
  %scevgep248249.2 = bitcast i8* %scevgep248.2 to double*
  %_p_scalar_250.2 = load double, double* %scevgep248249.2, align 8, !alias.scope !72, !noalias !77
  %p_mul37.i114.2 = fmul fast double %_p_scalar_254.2, %_p_scalar_250.2
  %186 = shl nuw nsw i64 %polly.indvar236.2, 3
  %187 = add nuw nsw i64 %186, %184
  %scevgep255.2 = getelementptr i8, i8* %call, i64 %187
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond798.2.not = icmp eq i64 %polly.indvar_next237.2, %indvars.iv796.2
  br i1 %exitcond798.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next797.2 = add nuw nsw i64 %indvars.iv796.2, 1
  %exitcond801.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond801.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %exitcond802.2.not = icmp eq i64 %polly.indvar_next225.2, 60
  br i1 %exitcond802.2.not, label %polly.loop_exit223.2, label %polly.loop_header221.2

polly.loop_exit223.2:                             ; preds = %polly.loop_exit229.2
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header368.1:                           ; preds = %polly.loop_exit392, %polly.loop_header368.1
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_header368.1 ], [ 0, %polly.loop_exit392 ]
  %188 = mul nuw nsw i64 %polly.indvar371.1, 480
  %scevgep807.1 = getelementptr i8, i8* %malloccall262, i64 %188
  %scevgep808.1 = getelementptr i8, i8* %call1, i64 %188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.1, i64 480, i1 false)
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %exitcond812.1.not = icmp eq i64 %polly.indvar_next372.1, 64
  br i1 %exitcond812.1.not, label %polly.loop_header384.1, label %polly.loop_header368.1

polly.loop_header384.1:                           ; preds = %polly.loop_header368.1, %polly.loop_exit392.1
  %polly.indvar387.1 = phi i64 [ %polly.indvar_next388.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_header368.1 ]
  %189 = shl nuw nsw i64 %polly.indvar387.1, 3
  %scevgep406.1 = getelementptr i8, i8* %call2, i64 %189
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_header384.1
  %indvars.iv815.1 = phi i64 [ %indvars.iv.next816.1, %polly.loop_exit398.1 ], [ 33, %polly.loop_header384.1 ]
  %polly.indvar393.1 = phi i64 [ %polly.indvar_next394.1, %polly.loop_exit398.1 ], [ 0, %polly.loop_header384.1 ]
  %190 = add nuw nsw i64 %polly.indvar393.1, 32
  %191 = mul nuw nsw i64 %190, 480
  %scevgep407.1 = getelementptr i8, i8* %scevgep406.1, i64 %191
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263414.1 = mul nuw nsw i64 %190, 60
  %polly.access.add.Packed_MemRef_call1263415.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call1263416.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.1
  %_p_scalar_417.1 = load double, double* %polly.access.Packed_MemRef_call1263416.1, align 8
  %192 = mul nuw nsw i64 %190, 640
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = mul nuw nsw i64 %polly.indvar399.1, 60
  %polly.access.add.Packed_MemRef_call1263403.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.1, %polly.indvar387.1
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %193 = mul nuw nsw i64 %polly.indvar399.1, 480
  %scevgep411.1 = getelementptr i8, i8* %scevgep406.1, i64 %193
  %scevgep411412.1 = bitcast i8* %scevgep411.1 to double*
  %_p_scalar_413.1 = load double, double* %scevgep411412.1, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.1 = fmul fast double %_p_scalar_417.1, %_p_scalar_413.1
  %194 = shl nuw nsw i64 %polly.indvar399.1, 3
  %195 = add nuw nsw i64 %194, %192
  %scevgep418.1 = getelementptr i8, i8* %call, i64 %195
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond817.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv815.1
  br i1 %exitcond817.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %indvars.iv.next816.1 = add nuw nsw i64 %indvars.iv815.1, 1
  %exitcond821.1.not = icmp eq i64 %polly.indvar_next394.1, 32
  br i1 %exitcond821.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next388.1 = add nuw nsw i64 %polly.indvar387.1, 1
  %exitcond822.1.not = icmp eq i64 %polly.indvar_next388.1, 60
  br i1 %exitcond822.1.not, label %polly.loop_header368.2, label %polly.loop_header384.1

polly.loop_header368.2:                           ; preds = %polly.loop_exit392.1, %polly.loop_header368.2
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_header368.2 ], [ 0, %polly.loop_exit392.1 ]
  %196 = mul nuw nsw i64 %polly.indvar371.2, 480
  %scevgep807.2 = getelementptr i8, i8* %malloccall262, i64 %196
  %scevgep808.2 = getelementptr i8, i8* %call1, i64 %196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep807.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep808.2, i64 480, i1 false)
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %exitcond812.2.not = icmp eq i64 %polly.indvar_next372.2, 80
  br i1 %exitcond812.2.not, label %polly.loop_header384.2, label %polly.loop_header368.2

polly.loop_header384.2:                           ; preds = %polly.loop_header368.2, %polly.loop_exit392.2
  %polly.indvar387.2 = phi i64 [ %polly.indvar_next388.2, %polly.loop_exit392.2 ], [ 0, %polly.loop_header368.2 ]
  %197 = shl nuw nsw i64 %polly.indvar387.2, 3
  %scevgep406.2 = getelementptr i8, i8* %call2, i64 %197
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_header384.2
  %indvars.iv815.2 = phi i64 [ %indvars.iv.next816.2, %polly.loop_exit398.2 ], [ 65, %polly.loop_header384.2 ]
  %polly.indvar393.2 = phi i64 [ %polly.indvar_next394.2, %polly.loop_exit398.2 ], [ 0, %polly.loop_header384.2 ]
  %198 = add nuw nsw i64 %polly.indvar393.2, 64
  %199 = mul nuw nsw i64 %198, 480
  %scevgep407.2 = getelementptr i8, i8* %scevgep406.2, i64 %199
  %scevgep407408.2 = bitcast i8* %scevgep407.2 to double*
  %_p_scalar_409.2 = load double, double* %scevgep407408.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.mul.Packed_MemRef_call1263414.2 = mul nuw nsw i64 %198, 60
  %polly.access.add.Packed_MemRef_call1263415.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263414.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call1263416.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263415.2
  %_p_scalar_417.2 = load double, double* %polly.access.Packed_MemRef_call1263416.2, align 8
  %200 = mul nuw nsw i64 %198, 640
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %polly.access.mul.Packed_MemRef_call1263402.2 = mul nuw nsw i64 %polly.indvar399.2, 60
  %polly.access.add.Packed_MemRef_call1263403.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.2, %polly.indvar387.2
  %polly.access.Packed_MemRef_call1263404.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.2
  %_p_scalar_405.2 = load double, double* %polly.access.Packed_MemRef_call1263404.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %201 = mul nuw nsw i64 %polly.indvar399.2, 480
  %scevgep411.2 = getelementptr i8, i8* %scevgep406.2, i64 %201
  %scevgep411412.2 = bitcast i8* %scevgep411.2 to double*
  %_p_scalar_413.2 = load double, double* %scevgep411412.2, align 8, !alias.scope !82, !noalias !86
  %p_mul37.i75.2 = fmul fast double %_p_scalar_417.2, %_p_scalar_413.2
  %202 = shl nuw nsw i64 %polly.indvar399.2, 3
  %203 = add nuw nsw i64 %202, %200
  %scevgep418.2 = getelementptr i8, i8* %call, i64 %203
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond817.2.not = icmp eq i64 %polly.indvar_next400.2, %indvars.iv815.2
  br i1 %exitcond817.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %indvars.iv.next816.2 = add nuw nsw i64 %indvars.iv815.2, 1
  %exitcond821.2.not = icmp eq i64 %polly.indvar_next394.2, 16
  br i1 %exitcond821.2.not, label %polly.loop_exit392.2, label %polly.loop_header390.2

polly.loop_exit392.2:                             ; preds = %polly.loop_exit398.2
  %polly.indvar_next388.2 = add nuw nsw i64 %polly.indvar387.2, 1
  %exitcond822.2.not = icmp eq i64 %polly.indvar_next388.2, 60
  br i1 %exitcond822.2.not, label %polly.loop_exit386.2, label %polly.loop_header384.2

polly.loop_exit386.2:                             ; preds = %polly.loop_exit392.2
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header531.1:                           ; preds = %polly.loop_exit555, %polly.loop_header531.1
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_header531.1 ], [ 0, %polly.loop_exit555 ]
  %204 = mul nuw nsw i64 %polly.indvar534.1, 480
  %scevgep827.1 = getelementptr i8, i8* %malloccall425, i64 %204
  %scevgep828.1 = getelementptr i8, i8* %call1, i64 %204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep828.1, i64 480, i1 false)
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %exitcond832.1.not = icmp eq i64 %polly.indvar_next535.1, 64
  br i1 %exitcond832.1.not, label %polly.loop_header547.1, label %polly.loop_header531.1

polly.loop_header547.1:                           ; preds = %polly.loop_header531.1, %polly.loop_exit555.1
  %polly.indvar550.1 = phi i64 [ %polly.indvar_next551.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_header531.1 ]
  %205 = shl nuw nsw i64 %polly.indvar550.1, 3
  %scevgep569.1 = getelementptr i8, i8* %call2, i64 %205
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_header547.1
  %indvars.iv835.1 = phi i64 [ %indvars.iv.next836.1, %polly.loop_exit561.1 ], [ 33, %polly.loop_header547.1 ]
  %polly.indvar556.1 = phi i64 [ %polly.indvar_next557.1, %polly.loop_exit561.1 ], [ 0, %polly.loop_header547.1 ]
  %206 = add nuw nsw i64 %polly.indvar556.1, 32
  %207 = mul nuw nsw i64 %206, 480
  %scevgep570.1 = getelementptr i8, i8* %scevgep569.1, i64 %207
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426577.1 = mul nuw nsw i64 %206, 60
  %polly.access.add.Packed_MemRef_call1426578.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call1426579.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.1
  %_p_scalar_580.1 = load double, double* %polly.access.Packed_MemRef_call1426579.1, align 8
  %208 = mul nuw nsw i64 %206, 640
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = mul nuw nsw i64 %polly.indvar562.1, 60
  %polly.access.add.Packed_MemRef_call1426566.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.1, %polly.indvar550.1
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %209 = mul nuw nsw i64 %polly.indvar562.1, 480
  %scevgep574.1 = getelementptr i8, i8* %scevgep569.1, i64 %209
  %scevgep574575.1 = bitcast i8* %scevgep574.1 to double*
  %_p_scalar_576.1 = load double, double* %scevgep574575.1, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.1 = fmul fast double %_p_scalar_580.1, %_p_scalar_576.1
  %210 = shl nuw nsw i64 %polly.indvar562.1, 3
  %211 = add nuw nsw i64 %210, %208
  %scevgep581.1 = getelementptr i8, i8* %call, i64 %211
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond837.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv835.1
  br i1 %exitcond837.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %indvars.iv.next836.1 = add nuw nsw i64 %indvars.iv835.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar_next557.1, 32
  br i1 %exitcond841.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next551.1 = add nuw nsw i64 %polly.indvar550.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next551.1, 60
  br i1 %exitcond842.1.not, label %polly.loop_header531.2, label %polly.loop_header547.1

polly.loop_header531.2:                           ; preds = %polly.loop_exit555.1, %polly.loop_header531.2
  %polly.indvar534.2 = phi i64 [ %polly.indvar_next535.2, %polly.loop_header531.2 ], [ 0, %polly.loop_exit555.1 ]
  %212 = mul nuw nsw i64 %polly.indvar534.2, 480
  %scevgep827.2 = getelementptr i8, i8* %malloccall425, i64 %212
  %scevgep828.2 = getelementptr i8, i8* %call1, i64 %212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep827.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep828.2, i64 480, i1 false)
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %exitcond832.2.not = icmp eq i64 %polly.indvar_next535.2, 80
  br i1 %exitcond832.2.not, label %polly.loop_header547.2, label %polly.loop_header531.2

polly.loop_header547.2:                           ; preds = %polly.loop_header531.2, %polly.loop_exit555.2
  %polly.indvar550.2 = phi i64 [ %polly.indvar_next551.2, %polly.loop_exit555.2 ], [ 0, %polly.loop_header531.2 ]
  %213 = shl nuw nsw i64 %polly.indvar550.2, 3
  %scevgep569.2 = getelementptr i8, i8* %call2, i64 %213
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_header547.2
  %indvars.iv835.2 = phi i64 [ %indvars.iv.next836.2, %polly.loop_exit561.2 ], [ 65, %polly.loop_header547.2 ]
  %polly.indvar556.2 = phi i64 [ %polly.indvar_next557.2, %polly.loop_exit561.2 ], [ 0, %polly.loop_header547.2 ]
  %214 = add nuw nsw i64 %polly.indvar556.2, 64
  %215 = mul nuw nsw i64 %214, 480
  %scevgep570.2 = getelementptr i8, i8* %scevgep569.2, i64 %215
  %scevgep570571.2 = bitcast i8* %scevgep570.2 to double*
  %_p_scalar_572.2 = load double, double* %scevgep570571.2, align 8, !alias.scope !91, !noalias !95
  %polly.access.mul.Packed_MemRef_call1426577.2 = mul nuw nsw i64 %214, 60
  %polly.access.add.Packed_MemRef_call1426578.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426577.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call1426579.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426578.2
  %_p_scalar_580.2 = load double, double* %polly.access.Packed_MemRef_call1426579.2, align 8
  %216 = mul nuw nsw i64 %214, 640
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %polly.access.mul.Packed_MemRef_call1426565.2 = mul nuw nsw i64 %polly.indvar562.2, 60
  %polly.access.add.Packed_MemRef_call1426566.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.2, %polly.indvar550.2
  %polly.access.Packed_MemRef_call1426567.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.2
  %_p_scalar_568.2 = load double, double* %polly.access.Packed_MemRef_call1426567.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %217 = mul nuw nsw i64 %polly.indvar562.2, 480
  %scevgep574.2 = getelementptr i8, i8* %scevgep569.2, i64 %217
  %scevgep574575.2 = bitcast i8* %scevgep574.2 to double*
  %_p_scalar_576.2 = load double, double* %scevgep574575.2, align 8, !alias.scope !91, !noalias !95
  %p_mul37.i.2 = fmul fast double %_p_scalar_580.2, %_p_scalar_576.2
  %218 = shl nuw nsw i64 %polly.indvar562.2, 3
  %219 = add nuw nsw i64 %218, %216
  %scevgep581.2 = getelementptr i8, i8* %call, i64 %219
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !87, !noalias !89
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %exitcond837.2.not = icmp eq i64 %polly.indvar_next563.2, %indvars.iv835.2
  br i1 %exitcond837.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %polly.indvar_next557.2 = add nuw nsw i64 %polly.indvar556.2, 1
  %indvars.iv.next836.2 = add nuw nsw i64 %indvars.iv835.2, 1
  %exitcond841.2.not = icmp eq i64 %polly.indvar_next557.2, 16
  br i1 %exitcond841.2.not, label %polly.loop_exit555.2, label %polly.loop_header553.2

polly.loop_exit555.2:                             ; preds = %polly.loop_exit561.2
  %polly.indvar_next551.2 = add nuw nsw i64 %polly.indvar550.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next551.2, 60
  br i1 %exitcond842.2.not, label %polly.loop_exit549.2, label %polly.loop_header547.2

polly.loop_exit549.2:                             ; preds = %polly.loop_exit555.2
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %220 = mul nuw nsw i64 %polly.indvar778.1, 480
  %221 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header775.1
  %index1153 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1158, %vector.body1151 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1157, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1160, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !99, !noalias !104
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1154, 28
  br i1 %234, label %polly.loop_exit783.1, label %vector.body1151, !llvm.loop !106

polly.loop_exit783.1:                             ; preds = %vector.body1151
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond850.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond850.1.not, label %polly.loop_header775.1870, label %polly.loop_header775.1

polly.loop_header775.1870:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1881
  %polly.indvar778.1869 = phi i64 [ %polly.indvar_next779.1879, %polly.loop_exit783.1881 ], [ 0, %polly.loop_exit783.1 ]
  %235 = add nuw nsw i64 %polly.indvar778.1869, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header775.1870
  %index1165 = phi i64 [ 0, %polly.loop_header775.1870 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1870 ], [ %vec.ind.next1172, %vector.body1163 ]
  %238 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1165, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !99, !noalias !104
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1166, 32
  br i1 %247, label %polly.loop_exit783.1881, label %vector.body1163, !llvm.loop !107

polly.loop_exit783.1881:                          ; preds = %vector.body1163
  %polly.indvar_next779.1879 = add nuw nsw i64 %polly.indvar778.1869, 1
  %exitcond850.1880.not = icmp eq i64 %polly.indvar_next779.1879, 32
  br i1 %exitcond850.1880.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1870

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1881, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1881 ]
  %248 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header775.1.1
  %index1179 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1184, %vector.body1177 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1186, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !99, !noalias !104
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1180, 28
  br i1 %263, label %polly.loop_exit783.1.1, label %vector.body1177, !llvm.loop !108

polly.loop_exit783.1.1:                           ; preds = %vector.body1177
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond850.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond850.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar778.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header775.2
  %index1191 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1198, %vector.body1189 ]
  %267 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1191, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !99, !noalias !104
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1192, 32
  br i1 %276, label %polly.loop_exit783.2, label %vector.body1189, !llvm.loop !109

polly.loop_exit783.2:                             ; preds = %vector.body1189
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond850.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond850.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %277 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header775.1.2
  %index1205 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1210, %vector.body1203 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1212, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !99, !noalias !104
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1206, 28
  br i1 %292, label %polly.loop_exit783.1.2, label %vector.body1203, !llvm.loop !110

polly.loop_exit783.1.2:                           ; preds = %vector.body1203
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond850.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond850.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %293 = mul nuw nsw i64 %polly.indvar752.1, 480
  %294 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header749.1
  %index1075 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1079 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1080, %vector.body1073 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1079, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1082, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !100, !noalias !102
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1080 = add <4 x i64> %vec.ind1079, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1076, 28
  br i1 %307, label %polly.loop_exit757.1, label %vector.body1073, !llvm.loop !111

polly.loop_exit757.1:                             ; preds = %vector.body1073
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond856.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond856.1.not, label %polly.loop_header749.1884, label %polly.loop_header749.1

polly.loop_header749.1884:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1895
  %polly.indvar752.1883 = phi i64 [ %polly.indvar_next753.1893, %polly.loop_exit757.1895 ], [ 0, %polly.loop_exit757.1 ]
  %308 = add nuw nsw i64 %polly.indvar752.1883, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header749.1884
  %index1087 = phi i64 [ 0, %polly.loop_header749.1884 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1093 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1884 ], [ %vec.ind.next1094, %vector.body1085 ]
  %311 = mul <4 x i32> %vec.ind1093, %broadcast.splat1096
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1087, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !100, !noalias !102
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1094 = add <4 x i32> %vec.ind1093, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1088, 32
  br i1 %320, label %polly.loop_exit757.1895, label %vector.body1085, !llvm.loop !112

polly.loop_exit757.1895:                          ; preds = %vector.body1085
  %polly.indvar_next753.1893 = add nuw nsw i64 %polly.indvar752.1883, 1
  %exitcond856.1894.not = icmp eq i64 %polly.indvar_next753.1893, 32
  br i1 %exitcond856.1894.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1884

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1895, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1895 ]
  %321 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header749.1.1
  %index1101 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1106, %vector.body1099 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1105, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1108, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !100, !noalias !102
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1102, 28
  br i1 %336, label %polly.loop_exit757.1.1, label %vector.body1099, !llvm.loop !113

polly.loop_exit757.1.1:                           ; preds = %vector.body1099
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond856.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond856.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar752.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header749.2
  %index1113 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1119 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1120, %vector.body1111 ]
  %340 = mul <4 x i32> %vec.ind1119, %broadcast.splat1122
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1113, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !100, !noalias !102
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1120 = add <4 x i32> %vec.ind1119, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1114, 32
  br i1 %349, label %polly.loop_exit757.2, label %vector.body1111, !llvm.loop !114

polly.loop_exit757.2:                             ; preds = %vector.body1111
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond856.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond856.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %350 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header749.1.2
  %index1127 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1132, %vector.body1125 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1131, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1134, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !100, !noalias !102
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1128, 28
  br i1 %365, label %polly.loop_exit757.1.2, label %vector.body1125, !llvm.loop !115

polly.loop_exit757.1.2:                           ; preds = %vector.body1125
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond856.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond856.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %366 = mul nuw nsw i64 %polly.indvar725.1, 640
  %367 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert967 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat968 = shufflevector <4 x i32> %broadcast.splatinsert967, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %polly.loop_header722.1
  %index961 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next962, %vector.body959 ]
  %vec.ind965 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next966, %vector.body959 ]
  %368 = add nuw nsw <4 x i64> %vec.ind965, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat968, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !96, !noalias !98
  %index.next962 = add i64 %index961, 4
  %vec.ind.next966 = add <4 x i64> %vec.ind965, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next962, 32
  br i1 %380, label %polly.loop_exit730.1, label %vector.body959, !llvm.loop !116

polly.loop_exit730.1:                             ; preds = %vector.body959
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond865.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %381 = mul nuw nsw i64 %polly.indvar725.2, 640
  %382 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %polly.loop_header722.2
  %index973 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next974, %vector.body971 ]
  %vec.ind977 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next978, %vector.body971 ]
  %383 = add nuw nsw <4 x i64> %vec.ind977, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat980, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !96, !noalias !98
  %index.next974 = add i64 %index973, 4
  %vec.ind.next978 = add <4 x i64> %vec.ind977, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next974, 16
  br i1 %395, label %polly.loop_exit730.2, label %vector.body971, !llvm.loop !117

polly.loop_exit730.2:                             ; preds = %vector.body971
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond865.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond865.2.not, label %polly.loop_header722.1898, label %polly.loop_header722.2

polly.loop_header722.1898:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1909
  %polly.indvar725.1897 = phi i64 [ %polly.indvar_next726.1907, %polly.loop_exit730.1909 ], [ 0, %polly.loop_exit730.2 ]
  %396 = add nuw nsw i64 %polly.indvar725.1897, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %polly.loop_header722.1898
  %index985 = phi i64 [ 0, %polly.loop_header722.1898 ], [ %index.next986, %vector.body983 ]
  %vec.ind991 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1898 ], [ %vec.ind.next992, %vector.body983 ]
  %399 = mul <4 x i32> %vec.ind991, %broadcast.splat994
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index985, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !96, !noalias !98
  %index.next986 = add i64 %index985, 4
  %vec.ind.next992 = add <4 x i32> %vec.ind991, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next986, 32
  br i1 %408, label %polly.loop_exit730.1909, label %vector.body983, !llvm.loop !118

polly.loop_exit730.1909:                          ; preds = %vector.body983
  %polly.indvar_next726.1907 = add nuw nsw i64 %polly.indvar725.1897, 1
  %exitcond865.1908.not = icmp eq i64 %polly.indvar_next726.1907, 32
  br i1 %exitcond865.1908.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1898

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1909, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1909 ]
  %409 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1005 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1006 = shufflevector <4 x i32> %broadcast.splatinsert1005, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header722.1.1
  %index999 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1003 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next1004, %vector.body997 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1003, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1006, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !96, !noalias !98
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1004 = add <4 x i64> %vec.ind1003, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1000, 32
  br i1 %424, label %polly.loop_exit730.1.1, label %vector.body997, !llvm.loop !119

polly.loop_exit730.1.1:                           ; preds = %vector.body997
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond865.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond865.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %polly.loop_header722.2.1
  %index1011 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next1012, %vector.body1009 ]
  %vec.ind1015 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1016, %vector.body1009 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1015, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1018, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !96, !noalias !98
  %index.next1012 = add i64 %index1011, 4
  %vec.ind.next1016 = add <4 x i64> %vec.ind1015, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1012, 16
  br i1 %440, label %polly.loop_exit730.2.1, label %vector.body1009, !llvm.loop !120

polly.loop_exit730.2.1:                           ; preds = %vector.body1009
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond865.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond865.2.1.not, label %polly.loop_header722.2912, label %polly.loop_header722.2.1

polly.loop_header722.2912:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2923
  %polly.indvar725.2911 = phi i64 [ %polly.indvar_next726.2921, %polly.loop_exit730.2923 ], [ 0, %polly.loop_exit730.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar725.2911, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header722.2912
  %index1023 = phi i64 [ 0, %polly.loop_header722.2912 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1029 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2912 ], [ %vec.ind.next1030, %vector.body1021 ]
  %444 = mul <4 x i32> %vec.ind1029, %broadcast.splat1032
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1023, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !96, !noalias !98
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1030 = add <4 x i32> %vec.ind1029, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1024, 32
  br i1 %453, label %polly.loop_exit730.2923, label %vector.body1021, !llvm.loop !121

polly.loop_exit730.2923:                          ; preds = %vector.body1021
  %polly.indvar_next726.2921 = add nuw nsw i64 %polly.indvar725.2911, 1
  %exitcond865.2922.not = icmp eq i64 %polly.indvar_next726.2921, 16
  br i1 %exitcond865.2922.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2912

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2923, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2923 ]
  %454 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1043 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1044 = shufflevector <4 x i32> %broadcast.splatinsert1043, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header722.1.2
  %index1037 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1041 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1042, %vector.body1035 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1041, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1044, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !96, !noalias !98
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1042 = add <4 x i64> %vec.ind1041, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1038, 32
  br i1 %469, label %polly.loop_exit730.1.2, label %vector.body1035, !llvm.loop !122

polly.loop_exit730.1.2:                           ; preds = %vector.body1035
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond865.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond865.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %polly.loop_header722.2.2
  %index1049 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1050, %vector.body1047 ]
  %vec.ind1053 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1054, %vector.body1047 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1053, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1056, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !96, !noalias !98
  %index.next1050 = add i64 %index1049, 4
  %vec.ind.next1054 = add <4 x i64> %vec.ind1053, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1050, 16
  br i1 %485, label %polly.loop_exit730.2.2, label %vector.body1047, !llvm.loop !123

polly.loop_exit730.2.2:                           ; preds = %vector.body1047
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond865.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond865.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!50 = !{!"llvm.loop.tile.size", i32 32}
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
!77 = !{!68, !71, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !76, !13}
!86 = !{!78, !81, !83}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91, !92}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !88, !"polly.alias.scope.Packed_MemRef_call1"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !76, !13}
!95 = !{!87, !90, !92}
!96 = distinct !{!96, !97, !"polly.alias.scope.MemRef_call"}
!97 = distinct !{!97, !"polly.alias.scope.domain"}
!98 = !{!99, !100}
!99 = distinct !{!99, !97, !"polly.alias.scope.MemRef_call1"}
!100 = distinct !{!100, !97, !"polly.alias.scope.MemRef_call2"}
!101 = distinct !{!101, !13}
!102 = !{!99, !96}
!103 = distinct !{!103, !13}
!104 = !{!100, !96}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
