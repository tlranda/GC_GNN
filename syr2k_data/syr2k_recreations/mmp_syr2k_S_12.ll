; ModuleID = 'syr2k_recreations//mmp_syr2k_S_12.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_12.c"
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
  %scevgep932 = getelementptr i8, i8* %call2, i64 %12
  %scevgep931 = getelementptr i8, i8* %call2, i64 %11
  %scevgep930 = getelementptr i8, i8* %call1, i64 %12
  %scevgep929 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep929, %scevgep932
  %bound1 = icmp ult i8* %scevgep931, %scevgep930
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
  br i1 %exitcond18.not.i, label %vector.ph936, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph936:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert943 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat944 = shufflevector <4 x i64> %broadcast.splatinsert943, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph936
  %index937 = phi i64 [ 0, %vector.ph936 ], [ %index.next938, %vector.body935 ]
  %vec.ind941 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph936 ], [ %vec.ind.next942, %vector.body935 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind941, %broadcast.splat944
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv7.i, i64 %index937
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next938 = add i64 %index937, 4
  %vec.ind.next942 = add <4 x i64> %vec.ind941, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next938, 80
  br i1 %40, label %for.inc41.i, label %vector.body935, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body935
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph936, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1289, label %vector.ph1218

vector.ph1218:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %vector.ph1218
  %index1219 = phi i64 [ 0, %vector.ph1218 ], [ %index.next1220, %vector.body1217 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %index1219
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1220 = add i64 %index1219, 4
  %46 = icmp eq i64 %index.next1220, %n.vec
  br i1 %46, label %middle.block1215, label %vector.body1217, !llvm.loop !18

middle.block1215:                                 ; preds = %vector.body1217
  %cmp.n1222 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1222, label %for.inc6.i, label %for.body3.i46.preheader1289

for.body3.i46.preheader1289:                      ; preds = %for.body3.i46.preheader, %middle.block1215
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1215 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1289, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1289 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1215, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit533.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start260, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1238 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1238, label %for.body3.i60.preheader1288, label %vector.ph1239

vector.ph1239:                                    ; preds = %for.body3.i60.preheader
  %n.vec1241 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1243, %vector.body1237 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %index1242
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1246 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1246, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1243 = add i64 %index1242, 4
  %57 = icmp eq i64 %index.next1243, %n.vec1241
  br i1 %57, label %middle.block1235, label %vector.body1237, !llvm.loop !55

middle.block1235:                                 ; preds = %vector.body1237
  %cmp.n1245 = icmp eq i64 %indvars.iv21.i52, %n.vec1241
  br i1 %cmp.n1245, label %for.inc6.i63, label %for.body3.i60.preheader1288

for.body3.i60.preheader1288:                      ; preds = %for.body3.i60.preheader, %middle.block1235
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1241, %middle.block1235 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1288, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1288 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1235, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit370.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1264 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1264, label %for.body3.i99.preheader1287, label %vector.ph1265

vector.ph1265:                                    ; preds = %for.body3.i99.preheader
  %n.vec1267 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1263 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %index1268
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1272 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1272, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1269 = add i64 %index1268, 4
  %68 = icmp eq i64 %index.next1269, %n.vec1267
  br i1 %68, label %middle.block1261, label %vector.body1263, !llvm.loop !57

middle.block1261:                                 ; preds = %vector.body1263
  %cmp.n1271 = icmp eq i64 %indvars.iv21.i91, %n.vec1267
  br i1 %cmp.n1271, label %for.inc6.i102, label %for.body3.i99.preheader1287

for.body3.i99.preheader1287:                      ; preds = %for.body3.i99.preheader, %middle.block1261
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1267, %middle.block1261 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1287, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1287 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1261, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.3
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call736, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1276 = phi i64 [ %indvar.next1277, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1276, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1278 = icmp ult i64 %88, 4
  br i1 %min.iters.check1278, label %polly.loop_header191.preheader, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header
  %n.vec1281 = and i64 %88, -4
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1275 ]
  %90 = shl nuw nsw i64 %index1282, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1286 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1286, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1283 = add i64 %index1282, 4
  %95 = icmp eq i64 %index.next1283, %n.vec1281
  br i1 %95, label %middle.block1273, label %vector.body1275, !llvm.loop !69

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1285 = icmp eq i64 %88, %n.vec1281
  br i1 %cmp.n1285, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1273
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1281, %middle.block1273 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1273
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1277 = add i64 %indvar1276, 1
  br i1 %exitcond813.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond812.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond812.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit229 ], [ 1, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %97 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep243 = getelementptr i8, i8* %call2, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar208, 640
  %scevgep254 = getelementptr i8, i8* %call, i64 %98
  %polly.access.mul.Packed_MemRef_call1250 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1
  %exitcond810.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond810.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %99 = shl nuw nsw i64 %polly.indvar214, 7
  %scevgep802 = getelementptr i8, i8* %malloccall, i64 %99
  %100 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep803 = getelementptr i8, i8* %call1, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep802, i8* noundef nonnull align 8 dereferenceable(128) %scevgep803, i64 128, i1 false)
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv805
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %polly.indvar230 = phi i64 [ 0, %polly.loop_exit213 ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %101 = shl i64 %polly.indvar230, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %101
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1250
  %polly.access.Packed_MemRef_call1252 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251
  %_p_scalar_253 = load double, double* %polly.access.Packed_MemRef_call1252, align 8
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next231, 16
  br i1 %exitcond809.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_header233 ]
  %polly.access.mul.Packed_MemRef_call1239 = shl nsw i64 %polly.indvar236, 4
  %polly.access.add.Packed_MemRef_call1240 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239, %polly.indvar230
  %polly.access.Packed_MemRef_call1241 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240
  %_p_scalar_242 = load double, double* %polly.access.Packed_MemRef_call1241, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_246, %_p_scalar_242
  %102 = mul nuw nsw i64 %polly.indvar236, 480
  %103 = add nuw nsw i64 %102, %101
  %scevgep247 = getelementptr i8, i8* %call2, i64 %103
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114 = fmul fast double %_p_scalar_253, %_p_scalar_249
  %104 = shl nuw nsw i64 %polly.indvar236, 3
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %104
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_257
  store double %p_add42.i118, double* %scevgep255256, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond807.not = icmp eq i64 %polly.indvar_next237, %indvars.iv805
  br i1 %exitcond807.not, label %polly.loop_exit235, label %polly.loop_header233

polly.start260:                                   ; preds = %kernel_syr2k.exit
  %malloccall262 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header346

polly.loop_header346:                             ; preds = %polly.loop_exit354, %polly.start260
  %indvar1250 = phi i64 [ %indvar.next1251, %polly.loop_exit354 ], [ 0, %polly.start260 ]
  %polly.indvar349 = phi i64 [ %polly.indvar_next350, %polly.loop_exit354 ], [ 1, %polly.start260 ]
  %105 = add i64 %indvar1250, 1
  %106 = mul nuw nsw i64 %polly.indvar349, 640
  %scevgep358 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1252 = icmp ult i64 %105, 4
  br i1 %min.iters.check1252, label %polly.loop_header352.preheader, label %vector.ph1253

vector.ph1253:                                    ; preds = %polly.loop_header346
  %n.vec1255 = and i64 %105, -4
  br label %vector.body1249

vector.body1249:                                  ; preds = %vector.body1249, %vector.ph1253
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1257, %vector.body1249 ]
  %107 = shl nuw nsw i64 %index1256, 3
  %108 = getelementptr i8, i8* %scevgep358, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1260 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !73, !noalias !75
  %110 = fmul fast <4 x double> %wide.load1260, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !73, !noalias !75
  %index.next1257 = add i64 %index1256, 4
  %112 = icmp eq i64 %index.next1257, %n.vec1255
  br i1 %112, label %middle.block1247, label %vector.body1249, !llvm.loop !79

middle.block1247:                                 ; preds = %vector.body1249
  %cmp.n1259 = icmp eq i64 %105, %n.vec1255
  br i1 %cmp.n1259, label %polly.loop_exit354, label %polly.loop_header352.preheader

polly.loop_header352.preheader:                   ; preds = %polly.loop_header346, %middle.block1247
  %polly.indvar355.ph = phi i64 [ 0, %polly.loop_header346 ], [ %n.vec1255, %middle.block1247 ]
  br label %polly.loop_header352

polly.loop_exit354:                               ; preds = %polly.loop_header352, %middle.block1247
  %polly.indvar_next350 = add nuw nsw i64 %polly.indvar349, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next350, 80
  %indvar.next1251 = add i64 %indvar1250, 1
  br i1 %exitcond830.not, label %polly.loop_header362.preheader, label %polly.loop_header346

polly.loop_header362.preheader:                   ; preds = %polly.loop_exit354
  %Packed_MemRef_call1263 = bitcast i8* %malloccall262 to double*
  br label %polly.loop_header368

polly.loop_header352:                             ; preds = %polly.loop_header352.preheader, %polly.loop_header352
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_header352 ], [ %polly.indvar355.ph, %polly.loop_header352.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar355, 3
  %scevgep359 = getelementptr i8, i8* %scevgep358, i64 %113
  %scevgep359360 = bitcast i8* %scevgep359 to double*
  %_p_scalar_361 = load double, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_361, 1.200000e+00
  store double %p_mul.i57, double* %scevgep359360, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next356, %polly.indvar349
  br i1 %exitcond829.not, label %polly.loop_exit354, label %polly.loop_header352, !llvm.loop !80

polly.loop_header368:                             ; preds = %polly.loop_exit392, %polly.loop_header362.preheader
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %polly.loop_exit392 ], [ 1, %polly.loop_header362.preheader ]
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit392 ], [ 0, %polly.loop_header362.preheader ]
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %114 = mul nuw nsw i64 %polly.indvar371, 480
  %scevgep406 = getelementptr i8, i8* %call2, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar371, 640
  %scevgep417 = getelementptr i8, i8* %call, i64 %115
  %polly.access.mul.Packed_MemRef_call1263413 = shl nsw i64 %polly.indvar371, 4
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_exit398
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next372, 80
  br i1 %exitcond827.not, label %polly.loop_header368.1, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %116 = shl nuw nsw i64 %polly.indvar377, 7
  %scevgep818 = getelementptr i8, i8* %malloccall262, i64 %116
  %117 = mul nuw nsw i64 %polly.indvar377, 480
  %scevgep819 = getelementptr i8, i8* %call1, i64 %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep818, i8* noundef nonnull align 8 dereferenceable(128) %scevgep819, i64 128, i1 false)
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond823.not = icmp eq i64 %polly.indvar_next378, %indvars.iv821
  br i1 %exitcond823.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.loop_exit376
  %polly.indvar393 = phi i64 [ 0, %polly.loop_exit376 ], [ %polly.indvar_next394, %polly.loop_exit398 ]
  %118 = shl i64 %polly.indvar393, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %118
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call1263413
  %polly.access.Packed_MemRef_call1263415 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414
  %_p_scalar_416 = load double, double* %polly.access.Packed_MemRef_call1263415, align 8
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next394, 16
  br i1 %exitcond826.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header396:                             ; preds = %polly.loop_header396, %polly.loop_header390
  %polly.indvar399 = phi i64 [ 0, %polly.loop_header390 ], [ %polly.indvar_next400, %polly.loop_header396 ]
  %polly.access.mul.Packed_MemRef_call1263402 = shl nsw i64 %polly.indvar399, 4
  %polly.access.add.Packed_MemRef_call1263403 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402, %polly.indvar393
  %polly.access.Packed_MemRef_call1263404 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403
  %_p_scalar_405 = load double, double* %polly.access.Packed_MemRef_call1263404, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_409, %_p_scalar_405
  %119 = mul nuw nsw i64 %polly.indvar399, 480
  %120 = add nuw nsw i64 %119, %118
  %scevgep410 = getelementptr i8, i8* %call2, i64 %120
  %scevgep410411 = bitcast i8* %scevgep410 to double*
  %_p_scalar_412 = load double, double* %scevgep410411, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75 = fmul fast double %_p_scalar_416, %_p_scalar_412
  %121 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep418 = getelementptr i8, i8* %scevgep417, i64 %121
  %scevgep418419 = bitcast i8* %scevgep418 to double*
  %_p_scalar_420 = load double, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_420
  store double %p_add42.i79, double* %scevgep418419, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond824.not = icmp eq i64 %polly.indvar_next400, %indvars.iv821
  br i1 %exitcond824.not, label %polly.loop_exit398, label %polly.loop_header396

polly.start423:                                   ; preds = %init_array.exit
  %malloccall425 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header509

polly.loop_header509:                             ; preds = %polly.loop_exit517, %polly.start423
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit517 ], [ 0, %polly.start423 ]
  %polly.indvar512 = phi i64 [ %polly.indvar_next513, %polly.loop_exit517 ], [ 1, %polly.start423 ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar512, 640
  %scevgep521 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1226 = icmp ult i64 %122, 4
  br i1 %min.iters.check1226, label %polly.loop_header515.preheader, label %vector.ph1227

vector.ph1227:                                    ; preds = %polly.loop_header509
  %n.vec1229 = and i64 %122, -4
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1231, %vector.body1225 ]
  %124 = shl nuw nsw i64 %index1230, 3
  %125 = getelementptr i8, i8* %scevgep521, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1234 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !82, !noalias !84
  %127 = fmul fast <4 x double> %wide.load1234, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !82, !noalias !84
  %index.next1231 = add i64 %index1230, 4
  %129 = icmp eq i64 %index.next1231, %n.vec1229
  br i1 %129, label %middle.block1223, label %vector.body1225, !llvm.loop !88

middle.block1223:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %122, %n.vec1229
  br i1 %cmp.n1233, label %polly.loop_exit517, label %polly.loop_header515.preheader

polly.loop_header515.preheader:                   ; preds = %polly.loop_header509, %middle.block1223
  %polly.indvar518.ph = phi i64 [ 0, %polly.loop_header509 ], [ %n.vec1229, %middle.block1223 ]
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_header515, %middle.block1223
  %polly.indvar_next513 = add nuw nsw i64 %polly.indvar512, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next513, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond847.not, label %polly.loop_header525.preheader, label %polly.loop_header509

polly.loop_header525.preheader:                   ; preds = %polly.loop_exit517
  %Packed_MemRef_call1426 = bitcast i8* %malloccall425 to double*
  br label %polly.loop_header531

polly.loop_header515:                             ; preds = %polly.loop_header515.preheader, %polly.loop_header515
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_header515 ], [ %polly.indvar518.ph, %polly.loop_header515.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar518, 3
  %scevgep522 = getelementptr i8, i8* %scevgep521, i64 %130
  %scevgep522523 = bitcast i8* %scevgep522 to double*
  %_p_scalar_524 = load double, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %p_mul.i = fmul fast double %_p_scalar_524, 1.200000e+00
  store double %p_mul.i, double* %scevgep522523, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next519, %polly.indvar512
  br i1 %exitcond846.not, label %polly.loop_exit517, label %polly.loop_header515, !llvm.loop !89

polly.loop_header531:                             ; preds = %polly.loop_exit555, %polly.loop_header525.preheader
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit555 ], [ 1, %polly.loop_header525.preheader ]
  %polly.indvar534 = phi i64 [ %polly.indvar_next535, %polly.loop_exit555 ], [ 0, %polly.loop_header525.preheader ]
  br label %polly.loop_header537

polly.loop_exit539:                               ; preds = %polly.loop_header537
  %131 = mul nuw nsw i64 %polly.indvar534, 480
  %scevgep569 = getelementptr i8, i8* %call2, i64 %131
  %132 = mul nuw nsw i64 %polly.indvar534, 640
  %scevgep580 = getelementptr i8, i8* %call, i64 %132
  %polly.access.mul.Packed_MemRef_call1426576 = shl nsw i64 %polly.indvar534, 4
  br label %polly.loop_header553

polly.loop_exit555:                               ; preds = %polly.loop_exit561
  %polly.indvar_next535 = add nuw nsw i64 %polly.indvar534, 1
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next535, 80
  br i1 %exitcond844.not, label %polly.loop_header531.1, label %polly.loop_header531

polly.loop_header537:                             ; preds = %polly.loop_header537, %polly.loop_header531
  %polly.indvar540 = phi i64 [ 0, %polly.loop_header531 ], [ %polly.indvar_next541, %polly.loop_header537 ]
  %133 = shl nuw nsw i64 %polly.indvar540, 7
  %scevgep835 = getelementptr i8, i8* %malloccall425, i64 %133
  %134 = mul nuw nsw i64 %polly.indvar540, 480
  %scevgep836 = getelementptr i8, i8* %call1, i64 %134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep835, i8* noundef nonnull align 8 dereferenceable(128) %scevgep836, i64 128, i1 false)
  %polly.indvar_next541 = add nuw nsw i64 %polly.indvar540, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next541, %indvars.iv838
  br i1 %exitcond840.not, label %polly.loop_exit539, label %polly.loop_header537

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.loop_exit539
  %polly.indvar556 = phi i64 [ 0, %polly.loop_exit539 ], [ %polly.indvar_next557, %polly.loop_exit561 ]
  %135 = shl i64 %polly.indvar556, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %135
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577 = add nuw nsw i64 %polly.indvar556, %polly.access.mul.Packed_MemRef_call1426576
  %polly.access.Packed_MemRef_call1426578 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577
  %_p_scalar_579 = load double, double* %polly.access.Packed_MemRef_call1426578, align 8
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next557, 16
  br i1 %exitcond843.not, label %polly.loop_exit555, label %polly.loop_header553

polly.loop_header559:                             ; preds = %polly.loop_header559, %polly.loop_header553
  %polly.indvar562 = phi i64 [ 0, %polly.loop_header553 ], [ %polly.indvar_next563, %polly.loop_header559 ]
  %polly.access.mul.Packed_MemRef_call1426565 = shl nsw i64 %polly.indvar562, 4
  %polly.access.add.Packed_MemRef_call1426566 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565, %polly.indvar556
  %polly.access.Packed_MemRef_call1426567 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566
  %_p_scalar_568 = load double, double* %polly.access.Packed_MemRef_call1426567, align 8
  %p_mul27.i = fmul fast double %_p_scalar_572, %_p_scalar_568
  %136 = mul nuw nsw i64 %polly.indvar562, 480
  %137 = add nuw nsw i64 %136, %135
  %scevgep573 = getelementptr i8, i8* %call2, i64 %137
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i = fmul fast double %_p_scalar_579, %_p_scalar_575
  %138 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep581 = getelementptr i8, i8* %scevgep580, i64 %138
  %scevgep581582 = bitcast i8* %scevgep581 to double*
  %_p_scalar_583 = load double, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_583
  store double %p_add42.i, double* %scevgep581582, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next563, %indvars.iv838
  br i1 %exitcond841.not, label %polly.loop_exit561, label %polly.loop_header559

polly.loop_header722:                             ; preds = %entry, %polly.loop_exit730
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_exit730 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar725, 640
  %140 = trunc i64 %polly.indvar725 to i32
  %broadcast.splatinsert957 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat958 = shufflevector <4 x i32> %broadcast.splatinsert957, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %polly.loop_header722
  %index949 = phi i64 [ 0, %polly.loop_header722 ], [ %index.next950, %vector.body947 ]
  %vec.ind955 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722 ], [ %vec.ind.next956, %vector.body947 ]
  %141 = mul <4 x i32> %vec.ind955, %broadcast.splat958
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index949, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !91, !noalias !93
  %index.next950 = add i64 %index949, 4
  %vec.ind.next956 = add <4 x i32> %vec.ind955, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next950, 32
  br i1 %150, label %polly.loop_exit730, label %vector.body947, !llvm.loop !96

polly.loop_exit730:                               ; preds = %vector.body947
  %polly.indvar_next726 = add nuw nsw i64 %polly.indvar725, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next726, 32
  br i1 %exitcond867.not, label %polly.loop_header722.1, label %polly.loop_header722

polly.loop_header749:                             ; preds = %polly.loop_exit730.2.2, %polly.loop_exit757
  %polly.indvar752 = phi i64 [ %polly.indvar_next753, %polly.loop_exit757 ], [ 0, %polly.loop_exit730.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar752, 480
  %152 = trunc i64 %polly.indvar752 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header749
  %index1063 = phi i64 [ 0, %polly.loop_header749 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1069 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749 ], [ %vec.ind.next1070, %vector.body1061 ]
  %153 = mul <4 x i32> %vec.ind1069, %broadcast.splat1072
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1063, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !95, !noalias !97
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1070 = add <4 x i32> %vec.ind1069, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1064, 32
  br i1 %162, label %polly.loop_exit757, label %vector.body1061, !llvm.loop !98

polly.loop_exit757:                               ; preds = %vector.body1061
  %polly.indvar_next753 = add nuw nsw i64 %polly.indvar752, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next753, 32
  br i1 %exitcond858.not, label %polly.loop_header749.1, label %polly.loop_header749

polly.loop_header775:                             ; preds = %polly.loop_exit757.1.2, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %polly.loop_exit757.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar778, 480
  %164 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header775
  %index1141 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1147 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next1148, %vector.body1139 ]
  %165 = mul <4 x i32> %vec.ind1147, %broadcast.splat1150
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1141, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !94, !noalias !99
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1148 = add <4 x i32> %vec.ind1147, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1142, 32
  br i1 %174, label %polly.loop_exit783, label %vector.body1139, !llvm.loop !100

polly.loop_exit783:                               ; preds = %vector.body1139
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond852.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv805.1 = phi i64 [ %indvars.iv.next806.1, %polly.loop_exit229.1 ], [ 1, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_header211.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_header211.1 ]
  %175 = shl nuw nsw i64 %polly.indvar214.1, 7
  %scevgep802.1 = getelementptr i8, i8* %malloccall, i64 %175
  %176 = mul nuw nsw i64 %polly.indvar214.1, 480
  %177 = add nuw nsw i64 %176, 128
  %scevgep803.1 = getelementptr i8, i8* %call1, i64 %177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep802.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep803.1, i64 128, i1 false)
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next215.1, %indvars.iv805.1
  br i1 %exitcond.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_header211.1
  %178 = mul nuw nsw i64 %polly.indvar208.1, 480
  %scevgep243.1 = getelementptr i8, i8* %call2, i64 %178
  %179 = mul nuw nsw i64 %polly.indvar208.1, 640
  %scevgep254.1 = getelementptr i8, i8* %call, i64 %179
  %polly.access.mul.Packed_MemRef_call1250.1 = shl nsw i64 %polly.indvar208.1, 4
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit213.1
  %polly.indvar230.1 = phi i64 [ 0, %polly.loop_exit213.1 ], [ %polly.indvar_next231.1, %polly.loop_exit235.1 ]
  %180 = shl i64 %polly.indvar230.1, 3
  %181 = add i64 %180, 128
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %181
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251.1 = add nuw nsw i64 %polly.indvar230.1, %polly.access.mul.Packed_MemRef_call1250.1
  %polly.access.Packed_MemRef_call1252.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.1
  %_p_scalar_253.1 = load double, double* %polly.access.Packed_MemRef_call1252.1, align 8
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_header233.1, %polly.loop_header227.1
  %polly.indvar236.1 = phi i64 [ 0, %polly.loop_header227.1 ], [ %polly.indvar_next237.1, %polly.loop_header233.1 ]
  %polly.access.mul.Packed_MemRef_call1239.1 = shl nsw i64 %polly.indvar236.1, 4
  %polly.access.add.Packed_MemRef_call1240.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.1, %polly.indvar230.1
  %polly.access.Packed_MemRef_call1241.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.1
  %_p_scalar_242.1 = load double, double* %polly.access.Packed_MemRef_call1241.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_242.1
  %182 = mul nuw nsw i64 %polly.indvar236.1, 480
  %183 = add nuw nsw i64 %182, %181
  %scevgep247.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.1 = fmul fast double %_p_scalar_253.1, %_p_scalar_249.1
  %184 = shl nuw nsw i64 %polly.indvar236.1, 3
  %scevgep255.1 = getelementptr i8, i8* %scevgep254.1, i64 %184
  %scevgep255256.1 = bitcast i8* %scevgep255.1 to double*
  %_p_scalar_257.1 = load double, double* %scevgep255256.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_257.1
  store double %p_add42.i118.1, double* %scevgep255256.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond807.1.not = icmp eq i64 %polly.indvar_next237.1, %indvars.iv805.1
  br i1 %exitcond807.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_header233.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond809.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next806.1 = add nuw nsw i64 %indvars.iv805.1, 1
  %exitcond810.1.not = icmp eq i64 %polly.indvar_next209.1, 80
  br i1 %exitcond810.1.not, label %polly.loop_header205.2, label %polly.loop_header205.1

polly.loop_header205.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %indvars.iv805.2 = phi i64 [ %indvars.iv.next806.2, %polly.loop_exit229.2 ], [ 1, %polly.loop_exit229.1 ]
  %polly.indvar208.2 = phi i64 [ %polly.indvar_next209.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  br label %polly.loop_header211.2

polly.loop_header211.2:                           ; preds = %polly.loop_header211.2, %polly.loop_header205.2
  %polly.indvar214.2 = phi i64 [ 0, %polly.loop_header205.2 ], [ %polly.indvar_next215.2, %polly.loop_header211.2 ]
  %185 = shl nuw nsw i64 %polly.indvar214.2, 7
  %scevgep802.2 = getelementptr i8, i8* %malloccall, i64 %185
  %186 = mul nuw nsw i64 %polly.indvar214.2, 480
  %187 = add nuw nsw i64 %186, 256
  %scevgep803.2 = getelementptr i8, i8* %call1, i64 %187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep802.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep803.2, i64 128, i1 false)
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next215.2, %indvars.iv805.2
  br i1 %exitcond.2.not, label %polly.loop_exit213.2, label %polly.loop_header211.2

polly.loop_exit213.2:                             ; preds = %polly.loop_header211.2
  %188 = mul nuw nsw i64 %polly.indvar208.2, 480
  %scevgep243.2 = getelementptr i8, i8* %call2, i64 %188
  %189 = mul nuw nsw i64 %polly.indvar208.2, 640
  %scevgep254.2 = getelementptr i8, i8* %call, i64 %189
  %polly.access.mul.Packed_MemRef_call1250.2 = shl nsw i64 %polly.indvar208.2, 4
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit213.2
  %polly.indvar230.2 = phi i64 [ 0, %polly.loop_exit213.2 ], [ %polly.indvar_next231.2, %polly.loop_exit235.2 ]
  %190 = shl i64 %polly.indvar230.2, 3
  %191 = add i64 %190, 256
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %191
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251.2 = add nuw nsw i64 %polly.indvar230.2, %polly.access.mul.Packed_MemRef_call1250.2
  %polly.access.Packed_MemRef_call1252.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.2
  %_p_scalar_253.2 = load double, double* %polly.access.Packed_MemRef_call1252.2, align 8
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_header233.2, %polly.loop_header227.2
  %polly.indvar236.2 = phi i64 [ 0, %polly.loop_header227.2 ], [ %polly.indvar_next237.2, %polly.loop_header233.2 ]
  %polly.access.mul.Packed_MemRef_call1239.2 = shl nsw i64 %polly.indvar236.2, 4
  %polly.access.add.Packed_MemRef_call1240.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.2, %polly.indvar230.2
  %polly.access.Packed_MemRef_call1241.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.2
  %_p_scalar_242.2 = load double, double* %polly.access.Packed_MemRef_call1241.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_242.2
  %192 = mul nuw nsw i64 %polly.indvar236.2, 480
  %193 = add nuw nsw i64 %192, %191
  %scevgep247.2 = getelementptr i8, i8* %call2, i64 %193
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.2 = fmul fast double %_p_scalar_253.2, %_p_scalar_249.2
  %194 = shl nuw nsw i64 %polly.indvar236.2, 3
  %scevgep255.2 = getelementptr i8, i8* %scevgep254.2, i64 %194
  %scevgep255256.2 = bitcast i8* %scevgep255.2 to double*
  %_p_scalar_257.2 = load double, double* %scevgep255256.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_257.2
  store double %p_add42.i118.2, double* %scevgep255256.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %exitcond807.2.not = icmp eq i64 %polly.indvar_next237.2, %indvars.iv805.2
  br i1 %exitcond807.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.2

polly.loop_exit235.2:                             ; preds = %polly.loop_header233.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next231.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next209.2 = add nuw nsw i64 %polly.indvar208.2, 1
  %indvars.iv.next806.2 = add nuw nsw i64 %indvars.iv805.2, 1
  %exitcond810.2.not = icmp eq i64 %polly.indvar_next209.2, 80
  br i1 %exitcond810.2.not, label %polly.loop_header205.3, label %polly.loop_header205.2

polly.loop_header205.3:                           ; preds = %polly.loop_exit229.2, %polly.loop_exit229.3
  %indvars.iv805.3 = phi i64 [ %indvars.iv.next806.3, %polly.loop_exit229.3 ], [ 1, %polly.loop_exit229.2 ]
  %polly.indvar208.3 = phi i64 [ %polly.indvar_next209.3, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit229.2 ]
  br label %polly.loop_header211.3

polly.loop_header211.3:                           ; preds = %polly.loop_header211.3, %polly.loop_header205.3
  %polly.indvar214.3 = phi i64 [ 0, %polly.loop_header205.3 ], [ %polly.indvar_next215.3, %polly.loop_header211.3 ]
  %195 = shl nuw nsw i64 %polly.indvar214.3, 7
  %scevgep802.3 = getelementptr i8, i8* %malloccall, i64 %195
  %196 = mul nuw nsw i64 %polly.indvar214.3, 480
  %197 = add nuw nsw i64 %196, 384
  %scevgep803.3 = getelementptr i8, i8* %call1, i64 %197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep802.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep803.3, i64 96, i1 false)
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next215.3, %indvars.iv805.3
  br i1 %exitcond.3.not, label %polly.loop_exit213.3, label %polly.loop_header211.3

polly.loop_exit213.3:                             ; preds = %polly.loop_header211.3
  %198 = mul nuw nsw i64 %polly.indvar208.3, 480
  %scevgep243.3 = getelementptr i8, i8* %call2, i64 %198
  %199 = mul nuw nsw i64 %polly.indvar208.3, 640
  %scevgep254.3 = getelementptr i8, i8* %call, i64 %199
  %polly.access.mul.Packed_MemRef_call1250.3 = shl nsw i64 %polly.indvar208.3, 4
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_exit213.3
  %polly.indvar230.3 = phi i64 [ 0, %polly.loop_exit213.3 ], [ %polly.indvar_next231.3, %polly.loop_exit235.3 ]
  %200 = shl i64 %polly.indvar230.3, 3
  %201 = add i64 %200, 384
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %201
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call1251.3 = add nuw nsw i64 %polly.indvar230.3, %polly.access.mul.Packed_MemRef_call1250.3
  %polly.access.Packed_MemRef_call1252.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251.3
  %_p_scalar_253.3 = load double, double* %polly.access.Packed_MemRef_call1252.3, align 8
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_header233.3, %polly.loop_header227.3
  %polly.indvar236.3 = phi i64 [ 0, %polly.loop_header227.3 ], [ %polly.indvar_next237.3, %polly.loop_header233.3 ]
  %polly.access.mul.Packed_MemRef_call1239.3 = shl nsw i64 %polly.indvar236.3, 4
  %polly.access.add.Packed_MemRef_call1240.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1239.3, %polly.indvar230.3
  %polly.access.Packed_MemRef_call1241.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1240.3
  %_p_scalar_242.3 = load double, double* %polly.access.Packed_MemRef_call1241.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_242.3
  %202 = mul nuw nsw i64 %polly.indvar236.3, 480
  %203 = add nuw nsw i64 %202, %201
  %scevgep247.3 = getelementptr i8, i8* %call2, i64 %203
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !67, !noalias !72
  %p_mul37.i114.3 = fmul fast double %_p_scalar_253.3, %_p_scalar_249.3
  %204 = shl nuw nsw i64 %polly.indvar236.3, 3
  %scevgep255.3 = getelementptr i8, i8* %scevgep254.3, i64 %204
  %scevgep255256.3 = bitcast i8* %scevgep255.3 to double*
  %_p_scalar_257.3 = load double, double* %scevgep255256.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_257.3
  store double %p_add42.i118.3, double* %scevgep255256.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %exitcond807.3.not = icmp eq i64 %polly.indvar_next237.3, %indvars.iv805.3
  br i1 %exitcond807.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.3

polly.loop_exit235.3:                             ; preds = %polly.loop_header233.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %exitcond809.3.not = icmp eq i64 %polly.indvar_next231.3, 12
  br i1 %exitcond809.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  %polly.indvar_next209.3 = add nuw nsw i64 %polly.indvar208.3, 1
  %indvars.iv.next806.3 = add nuw nsw i64 %indvars.iv805.3, 1
  %exitcond810.3.not = icmp eq i64 %polly.indvar_next209.3, 80
  br i1 %exitcond810.3.not, label %polly.loop_exit207.3, label %polly.loop_header205.3

polly.loop_exit207.3:                             ; preds = %polly.loop_exit229.3
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header368.1:                           ; preds = %polly.loop_exit392, %polly.loop_exit392.1
  %indvars.iv821.1 = phi i64 [ %indvars.iv.next822.1, %polly.loop_exit392.1 ], [ 1, %polly.loop_exit392 ]
  %polly.indvar371.1 = phi i64 [ %polly.indvar_next372.1, %polly.loop_exit392.1 ], [ 0, %polly.loop_exit392 ]
  br label %polly.loop_header374.1

polly.loop_header374.1:                           ; preds = %polly.loop_header374.1, %polly.loop_header368.1
  %polly.indvar377.1 = phi i64 [ 0, %polly.loop_header368.1 ], [ %polly.indvar_next378.1, %polly.loop_header374.1 ]
  %205 = shl nuw nsw i64 %polly.indvar377.1, 7
  %scevgep818.1 = getelementptr i8, i8* %malloccall262, i64 %205
  %206 = mul nuw nsw i64 %polly.indvar377.1, 480
  %207 = add nuw nsw i64 %206, 128
  %scevgep819.1 = getelementptr i8, i8* %call1, i64 %207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep818.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep819.1, i64 128, i1 false)
  %polly.indvar_next378.1 = add nuw nsw i64 %polly.indvar377.1, 1
  %exitcond823.1.not = icmp eq i64 %polly.indvar_next378.1, %indvars.iv821.1
  br i1 %exitcond823.1.not, label %polly.loop_exit376.1, label %polly.loop_header374.1

polly.loop_exit376.1:                             ; preds = %polly.loop_header374.1
  %208 = mul nuw nsw i64 %polly.indvar371.1, 480
  %scevgep406.1 = getelementptr i8, i8* %call2, i64 %208
  %209 = mul nuw nsw i64 %polly.indvar371.1, 640
  %scevgep417.1 = getelementptr i8, i8* %call, i64 %209
  %polly.access.mul.Packed_MemRef_call1263413.1 = shl nsw i64 %polly.indvar371.1, 4
  br label %polly.loop_header390.1

polly.loop_header390.1:                           ; preds = %polly.loop_exit398.1, %polly.loop_exit376.1
  %polly.indvar393.1 = phi i64 [ 0, %polly.loop_exit376.1 ], [ %polly.indvar_next394.1, %polly.loop_exit398.1 ]
  %210 = shl i64 %polly.indvar393.1, 3
  %211 = add i64 %210, 128
  %scevgep407.1 = getelementptr i8, i8* %scevgep406.1, i64 %211
  %scevgep407408.1 = bitcast i8* %scevgep407.1 to double*
  %_p_scalar_409.1 = load double, double* %scevgep407408.1, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414.1 = add nuw nsw i64 %polly.indvar393.1, %polly.access.mul.Packed_MemRef_call1263413.1
  %polly.access.Packed_MemRef_call1263415.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.1
  %_p_scalar_416.1 = load double, double* %polly.access.Packed_MemRef_call1263415.1, align 8
  br label %polly.loop_header396.1

polly.loop_header396.1:                           ; preds = %polly.loop_header396.1, %polly.loop_header390.1
  %polly.indvar399.1 = phi i64 [ 0, %polly.loop_header390.1 ], [ %polly.indvar_next400.1, %polly.loop_header396.1 ]
  %polly.access.mul.Packed_MemRef_call1263402.1 = shl nsw i64 %polly.indvar399.1, 4
  %polly.access.add.Packed_MemRef_call1263403.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.1, %polly.indvar393.1
  %polly.access.Packed_MemRef_call1263404.1 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.1
  %_p_scalar_405.1 = load double, double* %polly.access.Packed_MemRef_call1263404.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_409.1, %_p_scalar_405.1
  %212 = mul nuw nsw i64 %polly.indvar399.1, 480
  %213 = add nuw nsw i64 %212, %211
  %scevgep410.1 = getelementptr i8, i8* %call2, i64 %213
  %scevgep410411.1 = bitcast i8* %scevgep410.1 to double*
  %_p_scalar_412.1 = load double, double* %scevgep410411.1, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.1 = fmul fast double %_p_scalar_416.1, %_p_scalar_412.1
  %214 = shl nuw nsw i64 %polly.indvar399.1, 3
  %scevgep418.1 = getelementptr i8, i8* %scevgep417.1, i64 %214
  %scevgep418419.1 = bitcast i8* %scevgep418.1 to double*
  %_p_scalar_420.1 = load double, double* %scevgep418419.1, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_420.1
  store double %p_add42.i79.1, double* %scevgep418419.1, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %exitcond824.1.not = icmp eq i64 %polly.indvar_next400.1, %indvars.iv821.1
  br i1 %exitcond824.1.not, label %polly.loop_exit398.1, label %polly.loop_header396.1

polly.loop_exit398.1:                             ; preds = %polly.loop_header396.1
  %polly.indvar_next394.1 = add nuw nsw i64 %polly.indvar393.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next394.1, 16
  br i1 %exitcond826.1.not, label %polly.loop_exit392.1, label %polly.loop_header390.1

polly.loop_exit392.1:                             ; preds = %polly.loop_exit398.1
  %polly.indvar_next372.1 = add nuw nsw i64 %polly.indvar371.1, 1
  %indvars.iv.next822.1 = add nuw nsw i64 %indvars.iv821.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next372.1, 80
  br i1 %exitcond827.1.not, label %polly.loop_header368.2, label %polly.loop_header368.1

polly.loop_header368.2:                           ; preds = %polly.loop_exit392.1, %polly.loop_exit392.2
  %indvars.iv821.2 = phi i64 [ %indvars.iv.next822.2, %polly.loop_exit392.2 ], [ 1, %polly.loop_exit392.1 ]
  %polly.indvar371.2 = phi i64 [ %polly.indvar_next372.2, %polly.loop_exit392.2 ], [ 0, %polly.loop_exit392.1 ]
  br label %polly.loop_header374.2

polly.loop_header374.2:                           ; preds = %polly.loop_header374.2, %polly.loop_header368.2
  %polly.indvar377.2 = phi i64 [ 0, %polly.loop_header368.2 ], [ %polly.indvar_next378.2, %polly.loop_header374.2 ]
  %215 = shl nuw nsw i64 %polly.indvar377.2, 7
  %scevgep818.2 = getelementptr i8, i8* %malloccall262, i64 %215
  %216 = mul nuw nsw i64 %polly.indvar377.2, 480
  %217 = add nuw nsw i64 %216, 256
  %scevgep819.2 = getelementptr i8, i8* %call1, i64 %217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep818.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep819.2, i64 128, i1 false)
  %polly.indvar_next378.2 = add nuw nsw i64 %polly.indvar377.2, 1
  %exitcond823.2.not = icmp eq i64 %polly.indvar_next378.2, %indvars.iv821.2
  br i1 %exitcond823.2.not, label %polly.loop_exit376.2, label %polly.loop_header374.2

polly.loop_exit376.2:                             ; preds = %polly.loop_header374.2
  %218 = mul nuw nsw i64 %polly.indvar371.2, 480
  %scevgep406.2 = getelementptr i8, i8* %call2, i64 %218
  %219 = mul nuw nsw i64 %polly.indvar371.2, 640
  %scevgep417.2 = getelementptr i8, i8* %call, i64 %219
  %polly.access.mul.Packed_MemRef_call1263413.2 = shl nsw i64 %polly.indvar371.2, 4
  br label %polly.loop_header390.2

polly.loop_header390.2:                           ; preds = %polly.loop_exit398.2, %polly.loop_exit376.2
  %polly.indvar393.2 = phi i64 [ 0, %polly.loop_exit376.2 ], [ %polly.indvar_next394.2, %polly.loop_exit398.2 ]
  %220 = shl i64 %polly.indvar393.2, 3
  %221 = add i64 %220, 256
  %scevgep407.2 = getelementptr i8, i8* %scevgep406.2, i64 %221
  %scevgep407408.2 = bitcast i8* %scevgep407.2 to double*
  %_p_scalar_409.2 = load double, double* %scevgep407408.2, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414.2 = add nuw nsw i64 %polly.indvar393.2, %polly.access.mul.Packed_MemRef_call1263413.2
  %polly.access.Packed_MemRef_call1263415.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.2
  %_p_scalar_416.2 = load double, double* %polly.access.Packed_MemRef_call1263415.2, align 8
  br label %polly.loop_header396.2

polly.loop_header396.2:                           ; preds = %polly.loop_header396.2, %polly.loop_header390.2
  %polly.indvar399.2 = phi i64 [ 0, %polly.loop_header390.2 ], [ %polly.indvar_next400.2, %polly.loop_header396.2 ]
  %polly.access.mul.Packed_MemRef_call1263402.2 = shl nsw i64 %polly.indvar399.2, 4
  %polly.access.add.Packed_MemRef_call1263403.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.2, %polly.indvar393.2
  %polly.access.Packed_MemRef_call1263404.2 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.2
  %_p_scalar_405.2 = load double, double* %polly.access.Packed_MemRef_call1263404.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_409.2, %_p_scalar_405.2
  %222 = mul nuw nsw i64 %polly.indvar399.2, 480
  %223 = add nuw nsw i64 %222, %221
  %scevgep410.2 = getelementptr i8, i8* %call2, i64 %223
  %scevgep410411.2 = bitcast i8* %scevgep410.2 to double*
  %_p_scalar_412.2 = load double, double* %scevgep410411.2, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.2 = fmul fast double %_p_scalar_416.2, %_p_scalar_412.2
  %224 = shl nuw nsw i64 %polly.indvar399.2, 3
  %scevgep418.2 = getelementptr i8, i8* %scevgep417.2, i64 %224
  %scevgep418419.2 = bitcast i8* %scevgep418.2 to double*
  %_p_scalar_420.2 = load double, double* %scevgep418419.2, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_420.2
  store double %p_add42.i79.2, double* %scevgep418419.2, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %exitcond824.2.not = icmp eq i64 %polly.indvar_next400.2, %indvars.iv821.2
  br i1 %exitcond824.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_header396.2
  %polly.indvar_next394.2 = add nuw nsw i64 %polly.indvar393.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next394.2, 16
  br i1 %exitcond826.2.not, label %polly.loop_exit392.2, label %polly.loop_header390.2

polly.loop_exit392.2:                             ; preds = %polly.loop_exit398.2
  %polly.indvar_next372.2 = add nuw nsw i64 %polly.indvar371.2, 1
  %indvars.iv.next822.2 = add nuw nsw i64 %indvars.iv821.2, 1
  %exitcond827.2.not = icmp eq i64 %polly.indvar_next372.2, 80
  br i1 %exitcond827.2.not, label %polly.loop_header368.3, label %polly.loop_header368.2

polly.loop_header368.3:                           ; preds = %polly.loop_exit392.2, %polly.loop_exit392.3
  %indvars.iv821.3 = phi i64 [ %indvars.iv.next822.3, %polly.loop_exit392.3 ], [ 1, %polly.loop_exit392.2 ]
  %polly.indvar371.3 = phi i64 [ %polly.indvar_next372.3, %polly.loop_exit392.3 ], [ 0, %polly.loop_exit392.2 ]
  br label %polly.loop_header374.3

polly.loop_header374.3:                           ; preds = %polly.loop_header374.3, %polly.loop_header368.3
  %polly.indvar377.3 = phi i64 [ 0, %polly.loop_header368.3 ], [ %polly.indvar_next378.3, %polly.loop_header374.3 ]
  %225 = shl nuw nsw i64 %polly.indvar377.3, 7
  %scevgep818.3 = getelementptr i8, i8* %malloccall262, i64 %225
  %226 = mul nuw nsw i64 %polly.indvar377.3, 480
  %227 = add nuw nsw i64 %226, 384
  %scevgep819.3 = getelementptr i8, i8* %call1, i64 %227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep818.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep819.3, i64 96, i1 false)
  %polly.indvar_next378.3 = add nuw nsw i64 %polly.indvar377.3, 1
  %exitcond823.3.not = icmp eq i64 %polly.indvar_next378.3, %indvars.iv821.3
  br i1 %exitcond823.3.not, label %polly.loop_exit376.3, label %polly.loop_header374.3

polly.loop_exit376.3:                             ; preds = %polly.loop_header374.3
  %228 = mul nuw nsw i64 %polly.indvar371.3, 480
  %scevgep406.3 = getelementptr i8, i8* %call2, i64 %228
  %229 = mul nuw nsw i64 %polly.indvar371.3, 640
  %scevgep417.3 = getelementptr i8, i8* %call, i64 %229
  %polly.access.mul.Packed_MemRef_call1263413.3 = shl nsw i64 %polly.indvar371.3, 4
  br label %polly.loop_header390.3

polly.loop_header390.3:                           ; preds = %polly.loop_exit398.3, %polly.loop_exit376.3
  %polly.indvar393.3 = phi i64 [ 0, %polly.loop_exit376.3 ], [ %polly.indvar_next394.3, %polly.loop_exit398.3 ]
  %230 = shl i64 %polly.indvar393.3, 3
  %231 = add i64 %230, 384
  %scevgep407.3 = getelementptr i8, i8* %scevgep406.3, i64 %231
  %scevgep407408.3 = bitcast i8* %scevgep407.3 to double*
  %_p_scalar_409.3 = load double, double* %scevgep407408.3, align 8, !alias.scope !77, !noalias !81
  %polly.access.add.Packed_MemRef_call1263414.3 = add nuw nsw i64 %polly.indvar393.3, %polly.access.mul.Packed_MemRef_call1263413.3
  %polly.access.Packed_MemRef_call1263415.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263414.3
  %_p_scalar_416.3 = load double, double* %polly.access.Packed_MemRef_call1263415.3, align 8
  br label %polly.loop_header396.3

polly.loop_header396.3:                           ; preds = %polly.loop_header396.3, %polly.loop_header390.3
  %polly.indvar399.3 = phi i64 [ 0, %polly.loop_header390.3 ], [ %polly.indvar_next400.3, %polly.loop_header396.3 ]
  %polly.access.mul.Packed_MemRef_call1263402.3 = shl nsw i64 %polly.indvar399.3, 4
  %polly.access.add.Packed_MemRef_call1263403.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263402.3, %polly.indvar393.3
  %polly.access.Packed_MemRef_call1263404.3 = getelementptr double, double* %Packed_MemRef_call1263, i64 %polly.access.add.Packed_MemRef_call1263403.3
  %_p_scalar_405.3 = load double, double* %polly.access.Packed_MemRef_call1263404.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_409.3, %_p_scalar_405.3
  %232 = mul nuw nsw i64 %polly.indvar399.3, 480
  %233 = add nuw nsw i64 %232, %231
  %scevgep410.3 = getelementptr i8, i8* %call2, i64 %233
  %scevgep410411.3 = bitcast i8* %scevgep410.3 to double*
  %_p_scalar_412.3 = load double, double* %scevgep410411.3, align 8, !alias.scope !77, !noalias !81
  %p_mul37.i75.3 = fmul fast double %_p_scalar_416.3, %_p_scalar_412.3
  %234 = shl nuw nsw i64 %polly.indvar399.3, 3
  %scevgep418.3 = getelementptr i8, i8* %scevgep417.3, i64 %234
  %scevgep418419.3 = bitcast i8* %scevgep418.3 to double*
  %_p_scalar_420.3 = load double, double* %scevgep418419.3, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_420.3
  store double %p_add42.i79.3, double* %scevgep418419.3, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next400.3 = add nuw nsw i64 %polly.indvar399.3, 1
  %exitcond824.3.not = icmp eq i64 %polly.indvar_next400.3, %indvars.iv821.3
  br i1 %exitcond824.3.not, label %polly.loop_exit398.3, label %polly.loop_header396.3

polly.loop_exit398.3:                             ; preds = %polly.loop_header396.3
  %polly.indvar_next394.3 = add nuw nsw i64 %polly.indvar393.3, 1
  %exitcond826.3.not = icmp eq i64 %polly.indvar_next394.3, 12
  br i1 %exitcond826.3.not, label %polly.loop_exit392.3, label %polly.loop_header390.3

polly.loop_exit392.3:                             ; preds = %polly.loop_exit398.3
  %polly.indvar_next372.3 = add nuw nsw i64 %polly.indvar371.3, 1
  %indvars.iv.next822.3 = add nuw nsw i64 %indvars.iv821.3, 1
  %exitcond827.3.not = icmp eq i64 %polly.indvar_next372.3, 80
  br i1 %exitcond827.3.not, label %polly.loop_exit370.3, label %polly.loop_header368.3

polly.loop_exit370.3:                             ; preds = %polly.loop_exit392.3
  tail call void @free(i8* nonnull %malloccall262)
  br label %kernel_syr2k.exit90

polly.loop_header531.1:                           ; preds = %polly.loop_exit555, %polly.loop_exit555.1
  %indvars.iv838.1 = phi i64 [ %indvars.iv.next839.1, %polly.loop_exit555.1 ], [ 1, %polly.loop_exit555 ]
  %polly.indvar534.1 = phi i64 [ %polly.indvar_next535.1, %polly.loop_exit555.1 ], [ 0, %polly.loop_exit555 ]
  br label %polly.loop_header537.1

polly.loop_header537.1:                           ; preds = %polly.loop_header537.1, %polly.loop_header531.1
  %polly.indvar540.1 = phi i64 [ 0, %polly.loop_header531.1 ], [ %polly.indvar_next541.1, %polly.loop_header537.1 ]
  %235 = shl nuw nsw i64 %polly.indvar540.1, 7
  %scevgep835.1 = getelementptr i8, i8* %malloccall425, i64 %235
  %236 = mul nuw nsw i64 %polly.indvar540.1, 480
  %237 = add nuw nsw i64 %236, 128
  %scevgep836.1 = getelementptr i8, i8* %call1, i64 %237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep835.1, i8* noundef nonnull align 8 dereferenceable(128) %scevgep836.1, i64 128, i1 false)
  %polly.indvar_next541.1 = add nuw nsw i64 %polly.indvar540.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar_next541.1, %indvars.iv838.1
  br i1 %exitcond840.1.not, label %polly.loop_exit539.1, label %polly.loop_header537.1

polly.loop_exit539.1:                             ; preds = %polly.loop_header537.1
  %238 = mul nuw nsw i64 %polly.indvar534.1, 480
  %scevgep569.1 = getelementptr i8, i8* %call2, i64 %238
  %239 = mul nuw nsw i64 %polly.indvar534.1, 640
  %scevgep580.1 = getelementptr i8, i8* %call, i64 %239
  %polly.access.mul.Packed_MemRef_call1426576.1 = shl nsw i64 %polly.indvar534.1, 4
  br label %polly.loop_header553.1

polly.loop_header553.1:                           ; preds = %polly.loop_exit561.1, %polly.loop_exit539.1
  %polly.indvar556.1 = phi i64 [ 0, %polly.loop_exit539.1 ], [ %polly.indvar_next557.1, %polly.loop_exit561.1 ]
  %240 = shl i64 %polly.indvar556.1, 3
  %241 = add i64 %240, 128
  %scevgep570.1 = getelementptr i8, i8* %scevgep569.1, i64 %241
  %scevgep570571.1 = bitcast i8* %scevgep570.1 to double*
  %_p_scalar_572.1 = load double, double* %scevgep570571.1, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577.1 = add nuw nsw i64 %polly.indvar556.1, %polly.access.mul.Packed_MemRef_call1426576.1
  %polly.access.Packed_MemRef_call1426578.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.1
  %_p_scalar_579.1 = load double, double* %polly.access.Packed_MemRef_call1426578.1, align 8
  br label %polly.loop_header559.1

polly.loop_header559.1:                           ; preds = %polly.loop_header559.1, %polly.loop_header553.1
  %polly.indvar562.1 = phi i64 [ 0, %polly.loop_header553.1 ], [ %polly.indvar_next563.1, %polly.loop_header559.1 ]
  %polly.access.mul.Packed_MemRef_call1426565.1 = shl nsw i64 %polly.indvar562.1, 4
  %polly.access.add.Packed_MemRef_call1426566.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.1, %polly.indvar556.1
  %polly.access.Packed_MemRef_call1426567.1 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.1
  %_p_scalar_568.1 = load double, double* %polly.access.Packed_MemRef_call1426567.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_572.1, %_p_scalar_568.1
  %242 = mul nuw nsw i64 %polly.indvar562.1, 480
  %243 = add nuw nsw i64 %242, %241
  %scevgep573.1 = getelementptr i8, i8* %call2, i64 %243
  %scevgep573574.1 = bitcast i8* %scevgep573.1 to double*
  %_p_scalar_575.1 = load double, double* %scevgep573574.1, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.1 = fmul fast double %_p_scalar_579.1, %_p_scalar_575.1
  %244 = shl nuw nsw i64 %polly.indvar562.1, 3
  %scevgep581.1 = getelementptr i8, i8* %scevgep580.1, i64 %244
  %scevgep581582.1 = bitcast i8* %scevgep581.1 to double*
  %_p_scalar_583.1 = load double, double* %scevgep581582.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_583.1
  store double %p_add42.i.1, double* %scevgep581582.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563.1 = add nuw nsw i64 %polly.indvar562.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar_next563.1, %indvars.iv838.1
  br i1 %exitcond841.1.not, label %polly.loop_exit561.1, label %polly.loop_header559.1

polly.loop_exit561.1:                             ; preds = %polly.loop_header559.1
  %polly.indvar_next557.1 = add nuw nsw i64 %polly.indvar556.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar_next557.1, 16
  br i1 %exitcond843.1.not, label %polly.loop_exit555.1, label %polly.loop_header553.1

polly.loop_exit555.1:                             ; preds = %polly.loop_exit561.1
  %polly.indvar_next535.1 = add nuw nsw i64 %polly.indvar534.1, 1
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv838.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next535.1, 80
  br i1 %exitcond844.1.not, label %polly.loop_header531.2, label %polly.loop_header531.1

polly.loop_header531.2:                           ; preds = %polly.loop_exit555.1, %polly.loop_exit555.2
  %indvars.iv838.2 = phi i64 [ %indvars.iv.next839.2, %polly.loop_exit555.2 ], [ 1, %polly.loop_exit555.1 ]
  %polly.indvar534.2 = phi i64 [ %polly.indvar_next535.2, %polly.loop_exit555.2 ], [ 0, %polly.loop_exit555.1 ]
  br label %polly.loop_header537.2

polly.loop_header537.2:                           ; preds = %polly.loop_header537.2, %polly.loop_header531.2
  %polly.indvar540.2 = phi i64 [ 0, %polly.loop_header531.2 ], [ %polly.indvar_next541.2, %polly.loop_header537.2 ]
  %245 = shl nuw nsw i64 %polly.indvar540.2, 7
  %scevgep835.2 = getelementptr i8, i8* %malloccall425, i64 %245
  %246 = mul nuw nsw i64 %polly.indvar540.2, 480
  %247 = add nuw nsw i64 %246, 256
  %scevgep836.2 = getelementptr i8, i8* %call1, i64 %247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %scevgep835.2, i8* noundef nonnull align 8 dereferenceable(128) %scevgep836.2, i64 128, i1 false)
  %polly.indvar_next541.2 = add nuw nsw i64 %polly.indvar540.2, 1
  %exitcond840.2.not = icmp eq i64 %polly.indvar_next541.2, %indvars.iv838.2
  br i1 %exitcond840.2.not, label %polly.loop_exit539.2, label %polly.loop_header537.2

polly.loop_exit539.2:                             ; preds = %polly.loop_header537.2
  %248 = mul nuw nsw i64 %polly.indvar534.2, 480
  %scevgep569.2 = getelementptr i8, i8* %call2, i64 %248
  %249 = mul nuw nsw i64 %polly.indvar534.2, 640
  %scevgep580.2 = getelementptr i8, i8* %call, i64 %249
  %polly.access.mul.Packed_MemRef_call1426576.2 = shl nsw i64 %polly.indvar534.2, 4
  br label %polly.loop_header553.2

polly.loop_header553.2:                           ; preds = %polly.loop_exit561.2, %polly.loop_exit539.2
  %polly.indvar556.2 = phi i64 [ 0, %polly.loop_exit539.2 ], [ %polly.indvar_next557.2, %polly.loop_exit561.2 ]
  %250 = shl i64 %polly.indvar556.2, 3
  %251 = add i64 %250, 256
  %scevgep570.2 = getelementptr i8, i8* %scevgep569.2, i64 %251
  %scevgep570571.2 = bitcast i8* %scevgep570.2 to double*
  %_p_scalar_572.2 = load double, double* %scevgep570571.2, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577.2 = add nuw nsw i64 %polly.indvar556.2, %polly.access.mul.Packed_MemRef_call1426576.2
  %polly.access.Packed_MemRef_call1426578.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.2
  %_p_scalar_579.2 = load double, double* %polly.access.Packed_MemRef_call1426578.2, align 8
  br label %polly.loop_header559.2

polly.loop_header559.2:                           ; preds = %polly.loop_header559.2, %polly.loop_header553.2
  %polly.indvar562.2 = phi i64 [ 0, %polly.loop_header553.2 ], [ %polly.indvar_next563.2, %polly.loop_header559.2 ]
  %polly.access.mul.Packed_MemRef_call1426565.2 = shl nsw i64 %polly.indvar562.2, 4
  %polly.access.add.Packed_MemRef_call1426566.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.2, %polly.indvar556.2
  %polly.access.Packed_MemRef_call1426567.2 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.2
  %_p_scalar_568.2 = load double, double* %polly.access.Packed_MemRef_call1426567.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_572.2, %_p_scalar_568.2
  %252 = mul nuw nsw i64 %polly.indvar562.2, 480
  %253 = add nuw nsw i64 %252, %251
  %scevgep573.2 = getelementptr i8, i8* %call2, i64 %253
  %scevgep573574.2 = bitcast i8* %scevgep573.2 to double*
  %_p_scalar_575.2 = load double, double* %scevgep573574.2, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.2 = fmul fast double %_p_scalar_579.2, %_p_scalar_575.2
  %254 = shl nuw nsw i64 %polly.indvar562.2, 3
  %scevgep581.2 = getelementptr i8, i8* %scevgep580.2, i64 %254
  %scevgep581582.2 = bitcast i8* %scevgep581.2 to double*
  %_p_scalar_583.2 = load double, double* %scevgep581582.2, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_583.2
  store double %p_add42.i.2, double* %scevgep581582.2, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563.2 = add nuw nsw i64 %polly.indvar562.2, 1
  %exitcond841.2.not = icmp eq i64 %polly.indvar_next563.2, %indvars.iv838.2
  br i1 %exitcond841.2.not, label %polly.loop_exit561.2, label %polly.loop_header559.2

polly.loop_exit561.2:                             ; preds = %polly.loop_header559.2
  %polly.indvar_next557.2 = add nuw nsw i64 %polly.indvar556.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar_next557.2, 16
  br i1 %exitcond843.2.not, label %polly.loop_exit555.2, label %polly.loop_header553.2

polly.loop_exit555.2:                             ; preds = %polly.loop_exit561.2
  %polly.indvar_next535.2 = add nuw nsw i64 %polly.indvar534.2, 1
  %indvars.iv.next839.2 = add nuw nsw i64 %indvars.iv838.2, 1
  %exitcond844.2.not = icmp eq i64 %polly.indvar_next535.2, 80
  br i1 %exitcond844.2.not, label %polly.loop_header531.3, label %polly.loop_header531.2

polly.loop_header531.3:                           ; preds = %polly.loop_exit555.2, %polly.loop_exit555.3
  %indvars.iv838.3 = phi i64 [ %indvars.iv.next839.3, %polly.loop_exit555.3 ], [ 1, %polly.loop_exit555.2 ]
  %polly.indvar534.3 = phi i64 [ %polly.indvar_next535.3, %polly.loop_exit555.3 ], [ 0, %polly.loop_exit555.2 ]
  br label %polly.loop_header537.3

polly.loop_header537.3:                           ; preds = %polly.loop_header537.3, %polly.loop_header531.3
  %polly.indvar540.3 = phi i64 [ 0, %polly.loop_header531.3 ], [ %polly.indvar_next541.3, %polly.loop_header537.3 ]
  %255 = shl nuw nsw i64 %polly.indvar540.3, 7
  %scevgep835.3 = getelementptr i8, i8* %malloccall425, i64 %255
  %256 = mul nuw nsw i64 %polly.indvar540.3, 480
  %257 = add nuw nsw i64 %256, 384
  %scevgep836.3 = getelementptr i8, i8* %call1, i64 %257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %scevgep835.3, i8* noundef nonnull align 8 dereferenceable(96) %scevgep836.3, i64 96, i1 false)
  %polly.indvar_next541.3 = add nuw nsw i64 %polly.indvar540.3, 1
  %exitcond840.3.not = icmp eq i64 %polly.indvar_next541.3, %indvars.iv838.3
  br i1 %exitcond840.3.not, label %polly.loop_exit539.3, label %polly.loop_header537.3

polly.loop_exit539.3:                             ; preds = %polly.loop_header537.3
  %258 = mul nuw nsw i64 %polly.indvar534.3, 480
  %scevgep569.3 = getelementptr i8, i8* %call2, i64 %258
  %259 = mul nuw nsw i64 %polly.indvar534.3, 640
  %scevgep580.3 = getelementptr i8, i8* %call, i64 %259
  %polly.access.mul.Packed_MemRef_call1426576.3 = shl nsw i64 %polly.indvar534.3, 4
  br label %polly.loop_header553.3

polly.loop_header553.3:                           ; preds = %polly.loop_exit561.3, %polly.loop_exit539.3
  %polly.indvar556.3 = phi i64 [ 0, %polly.loop_exit539.3 ], [ %polly.indvar_next557.3, %polly.loop_exit561.3 ]
  %260 = shl i64 %polly.indvar556.3, 3
  %261 = add i64 %260, 384
  %scevgep570.3 = getelementptr i8, i8* %scevgep569.3, i64 %261
  %scevgep570571.3 = bitcast i8* %scevgep570.3 to double*
  %_p_scalar_572.3 = load double, double* %scevgep570571.3, align 8, !alias.scope !86, !noalias !90
  %polly.access.add.Packed_MemRef_call1426577.3 = add nuw nsw i64 %polly.indvar556.3, %polly.access.mul.Packed_MemRef_call1426576.3
  %polly.access.Packed_MemRef_call1426578.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426577.3
  %_p_scalar_579.3 = load double, double* %polly.access.Packed_MemRef_call1426578.3, align 8
  br label %polly.loop_header559.3

polly.loop_header559.3:                           ; preds = %polly.loop_header559.3, %polly.loop_header553.3
  %polly.indvar562.3 = phi i64 [ 0, %polly.loop_header553.3 ], [ %polly.indvar_next563.3, %polly.loop_header559.3 ]
  %polly.access.mul.Packed_MemRef_call1426565.3 = shl nsw i64 %polly.indvar562.3, 4
  %polly.access.add.Packed_MemRef_call1426566.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1426565.3, %polly.indvar556.3
  %polly.access.Packed_MemRef_call1426567.3 = getelementptr double, double* %Packed_MemRef_call1426, i64 %polly.access.add.Packed_MemRef_call1426566.3
  %_p_scalar_568.3 = load double, double* %polly.access.Packed_MemRef_call1426567.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_572.3, %_p_scalar_568.3
  %262 = mul nuw nsw i64 %polly.indvar562.3, 480
  %263 = add nuw nsw i64 %262, %261
  %scevgep573.3 = getelementptr i8, i8* %call2, i64 %263
  %scevgep573574.3 = bitcast i8* %scevgep573.3 to double*
  %_p_scalar_575.3 = load double, double* %scevgep573574.3, align 8, !alias.scope !86, !noalias !90
  %p_mul37.i.3 = fmul fast double %_p_scalar_579.3, %_p_scalar_575.3
  %264 = shl nuw nsw i64 %polly.indvar562.3, 3
  %scevgep581.3 = getelementptr i8, i8* %scevgep580.3, i64 %264
  %scevgep581582.3 = bitcast i8* %scevgep581.3 to double*
  %_p_scalar_583.3 = load double, double* %scevgep581582.3, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_583.3
  store double %p_add42.i.3, double* %scevgep581582.3, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next563.3 = add nuw nsw i64 %polly.indvar562.3, 1
  %exitcond841.3.not = icmp eq i64 %polly.indvar_next563.3, %indvars.iv838.3
  br i1 %exitcond841.3.not, label %polly.loop_exit561.3, label %polly.loop_header559.3

polly.loop_exit561.3:                             ; preds = %polly.loop_header559.3
  %polly.indvar_next557.3 = add nuw nsw i64 %polly.indvar556.3, 1
  %exitcond843.3.not = icmp eq i64 %polly.indvar_next557.3, 12
  br i1 %exitcond843.3.not, label %polly.loop_exit555.3, label %polly.loop_header553.3

polly.loop_exit555.3:                             ; preds = %polly.loop_exit561.3
  %polly.indvar_next535.3 = add nuw nsw i64 %polly.indvar534.3, 1
  %indvars.iv.next839.3 = add nuw nsw i64 %indvars.iv838.3, 1
  %exitcond844.3.not = icmp eq i64 %polly.indvar_next535.3, 80
  br i1 %exitcond844.3.not, label %polly.loop_exit533.3, label %polly.loop_header531.3

polly.loop_exit533.3:                             ; preds = %polly.loop_exit555.3
  tail call void @free(i8* nonnull %malloccall425)
  br label %kernel_syr2k.exit

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %265 = mul nuw nsw i64 %polly.indvar778.1, 480
  %266 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header775.1
  %index1155 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1160, %vector.body1153 ]
  %267 = add nuw nsw <4 x i64> %vec.ind1159, <i64 32, i64 32, i64 32, i64 32>
  %268 = trunc <4 x i64> %267 to <4 x i32>
  %269 = mul <4 x i32> %broadcast.splat1162, %268
  %270 = add <4 x i32> %269, <i32 1, i32 1, i32 1, i32 1>
  %271 = urem <4 x i32> %270, <i32 80, i32 80, i32 80, i32 80>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %274 = extractelement <4 x i64> %267, i32 0
  %275 = shl i64 %274, 3
  %276 = add i64 %275, %265
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %273, <4 x double>* %278, align 8, !alias.scope !94, !noalias !99
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %279 = icmp eq i64 %index.next1156, 28
  br i1 %279, label %polly.loop_exit783.1, label %vector.body1153, !llvm.loop !101

polly.loop_exit783.1:                             ; preds = %vector.body1153
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond852.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond852.1.not, label %polly.loop_header775.1872, label %polly.loop_header775.1

polly.loop_header775.1872:                        ; preds = %polly.loop_exit783.1, %polly.loop_exit783.1883
  %polly.indvar778.1871 = phi i64 [ %polly.indvar_next779.1881, %polly.loop_exit783.1883 ], [ 0, %polly.loop_exit783.1 ]
  %280 = add nuw nsw i64 %polly.indvar778.1871, 32
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header775.1872
  %index1167 = phi i64 [ 0, %polly.loop_header775.1872 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1872 ], [ %vec.ind.next1174, %vector.body1165 ]
  %283 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 80, i32 80, i32 80, i32 80>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %288 = shl i64 %index1167, 3
  %289 = add i64 %288, %281
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %287, <4 x double>* %291, align 8, !alias.scope !94, !noalias !99
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %292 = icmp eq i64 %index.next1168, 32
  br i1 %292, label %polly.loop_exit783.1883, label %vector.body1165, !llvm.loop !102

polly.loop_exit783.1883:                          ; preds = %vector.body1165
  %polly.indvar_next779.1881 = add nuw nsw i64 %polly.indvar778.1871, 1
  %exitcond852.1882.not = icmp eq i64 %polly.indvar_next779.1881, 32
  br i1 %exitcond852.1882.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1872

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1883, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1883 ]
  %293 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %294 = mul nuw nsw i64 %293, 480
  %295 = trunc i64 %293 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %295, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header775.1.1
  %index1181 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1186, %vector.body1179 ]
  %296 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %297 = trunc <4 x i64> %296 to <4 x i32>
  %298 = mul <4 x i32> %broadcast.splat1188, %297
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = extractelement <4 x i64> %296, i32 0
  %304 = shl i64 %303, 3
  %305 = add i64 %304, %294
  %306 = getelementptr i8, i8* %call1, i64 %305
  %307 = bitcast i8* %306 to <4 x double>*
  store <4 x double> %302, <4 x double>* %307, align 8, !alias.scope !94, !noalias !99
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %308 = icmp eq i64 %index.next1182, 28
  br i1 %308, label %polly.loop_exit783.1.1, label %vector.body1179, !llvm.loop !103

polly.loop_exit783.1.1:                           ; preds = %vector.body1179
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond852.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond852.1.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1.1 ]
  %309 = add nuw nsw i64 %polly.indvar778.2, 64
  %310 = mul nuw nsw i64 %309, 480
  %311 = trunc i64 %309 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %311, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header775.2
  %index1193 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2 ], [ %vec.ind.next1200, %vector.body1191 ]
  %312 = mul <4 x i32> %vec.ind1199, %broadcast.splat1202
  %313 = add <4 x i32> %312, <i32 1, i32 1, i32 1, i32 1>
  %314 = urem <4 x i32> %313, <i32 80, i32 80, i32 80, i32 80>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %317 = shl i64 %index1193, 3
  %318 = add i64 %317, %310
  %319 = getelementptr i8, i8* %call1, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %316, <4 x double>* %320, align 8, !alias.scope !94, !noalias !99
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1200 = add <4 x i32> %vec.ind1199, <i32 4, i32 4, i32 4, i32 4>
  %321 = icmp eq i64 %index.next1194, 32
  br i1 %321, label %polly.loop_exit783.2, label %vector.body1191, !llvm.loop !104

polly.loop_exit783.2:                             ; preds = %vector.body1191
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond852.2.not = icmp eq i64 %polly.indvar_next779.2, 16
  br i1 %exitcond852.2.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2 ]
  %322 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header775.1.2
  %index1207 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1212, %vector.body1205 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1211, <i64 32, i64 32, i64 32, i64 32>
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1214, %326
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add i64 %333, %323
  %335 = getelementptr i8, i8* %call1, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !94, !noalias !99
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1208, 28
  br i1 %337, label %polly.loop_exit783.1.2, label %vector.body1205, !llvm.loop !105

polly.loop_exit783.1.2:                           ; preds = %vector.body1205
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond852.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond852.1.2.not, label %init_array.exit, label %polly.loop_header775.1.2

polly.loop_header749.1:                           ; preds = %polly.loop_exit757, %polly.loop_exit757.1
  %polly.indvar752.1 = phi i64 [ %polly.indvar_next753.1, %polly.loop_exit757.1 ], [ 0, %polly.loop_exit757 ]
  %338 = mul nuw nsw i64 %polly.indvar752.1, 480
  %339 = trunc i64 %polly.indvar752.1 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header749.1
  %index1077 = phi i64 [ 0, %polly.loop_header749.1 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1081 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1 ], [ %vec.ind.next1082, %vector.body1075 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1081, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1084, %341
  %343 = add <4 x i32> %342, <i32 2, i32 2, i32 2, i32 2>
  %344 = urem <4 x i32> %343, <i32 60, i32 60, i32 60, i32 60>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !95, !noalias !97
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1082 = add <4 x i64> %vec.ind1081, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1078, 28
  br i1 %352, label %polly.loop_exit757.1, label %vector.body1075, !llvm.loop !106

polly.loop_exit757.1:                             ; preds = %vector.body1075
  %polly.indvar_next753.1 = add nuw nsw i64 %polly.indvar752.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next753.1, 32
  br i1 %exitcond858.1.not, label %polly.loop_header749.1886, label %polly.loop_header749.1

polly.loop_header749.1886:                        ; preds = %polly.loop_exit757.1, %polly.loop_exit757.1897
  %polly.indvar752.1885 = phi i64 [ %polly.indvar_next753.1895, %polly.loop_exit757.1897 ], [ 0, %polly.loop_exit757.1 ]
  %353 = add nuw nsw i64 %polly.indvar752.1885, 32
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header749.1886
  %index1089 = phi i64 [ 0, %polly.loop_header749.1886 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1095 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.1886 ], [ %vec.ind.next1096, %vector.body1087 ]
  %356 = mul <4 x i32> %vec.ind1095, %broadcast.splat1098
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 60, i32 60, i32 60, i32 60>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %361 = shl i64 %index1089, 3
  %362 = add i64 %361, %354
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %360, <4 x double>* %364, align 8, !alias.scope !95, !noalias !97
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1096 = add <4 x i32> %vec.ind1095, <i32 4, i32 4, i32 4, i32 4>
  %365 = icmp eq i64 %index.next1090, 32
  br i1 %365, label %polly.loop_exit757.1897, label %vector.body1087, !llvm.loop !107

polly.loop_exit757.1897:                          ; preds = %vector.body1087
  %polly.indvar_next753.1895 = add nuw nsw i64 %polly.indvar752.1885, 1
  %exitcond858.1896.not = icmp eq i64 %polly.indvar_next753.1895, 32
  br i1 %exitcond858.1896.not, label %polly.loop_header749.1.1, label %polly.loop_header749.1886

polly.loop_header749.1.1:                         ; preds = %polly.loop_exit757.1897, %polly.loop_exit757.1.1
  %polly.indvar752.1.1 = phi i64 [ %polly.indvar_next753.1.1, %polly.loop_exit757.1.1 ], [ 0, %polly.loop_exit757.1897 ]
  %366 = add nuw nsw i64 %polly.indvar752.1.1, 32
  %367 = mul nuw nsw i64 %366, 480
  %368 = trunc i64 %366 to i32
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header749.1.1
  %index1103 = phi i64 [ 0, %polly.loop_header749.1.1 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1107 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.1 ], [ %vec.ind.next1108, %vector.body1101 ]
  %369 = add nuw nsw <4 x i64> %vec.ind1107, <i64 32, i64 32, i64 32, i64 32>
  %370 = trunc <4 x i64> %369 to <4 x i32>
  %371 = mul <4 x i32> %broadcast.splat1110, %370
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = extractelement <4 x i64> %369, i32 0
  %377 = shl i64 %376, 3
  %378 = add i64 %377, %367
  %379 = getelementptr i8, i8* %call2, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %375, <4 x double>* %380, align 8, !alias.scope !95, !noalias !97
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1108 = add <4 x i64> %vec.ind1107, <i64 4, i64 4, i64 4, i64 4>
  %381 = icmp eq i64 %index.next1104, 28
  br i1 %381, label %polly.loop_exit757.1.1, label %vector.body1101, !llvm.loop !108

polly.loop_exit757.1.1:                           ; preds = %vector.body1101
  %polly.indvar_next753.1.1 = add nuw nsw i64 %polly.indvar752.1.1, 1
  %exitcond858.1.1.not = icmp eq i64 %polly.indvar_next753.1.1, 32
  br i1 %exitcond858.1.1.not, label %polly.loop_header749.2, label %polly.loop_header749.1.1

polly.loop_header749.2:                           ; preds = %polly.loop_exit757.1.1, %polly.loop_exit757.2
  %polly.indvar752.2 = phi i64 [ %polly.indvar_next753.2, %polly.loop_exit757.2 ], [ 0, %polly.loop_exit757.1.1 ]
  %382 = add nuw nsw i64 %polly.indvar752.2, 64
  %383 = mul nuw nsw i64 %382, 480
  %384 = trunc i64 %382 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %polly.loop_header749.2
  %index1115 = phi i64 [ 0, %polly.loop_header749.2 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1121 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header749.2 ], [ %vec.ind.next1122, %vector.body1113 ]
  %385 = mul <4 x i32> %vec.ind1121, %broadcast.splat1124
  %386 = add <4 x i32> %385, <i32 2, i32 2, i32 2, i32 2>
  %387 = urem <4 x i32> %386, <i32 60, i32 60, i32 60, i32 60>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = shl i64 %index1115, 3
  %391 = add i64 %390, %383
  %392 = getelementptr i8, i8* %call2, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %389, <4 x double>* %393, align 8, !alias.scope !95, !noalias !97
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1122 = add <4 x i32> %vec.ind1121, <i32 4, i32 4, i32 4, i32 4>
  %394 = icmp eq i64 %index.next1116, 32
  br i1 %394, label %polly.loop_exit757.2, label %vector.body1113, !llvm.loop !109

polly.loop_exit757.2:                             ; preds = %vector.body1113
  %polly.indvar_next753.2 = add nuw nsw i64 %polly.indvar752.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next753.2, 16
  br i1 %exitcond858.2.not, label %polly.loop_header749.1.2, label %polly.loop_header749.2

polly.loop_header749.1.2:                         ; preds = %polly.loop_exit757.2, %polly.loop_exit757.1.2
  %polly.indvar752.1.2 = phi i64 [ %polly.indvar_next753.1.2, %polly.loop_exit757.1.2 ], [ 0, %polly.loop_exit757.2 ]
  %395 = add nuw nsw i64 %polly.indvar752.1.2, 64
  %396 = mul nuw nsw i64 %395, 480
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header749.1.2
  %index1129 = phi i64 [ 0, %polly.loop_header749.1.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header749.1.2 ], [ %vec.ind.next1134, %vector.body1127 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1133, <i64 32, i64 32, i64 32, i64 32>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1136, %399
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add i64 %406, %396
  %408 = getelementptr i8, i8* %call2, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !95, !noalias !97
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1130, 28
  br i1 %410, label %polly.loop_exit757.1.2, label %vector.body1127, !llvm.loop !110

polly.loop_exit757.1.2:                           ; preds = %vector.body1127
  %polly.indvar_next753.1.2 = add nuw nsw i64 %polly.indvar752.1.2, 1
  %exitcond858.1.2.not = icmp eq i64 %polly.indvar_next753.1.2, 16
  br i1 %exitcond858.1.2.not, label %polly.loop_header775, label %polly.loop_header749.1.2

polly.loop_header722.1:                           ; preds = %polly.loop_exit730, %polly.loop_exit730.1
  %polly.indvar725.1 = phi i64 [ %polly.indvar_next726.1, %polly.loop_exit730.1 ], [ 0, %polly.loop_exit730 ]
  %411 = mul nuw nsw i64 %polly.indvar725.1, 640
  %412 = trunc i64 %polly.indvar725.1 to i32
  %broadcast.splatinsert969 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat970 = shufflevector <4 x i32> %broadcast.splatinsert969, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %polly.loop_header722.1
  %index963 = phi i64 [ 0, %polly.loop_header722.1 ], [ %index.next964, %vector.body961 ]
  %vec.ind967 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1 ], [ %vec.ind.next968, %vector.body961 ]
  %413 = add nuw nsw <4 x i64> %vec.ind967, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat970, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !91, !noalias !93
  %index.next964 = add i64 %index963, 4
  %vec.ind.next968 = add <4 x i64> %vec.ind967, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next964, 32
  br i1 %425, label %polly.loop_exit730.1, label %vector.body961, !llvm.loop !111

polly.loop_exit730.1:                             ; preds = %vector.body961
  %polly.indvar_next726.1 = add nuw nsw i64 %polly.indvar725.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next726.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header722.2, label %polly.loop_header722.1

polly.loop_header722.2:                           ; preds = %polly.loop_exit730.1, %polly.loop_exit730.2
  %polly.indvar725.2 = phi i64 [ %polly.indvar_next726.2, %polly.loop_exit730.2 ], [ 0, %polly.loop_exit730.1 ]
  %426 = mul nuw nsw i64 %polly.indvar725.2, 640
  %427 = trunc i64 %polly.indvar725.2 to i32
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %polly.loop_header722.2
  %index975 = phi i64 [ 0, %polly.loop_header722.2 ], [ %index.next976, %vector.body973 ]
  %vec.ind979 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2 ], [ %vec.ind.next980, %vector.body973 ]
  %428 = add nuw nsw <4 x i64> %vec.ind979, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat982, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !91, !noalias !93
  %index.next976 = add i64 %index975, 4
  %vec.ind.next980 = add <4 x i64> %vec.ind979, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next976, 16
  br i1 %440, label %polly.loop_exit730.2, label %vector.body973, !llvm.loop !112

polly.loop_exit730.2:                             ; preds = %vector.body973
  %polly.indvar_next726.2 = add nuw nsw i64 %polly.indvar725.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next726.2, 32
  br i1 %exitcond867.2.not, label %polly.loop_header722.1900, label %polly.loop_header722.2

polly.loop_header722.1900:                        ; preds = %polly.loop_exit730.2, %polly.loop_exit730.1911
  %polly.indvar725.1899 = phi i64 [ %polly.indvar_next726.1909, %polly.loop_exit730.1911 ], [ 0, %polly.loop_exit730.2 ]
  %441 = add nuw nsw i64 %polly.indvar725.1899, 32
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %polly.loop_header722.1900
  %index987 = phi i64 [ 0, %polly.loop_header722.1900 ], [ %index.next988, %vector.body985 ]
  %vec.ind993 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.1900 ], [ %vec.ind.next994, %vector.body985 ]
  %444 = mul <4 x i32> %vec.ind993, %broadcast.splat996
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index987, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !91, !noalias !93
  %index.next988 = add i64 %index987, 4
  %vec.ind.next994 = add <4 x i32> %vec.ind993, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next988, 32
  br i1 %453, label %polly.loop_exit730.1911, label %vector.body985, !llvm.loop !113

polly.loop_exit730.1911:                          ; preds = %vector.body985
  %polly.indvar_next726.1909 = add nuw nsw i64 %polly.indvar725.1899, 1
  %exitcond867.1910.not = icmp eq i64 %polly.indvar_next726.1909, 32
  br i1 %exitcond867.1910.not, label %polly.loop_header722.1.1, label %polly.loop_header722.1900

polly.loop_header722.1.1:                         ; preds = %polly.loop_exit730.1911, %polly.loop_exit730.1.1
  %polly.indvar725.1.1 = phi i64 [ %polly.indvar_next726.1.1, %polly.loop_exit730.1.1 ], [ 0, %polly.loop_exit730.1911 ]
  %454 = add nuw nsw i64 %polly.indvar725.1.1, 32
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %polly.loop_header722.1.1
  %index1001 = phi i64 [ 0, %polly.loop_header722.1.1 ], [ %index.next1002, %vector.body999 ]
  %vec.ind1005 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.1 ], [ %vec.ind.next1006, %vector.body999 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1005, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1008, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !91, !noalias !93
  %index.next1002 = add i64 %index1001, 4
  %vec.ind.next1006 = add <4 x i64> %vec.ind1005, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1002, 32
  br i1 %469, label %polly.loop_exit730.1.1, label %vector.body999, !llvm.loop !114

polly.loop_exit730.1.1:                           ; preds = %vector.body999
  %polly.indvar_next726.1.1 = add nuw nsw i64 %polly.indvar725.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next726.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header722.2.1, label %polly.loop_header722.1.1

polly.loop_header722.2.1:                         ; preds = %polly.loop_exit730.1.1, %polly.loop_exit730.2.1
  %polly.indvar725.2.1 = phi i64 [ %polly.indvar_next726.2.1, %polly.loop_exit730.2.1 ], [ 0, %polly.loop_exit730.1.1 ]
  %470 = add nuw nsw i64 %polly.indvar725.2.1, 32
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header722.2.1
  %index1013 = phi i64 [ 0, %polly.loop_header722.2.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1017, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1020, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !91, !noalias !93
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1014, 16
  br i1 %485, label %polly.loop_exit730.2.1, label %vector.body1011, !llvm.loop !115

polly.loop_exit730.2.1:                           ; preds = %vector.body1011
  %polly.indvar_next726.2.1 = add nuw nsw i64 %polly.indvar725.2.1, 1
  %exitcond867.2.1.not = icmp eq i64 %polly.indvar_next726.2.1, 32
  br i1 %exitcond867.2.1.not, label %polly.loop_header722.2914, label %polly.loop_header722.2.1

polly.loop_header722.2914:                        ; preds = %polly.loop_exit730.2.1, %polly.loop_exit730.2925
  %polly.indvar725.2913 = phi i64 [ %polly.indvar_next726.2923, %polly.loop_exit730.2925 ], [ 0, %polly.loop_exit730.2.1 ]
  %486 = add nuw nsw i64 %polly.indvar725.2913, 64
  %487 = mul nuw nsw i64 %486, 640
  %488 = trunc i64 %486 to i32
  %broadcast.splatinsert1033 = insertelement <4 x i32> poison, i32 %488, i32 0
  %broadcast.splat1034 = shufflevector <4 x i32> %broadcast.splatinsert1033, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header722.2914
  %index1025 = phi i64 [ 0, %polly.loop_header722.2914 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1031 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header722.2914 ], [ %vec.ind.next1032, %vector.body1023 ]
  %489 = mul <4 x i32> %vec.ind1031, %broadcast.splat1034
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = shl i64 %index1025, 3
  %495 = add nuw nsw i64 %494, %487
  %496 = getelementptr i8, i8* %call, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %493, <4 x double>* %497, align 8, !alias.scope !91, !noalias !93
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1032 = add <4 x i32> %vec.ind1031, <i32 4, i32 4, i32 4, i32 4>
  %498 = icmp eq i64 %index.next1026, 32
  br i1 %498, label %polly.loop_exit730.2925, label %vector.body1023, !llvm.loop !116

polly.loop_exit730.2925:                          ; preds = %vector.body1023
  %polly.indvar_next726.2923 = add nuw nsw i64 %polly.indvar725.2913, 1
  %exitcond867.2924.not = icmp eq i64 %polly.indvar_next726.2923, 16
  br i1 %exitcond867.2924.not, label %polly.loop_header722.1.2, label %polly.loop_header722.2914

polly.loop_header722.1.2:                         ; preds = %polly.loop_exit730.2925, %polly.loop_exit730.1.2
  %polly.indvar725.1.2 = phi i64 [ %polly.indvar_next726.1.2, %polly.loop_exit730.1.2 ], [ 0, %polly.loop_exit730.2925 ]
  %499 = add nuw nsw i64 %polly.indvar725.1.2, 64
  %500 = mul nuw nsw i64 %499, 640
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header722.1.2
  %index1039 = phi i64 [ 0, %polly.loop_header722.1.2 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1043 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.1.2 ], [ %vec.ind.next1044, %vector.body1037 ]
  %502 = add nuw nsw <4 x i64> %vec.ind1043, <i64 32, i64 32, i64 32, i64 32>
  %503 = trunc <4 x i64> %502 to <4 x i32>
  %504 = mul <4 x i32> %broadcast.splat1046, %503
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = extractelement <4 x i64> %502, i32 0
  %510 = shl i64 %509, 3
  %511 = add nuw nsw i64 %510, %500
  %512 = getelementptr i8, i8* %call, i64 %511
  %513 = bitcast i8* %512 to <4 x double>*
  store <4 x double> %508, <4 x double>* %513, align 8, !alias.scope !91, !noalias !93
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1044 = add <4 x i64> %vec.ind1043, <i64 4, i64 4, i64 4, i64 4>
  %514 = icmp eq i64 %index.next1040, 32
  br i1 %514, label %polly.loop_exit730.1.2, label %vector.body1037, !llvm.loop !117

polly.loop_exit730.1.2:                           ; preds = %vector.body1037
  %polly.indvar_next726.1.2 = add nuw nsw i64 %polly.indvar725.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next726.1.2, 16
  br i1 %exitcond867.1.2.not, label %polly.loop_header722.2.2, label %polly.loop_header722.1.2

polly.loop_header722.2.2:                         ; preds = %polly.loop_exit730.1.2, %polly.loop_exit730.2.2
  %polly.indvar725.2.2 = phi i64 [ %polly.indvar_next726.2.2, %polly.loop_exit730.2.2 ], [ 0, %polly.loop_exit730.1.2 ]
  %515 = add nuw nsw i64 %polly.indvar725.2.2, 64
  %516 = mul nuw nsw i64 %515, 640
  %517 = trunc i64 %515 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %517, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header722.2.2
  %index1051 = phi i64 [ 0, %polly.loop_header722.2.2 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header722.2.2 ], [ %vec.ind.next1056, %vector.body1049 ]
  %518 = add nuw nsw <4 x i64> %vec.ind1055, <i64 64, i64 64, i64 64, i64 64>
  %519 = trunc <4 x i64> %518 to <4 x i32>
  %520 = mul <4 x i32> %broadcast.splat1058, %519
  %521 = add <4 x i32> %520, <i32 3, i32 3, i32 3, i32 3>
  %522 = urem <4 x i32> %521, <i32 80, i32 80, i32 80, i32 80>
  %523 = sitofp <4 x i32> %522 to <4 x double>
  %524 = fmul fast <4 x double> %523, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %525 = extractelement <4 x i64> %518, i32 0
  %526 = shl i64 %525, 3
  %527 = add nuw nsw i64 %526, %516
  %528 = getelementptr i8, i8* %call, i64 %527
  %529 = bitcast i8* %528 to <4 x double>*
  store <4 x double> %524, <4 x double>* %529, align 8, !alias.scope !91, !noalias !93
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %530 = icmp eq i64 %index.next1052, 16
  br i1 %530, label %polly.loop_exit730.2.2, label %vector.body1049, !llvm.loop !118

polly.loop_exit730.2.2:                           ; preds = %vector.body1049
  %polly.indvar_next726.2.2 = add nuw nsw i64 %polly.indvar725.2.2, 1
  %exitcond867.2.2.not = icmp eq i64 %polly.indvar_next726.2.2, 16
  br i1 %exitcond867.2.2.not, label %polly.loop_header749, label %polly.loop_header722.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 128}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
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
!48 = !{!"llvm.loop.tile.size", i32 96}
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
!72 = !{!63, !66, !68}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !71, !13}
!81 = !{!73, !76, !78}
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !71, !13}
!90 = !{!82, !85, !87}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !13}
!97 = !{!94, !91}
!98 = distinct !{!98, !13}
!99 = !{!95, !91}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
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
